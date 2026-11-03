Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/parseutils?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@av_parse_color:bb.a
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.d = load i8, ptr %1, align 1, !tbaa !19
  switch i8 %i.d, label %.tail.thread.fold.split [
    i8 35, label %.tail.thread
    i8 48, label %.tail
  ]

.tail:                                            ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %.fr = freeze i8 %i.f
  %i.g = icmp ne i8 %.fr, 120                     ; 2 uses
  %spec.select = select i1 %i.g, i32 0, i32 2
  br label %.tail.thread

.tail.thread.fold.split:                          ; preds = %bb.a
  br label %.tail.thread

.tail.thread:                                     ; preds = %.tail, %bb.a, %.tail.thread.fold.split
  %.not79 = phi i1 [ false, %bb.a ], [ %i.g, %.tail ], [ true, %.tail.thread.fold.split ]
  %.067 = phi i32 [ 1, %bb.a ], [ %spec.select, %.tail ], [ 0, %.tail.thread.fold.split ] ; 2 uses
  %i.h = icmp slt i32 %2, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail.thread
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.j = trunc i64 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.tail.thread
  %.068 = phi i32 [ %i.j, %bb.b ], [ %2, %.tail.thread ]
  %i.k = zext nneg i32 %.067 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %reass.sub = sub i32 %.068, %.067
  %i.m = add i32 %reass.sub, 1
  %narrow = tail call i32 @llvm.umin.i32(i32 %i.m, i32 128)
  %spec.select85 = zext nneg i32 %narrow to i64
  %i.n = call i64 @av_strlcpy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, i64 noundef %spec.select85) #15 ; 0 uses
  %i.o = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 64) #17 ; 4 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !18
  %.not76 = icmp eq ptr %i.o, null
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !18
  store i8 0, ptr %i.o, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.p, %bb.d ], [ null, %bb.c ] ; 7 uses
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #17 ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  store i8 -1, ptr %i.t, align 1, !tbaa !19
  %i.u = call i32 @av_strcasecmp(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2) #15
  %.not77 = icmp eq i32 %i.u, 0
  br i1 %.not77, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @av_strcasecmp(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3) #15
  %.not78 = icmp eq i32 %i.v, 0
  br i1 %.not78, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = call i32 @av_get_random_seed() #15       ; 4 uses
  %i.x = lshr i32 %i.w, 24
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %0, align 1, !tbaa !19
  %i.z = lshr i32 %i.w, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !19
  %i.ac = lshr i32 %i.w, 8
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !19
  %i.af = trunc i32 %i.w to i8
  store i8 %i.af, ptr %i.t, align 1, !tbaa !19
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  br i1 %.not79, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = call i64 @strspn(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4) #17
  %sext = shl i64 %i.r, 32
  %i.ah = ashr exact i64 %sext, 32
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.j, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.aj = call i64 @strtoul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 16) #15 ; 2 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %.not81 = icmp eq i8 %i.am, 0
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
  %i.an = trunc i64 %i.aj to i8
  store i8 %i.an, ptr %i.t, align 1, !tbaa !19
  %i.ao = lshr i32 %i.ak, 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.064 = phi i32 [ %i.ao, %bb.l ], [ %i.ak, %bb.k ] ; 3 uses
  %i.ap = lshr i32 %.064, 16
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %0, align 1, !tbaa !19
  %i.ar = lshr i32 %.064, 8
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !19
  %i.au = trunc i32 %.064 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.i, %bb.p
  %.021.i = phi i64 [ %.1.i, %bb.p ], [ 140, %bb.i ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.p ], [ 0, %bb.i ] ; 2 uses
  %i.aw = add i64 %.01620.i, %.021.i
  %i.ax = lshr i64 %i.aw, 1                       ; 3 uses
  %i.ay = shl i64 %i.ax, 4                        ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr @color_table, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !21
  %i.bb = call i32 @av_strcasecmp(ptr noundef nonnull %i.b, ptr noundef %i.ba) #15 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %bsearch.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = add nuw i64 %i.ax, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.117.i = phi i64 [ %i.bd, %bb.o ], [ %.01620.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i64 [ %.021.i, %bb.o ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  %i.be = icmp ult i64 %.117.i, %.1.i
  br i1 %i.be, label %.lr.ph.i, label %bb.q, !llvm.loop !35

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b) #15
  br label %bb.w

bsearch.exit:                                     ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr @color_table, i64 %i.ay
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(3) %i.bg, i64 3, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bsearch.exit, %bb.g
  %.not82 = icmp eq ptr %i.q, null
  br i1 %.not82, label %bb.w, label %sub_091

sub_091:                                          ; preds = %bb.r
  %i.bh = load i8, ptr %i.q, align 1
  %.not97 = icmp eq i8 %i.bh, 48
  br i1 %.not97, label %.tail90, label %.tail90.thread

.tail90:                                          ; preds = %sub_091
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 120
  br i1 %i.bk, label %bb.s, label %.tail90.thread

bb.s:                                             ; preds = %.tail90
  %i.bl = call i64 @strtoul(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %i.bm = uitofp nsz i64 %i.bl to double
  br label %bb.t

.tail90.thread:                                   ; preds = %sub_091, %.tail90
  %i.bn = call nsz double @strtod(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a) #15 ; 3 uses
  %i.bo = fcmp nsz olt double %i.bn, 0.000000e+00
  %i.bp = fcmp nsz ogt double %i.bn, 1.000000e+00
  %or.cond4 = or i1 %i.bo, %i.bp
  %i.bq = fmul nsz double %i.bn, 2.550000e+02
  %.0 = select nsz i1 %or.cond4, double 2.560000e+02, double %i.bq
  br label %bb.t

bb.t:                                             ; preds = %.tail90.thread, %bb.s
  %.1 = phi nsz double [ %.0, %.tail90.thread ], [ %i.bm, %bb.s ] ; 3 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.q
  br i1 %i.bs, label %.critedge87, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bu = icmp ne i8 %i.bt, 0
  %i.bv = fcmp nsz ogt double %.1, 2.550000e+02
  %4 = fcmp nsz olt double %.1, 0.000000e+00
  %5 = or i1 %i.bv, %4
  %or.cond8 = select i1 %i.bu, i1 true, i1 %5
  br i1 %or.cond8, label %.critedge87, label %bb.v

.critedge87:                                      ; preds = %bb.u, %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.q, ptr noundef nonnull %1) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = fptoui double %.1 to i8
  store i8 %i.bw, ptr %i.t, align 1, !tbaa !19
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
  %i.o = select i1 %i.n, i32 2, i32 4             ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %scevgep.i = getelementptr i8, ptr %.0122, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.023.i = phi ptr [ %.0122, %bb.d ], [ %i.af, %bb.g ] ; 5 uses
  %.01822.i = phi i32 [ 0, %bb.d ], [ %i.ae, %bb.g ] ; 2 uses
  %.01921.i = phi i32 [ 0, %bb.d ], [ %i.ag, %bb.g ]
  %i.q = load i8, ptr %.023.i, align 1, !tbaa !19
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %i.s = add nsw i32 %i.r, -58
  %i.t = icmp ult i32 %i.s, -10
  br i1 %i.t, label %.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = mul nsw i32 %.01822.i, 10
  %i.v = add i32 %i.u, -48
  %i.w = add i32 %i.v, %i.r                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19
  %i.z = sext i8 %i.y to i32                      ; 2 uses
  %i.aa = add nsw i32 %i.z, -58
  %i.ab = icmp ult i32 %i.aa, -10
  br i1 %i.ab, label %.split.loop.exit220, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = mul nsw i32 %i.w, 10
  %i.ad = add i32 %i.ac, -48
  %i.ae = add i32 %i.ad, %i.z                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.023.i, i64 2
  %i.ag = add nuw nsw i32 %.01921.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ag, %i.o
  br i1 %exitcond.not.i.1, label %.split.loop.exit, label %bb.e, !llvm.loop !38

.split.loop.exit220:                              ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.023.i, i64 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.e, %bb.g, %.split.loop.exit220
  %.018.lcssa.i = phi i32 [ %i.w, %.split.loop.exit220 ], [ %i.ae, %bb.g ], [ %.01822.i, %bb.e ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.ah, %.split.loop.exit220 ], [ %scevgep.i, %bb.g ], [ %.023.i, %bb.e ] ; 2 uses
  %i.ai = icmp eq ptr %.0.lcssa.i, %.0122
  br i1 %i.ai, label %date_get_month.exit, label %bb.h

bb.h:                                             ; preds = %.split.loop.exit
  %i.aj = icmp slt i32 %.018.lcssa.i, 0
  %i.ak = icmp sgt i32 %.018.lcssa.i, 23
  %i.al = select i1 %i.n, i1 %i.ak, i1 false
  %or.cond.i = or i1 %i.aj, %i.al
  br i1 %or.cond.i, label %date_get_month.exit, label %date_get_num.exit

date_get_num.exit:                                ; preds = %bb.h
  store i32 %.018.lcssa.i, ptr %i.e, align 8, !tbaa !24
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedge164, %date_get_num.exit, %date_get_num.exit57, %date_get_num.exit67, %date_get_num.exit77, %date_get_num.exit87, %date_get_num.exit97, %bb.ah, %bb.s, %bb.ai, %bb.b
  %.0122.be = phi ptr [ %i.en, %bb.ai ], [ %i.k, %bb.b ], [ %.0.lcssa.i, %date_get_num.exit ], [ %.0.lcssa.i54129201, %date_get_num.exit57 ], [ %.0.lcssa.i64136209, %date_get_num.exit67 ], [ %.0.lcssa.i74143, %date_get_num.exit77 ], [ %.0.lcssa.i84150, %date_get_num.exit87 ], [ %.0.lcssa.i94157, %date_get_num.exit97 ], [ %i.dt, %bb.s ], [ %.10.ph, %bb.ah ], [ %.1, %.critedge164 ]
  %.030.be = phi ptr [ %i.l, %bb.ai ], [ %i.f, %bb.b ], [ %i.l, %date_get_num.exit ], [ %i.l, %date_get_num.exit57 ], [ %i.l, %date_get_num.exit67 ], [ %i.l, %date_get_num.exit77 ], [ %i.l, %date_get_num.exit87 ], [ %i.l, %date_get_num.exit97 ], [ %i.l, %bb.s ], [ %i.l, %bb.ah ], [ %i.f, %.critedge164 ]
end_hunk_0
