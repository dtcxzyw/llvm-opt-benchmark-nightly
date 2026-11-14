Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/parseutils?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@av_parse_color:bb.a
  %sext = shl i64 %i.r, 32
  %i.z = ashr exact i64 %sext, 32
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ab = call i64 @strtoul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 16) #15 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %.not81 = icmp eq i8 %i.ae, 0
  br i1 %.not81, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  switch i32 %i.s, label %.critedge [
    i32 8, label %bb.l
    i32 6, label %bb.m
  ]

.critedge:                                        ; preds = %bb.k, %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.af = trunc i64 %i.ab to i8
  store i8 %i.af, ptr %i.t, align 1, !tbaa !19
  %i.ag = lshr i32 %i.ac, 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.064 = phi i32 [ %i.ag, %bb.l ], [ %i.ac, %bb.k ] ; 3 uses
  %i.ah = lshr i32 %.064, 16
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %0, align 1, !tbaa !19
  %i.aj = lshr i32 %.064, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !19
  %i.am = trunc i32 %.064 to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.i, %bb.p
  %.021.i = phi i64 [ %.1.i, %bb.p ], [ 140, %bb.i ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.p ], [ 0, %bb.i ] ; 2 uses
  %i.ao = add i64 %.01620.i, %.021.i
  %i.ap = lshr i64 %i.ao, 1                       ; 3 uses
  %i.aq = shl i64 %i.ap, 4                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @color_table, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !21
  %i.at = call i32 @av_strcasecmp(ptr noundef nonnull %i.b, ptr noundef %i.as) #15 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bsearch.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add nuw i64 %i.ap, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.117.i = phi i64 [ %i.av, %bb.o ], [ %.01620.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i64 [ %.021.i, %bb.o ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %i.aw = icmp ult i64 %.117.i, %.1.i
  br i1 %i.aw, label %.lr.ph.i, label %bb.q, !llvm.loop !35

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b) #15
  br label %bb.w

bsearch.exit:                                     ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr @color_table, i64 %i.aq
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(3) %i.ay, i64 3, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bsearch.exit, %bb.g
  %.not82 = icmp eq ptr %i.q, null
  br i1 %.not82, label %bb.w, label %sub_091

sub_091:                                          ; preds = %bb.r
  %i.az = load i8, ptr %i.q, align 1
  %.not97 = icmp eq i8 %i.az, 48
  br i1 %.not97, label %.tail90, label %.tail90.thread

.tail90:                                          ; preds = %sub_091
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = icmp eq i8 %i.bb, 120
  br i1 %i.bc, label %bb.s, label %.tail90.thread

bb.s:                                             ; preds = %.tail90
  %i.bd = call i64 @strtoul(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %i.be = uitofp nsz i64 %i.bd to double
  br label %bb.t

.tail90.thread:                                   ; preds = %sub_091, %.tail90
  %i.bf = call nsz double @strtod(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a) #15 ; 3 uses
  %i.bg = fcmp nsz olt double %i.bf, 0.000000e+00
  %i.bh = fcmp nsz ogt double %i.bf, 1.000000e+00
  %or.cond4 = or i1 %i.bg, %i.bh
  %i.bi = fmul nsz double %i.bf, 2.550000e+02
  %.0 = select nsz i1 %or.cond4, double 2.560000e+02, double %i.bi
  br label %bb.t

bb.t:                                             ; preds = %.tail90.thread, %bb.s
  %.1 = phi nsz double [ %.0, %.tail90.thread ], [ %i.be, %bb.s ] ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.q
  br i1 %i.bk, label %.critedge87, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !19
  %i.bm = icmp ne i8 %i.bl, 0
  %i.bn = fcmp nsz ogt double %.1, 2.550000e+02
  %or.cond6 = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond6, label %.critedge87, label %bb.v

.critedge87:                                      ; preds = %bb.u, %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.q, ptr noundef nonnull %1) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bo = fptoui double %.1 to i8
  store i8 %i.bo, ptr %i.t, align 1, !tbaa !19
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %.critedge87, %.critedge, %bb.q
  %.3 = phi i32 [ -22, %bb.q ], [ -22, %.critedge87 ], [ -22, %.critedge ], [ 0, %bb.v ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @av_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @av_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_get_random_seed() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #7

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define ptr @av_get_known_color_name(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i32 %0, 139
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @color_table, i64 %i.b ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %1, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr %i.c, align 16, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @av_small_strptime(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0122 = phi ptr [ %0, %bb.a ], [ %.0122.be, %.backedge.backedge ] ; 40 uses
  %.030 = phi ptr [ %1, %bb.a ], [ %.030.be, %.backedge.backedge ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.030, i64 1 ; 3 uses
  %i.g = load i8, ptr %.030, align 1, !tbaa !19   ; 2 uses
  switch i8 %i.g, label %av_isspace.exit [
    i8 0, label %date_get_month.exit
    i8 37, label %bb.c
    i8 32, label %.critedge164.preheader
    i8 13, label %.critedge164.preheader
    i8 12, label %.critedge164.preheader
    i8 10, label %.critedge164.preheader
    i8 9, label %.critedge164.preheader
    i8 11, label %.critedge164.preheader
  ]

.critedge164.preheader:                           ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge
  br label %.critedge164

av_isspace.exit:                                  ; preds = %.backedge
  %i.h = load i8, ptr %.0122, align 1, !tbaa !19
  %.not44 = icmp eq i8 %i.h, %i.g
  br i1 %.not44, label %bb.b, label %date_get_month.exit

.critedge164:                                     ; preds = %.critedge164.preheader, %av_isspace.exit47.thread
  %.1 = phi ptr [ %i.j, %av_isspace.exit47.thread ], [ %.0122, %.critedge164.preheader ] ; 3 uses
  %i.i = load i8, ptr %.1, align 1, !tbaa !19
  switch i8 %i.i, label %.backedge.backedge [
    i8 11, label %av_isspace.exit47.thread
    i8 32, label %av_isspace.exit47.thread
    i8 13, label %av_isspace.exit47.thread
    i8 12, label %av_isspace.exit47.thread
    i8 10, label %av_isspace.exit47.thread
    i8 9, label %av_isspace.exit47.thread
  ], !llvm.loop !36

av_isspace.exit47.thread:                         ; preds = %.critedge164, %.critedge164, %.critedge164, %.critedge164, %.critedge164, %.critedge164
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %.critedge164, !llvm.loop !37

bb.b:                                             ; preds = %av_isspace.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.0122, i64 1
  br label %.backedge.backedge

bb.c:                                             ; preds = %.backedge
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 2 ; 9 uses
  %i.m = load i8, ptr %i.f, align 1, !tbaa !19    ; 2 uses
  switch i8 %i.m, label %date_get_month.exit [
    i8 72, label %bb.d
    i8 74, label %bb.d
    i8 77, label %bb.i
    i8 83, label %bb.k
    i8 89, label %bb.m
    i8 109, label %bb.q
    i8 100, label %bb.r
    i8 84, label %bb.s
    i8 98, label %bb.t
    i8 66, label %bb.t
    i8 104, label %bb.t
    i8 37, label %bb.ai
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.n = icmp eq i8 %i.m, 72                      ; 2 uses
  %3 = select i1 %i.n, i32 2, i32 4               ; 2 uses
  %4 = zext nneg i32 %3 to i64
  %scevgep.i = getelementptr i8, ptr %.0122, i64 %4
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.023.i = phi ptr [ %.0122, %bb.d ], [ %i.aa, %bb.g ] ; 5 uses
  %.01822.i = phi i32 [ 0, %bb.d ], [ %i.z, %bb.g ] ; 2 uses
  %.01921.i = phi i32 [ 0, %bb.d ], [ %i.ab, %bb.g ]
  %i.o = load i8, ptr %.023.i, align 1, !tbaa !19
  %i.p = sext i8 %i.o to i32                      ; 2 uses
  %i.q = add nsw i32 %i.p, -58
  %i.r = icmp ult i32 %i.q, -10
  br i1 %i.r, label %.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %5 = mul nsw i32 %.01822.i, 10
  %6 = add i32 %5, -48
  %7 = add i32 %6, %i.p                           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = sext i8 %i.t to i32                      ; 2 uses
  %i.v = add nsw i32 %i.u, -58
  %i.w = icmp ult i32 %i.v, -10
  br i1 %i.w, label %.split.loop.exit220, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = mul nsw i32 %7, 10
  %i.y = add i32 %i.x, -48
  %i.z = add i32 %i.y, %i.u                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  %i.ab = add nuw nsw i32 %.01921.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ab, %3
  br i1 %exitcond.not.i.1, label %.split.loop.exit, label %bb.e, !llvm.loop !38

.split.loop.exit220:                              ; preds = %bb.f
  %8 = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.e, %bb.g, %.split.loop.exit220
  %.018.lcssa.i = phi i32 [ %7, %.split.loop.exit220 ], [ %i.z, %bb.g ], [ %.01822.i, %bb.e ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %8, %.split.loop.exit220 ], [ %scevgep.i, %bb.g ], [ %.023.i, %bb.e ] ; 2 uses
  %i.ac = icmp eq ptr %.0.lcssa.i, %.0122
  br i1 %i.ac, label %date_get_month.exit, label %bb.h

bb.h:                                             ; preds = %.split.loop.exit
  %i.ad = icmp slt i32 %.018.lcssa.i, 0
  %i.ae = icmp sgt i32 %.018.lcssa.i, 23
  %i.af = select i1 %i.n, i1 %i.ae, i1 false
  %or.cond.i = or i1 %i.ad, %i.af
  br i1 %or.cond.i, label %date_get_month.exit, label %date_get_num.exit

date_get_num.exit:                                ; preds = %bb.h
  store i32 %.018.lcssa.i, ptr %i.e, align 8, !tbaa !24
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedge164, %date_get_num.exit, %date_get_num.exit57, %date_get_num.exit67, %date_get_num.exit77, %date_get_num.exit87, %date_get_num.exit97, %bb.ah, %bb.s, %bb.ai, %bb.b
  %.0122.be = phi ptr [ %i.eh, %bb.ai ], [ %i.k, %bb.b ], [ %.0.lcssa.i, %date_get_num.exit ], [ %.0.lcssa.i54129201, %date_get_num.exit57 ], [ %.0.lcssa.i64136209, %date_get_num.exit67 ], [ %.0.lcssa.i74143, %date_get_num.exit77 ], [ %.0.lcssa.i84150, %date_get_num.exit87 ], [ %.0.lcssa.i94157, %date_get_num.exit97 ], [ %i.dn, %bb.s ], [ %.10.ph, %bb.ah ], [ %.1, %.critedge164 ]
  %.030.be = phi ptr [ %i.l, %bb.ai ], [ %i.f, %bb.b ], [ %i.l, %date_get_num.exit ], [ %i.l, %date_get_num.exit57 ], [ %i.l, %date_get_num.exit67 ], [ %i.l, %date_get_num.exit77 ], [ %i.l, %date_get_num.exit87 ], [ %i.l, %date_get_num.exit97 ], [ %i.l, %bb.s ], [ %i.l, %bb.ah ], [ %i.f, %.critedge164 ]
  br label %.backedge

bb.i:                                             ; preds = %bb.c
  %scevgep.i48 = getelementptr i8, ptr %.0122, i64 2
  %i.ag = load i8, ptr %.0122, align 1, !tbaa !19
  %i.ah = sext i8 %i.ag to i32                    ; 2 uses
  %i.ai = add nsw i32 %i.ah, -58
  %i.aj = icmp ult i32 %i.ai, -10
  br i1 %i.aj, label %date_get_month.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0122, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %i.an = sext i8 %i.am to i32                    ; 2 uses
  %i.ao = add nsw i32 %i.an, -58
  %i.ap = icmp ult i32 %i.ao, -10
  br i1 %i.ap, label %date_get_num.exit57, label %.thread

.thread:                                          ; preds = %bb.j
  %i.aq = mul nuw nsw i32 %i.ak, 10
  %i.ar = add nsw i32 %i.aq, -48
  %i.as = add nsw i32 %i.ar, %i.an                ; 2 uses
  %or.cond.i55 = icmp samesign ugt i32 %i.as, 59
  br i1 %or.cond.i55, label %date_get_month.exit, label %date_get_num.exit57

date_get_num.exit57:                              ; preds = %bb.j, %.thread
  %.018.lcssa.i53128202 = phi i32 [ %i.as, %.thread ], [ %i.ak, %bb.j ]
  %.0.lcssa.i54129201 = phi ptr [ %scevgep.i48, %.thread ], [ %i.al, %bb.j ]
  store i32 %.018.lcssa.i53128202, ptr %i.d, align 4, !tbaa !25
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.c
  %scevgep.i58 = getelementptr i8, ptr %.0122, i64 2
  %i.at = load i8, ptr %.0122, align 1, !tbaa !19
  %i.au = sext i8 %i.at to i32                    ; 2 uses
  %i.av = add nsw i32 %i.au, -58
  %i.aw = icmp ult i32 %i.av, -10
  br i1 %i.aw, label %date_get_month.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = add nsw i32 %i.au, -48                  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0122, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !19
  %i.ba = sext i8 %i.az to i32                    ; 2 uses
  %i.bb = add nsw i32 %i.ba, -58
  %i.bc = icmp ult i32 %i.bb, -10
  br i1 %i.bc, label %date_get_num.exit67, label %.thread132

.thread132:                                       ; preds = %bb.l
  %i.bd = mul nuw nsw i32 %i.ax, 10
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = add nsw i32 %i.be, %i.ba                ; 2 uses
  %or.cond.i65 = icmp samesign ugt i32 %i.bf, 59
  br i1 %or.cond.i65, label %date_get_month.exit, label %date_get_num.exit67

date_get_num.exit67:                              ; preds = %bb.l, %.thread132
  %.018.lcssa.i63135210 = phi i32 [ %i.bf, %.thread132 ], [ %i.ax, %bb.l ]
  %.0.lcssa.i64136209 = phi ptr [ %scevgep.i58, %.thread132 ], [ %i.ay, %bb.l ]
  store i32 %.018.lcssa.i63135210, ptr %2, align 8, !tbaa !26
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.c
  %scevgep.i68 = getelementptr i8, ptr %.0122, i64 4
  %i.bg = load i8, ptr %.0122, align 1, !tbaa !19
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  %i.bi = add nsw i32 %i.bh, -58
  %i.bj = icmp ult i32 %i.bi, -10
  br i1 %i.bj, label %date_get_month.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0122, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = sext i8 %i.bm to i32                    ; 2 uses
  %i.bo = add nsw i32 %i.bn, -58
  %i.bp = icmp ult i32 %i.bo, -10
  br i1 %i.bp, label %date_get_num.exit77, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = mul nuw nsw i32 %i.bk, 10
  %i.br = add nsw i32 %i.bq, -48
  %i.bs = add nsw i32 %i.br, %i.bn                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0122, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19
  %i.bv = sext i8 %i.bu to i32                    ; 2 uses
  %i.bw = add nsw i32 %i.bv, -58
  %i.bx = icmp ult i32 %i.bw, -10
  br i1 %i.bx, label %date_get_num.exit77, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = mul nuw nsw i32 %i.bs, 10
  %i.bz = add nsw i32 %i.by, -48
  %i.ca = add nsw i32 %i.bz, %i.bv                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0122, i64 3 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %i.cd = sext i8 %i.cc to i32                    ; 2 uses
  %i.ce = add nsw i32 %i.cd, -58
  %i.cf = icmp ult i32 %i.ce, -10
  br i1 %i.cf, label %date_get_num.exit77, label %.thread139.loopexit

.thread139.loopexit:                              ; preds = %bb.p
  %i.cg = mul nuw nsw i32 %i.ca, 10
  %i.ch = add nsw i32 %i.cg, -48
  %i.ci = add nsw i32 %i.ch, %i.cd
  br label %date_get_num.exit77

date_get_num.exit77:                              ; preds = %bb.p, %bb.o, %bb.n, %.thread139.loopexit
  %.0.lcssa.i74143 = phi ptr [ %scevgep.i68, %.thread139.loopexit ], [ %i.cb, %bb.p ], [ %i.bt, %bb.o ], [ %i.bl, %bb.n ]
  %.018.lcssa.i73142 = phi i32 [ %i.ci, %.thread139.loopexit ], [ %i.ca, %bb.p ], [ %i.bs, %bb.o ], [ %i.bk, %bb.n ]
  %i.cj = add nsw i32 %.018.lcssa.i73142, -1900
  store i32 %i.cj, ptr %i.c, align 4, !tbaa !27
  br label %.backedge.backedge

bb.q:                                             ; preds = %bb.c
  %i.ck = load i8, ptr %.0122, align 1, !tbaa !19
  %i.cl = sext i8 %i.ck to i32                    ; 2 uses
  %i.cm = add nsw i32 %i.cl, -58
  %i.cn = icmp ult i32 %i.cm, -10
  br i1 %i.cn, label %date_get_month.exit, label %.thread146

.thread146:                                       ; preds = %bb.q
  %i.co = add nsw i32 %i.cl, -48                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0122, i64 1 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !19
  %i.cr = sext i8 %i.cq to i32                    ; 2 uses
  %i.cs = add nsw i32 %i.cr, -58
  %i.ct = icmp ult i32 %i.cs, -10                 ; 2 uses
  %i.cu = mul nuw nsw i32 %i.co, 10
  %i.cv = add nsw i32 %i.cu, -48
  %i.cw = add nsw i32 %i.cv, %i.cr
  %.018.lcssa.i83149 = select i1 %i.ct, i32 %i.co, i32 %i.cw ; 2 uses
  %i.cx = add nsw i32 %.018.lcssa.i83149, -13
  %or.cond.i85 = icmp ult i32 %i.cx, -12
  br i1 %or.cond.i85, label %date_get_month.exit, label %date_get_num.exit87

date_get_num.exit87:                              ; preds = %.thread146
  %scevgep.i78 = getelementptr i8, ptr %.0122, i64 2
  %.0.lcssa.i84150 = select i1 %i.ct, ptr %i.cp, ptr %scevgep.i78
  %i.cy = add nsw i32 %.018.lcssa.i83149, -1
  store i32 %i.cy, ptr %i.a, align 8, !tbaa !28
  br label %.backedge.backedge

bb.r:                                             ; preds = %bb.c
  %i.cz = load i8, ptr %.0122, align 1, !tbaa !19
  %i.da = sext i8 %i.cz to i32                    ; 2 uses
  %i.db = add nsw i32 %i.da, -58
  %i.dc = icmp ult i32 %i.db, -10
  br i1 %i.dc, label %date_get_month.exit, label %.thread153

.thread153:                                       ; preds = %bb.r
  %i.dd = add nsw i32 %i.da, -48                  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0122, i64 1 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19
  %i.dg = sext i8 %i.df to i32                    ; 2 uses
  %i.dh = add nsw i32 %i.dg, -58
  %i.di = icmp ult i32 %i.dh, -10                 ; 2 uses
  %i.dj = mul nuw nsw i32 %i.dd, 10
  %i.dk = add nsw i32 %i.dj, -48
  %i.dl = add nsw i32 %i.dk, %i.dg
  %.018.lcssa.i93156 = select i1 %i.di, i32 %i.dd, i32 %i.dl ; 2 uses
  %i.dm = add nsw i32 %.018.lcssa.i93156, -32
  %or.cond.i95 = icmp ult i32 %i.dm, -31
  br i1 %or.cond.i95, label %date_get_month.exit, label %date_get_num.exit97

date_get_num.exit97:                              ; preds = %.thread153
  %scevgep.i88 = getelementptr i8, ptr %.0122, i64 2
  %.0.lcssa.i94157 = select i1 %i.di, ptr %i.de, ptr %scevgep.i88
  store i32 %.018.lcssa.i93156, ptr %i.b, align 4, !tbaa !29
  br label %.backedge.backedge

bb.s:                                             ; preds = %bb.c
  %i.dn = tail call ptr @av_small_strptime(ptr noundef %.0122, ptr noundef nonnull @.str.8, ptr noundef %2) ; 2 uses
  %.not42 = icmp eq ptr %i.dn, null
  br i1 %.not42, label %date_get_month.exit, label %.backedge.backedge

bb.t:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.do = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.214, i64 noundef 3) #15
  %.not.i = icmp eq i32 %i.do, 0
  br i1 %.not.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.t
  %.018.lcssa.wide.i = phi i32 [ 0, %bb.t ], [ 1, %bb.w ], [ 2, %bb.x ], [ 3, %bb.y ], [ 4, %bb.z ], [ 5, %bb.aa ], [ 6, %bb.ab ], [ 7, %bb.ac ], [ 8, %bb.ad ], [ 9, %bb.ae ], [ 10, %bb.af ], [ 11, %bb.ag ]
  %.lcssa.i = phi ptr [ @.str.214, %bb.t ], [ @.str.215, %bb.w ], [ @.str.216, %bb.x ], [ @.str.217, %bb.y ], [ @.str.218, %bb.z ], [ @.str.219, %bb.aa ], [ @.str.220, %bb.ab ], [ @.str.221, %bb.ac ], [ @.str.222, %bb.ad ], [ @.str.223, %bb.ae ], [ @.str.224, %bb.af ], [ @.str.225, %bb.ag ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 3 ; 2 uses
  %i.dq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dp) #17 ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %.0122, i64 3 ; 3 uses
  %i.dt = icmp sgt i32 %i.dr, 0
  br i1 %i.dt, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.du = and i64 %i.dq, 2147483647               ; 2 uses
  %i.dv = tail call i32 @av_strncasecmp(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dp, i64 noundef %i.du) #15
  %.not16.i = icmp eq i32 %i.dv, 0
  %spec.select.idx = select i1 %.not16.i, i64 %i.du, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ds, i64 %spec.select.idx
  br label %bb.ah

bb.w:                                             ; preds = %bb.t
  %i.dw = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.215, i64 noundef 3) #15
  %.not.1.i = icmp eq i32 %i.dw, 0
  br i1 %.not.1.i, label %bb.u, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.216, i64 noundef 3) #15
  %.not.2.i = icmp eq i32 %i.dx, 0
  br i1 %.not.2.i, label %bb.u, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.217, i64 noundef 3) #15
  %.not.3.i = icmp eq i32 %i.dy, 0
  br i1 %.not.3.i, label %bb.u, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.218, i64 noundef 3) #15
  %.not.4.i = icmp eq i32 %i.dz, 0
  br i1 %.not.4.i, label %bb.u, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.219, i64 noundef 3) #15
  %.not.5.i = icmp eq i32 %i.ea, 0
  br i1 %.not.5.i, label %bb.u, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.220, i64 noundef 3) #15
  %.not.6.i = icmp eq i32 %i.eb, 0
  br i1 %.not.6.i, label %bb.u, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.221, i64 noundef 3) #15
  %.not.7.i = icmp eq i32 %i.ec, 0
  br i1 %.not.7.i, label %bb.u, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.222, i64 noundef 3) #15
  %.not.8.i = icmp eq i32 %i.ed, 0
  br i1 %.not.8.i, label %bb.u, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.223, i64 noundef 3) #15
  %.not.9.i = icmp eq i32 %i.ee, 0
  br i1 %.not.9.i, label %bb.u, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.224, i64 noundef 3) #15
  %.not.10.i = icmp eq i32 %i.ef, 0
  br i1 %.not.10.i, label %bb.u, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = tail call i32 @av_strncasecmp(ptr noundef %.0122, ptr noundef nonnull @.str.225, i64 noundef 3) #15
  %.not.11.i = icmp eq i32 %i.eg, 0
  br i1 %.not.11.i, label %bb.u, label %date_get_month.exit

bb.ah:                                            ; preds = %bb.v, %bb.u
  %.10.ph = phi ptr [ %i.ds, %bb.u ], [ %spec.select, %bb.v ]
  store i32 %.018.lcssa.wide.i, ptr %i.a, align 8, !tbaa !28
  br label %.backedge.backedge

bb.ai:                                            ; preds = %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %.0122, i64 1
  %i.ei = load i8, ptr %.0122, align 1, !tbaa !19
  %.not41 = icmp eq i8 %i.ei, 37
  br i1 %.not41, label %.backedge.backedge, label %date_get_month.exit

date_get_month.exit:                              ; preds = %bb.r, %bb.q, %bb.k, %bb.i, %bb.m, %.backedge, %.thread153, %.thread146, %.thread132, %.thread, %bb.h, %.split.loop.exit, %bb.ag, %bb.c, %bb.ai, %bb.s, %av_isspace.exit
  %.0 = phi ptr [ null, %bb.ag ], [ null, %bb.ai ], [ null, %av_isspace.exit ], [ %.0122, %.backedge ], [ null, %bb.h ], [ null, %.thread ], [ null, %.thread132 ], [ null, %bb.m ], [ null, %.thread146 ], [ null, %bb.s ], [ null, %bb.c ], [ null, %.split.loop.exit ], [ null, %bb.q ], [ null, %bb.i ], [ null, %.thread153 ], [ null, %bb.k ], [ null, %bb.r ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -185544734670848, 185482572462848) i64 @av_timegm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = icmp slt i32 %i.d, 2                     ; 2 uses
  %.016.v = select i1 %i.g, i32 1899, i32 1900
  %.016 = add nsw i32 %.016.v, %i.b               ; 4 uses
  %.0.v = select i1 %i.g, i32 13, i32 1
  %.0 = add nsw i32 %.0.v, %i.d
  %i.h = mul nsw i32 %.0, 153
  %i.i = add nsw i32 %i.h, -457
  %i.j = sdiv i32 %i.i, 5
  %i.k = mul nsw i32 %.016, 365
  %i.l = sdiv i32 %.016, 4
  %.neg = sdiv i32 %.016, -100
  %i.m = sdiv i32 %.016, 400
  %i.n = add i32 %i.f, -719469
  %i.o = add i32 %i.n, %i.k
  %i.p = add i32 %i.o, %i.l
  %i.q = add i32 %i.p, %.neg
  %i.r = add i32 %i.q, %i.m
  %i.s = add i32 %i.r, %i.j
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 86400
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24
  %i.x = mul nsw i32 %i.w, 3600
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = mul nsw i32 %i.z, 60
  %i.ab = add nsw i32 %i.aa, %i.x
  %i.ac = load i32, ptr %0, align 8, !tbaa !26
  %i.ad = add nsw i32 %i.ab, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.u, %i.ae
  ret i64 %i.af
}

; Function Attrs: nounwind uwtable
define range(i32 -34, 1) i32 @av_parse_time(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.tm, align 8                 ; 24 uses
  %4 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.tm, align 8                 ; 9 uses
  %.sroa.8 = alloca [44 x i8], align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i64 -9223372036854775808, ptr %0, align 8, !tbaa !41
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @av_gettime() #15          ; 2 uses
  %i.d = sdiv i64 %i.c, 1000000
  store i64 %i.d, ptr %i.a, align 8, !tbaa !41
  %i.e = tail call i32 @av_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.15) #15
  %.not162 = icmp eq i32 %i.e, 0
  br i1 %.not162, label %bb.c, label %.preheader263.preheader

.preheader263.preheader:                          ; preds = %bb.b
  %i.f = call ptr @av_small_strptime(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) ; 2 uses
  %.not163 = icmp eq ptr %i.f, null
  br i1 %.not163, label %.preheader263.1, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %0, align 8, !tbaa !41
  br label %.loopexit260.thread

.preheader263.1:                                  ; preds = %.preheader263.preheader
  %i.g = call ptr @av_small_strptime(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %.preheader263.1, %.preheader263.preheader
  %.1136 = phi ptr [ %i.f, %.preheader263.preheader ], [ %i.g, %.preheader263.1 ] ; 2 uses
  %.not164 = icmp eq ptr %.1136, null             ; 3 uses
  %spec.select = select i1 %.not164, ptr %1, ptr %.1136 ; 3 uses
  %i.h = load i8, ptr %spec.select, align 1, !tbaa !19 ; 2 uses
  switch i8 %i.h, label %.preheader261 [
    i8 84, label %bb.e
    i8 116, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %.loopexit262

.preheader261:                                    ; preds = %bb.d, %av_isspace.exit.thread
  %i.j = phi i8 [ %.pre280, %av_isspace.exit.thread ], [ %i.h, %bb.d ]
  %.0138 = phi ptr [ %i.k, %av_isspace.exit.thread ], [ %spec.select, %bb.d ] ; 2 uses
  switch i8 %i.j, label %.loopexit262 [
    i8 32, label %av_isspace.exit.thread
    i8 13, label %av_isspace.exit.thread
    i8 12, label %av_isspace.exit.thread
    i8 10, label %av_isspace.exit.thread
    i8 9, label %av_isspace.exit.thread
    i8 11, label %av_isspace.exit.thread
  ]

av_isspace.exit.thread:                           ; preds = %.preheader261, %.preheader261, %.preheader261, %.preheader261, %.preheader261, %.preheader261
  %i.k = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  %.pre280 = load i8, ptr %i.k, align 1, !tbaa !19
  br label %.preheader261, !llvm.loop !39

.loopexit262:                                     ; preds = %.preheader261, %bb.e
  %.1139 = phi ptr [ %i.i, %bb.e ], [ %.0138, %.preheader261 ] ; 2 uses
  %i.l = call ptr @av_small_strptime(ptr noundef nonnull %.1139, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) ; 2 uses
  %.not166 = icmp eq ptr %i.l, null
  br i1 %.not166, label %bb.f, label %.thread193

bb.f:                                             ; preds = %.loopexit262
  %i.m = call ptr @av_small_strptime(ptr noundef nonnull %.1139, ptr noundef nonnull @.str.11, ptr noundef nonnull %3) ; 2 uses
  %.not166.1 = icmp eq ptr %i.m, null
  br i1 %.not166.1, label %.loopexit260.thread, label %.thread193

bb.g:                                             ; preds = %bb.a
  %i.n = load i8, ptr %1, align 1, !tbaa !19
  %i.o = icmp eq i8 %i.n, 45                      ; 3 uses
  %spec.select179.idx = zext i1 %i.o to i64
  %spec.select179 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select179.idx ; 4 uses
  %i.p = call ptr @av_small_strptime(ptr noundef nonnull %spec.select179, ptr noundef nonnull @.str.16, ptr noundef nonnull %3) ; 2 uses
  %.not167 = icmp eq ptr %i.p, null
  br i1 %.not167, label %bb.h, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.q = mul nsw i32 %.pre, 3600
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @av_small_strptime(ptr noundef nonnull %spec.select179, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !24
  %.not168 = icmp eq ptr %i.r, null
  br i1 %.not168, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.t = tail call ptr @__errno_location() #16    ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !11
  %i.u = call i64 @strtoll(ptr noundef nonnull %spec.select179, ptr noundef nonnull %i.b, i32 noundef 10) #15
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.w = icmp eq ptr %i.v, %spec.select179
  br i1 %i.w, label %.thread189, label %bb.j

.thread189:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.loopexit260.thread

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %i.t, align 4, !tbaa !11
  %.not257 = icmp eq i32 %i.x, 34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %.not257, label %.loopexit260.thread, label %.loopexit260

.thread:                                          ; preds = %..thread_crit_edge, %bb.h
  %i.y = phi i32 [ 0, %bb.h ], [ %i.q, %..thread_crit_edge ]
  %.4188 = phi ptr [ %i.r, %bb.h ], [ %i.p, %..thread_crit_edge ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = mul nsw i32 %i.aa, 60
  %i.ac = add nsw i32 %i.ab, %i.y
  %i.ad = load i32, ptr %3, align 8, !tbaa !26
  %i.ae = add nsw i32 %i.ac, %i.ad
  %i.af = sext i32 %i.ae to i64
  br label %.thread193

.loopexit260:                                     ; preds = %bb.j
  %.not169 = icmp eq ptr %i.v, null
  br i1 %.not169, label %.loopexit260.thread, label %.thread193

.thread193:                                       ; preds = %.loopexit262, %bb.f, %.thread, %.loopexit260
  %.1129204.shrunk = phi i1 [ %i.o, %.loopexit260 ], [ %i.o, %.thread ], [ false, %bb.f ], [ false, %.loopexit262 ] ; 2 uses
  %.1131203.shrunk = phi i1 [ false, %.loopexit260 ], [ false, %.thread ], [ %.not164, %bb.f ], [ %.not164, %.loopexit262 ]
  %.0132202 = phi i64 [ %i.u, %.loopexit260 ], [ %i.af, %.thread ], [ undef, %bb.f ], [ undef, %.loopexit262 ] ; 3 uses
  %.6201 = phi ptr [ %i.v, %.loopexit260 ], [ %.4188, %.thread ], [ %i.m, %bb.f ], [ %i.l, %.loopexit262 ] ; 9 uses
  %.1131203.shrunk.fr = freeze i1 %.1131203.shrunk
  %i.ag = load i8, ptr %.6201, align 1, !tbaa !19 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 46
  br i1 %i.ah, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.thread193
  %.7269 = getelementptr inbounds nuw i8, ptr %.6201, i64 1 ; 2 uses
  %scevgep = getelementptr i8, ptr %.6201, i64 7
  %i.ai = load i8, ptr %.7269, align 1, !tbaa !19
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 9
  br i1 %i.al, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.am = mul nuw nsw i32 %i.ak, 100000           ; 2 uses
  %.7 = getelementptr inbounds nuw i8, ptr %.6201, i64 2 ; 2 uses
  %i.an = load i8, ptr %.7, align 1, !tbaa !19
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 9
  br i1 %i.aq, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = mul nuw nsw i32 %i.ap, 10000
  %i.as = add nuw nsw i32 %i.ar, %i.am            ; 2 uses
  %.7.1 = getelementptr inbounds nuw i8, ptr %.6201, i64 3 ; 2 uses
  %i.at = load i8, ptr %.7.1, align 1, !tbaa !19
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 9
  br i1 %i.aw, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = mul nuw nsw i32 %i.av, 1000
  %i.ay = add nuw nsw i32 %i.ax, %i.as            ; 2 uses
  %.7.2 = getelementptr inbounds nuw i8, ptr %.6201, i64 4 ; 2 uses
  %i.az = load i8, ptr %.7.2, align 1, !tbaa !19
  %i.ba = sext i8 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -48                  ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, 9
  br i1 %i.bc, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = mul nuw nsw i32 %i.bb, 100
  %i.be = add nuw nsw i32 %i.bd, %i.ay            ; 2 uses
  %.7.3 = getelementptr inbounds nuw i8, ptr %.6201, i64 5 ; 2 uses
  %i.bf = load i8, ptr %.7.3, align 1, !tbaa !19
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 9
  br i1 %i.bi, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = mul nuw nsw i32 %i.bh, 10
  %i.bk = add nuw nsw i32 %i.bj, %i.be
  %.7.4 = getelementptr inbounds nuw i8, ptr %.6201, i64 6 ; 2 uses
  %i.bl = load i8, ptr %.7.4, align 1, !tbaa !19
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48                  ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, 9                   ; 2 uses
  %i.bp = select i1 %i.bo, i32 0, i32 %i.bn
  %spec.select307 = add nuw nsw i32 %i.bk, %i.bp
  %spec.select308 = select i1 %i.bo, ptr %.7.4, ptr %scevgep
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.preheader
  %.0125.lcssa = phi i32 [ 0, %.preheader ], [ %i.ay, %bb.m ], [ %i.am, %bb.k ], [ %spec.select307, %bb.o ], [ %i.as, %bb.l ], [ %i.be, %bb.n ]
  %.7.lcssa = phi ptr [ %.7269, %.preheader ], [ %.7.2, %bb.m ], [ %.7, %bb.k ], [ %spec.select308, %bb.o ], [ %.7.1, %bb.l ], [ %.7.3, %bb.n ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.8 = phi ptr [ %.7.lcssa, %bb.p ], [ %i.bu, %bb.q ] ; 3 uses
  %i.bq = load i8, ptr %.8, align 1, !tbaa !19    ; 2 uses
  %i.br = sext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -58
  %i.bt = icmp ult i32 %i.bs, -10
  %i.bu = getelementptr inbounds nuw i8, ptr %.8, i64 1
  br i1 %i.bt, label %.loopexit, label %bb.q, !llvm.loop !40

.loopexit:                                        ; preds = %bb.q, %.thread193
  %i.bv = phi i8 [ %i.ag, %.thread193 ], [ %i.bq, %bb.q ] ; 4 uses
  %.9 = phi ptr [ %.6201, %.thread193 ], [ %.8, %bb.q ] ; 6 uses
  %.1126 = phi i32 [ 0, %.thread193 ], [ %.0125.lcssa, %bb.q ] ; 3 uses
  br i1 %.not, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.loopexit
  switch i8 %i.bv, label %.thread205 [
    i8 109, label %bb.s
    i8 117, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.9, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19
  %i.by = icmp eq i8 %i.bx, 115
  br i1 %i.by, label %bb.t, label %.thread205

bb.t:                                             ; preds = %bb.s
  %i.bz = udiv i32 %.1126, 1000
  %i.ca = getelementptr inbounds nuw i8, ptr %.9, i64 2
  br label %bb.ai

bb.u:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.9, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %i.cd = icmp eq i8 %i.cc, 115
  br i1 %i.cd, label %bb.v, label %.thread205

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %.9, i64 2
  br label %bb.ai

.thread205:                                       ; preds = %bb.r, %bb.s, %bb.u
  %i.cf = icmp eq i8 %i.bv, 115
  %spec.select183.idx = zext i1 %i.cf to i64
  %spec.select183 = getelementptr inbounds nuw i8, ptr %.9, i64 %spec.select183.idx
  br label %bb.ai

bb.w:                                             ; preds = %.loopexit
  %i.cg = and i8 %i.bv, -33
  %spec.select184 = icmp eq i8 %i.cg, 90          ; 5 uses
  %i.ch = zext i1 %spec.select184 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.9, i64 %i.ch ; 6 uses
  br i1 %.1131203.shrunk.fr, label %bb.ab, label %switch.early.test

switch.early.test:                                ; preds = %bb.w
  switch i8 %i.bv, label %bb.x [
    i8 122, label %.thread303.thread
    i8 90, label %.thread303.thread
  ]

bb.x:                                             ; preds = %switch.early.test
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !19
  switch i8 %i.cj, label %.thread303 [
    i8 43, label %bb.y
    i8 45, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !19
  %i.cl = icmp eq i8 %i.ck, 43
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 3 uses
  %i.cn = call ptr @av_small_strptime(ptr noundef nonnull %i.cm, ptr noundef nonnull @.str.12, ptr noundef nonnull %5) ; 2 uses
  %.not173 = icmp eq ptr %i.cn, null
  br i1 %.not173, label %bb.z, label %.thread219

bb.z:                                             ; preds = %bb.y
  %i.co = call ptr @av_small_strptime(ptr noundef nonnull %i.cm, ptr noundef nonnull @.str.13, ptr noundef nonnull %5) ; 2 uses
  %.not173.1 = icmp eq ptr %i.co, null
  br i1 %.not173.1, label %bb.aa, label %.thread219

bb.aa:                                            ; preds = %bb.z
  %i.cp = call ptr @av_small_strptime(ptr noundef nonnull %i.cm, ptr noundef nonnull @.str.14, ptr noundef nonnull %5) ; 2 uses
  %.not173.2 = icmp eq ptr %i.cp, null
  br i1 %.not173.2, label %bb.ah, label %.thread219

.thread219:                                       ; preds = %bb.y, %bb.z, %bb.aa
  %.lcssa = phi ptr [ %i.cn, %bb.y ], [ %i.co, %bb.z ], [ %i.cp, %bb.aa ]
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.cu = mul nsw i32 %i.cr, 60
  %i.cv = add nsw i32 %i.cu, %i.ct                ; 2 uses
  %i.cw = sub nsw i32 0, %i.cv
  %i.cx = select i1 %i.cl, i32 %i.cw, i32 %i.cv
  %i.cy = mul nsw i32 %i.cx, 60
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.cz, align 8, !tbaa !42
  %i.da = sext i32 %i.cy to i64
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  br i1 %spec.select184, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.db = call ptr @gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #15
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dc = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink = phi ptr [ %i.dc, %bb.ad ], [ %i.db, %bb.ac ]
  %.sroa.8.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sink, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.8, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.8.0..sroa_idx16, i64 44, i1 false)
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.8.0..sroa_idx17, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.8, i64 44, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread303

.thread303.thread:                                ; preds = %switch.early.test, %switch.early.test
  %.1117229304 = xor i1 %spec.select184, true
  %i.dd = sext i1 %.1117229304 to i32
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !42
  br label %bb.af

.thread303:                                       ; preds = %bb.x, %bb.ae
  %.1117229 = xor i1 %spec.select184, true
  %i.df = sext i1 %.1117229 to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !42
  br i1 %spec.select184, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread303.thread, %.thread219, %.thread303
  %.12226251 = phi ptr [ %.lcssa, %.thread219 ], [ %i.ci, %.thread303 ], [ %i.ci, %.thread303.thread ]
  %.1230249 = phi i64 [ %i.da, %.thread219 ], [ 0, %.thread303 ], [ 0, %.thread303.thread ]
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !28 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !29
  %i.dn = icmp slt i32 %i.dk, 2                   ; 2 uses
  %.016.v.i = select i1 %i.dn, i32 1899, i32 1900
  %.016.i = add nsw i32 %.016.v.i, %i.di          ; 4 uses
  %.0.v.i = select i1 %i.dn, i32 13, i32 1
  %.0.i = add nsw i32 %.0.v.i, %i.dk
  %i.do = mul nsw i32 %.0.i, 153
  %i.dp = add nsw i32 %i.do, -457
  %i.dq = sdiv i32 %i.dp, 5
  %i.dr = mul nsw i32 %.016.i, 365
  %i.ds = sdiv i32 %.016.i, 4
  %.neg.i = sdiv i32 %.016.i, -100
  %i.dt = sdiv i32 %.016.i, 400
  %i.du = add i32 %i.dm, -719469
  %i.dv = add i32 %i.du, %i.dr
  %i.dw = add i32 %i.dv, %i.ds
  %i.dx = add i32 %i.dw, %.neg.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = add i32 %i.dy, %i.dq
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul nsw i64 %i.ea, 86400
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !24
  %i.ee = mul nsw i32 %i.ed, 3600
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !25
  %i.eh = mul nsw i32 %i.eg, 60
  %i.ei = add nsw i32 %i.eh, %i.ee
  %i.ej = load i32, ptr %3, align 8, !tbaa !26
  %i.ek = add nsw i32 %i.ei, %i.ej
  %i.el = sext i32 %i.ek to i64
  %i.em = add nsw i64 %i.eb, %i.el
  br label %.thread252

bb.ag:                                            ; preds = %.thread303
  %i.en = call i64 @mktime(ptr noundef nonnull %3) #15
  br label %.thread252

.thread252:                                       ; preds = %bb.af, %bb.ag
  %.12226250 = phi ptr [ %.12226251, %bb.af ], [ %i.ci, %bb.ag ]
  %.1230248 = phi i64 [ %.1230249, %bb.af ], [ 0, %bb.ag ]
  %i.eo = phi i64 [ %i.em, %bb.af ], [ %i.en, %bb.ag ]
  %i.ep = add nsw i64 %i.eo, %.1230248
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.loopexit260.thread

bb.ai:                                            ; preds = %.thread252, %.thread205, %bb.t, %bb.v
  %.14 = phi ptr [ %i.ca, %bb.t ], [ %i.ce, %bb.v ], [ %.12226250, %.thread252 ], [ %spec.select183, %.thread205 ]
  %.2134 = phi i64 [ %.0132202, %bb.t ], [ %.0132202, %bb.v ], [ %i.ep, %.thread252 ], [ %.0132202, %.thread205 ] ; 3 uses
  %.2127 = phi i32 [ %i.bz, %bb.t ], [ 0, %bb.v ], [ %.1126, %.thread252 ], [ %.1126, %.thread205 ]
  %.0124 = phi i64 [ 1000, %bb.t ], [ 1, %bb.v ], [ 1000000, %.thread252 ], [ 1000000, %.thread205 ] ; 3 uses
  %i.eq = load i8, ptr %.14, align 1, !tbaa !19
  %.not177 = icmp eq i8 %i.eq, 0
  br i1 %.not177, label %bb.aj, label %.loopexit260.thread

bb.aj:                                            ; preds = %bb.ai
  %i.er = udiv i64 9223372036854775807, %.0124
  %i.es = icmp slt i64 %i.er, %.2134
  br i1 %i.es, label %.loopexit260.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = udiv i64 -9223372036854775808, %.0124
  %.neg = sub i64 0, %i.et
  %i.eu = icmp slt i64 %.2134, %.neg
  br i1 %i.eu, label %.loopexit260.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = mul nsw i64 %.0124, %.2134              ; 2 uses
  %i.ew = zext nneg i32 %.2127 to i64             ; 2 uses
  %i.ex = xor i64 %i.ew, 9223372036854775807
  %i.ey = icmp slt i64 %i.ex, %i.ev
  br i1 %i.ey, label %.loopexit260.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = add nsw i64 %i.ev, %i.ew                ; 3 uses
  %i.fa = icmp eq i64 %i.ez, -9223372036854775808
  %or.cond5 = and i1 %.1129204.shrunk, %i.fa
  br i1 %or.cond5, label %.loopexit260.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = sub nsw i64 0, %i.ez
  %i.fc = select i1 %.1129204.shrunk, i64 %i.fb, i64 %i.ez
  store i64 %i.fc, ptr %0, align 8, !tbaa !41
  br label %.loopexit260.thread

.loopexit260.thread:                              ; preds = %bb.f, %bb.ah, %.thread189, %bb.am, %bb.al, %bb.aj, %bb.ak, %bb.ai, %.loopexit260, %bb.j, %bb.an, %bb.c
  %.5146 = phi i32 [ -22, %.loopexit260 ], [ -22, %bb.ai ], [ -34, %bb.aj ], [ -34, %bb.al ], [ 0, %bb.an ], [ -22, %bb.ah ], [ 0, %bb.c ], [ -34, %bb.j ], [ -34, %bb.ak ], [ -34, %bb.am ], [ -22, %.thread189 ], [ -22, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.5146
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i64 @av_gettime() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @av_find_info_tag(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i8, ptr %3, align 1, !tbaa !19
  %i.c = icmp eq i8 %i.b, 63
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.idx
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = add nsw i32 %1, -1
  %i.g = sext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.232 = phi ptr [ %spec.select, %bb.a ], [ %.232.be, %.backedge ] ; 6 uses
  %.0 = phi ptr [ %i.a, %bb.a ], [ %.0.be, %.backedge ] ; 5 uses
  %i.h = load i8, ptr %.232, align 1, !tbaa !19   ; 2 uses
  switch i8 %i.h, label %bb.c [
    i8 0, label %.critedge
    i8 61, label %.critedge
    i8 38, label %.critedge
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %.0 to i64
  %i.j = sub i64 %i.i, %i.d
  %i.k = icmp ult i64 %i.j, 127
  br i1 %i.k, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.h, ptr %.0, align 1, !tbaa !19
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.d, %bb.f
  %.232.pn47 = phi ptr [ %.434, %bb.f ], [ %.232, %bb.d ], [ %.232, %bb.c ]
  %.0.be = phi ptr [ %i.a, %bb.f ], [ %i.l, %bb.d ], [ %.0, %bb.c ]
  %.232.be = getelementptr inbounds nuw i8, ptr %.232.pn47, i64 1
  br label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b
  store i8 0, ptr %.0, align 1, !tbaa !19
  %i.m = load i8, ptr %.232, align 1, !tbaa !19
  %i.n = icmp eq i8 %i.m, 61
  br i1 %i.n, label %.preheader.outer, label %.critedge2

.preheader.outer:                                 ; preds = %.critedge, %.sink.split
  %.232.pn.ph = phi ptr [ %.333, %.sink.split ], [ %.232, %.critedge ]
  %.2.ph = phi ptr [ %i.t, %.sink.split ], [ %0, %.critedge ] ; 5 uses
  %i.o = ptrtoint ptr %.2.ph to i64
  %i.p = sub i64 %i.o, %i.e
  %i.q = icmp slt i64 %i.p, %i.g
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.e
  %.232.pn = phi ptr [ %.333, %bb.e ], [ %.232.pn.ph, %.preheader.outer ]
  %.333 = getelementptr inbounds nuw i8, ptr %.232.pn, i64 1 ; 5 uses
  %i.r = load i8, ptr %.333, align 1, !tbaa !19   ; 3 uses
  switch i8 %i.r, label %bb.e [
    i8 38, label %.critedge2
    i8 0, label %.critedge2
  ]

bb.e:                                             ; preds = %.preheader
  br i1 %i.q, label %.sink.split, label %.preheader, !llvm.loop !44

.sink.split:                                      ; preds = %bb.e
  %i.s = icmp eq i8 %i.r, 43
  %i.t = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  %. = select i1 %i.s, i8 32, i8 %i.r
  store i8 %., ptr %.2.ph, align 1, !tbaa !19
  br label %.preheader.outer, !llvm.loop !44

.critedge2:                                       ; preds = %.preheader, %.preheader, %.critedge
  %.434 = phi ptr [ %.232, %.critedge ], [ %.333, %.preheader ], [ %.333, %.preheader ] ; 2 uses
  %.4 = phi ptr [ %0, %.critedge ], [ %.2.ph, %.preheader ], [ %.2.ph, %.preheader ]
  store i8 0, ptr %.4, align 1, !tbaa !19
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %2) #17
  %.not42 = icmp eq i32 %i.u, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge2
  %i.v = load i8, ptr %.434, align 1, !tbaa !19
  %.not43 = icmp eq i8 %i.v, 38
  br i1 %.not43, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge2
  %.035 = phi i32 [ 1, %.critedge2 ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.035
}

declare i32 @av_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!12, !6, i64 0}
!14 = !{!12, !6, i64 4}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"ColorEntry", !17, i64 0, !5, i64 8}
!21 = !{!20, !17, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !22, i64 40, !17, i64 48}
!24 = !{!23, !6, i64 8}
!25 = !{!23, !6, i64 4}
!26 = !{!23, !6, i64 0}
!27 = !{!23, !6, i64 20}
!28 = !{!23, !6, i64 16}
!29 = !{!23, !6, i64 12}
!30 = distinct !{!30, !15}
!31 = !{!"VideoSizeAbbr", !17, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!31, !17, i64 0}
!33 = !{!31, !6, i64 8}
!34 = !{!31, !6, i64 12}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = !{!22, !22, i64 0}
!42 = !{!23, !6, i64 32}
!43 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 28, i64 8, !41, i64 36, i64 8, !18}
!44 = distinct !{!44, !15}
end_hunk_0
