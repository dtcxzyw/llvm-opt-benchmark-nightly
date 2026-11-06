Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/parseutils?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@av_parse_video_rate:bb.a
  br i1 %.not21.1, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.20, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not21.2 = icmp eq i32 %i.g, 0
  br i1 %.not21.2, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.21, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not21.3 = icmp eq i32 %i.h, 0
  br i1 %.not21.3, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.22, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not21.4 = icmp eq i32 %i.i, 0
  br i1 %.not21.4, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.23, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not21.5 = icmp eq i32 %i.j, 0
  br i1 %.not21.5, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.24, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not21.6 = icmp eq i32 %i.k, 0
  br i1 %.not21.6, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.25, ptr noundef nonnull dereferenceable(1) %1) #17
  %.not21.7 = icmp eq i32 %i.l, 0
  br i1 %.not21.7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.n = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.c) #15
  %.not.i = icmp eq i32 %i.n, 2
  br i1 %.not.i, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @video_rate_abbrs, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @video_rate_abbrs, i64 16), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @video_rate_abbrs, i64 32), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @video_rate_abbrs, i64 48), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @video_rate_abbrs, i64 64), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @video_rate_abbrs, i64 80), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @video_rate_abbrs, i64 96), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @video_rate_abbrs, i64 112), %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  store i64 %i.p, ptr %0, align 4, !tbaa !11
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.q = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 64, ptr noundef null) #15 ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.l, label %av_parse_ratio.exit

bb.l:                                             ; preds = %bb.k
  %i.s = load double, ptr %i.d, align 8, !tbaa !10
  %i.t = call i64 @av_d2q(double noundef %i.s, i32 noundef 1001000) #16 ; 2 uses
  store i64 %i.t, ptr %0, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.u = trunc i64 %i.t to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.v = load i32, ptr %0, align 4, !tbaa !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i32, ptr %i.m, align 4, !tbaa !14
  %i.y = sext i32 %i.x to i64
  %i.z = call i32 @av_reduce(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef %i.w, i64 noundef %i.y, i64 noundef 1001000) #15 ; 0 uses
  %.pre = load i32, ptr %0, align 4, !tbaa !13
  br label %bb.n

av_parse_ratio.exit:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.v

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.aa = phi i32 [ %i.u, %bb.l ], [ %.pre, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !14
  %.not20 = icmp eq i32 %i.ab, 0
  br i1 %.not20, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ac = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #15
  %.not.i22 = icmp eq i32 %i.ac, 2
  br i1 %.not.i22, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ad = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 64, ptr noundef null) #15 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.r, label %av_parse_ratio.exit25

bb.r:                                             ; preds = %bb.q
  %i.af = load double, ptr %i.b, align 8, !tbaa !10
  %i.ag = call i64 @av_d2q(double noundef %i.af, i32 noundef 2147483647) #16 ; 2 uses
  store i64 %i.ag, ptr %0, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ah = trunc i64 %i.ag to i32
  br label %av_parse_ratio.exit25.thread

bb.s:                                             ; preds = %bb.p
  %i.ai = load i32, ptr %0, align 4, !tbaa !13
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !14
  %i.al = sext i32 %i.ak to i64
  %i.am = call i32 @av_reduce(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i64 noundef %i.aj, i64 noundef %i.al, i64 noundef 2147483647) #15 ; 0 uses
  %.pr.pre = load i32, ptr %0, align 4, !tbaa !13
  br label %av_parse_ratio.exit25.thread

av_parse_ratio.exit25.thread:                     ; preds = %bb.r, %bb.s
  %.pr = phi i32 [ %i.ah, %bb.r ], [ %.pr.pre, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.t

av_parse_ratio.exit25:                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.v

bb.t:                                             ; preds = %av_parse_ratio.exit25.thread, %bb.o
  %i.an = phi i32 [ %.pr, %av_parse_ratio.exit25.thread ], [ %i.aa, %bb.o ]
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !14
  %.inv = icmp sgt i32 %i.ap, 0
  %spec.select = select i1 %.inv, i32 0, i32 -22
  br label %bb.v

bb.v:                                             ; preds = %av_parse_ratio.exit25, %av_parse_ratio.exit, %bb.u, %bb.t, %bb.j
  %.017 = phi i32 [ 0, %bb.j ], [ %i.q, %av_parse_ratio.exit ], [ %i.ad, %av_parse_ratio.exit25 ], [ -22, %bb.t ], [ %spec.select, %bb.u ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @av_parse_color(ptr nofree noundef writeonly captures(none) initializes((3, 4)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [128 x i8], align 16              ; 12 uses
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
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  store i8 -1, ptr %i.t, align 1, !tbaa !19
  %i.u = call i32 @av_strcasecmp(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2) #15
  %.not77 = icmp eq i32 %i.u, 0
  br i1 %.not77, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @av_strcasecmp(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3) #15
  %.not78 = icmp eq i32 %i.v, 0
  br i1 %.not78, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = call i32 @av_get_random_seed() #15
  %4 = call i32 @llvm.bswap.i32(i32 %i.w)
  store i32 %4, ptr %0, align 1, !tbaa !19
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  br i1 %.not79, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = call i64 @strspn(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4) #17
  %sext = shl i64 %i.r, 32
  %i.y = ashr exact i64 %sext, 32
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.j, label %.lr.ph.i

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.aa = call i64 @strtoul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 16) #15 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %.not81 = icmp eq i8 %i.ad, 0
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
  %i.ae = trunc i64 %i.aa to i8
  store i8 %i.ae, ptr %i.t, align 1, !tbaa !19
  %i.af = lshr i32 %i.ab, 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.064 = phi i32 [ %i.af, %bb.l ], [ %i.ab, %bb.k ] ; 3 uses
  %i.ag = lshr i32 %.064, 16
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %0, align 1, !tbaa !19
  %i.ai = lshr i32 %.064, 8
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !19
  %i.al = trunc i32 %.064 to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.al, ptr %i.am, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.r

.lr.ph.i:                                         ; preds = %bb.i, %bb.p
  %.021.i = phi i64 [ %.1.i, %bb.p ], [ 140, %bb.i ] ; 2 uses
  %.01620.i = phi i64 [ %.117.i, %bb.p ], [ 0, %bb.i ] ; 2 uses
  %i.an = add i64 %.01620.i, %.021.i
  %i.ao = lshr i64 %i.an, 1                       ; 3 uses
  %i.ap = shl i64 %i.ao, 4                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @color_table, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !21
  %i.as = call i32 @av_strcasecmp(ptr noundef nonnull %i.b, ptr noundef %i.ar) #15 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bsearch.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add nuw i64 %i.ao, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.117.i = phi i64 [ %i.au, %bb.o ], [ %.01620.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i64 [ %.021.i, %bb.o ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.av = icmp ult i64 %.117.i, %.1.i
  br i1 %i.av, label %.lr.ph.i, label %bb.q, !llvm.loop !35

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b) #15
  br label %bb.w

bsearch.exit:                                     ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr @color_table, i64 %i.ap
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 8 dereferenceable(3) %i.ax, i64 3, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bsearch.exit, %bb.g
  %.not82 = icmp eq ptr %i.q, null
  br i1 %.not82, label %bb.w, label %sub_091

sub_091:                                          ; preds = %bb.r
  %i.ay = load i8, ptr %i.q, align 1
  %.not97 = icmp eq i8 %i.ay, 48
  br i1 %.not97, label %.tail90, label %.tail90.thread

.tail90:                                          ; preds = %sub_091
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 120
  br i1 %i.bb, label %bb.s, label %.tail90.thread

bb.s:                                             ; preds = %.tail90
  %i.bc = call i64 @strtoul(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %i.bd = uitofp nsz i64 %i.bc to double
  br label %bb.t

.tail90.thread:                                   ; preds = %sub_091, %.tail90
  %i.be = call nsz double @strtod(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a) #15 ; 3 uses
  %i.bf = fcmp nsz olt double %i.be, 0.000000e+00
  %i.bg = fcmp nsz ogt double %i.be, 1.000000e+00
  %or.cond4 = or i1 %i.bf, %i.bg
  %i.bh = fmul nsz double %i.be, 2.550000e+02
  %.0 = select nsz i1 %or.cond4, double 2.560000e+02, double %i.bh
  br label %bb.t

bb.t:                                             ; preds = %.tail90.thread, %bb.s
  %.1 = phi nsz double [ %.0, %.tail90.thread ], [ %i.bd, %bb.s ] ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.q
  br i1 %i.bj, label %.critedge87, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bl = icmp ne i8 %i.bk, 0
  %i.bm = fcmp nsz ogt double %.1, 2.550000e+02
  %or.cond6 = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond6, label %.critedge87, label %bb.v

.critedge87:                                      ; preds = %bb.u, %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.q, ptr noundef nonnull %1) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = fptoui double %.1 to i8
  store i8 %i.bn, ptr %i.t, align 1, !tbaa !19
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
end_hunk_0
begin_hunk_1_@av_parse_time:bb.a
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
  br label %bb.b, !llvm.loop !44

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
  br i1 %i.q, label %.sink.split, label %.preheader, !llvm.loop !45

.sink.split:                                      ; preds = %bb.e
  %i.s = icmp eq i8 %i.r, 43
  %i.t = getelementptr inbounds nuw i8, ptr %.2.ph, i64 1
  %. = select i1 %i.s, i8 32, i8 %i.r
  store i8 %., ptr %.2.ph, align 1, !tbaa !19
  br label %.preheader.outer, !llvm.loop !45

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
!45 = distinct !{!45, !15}
end_hunk_1
