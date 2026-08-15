inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 25
begin_hunk_0_@outer_loop:bb.a
  %i.z = load double, ptr %i.y, align 8, !tbaa !14
  %i.aa = call double @llvm.fabs.f64(double %i.z) ; 2 uses
  %sqrt.1 = call double @llvm.sqrt.f64(double %i.aa)
  %i.ab = fmul double %i.aa, %sqrt.1
  %i.ac = call double @sqrt(double noundef %i.ab) #11, !tbaa !4
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store double %i.ac, ptr %i.ad, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 576
  br i1 %exitcond.not.1, label %bb.d, label %bb.c, !llvm.loop !33

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !4
  %i.af = call i32 @bin_search_StepSize2(ptr noundef %0, i32 noundef %2, i32 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %7) #11
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !34
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %.1101 = phi i32 [ %i.af, %bb.d ], [ %.0100119, %.thread ] ; 3 uses
  %i.ah = load i32, ptr %i.k, align 4, !tbaa !21
  %i.ai = sub i32 %2, %i.ah                       ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread140, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %.099120, 0                 ; 2 uses
  br i1 %i.ak, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %.1101, %i.ai
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.j, align 4, !tbaa !34
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.j, align 4, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  %i.ao = call i32 @inner_loop(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef %i.ai, ptr noundef nonnull %7) #11
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %.0 = phi i32 [ %.1101, %bb.g ], [ %i.ao, %.sink.split ]
  store i32 %.0, ptr %7, align 8, !tbaa !35
  %i.ap = load i32, ptr %i.l, align 8, !tbaa !36
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = call i32 @calc_noise1(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %7, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c)
  %.pre.pre = load double, ptr %i.c, align 8, !tbaa !14
  %.pre128.pre = load double, ptr %i.d, align 8, !tbaa !14
  %.pre129.pre = load double, ptr %i.e, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pre129 = phi double [ %.pre129.pre, %bb.j ], [ %.pre129136, %bb.i ] ; 3 uses
  %.pre128 = phi double [ %.pre128.pre, %bb.j ], [ %.pre128133, %bb.i ] ; 3 uses
  %.pre = phi double [ %.pre.pre, %bb.j ], [ %.pre130, %bb.i ] ; 3 uses
  %.195 = phi i32 [ %i.ar, %bb.j ], [ 0, %bb.i ]  ; 3 uses
  br i1 %i.ak, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.m, align 4, !tbaa !37
  %i.at = call i32 @quant_compare(i32 noundef %i.as, i32 noundef %.091122, double noundef %.082125, double noundef %.085124, double noundef %.088123, i32 noundef %.195, double noundef %.pre129, double noundef %.pre128, double noundef %.pre)
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %6, ptr noundef nonnull align 4 dereferenceable(244) %10, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %5, ptr noundef nonnull align 16 dereferenceable(2304) %i.a, i64 2304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %11, ptr noundef nonnull align 8 dereferenceable(120) %7, i64 120, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.293 = phi i32 [ %.091122, %bb.l ], [ %.195, %.critedge ] ; 5 uses
  %.290 = phi double [ %.088123, %bb.l ], [ %.pre, %.critedge ] ; 5 uses
  %.287 = phi double [ %.085124, %bb.l ], [ %.pre128, %.critedge ] ; 5 uses
  %.284 = phi double [ %.082125, %bb.l ], [ %.pre129, %.critedge ] ; 5 uses
  %i.av = load i32, ptr %i.n, align 4, !tbaa !38
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = icmp eq i32 %.195, 0
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %.thread140, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @amp_scalefac_bands(ptr noundef nonnull %i.b, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %i.g)
  %i.ay = call i32 @loop_break(ptr noundef nonnull %10, ptr noundef nonnull %7) #11
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.o, label %.thread140

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !39
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = call i32 @scale_bitcount(ptr noundef nonnull %10, ptr noundef nonnull %7) #11
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bd = call i32 @scale_bitcount_lsf(ptr noundef nonnull %10, ptr noundef nonnull %7) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0102 = phi i32 [ %i.bc, %bb.p ], [ %i.bd, %bb.q ]
  %.not109 = icmp eq i32 %.0102, 0                ; 2 uses
  br i1 %.not109, label %.thread.backedge, label %bb.s

.thread.backedge:                                 ; preds = %bb.r, %bb.u
  br label %.thread, !llvm.loop !40

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr %i.p, align 4, !tbaa !41
  %.not117 = icmp eq i32 %i.be, 0
  br i1 %.not117, label %bb.t, label %.thread140

bb.t:                                             ; preds = %bb.s
  %i.bf = load i32, ptr %i.q, align 8, !tbaa !42
  %.not112 = icmp eq i32 %i.bf, 0
  br i1 %.not112, label %.thread140, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = call i32 @init_outer_loop(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) ; 0 uses
  store i32 1, ptr %i.p, align 4, !tbaa !41
  br label %.thread.backedge

.thread140:                                       ; preds = %bb.e, %bb.t, %bb.s, %bb.m, %bb.n
  %.284158.ph = phi double [ %.284, %bb.t ], [ %.284, %bb.n ], [ %.284, %bb.m ], [ %.284, %bb.s ], [ %.082125, %bb.e ]
  %.287157.ph = phi double [ %.287, %bb.t ], [ %.287, %bb.n ], [ %.287, %bb.m ], [ %.287, %bb.s ], [ %.085124, %bb.e ]
  %.290156.ph = phi double [ %.290, %bb.t ], [ %.290, %bb.n ], [ %.290, %bb.m ], [ %.290, %bb.s ], [ %.088123, %bb.e ]
  %.293155.ph = phi i32 [ %.293, %bb.t ], [ %.293, %bb.n ], [ %.293, %bb.m ], [ %.293, %bb.s ], [ %.091122, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, ptr noundef nonnull align 8 dereferenceable(120) %11, i64 120, i1 false)
  %i.bh = load i32, ptr %i.k, align 4, !tbaa !21
  %i.bi = load i32, ptr %7, align 8, !tbaa !35
  %i.bj = add i32 %i.bi, %i.bh
  store i32 %i.bj, ptr %7, align 8, !tbaa !35
  %i.bk = sitofp i32 %.293155.ph to double
  store double %i.bk, ptr %3, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %.290156.ph, ptr %i.bl, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.287157.ph, ptr %i.bm, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %.284158.ph, ptr %i.bn, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  ret void
}

declare void @best_scalefac_store(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @best_huffman_divide(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResvAdjust(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ResvFrameEnd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_masking_lower(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = shl nsw i32 %0, 1
  %i.b = add nsw i32 %i.a, -6
  %i.c = sitofp i32 %i.b to float
  %i.d = add nsw i32 %1, -125
  %i.e = sitofp i32 %i.d to double
  %i.f = fdiv nnan double %i.e, 2.375000e+03
  %i.g = fptrunc nnan double %i.f to float
  %i.h = fadd nnan float %i.g, -1.000000e+00
  %i.i = fmul nnan float %i.h, 4.000000e+00
  %i.j = fadd float %i.i, %i.c
  %i.k = fdiv float %i.j, 1.000000e+01
  %i.l = fpext float %i.k to double
  %i.m = tail call double @pow(double noundef 1.000000e+01, double noundef %i.l) #11, !tbaa !4
  %i.n = fptrunc double %i.m to float
  store float %i.n, ptr @masking_lower, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @VBR_iteration_loop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.gr_info, align 8            ; 4 uses
  %9 = alloca %struct.gr_info, align 8            ; 4 uses
  %10 = alloca %struct.III_scalefac_t, align 4    ; 4 uses
  %11 = alloca %struct.III_psy_xmin, align 8      ; 7 uses
  %i.a = alloca [2 x [2 x i32]], align 16         ; 10 uses
  %i.b = alloca [4 x double], align 16            ; 8 uses
  %i.c = alloca [15 x i32], align 16              ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  tail call void @iteration_init(ptr noundef %0, ptr noundef %5, ptr noundef %6) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  store i32 1, ptr %i.f, align 4, !tbaa !44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45   ; 2 uses
  %.not391 = icmp slt i32 %i.h, 1
  br i1 %.not391, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 204
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.0300392 = phi i32 [ 0, %.lr.ph ], [ %.1301, %bb.d ]
  call void @getframebits(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11
  %i.k = load i32, ptr %i.f, align 4, !tbaa !44
  %i.l = load i32, ptr %i.i, align 8, !tbaa !46
  %i.m = icmp eq i32 %i.k, %i.l
  %.pre = load i32, ptr %i.e, align 4, !tbaa !4   ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.j, align 4, !tbaa !16
  %i.o = sdiv i32 %.pre, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1301 = phi i32 [ %i.o, %bb.c ], [ %.0300392, %bb.b ] ; 2 uses
  %i.p = load i32, ptr %i.d, align 4, !tbaa !4
  %i.q = call i32 @ResvFrameBegin(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %.pre, i32 noundef %i.p) #11
  %i.r = load i32, ptr %i.f, align 4, !tbaa !44   ; 3 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.s
  store i32 %i.q, ptr %i.t, align 4, !tbaa !4
  %i.u = add nsw i32 %i.r, 1
  store i32 %i.u, ptr %i.f, align 4, !tbaa !44
  %i.v = load i32, ptr %i.g, align 4, !tbaa !45   ; 2 uses
  %.not.not = icmp slt i32 %i.r, %i.v
  br i1 %.not.not, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.w = call i32 @llvm.smax.i32(i32 %.1301, i32 125)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0300.lcssa = phi i32 [ 125, %bb.a ], [ %i.w, %._crit_edge.loopexit ]
  %.lcssa389 = phi i32 [ %i.h, %bb.a ], [ %i.v, %._crit_edge.loopexit ]
  store i32 %.lcssa389, ptr %i.f, align 4, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !8
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph407, label %.loopexit380.thread

.lr.ph407:                                        ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph407, %._crit_edge400
  %.sroa.0.0 = phi <576 x i32> [ undef, %.lr.ph407 ], [ %.sroa.0.5, %._crit_edge400 ] ; 2 uses
  %indvars.iv466 = phi i64 [ 0, %.lr.ph407 ], [ %indvars.iv.next467, %._crit_edge400 ] ; 9 uses
  %.0284405 = phi i32 [ 0, %.lr.ph407 ], [ %.1285.lcssa, %._crit_edge400 ] ; 2 uses
  %.0304403 = phi i32 [ 0, %.lr.ph407 ], [ %.1305.lcssa, %._crit_edge400 ] ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.ai = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %.not322 = icmp eq i32 %i.ai, 0
  %spec.store.select = select i1 %.not322, i32 %i.ah, i32 1 ; 2 uses
  %i.aj = load i32, ptr @convert_mdct, align 4, !tbaa !4
  %.not323 = icmp eq i32 %i.aj, 0
  br i1 %.not323, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv466 ; 2 uses
  call void @ms_convert(ptr noundef %i.ak, ptr noundef %i.ak) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = icmp sgt i32 %spec.store.select, 0
  br i1 %i.al, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [240 x i8], ptr %i.ab, i64 %indvars.iv466
  %i.an = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv466
  %i.ao = getelementptr inbounds nuw [488 x i8], ptr %7, i64 %indvars.iv466 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv466 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv466 ; 2 uses
  %i.ar = getelementptr inbounds nuw [1952 x i8], ptr %4, i64 %indvars.iv466
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv466
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph399, %bb.v
  %.sroa.0.1 = phi <576 x i32> [ %.sroa.0.0, %.lr.ph399 ], [ %.sroa.0.4, %bb.v ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph399 ], [ %indvars.iv.next, %bb.v ] ; 12 uses
  %.1285397 = phi i32 [ %.0284405, %.lr.ph399 ], [ %.3, %bb.v ]
  %.1305394 = phi i32 [ %.0304403, %.lr.ph399 ], [ %.2306, %bb.v ] ; 2 uses
  %i.at = getelementptr inbounds nuw [120 x i8], ptr %i.am, i64 %indvars.iv ; 22 uses
  %i.au = getelementptr inbounds nuw [4608 x i8], ptr %i.an, i64 %indvars.iv ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  store ptr @nr_of_sfb_block, ptr %i.aw, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.ax, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  store i32 0, ptr %i.ba, align 4, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 210>, ptr %i.at, align 8, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  store i32 0, ptr %i.bb, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  store i32 0, ptr %i.bc, align 8, !tbaa !23
  %i.bd = load i32, ptr %i.ac, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %.thread.i.preheader, label %bb.i

.thread.i.preheader:                              ; preds = %bb.i, %bb.h
  br label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !25
  %.not79.i = icmp eq i32 %i.bf, 2
  br i1 %.not79.i, label %.preheader84.i, label %.thread.i.preheader

.preheader84.i:                                   ; preds = %bb.i, %.preheader84.i
  %.sroa.11.0.i = phi double [ %i.bw, %.preheader84.i ], [ 0.000000e+00, %bb.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader84.i ], [ 0, %bb.i ] ; 3 uses
  %.07092.i = phi i32 [ %i.cc, %.preheader84.i ], [ 0, %bb.i ]
  %i.bg = phi <2 x double> [ %i.cb, %.preheader84.i ], [ zeroinitializer, %bb.i ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bl = call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %.sroa.11.0.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !14
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bi, i64 1 ; 2 uses
  %i.bq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bp, <2 x double> %i.bg)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !14 ; 2 uses
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.bl) ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !14
  %i.bz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bt, i64 1 ; 2 uses
  %i.cb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.ca, <2 x double> %i.bq) ; 5 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 6
  %i.cc = add nuw nsw i32 %.07092.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.cc, 192
  br i1 %exitcond.not.i.1, label %init_outer_loop.exit, label %.preheader84.i, !llvm.loop !26

.thread.i.1:                                      ; preds = %.thread.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv118.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !14
  %i.cg = call double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp ogt double %i.cg, 1.000000e-99
  br i1 %i.ch, label %init_outer_loop.exit.thread354, label %.thread.i.2

.thread.i.2:                                      ; preds = %.thread.i.1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv118.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !14
  %i.cl = call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fcmp ogt double %i.cl, 1.000000e-99
  br i1 %i.cm, label %init_outer_loop.exit.thread354, label %.thread.i.3

.thread.i.3:                                      ; preds = %.thread.i.2
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv118.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load double, ptr %i.co, align 8, !tbaa !14
  %i.cq = call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp ogt double %i.cq, 1.000000e-99
  br i1 %i.cr, label %init_outer_loop.exit.thread354, label %bb.j

bb.j:                                             ; preds = %.thread.i.3
  %indvars.iv.next119.i.3 = add nuw nsw i64 %indvars.iv118.i, 4 ; 2 uses
  %exitcond121.not.i.3 = icmp eq i64 %indvars.iv.next119.i.3, 576
  br i1 %exitcond121.not.i.3, label %init_outer_loop.exit.thread, label %.thread.i, !llvm.loop !28

.thread.i:                                        ; preds = %bb.j, %.thread.i.preheader
  %indvars.iv118.i = phi i64 [ 0, %.thread.i.preheader ], [ %indvars.iv.next119.i.3, %bb.j ] ; 5 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv118.i
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !14
  %i.cu = call double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp ogt double %i.cu, 1.000000e-99
  br i1 %i.cv, label %init_outer_loop.exit.thread354, label %.thread.i.1

init_outer_loop.exit:                             ; preds = %.preheader84.i
  %i.cw = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.cx = fcmp olt double %i.cw, f0x3D719799812DEA11
  %.068..i = select i1 %i.cx, double f0x3D719799812DEA11, double %i.cw ; 2 uses
  %i.cy = fcmp ogt double %.068..i, %i.bw
  %.068..1.i = select i1 %i.cy, double %.068..i, double %i.bw ; 2 uses
  %i.cz = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.da = fcmp ogt double %.068..1.i, %i.cz
  %.068..2.i = select i1 %i.da, double %.068..1.i, double %i.cz ; 2 uses
  %i.db = fcmp ogt <2 x double> %i.cb, splat (double f0x3D719799812DEA11)
  %i.dc = fcmp ogt double %i.bw, f0x3D719799812DEA11
  %i.dd = select i1 %i.dc, double %i.bw, double f0x3D719799812DEA11
  %i.de = fdiv double %i.dd, %.068..2.i           ; 2 uses
  %i.df = select <2 x i1> %i.db, <2 x double> %i.cb, <2 x double> splat (double f0x3D719799812DEA11)
  %i.dg = insertelement <2 x double> poison, double %.068..2.i, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fdiv <2 x double> %i.df, %i.dh          ; 2 uses
  %i.dj = extractelement <2 x double> %i.di, i64 1 ; 2 uses
  %i.dk = call double @log(double noundef %i.dj) #11, !tbaa !4
  %i.dl = fmul double %i.dk, 5.000000e-01
  %i.dm = fdiv double %i.dl, f0x3FE62E42FEFA39EF
  %i.dn = fsub double 5.000000e-01, %i.dm
  %i.do = fptosi double %i.dn to i32
  %i.dp = call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %i.dq = call i32 @llvm.umin.i32(i32 %i.dp, i32 2)
  store i32 %i.dq, ptr %i.az, align 4, !tbaa !4
  %i.dr = call double @log(double noundef %i.de) #11, !tbaa !4
  %i.ds = fmul double %i.dr, 5.000000e-01
  %i.dt = fdiv double %i.ds, f0x3FE62E42FEFA39EF
  %i.du = fsub double 5.000000e-01, %i.dt
  %i.dv = fptosi double %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.dx = call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dy = call i32 @llvm.umin.i32(i32 %i.dx, i32 2)
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !4
  %i.dz = extractelement <2 x double> %i.di, i64 0 ; 2 uses
  %i.ea = call double @log(double noundef %i.dz) #11, !tbaa !4
  %i.eb = fmul double %i.ea, 5.000000e-01
  %i.ec = fdiv double %i.eb, f0x3FE62E42FEFA39EF
  %i.ed = fsub double 5.000000e-01, %i.ec
  %i.ee = fptosi double %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  %i.eg = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.eh = call i32 @llvm.umin.i32(i32 %i.eg, i32 2)
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !4
  %i.ei = fadd double %i.dj, %i.de
  %i.ej = fadd double %i.dz, %i.ei
  %i.ek = fcmp ule double %i.ej, 1.000000e-99
  br i1 %i.ek, label %init_outer_loop.exit.thread, label %init_outer_loop.exit.thread354

init_outer_loop.exit.thread:                      ; preds = %bb.j, %init_outer_loop.exit
  %i.el = getelementptr inbounds nuw [244 x i8], ptr %i.ao, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.el, i8 0, i64 244, i1 false)
  %i.em = getelementptr inbounds nuw [2304 x i8], ptr %i.ap, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.em, i8 0, i64 2304, i1 false)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  store i32 0, ptr %i.en, align 4, !tbaa !4
  br label %bb.v

init_outer_loop.exit.thread354:                   ; preds = %.thread.i, %.thread.i.1, %.thread.i.2, %.thread.i.3, %init_outer_loop.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(120) %i.at, i64 120, i1 false)
  %i.eo = load i32, ptr %i.ad, align 4, !tbaa !48
  %i.ep = shl nsw i32 %i.eo, 1
  %i.eq = add nsw i32 %i.ep, -6
  %i.er = sitofp i32 %i.eq to float
  %i.es = fdiv float %i.er, 1.000000e+01
  %i.et = fpext float %i.es to double
  %i.eu = call double @pow(double noundef 1.000000e+01, double noundef %i.et) #11, !tbaa !4
  %i.ev = fptrunc double %i.eu to float
  store float %i.ev, ptr @masking_lower, align 4, !tbaa !43
  %i.ew = getelementptr inbounds nuw [976 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.ex = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.au, ptr noundef %i.ew, ptr noundef nonnull %i.at, ptr noundef nonnull %11) #11
  %i.ey = icmp eq i32 %i.ex, 0                    ; 2 uses
  %spec.select = select i1 %i.ey, i32 125, i32 %.0300.lcssa ; 2 uses
  %spec.select328 = select i1 %i.ey, i32 1, i32 %.1285397
  %i.ez = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !25
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %init_outer_loop.exit.thread354
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = fcmp olt double %i.fd, 1.100000e+03
  %i.ff = select i1 %i.fe, double 1.100000e+03, double %i.fd
  %i.fg = uitofp nneg i32 %spec.select to double
  %i.fh = fadd double %i.ff, %i.fg
  %i.fi = fptosi double %i.fh to i32
  %i.fj = call i32 @llvm.smin.i32(i32 %i.fi, i32 1800)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %init_outer_loop.exit.thread354
  %.1303 = phi i32 [ %i.fj, %bb.k ], [ %spec.select, %init_outer_loop.exit.thread354 ] ; 3 uses
  %i.fk = load i32, ptr %i.g, align 4, !tbaa !45
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.fp = load i32, ptr %i.x, align 8, !tbaa !8
  %i.fq = mul nsw i32 %i.fp, %i.fo
  %i.fr = sdiv i32 %i.fn, %i.fq
  %i.fs = call i32 @llvm.smin.i32(i32 %i.fr, i32 1300)
  %i.ft = add nsw i32 %i.fs, 1200
  %i.fu = call i32 @llvm.smax.i32(i32 %i.ft, i32 %.1303) ; 4 uses
  %i.fv = sub nsw i32 %i.fu, %.1303
  %i.fw = sdiv i32 %i.fv, 4
  %i.fx = add nsw i32 %i.fu, %.1303
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = add nsw i32 %i.fu, 1
  %i.ga = getelementptr inbounds nuw [2304 x i8], ptr %i.ap, i64 %indvars.iv ; 3 uses
  %i.gb = getelementptr inbounds nuw [244 x i8], ptr %i.ao, i64 %indvars.iv ; 3 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %bb.l
  %.sroa.0.2 = phi <576 x i32> [ %.sroa.0.1, %bb.l ], [ %.sroa.0.3, %bb.r ] ; 2 uses
  %.0298 = phi i32 [ %i.fw, %bb.l ], [ %.1299362369, %bb.r ] ; 5 uses
  %.0280 = phi i32 [ %i.fz, %bb.l ], [ %.2282, %bb.r ] ; 3 uses
  %.0 = phi i32 [ %i.fy, %bb.l ], [ %.2, %bb.r ]  ; 6 uses
  %.not325 = icmp slt i32 %.0, %.0280
  br i1 %.not325, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gd = sub nsw i32 %.0, %.0298
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.at, ptr noundef nonnull align 8 dereferenceable(120) %9, i64 120, i1 false)
  %i.ge = load i32, ptr %i.ad, align 4, !tbaa !48
  %i.gf = shl nsw i32 %i.ge, 1
  %i.gg = add nsw i32 %i.gf, -6
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = add nsw i32 %.0, -125
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fdiv nnan double %i.gj, 2.375000e+03
  %i.gl = fptrunc nnan double %i.gk to float
  %i.gm = fadd nnan float %i.gl, -1.000000e+00
  %i.gn = fmul nnan float %i.gm, 4.000000e+00
  %i.go = fadd float %i.gn, %i.gh
  %i.gp = fdiv float %i.go, 1.000000e+01
  %i.gq = fpext float %i.gp to double
  %i.gr = call double @pow(double noundef 1.000000e+01, double noundef %i.gq) #11, !tbaa !4
  %i.gs = fptrunc double %i.gr to float
  store float %i.gs, ptr @masking_lower, align 4, !tbaa !43
  %i.gt = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.au, ptr noundef %i.ew, ptr noundef nonnull %i.at, ptr noundef nonnull %11) #11 ; 0 uses
  call void @outer_loop(ptr noundef %0, ptr noundef nonnull %i.au, i32 noundef %.0, ptr noundef nonnull %i.b, ptr noundef nonnull %11, ptr noundef %i.ga, ptr noundef %i.gb, ptr noundef nonnull %i.at, ptr nonnull poison, i32 noundef %i.gc)
  %i.gu = load double, ptr %i.b, align 16, !tbaa !14
  %i.gv = fptosi double %i.gu to i32
  %i.gw = load double, ptr %i.ae, align 8, !tbaa !14
  %i.gx = load double, ptr %i.af, align 16, !tbaa !14
  %i.gy = load double, ptr %i.ag, align 8, !tbaa !14
  %.not.i330 = icmp sgt i32 %i.gv, 0
  %i.gz = fcmp ugt double %i.gx, 0.000000e+00
  %or.cond.not11.i.not365 = or i1 %.not.i330, %i.gz
  %i.ha = fcmp ugt double %i.gw, 0.000000e+00
  %i.hb = fcmp ugt double %i.gy, 0.000000e+00
  %.not368 = or i1 %i.ha, %i.hb
  %narrow.i.not = or i1 %or.cond.not11.i.not365, %.not368
  br i1 %narrow.i.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hc = load i32, ptr %i.at, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %10, ptr noundef nonnull align 4 dereferenceable(244) %i.gb, i64 244, i1 false)
  %.sroa.0.0.copyload600 = load <576 x i32>, ptr %i.ga, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(120) %i.at, i64 120, i1 false)
  %i.hd = sub nsw i32 %.0, %.0298
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.he = add nsw i32 %.0, %.0298
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.sroa.0.3 = phi <576 x i32> [ %.sroa.0.2, %bb.q ], [ %.sroa.0.0.copyload600, %bb.p ], [ %.sroa.0.2, %bb.n ] ; 3 uses
  %.2282 = phi i32 [ %.0280, %bb.q ], [ %i.hc, %bb.p ], [ %.0280, %bb.n ] ; 2 uses
  %.2 = phi i32 [ %i.he, %bb.q ], [ %i.hd, %bb.p ], [ %i.gd, %bb.n ]
  %.1299362369 = lshr i32 %.0298, 1
  %i.hf = icmp sgt i32 %.0298, 21
  br i1 %i.hf, label %bb.m, label %bb.s, !llvm.loop !49

bb.s:                                             ; preds = %bb.r
  %.not327 = icmp sgt i32 %.2282, %i.fu
  br i1 %.not327, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.at, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.gb, ptr noundef nonnull align 4 dereferenceable(244) %10, i64 244, i1 false)
  store <576 x i32> %.sroa.0.3, ptr %i.ga, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hg = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !4
  %i.hi = add nsw i32 %i.hg, %.1305394
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %init_outer_loop.exit.thread
  %.sroa.0.4 = phi <576 x i32> [ %.sroa.0.3, %bb.u ], [ %.sroa.0.1, %init_outer_loop.exit.thread ] ; 2 uses
  %.2306 = phi i32 [ %i.hi, %bb.u ], [ %.1305394, %init_outer_loop.exit.thread ] ; 2 uses
  %.3 = phi i32 [ %spec.select328, %bb.u ], [ 1, %init_outer_loop.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge400, label %bb.h, !llvm.loop !50

._crit_edge400:                                   ; preds = %bb.v, %bb.g
  %.sroa.0.5 = phi <576 x i32> [ %.sroa.0.0, %bb.g ], [ %.sroa.0.4, %bb.v ]
  %.1305.lcssa = phi i32 [ %.0304403, %bb.g ], [ %.2306, %bb.v ] ; 4 uses
  %.1285.lcssa = phi i32 [ %.0284405, %bb.g ], [ %.3, %bb.v ] ; 2 uses
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %i.hj = load i32, ptr %i.x, align 8, !tbaa !8   ; 4 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next467, %i.hk
  br i1 %i.hl, label %bb.e, label %._crit_edge408, !llvm.loop !51

._crit_edge408:                                   ; preds = %._crit_edge400
  %i.hm = icmp eq i32 %.1285.lcssa, 0
  %i.hn = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %.not315 = icmp ne i32 %i.hn, 0
  %i.ho = icmp sgt i32 %i.hj, 0
  %or.cond450 = and i1 %.not315, %i.ho
  br i1 %or.cond450, label %.lr.ph415.preheader, label %.loopexit380

.lr.ph415.preheader:                              ; preds = %._crit_edge408
  %wide.trip.count472 = zext nneg i32 %i.hj to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.hj, 5
  br i1 %min.iters.check, label %.lr.ph415.preheader591, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph415.preheader
  %i.hp = and i64 %wide.trip.count472, 3          ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = select i1 %i.hq, i64 4, i64 %i.hp
  %n.vec = sub nsw i64 %wide.trip.count472, %i.hr ; 2 uses
  %i.hs = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.1305.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %i.hs, %vector.ph ], [ %i.je, %vector.body ]
  %vec.phi580 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.jf, %vector.body ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load = load <2 x double>, ptr %i.ht, align 8, !tbaa !14
  %wide.load581 = load <2 x double>, ptr %i.hu, align 8, !tbaa !14
  %i.hv = fsub <2 x double> splat (double 5.000000e-01), %wide.load
  %i.hw = fsub <2 x double> splat (double 5.000000e-01), %wide.load581
  %i.hx = fmul <2 x double> %i.hv, splat (double 3.300000e-01)
  %i.hy = fmul <2 x double> %i.hw, splat (double 3.300000e-01)
  %i.hz = fmul <2 x double> %i.hx, splat (double 2.000000e+00) ; 2 uses
  %i.ia = fmul <2 x double> %i.hy, splat (double 2.000000e+00) ; 2 uses
  %i.ib = fsub <2 x double> splat (double 1.000000e+00), %i.hz
  %i.ic = fsub <2 x double> splat (double 1.000000e+00), %i.ia
  %i.id = fadd <2 x double> %i.hz, splat (double 1.000000e+00)
  %i.ie = fadd <2 x double> %i.ia, splat (double 1.000000e+00)
  %i.if = fdiv <2 x double> %i.ib, %i.id
  %i.ig = fdiv <2 x double> %i.ic, %i.ie
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %i.im = load <3 x i32>, ptr %i.ih, align 16, !tbaa !4
  %strided.vec = shufflevector <3 x i32> %i.im, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.in = load <3 x i32>, ptr %i.ik, align 16, !tbaa !4
  %strided.vec583 = shufflevector <3 x i32> %i.in, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.io = sitofp <2 x i32> %strided.vec to <2 x double>
  %i.ip = sitofp <2 x i32> %strided.vec583 to <2 x double>
  %i.iq = fmul <2 x double> %i.if, %i.io
  %i.ir = fmul <2 x double> %i.ig, %i.ip
  %i.is = fptosi <2 x double> %i.iq to <2 x i32>
  %i.it = fptosi <2 x double> %i.ir to <2 x i32>
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 28
  %i.iy = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.is, <2 x i32> splat (i32 125)) ; 3 uses
  %i.iz = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.it, <2 x i32> splat (i32 125)) ; 3 uses
  %i.ja = extractelement <2 x i32> %i.iy, i64 0
  store i32 %i.ja, ptr %i.iu, align 4, !tbaa !4
  %i.jb = extractelement <2 x i32> %i.iy, i64 1
  store i32 %i.jb, ptr %i.iv, align 4, !tbaa !4
  %i.jc = extractelement <2 x i32> %i.iz, i64 0
  store i32 %i.jc, ptr %i.iw, align 4, !tbaa !4
  %i.jd = extractelement <2 x i32> %i.iz, i64 1
  store i32 %i.jd, ptr %i.ix, align 4, !tbaa !4
  %i.je = add <2 x i32> %i.iy, %vec.phi           ; 2 uses
  %i.jf = add <2 x i32> %i.iz, %vec.phi580        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.jf, %i.je
  %i.jh = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph415.preheader591

.lr.ph415.preheader591:                           ; preds = %.lr.ph415.preheader, %middle.block
  %indvars.iv469.ph = phi i64 [ 0, %.lr.ph415.preheader ], [ %n.vec, %middle.block ]
  %.3307413.ph = phi i32 [ %.1305.lcssa, %.lr.ph415.preheader ], [ %i.jh, %middle.block ]
  br label %.lr.ph415

.lr.ph415:                                        ; preds = %.lr.ph415.preheader591, %.lr.ph415
  %indvars.iv469 = phi i64 [ %indvars.iv.next470, %.lr.ph415 ], [ %indvars.iv469.ph, %.lr.ph415.preheader591 ] ; 3 uses
  %.3307413 = phi i32 [ %i.jw, %.lr.ph415 ], [ %.3307413.ph, %.lr.ph415.preheader591 ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv469
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !14
  %i.jk = fsub double 5.000000e-01, %i.jj
  %i.jl = fmul double %i.jk, 3.300000e-01
  %i.jm = fmul double %i.jl, 2.000000e+00         ; 2 uses
  %i.jn = fsub double 1.000000e+00, %i.jm
  %i.jo = fadd double %i.jm, 1.000000e+00
  %i.jp = fdiv double %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv469 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !4
  %i.js = sitofp i32 %i.jr to double
  %i.jt = fmul double %i.jp, %i.js
  %i.ju = fptosi double %i.jt to i32
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %spec.select329 = call i32 @llvm.smax.i32(i32 %i.ju, i32 125) ; 2 uses
  store i32 %spec.select329, ptr %i.jv, align 4, !tbaa !4
  %i.jw = add nsw i32 %spec.select329, %.3307413  ; 2 uses
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count472
  br i1 %exitcond473.not, label %.loopexit380, label %.lr.ph415, !llvm.loop !55

.loopexit380:                                     ; preds = %.lr.ph415, %._crit_edge408
  %.4308 = phi i32 [ %.1305.lcssa, %._crit_edge408 ], [ %i.jw, %.lr.ph415 ] ; 2 uses
  br i1 %i.hm, label %.loopexit380.thread, label %bb.w

.loopexit380.thread:                              ; preds = %._crit_edge, %.loopexit380
  %.4308544 = phi i32 [ %.4308, %.loopexit380 ], [ 0, %._crit_edge ]
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !46
  br label %bb.w

bb.w:                                             ; preds = %.loopexit380, %.loopexit380.thread
  %.4308543 = phi i32 [ %.4308544, %.loopexit380.thread ], [ %.4308, %.loopexit380 ] ; 5 uses
  %i.jz = phi i32 [ %i.jy, %.loopexit380.thread ], [ 1, %.loopexit380 ] ; 3 uses
  %i.ka = load i32, ptr %i.g, align 4, !tbaa !45  ; 3 uses
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %.lr.ph419.preheader, label %._crit_edge420

.lr.ph419.preheader:                              ; preds = %bb.w
  %i.kc = sext i32 %i.jz to i64
  br label %.lr.ph419

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.x
  %indvars.iv474 = phi i64 [ %i.kc, %.lr.ph419.preheader ], [ %indvars.iv.next475, %bb.x ] ; 3 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv474
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !4
  %.not318 = icmp sgt i32 %.4308543, %i.ke
  br i1 %.not318, label %bb.x, label %._crit_edge420.loopexit.split.loop.exit

bb.x:                                             ; preds = %.lr.ph419
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next475 to i32
  %exitcond477.not = icmp eq i32 %i.ka, %lftr.wideiv
  br i1 %exitcond477.not, label %._crit_edge420, label %.lr.ph419, !llvm.loop !56

._crit_edge420.loopexit.split.loop.exit:          ; preds = %.lr.ph419
  %i.kf = trunc nsw i64 %indvars.iv474 to i32
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %bb.x, %._crit_edge420.loopexit.split.loop.exit, %bb.w
  %storemerge317.lcssa = phi i32 [ %i.jz, %bb.w ], [ %i.kf, %._crit_edge420.loopexit.split.loop.exit ], [ %i.ka, %bb.x ]
  store i32 %storemerge317.lcssa, ptr %i.f, align 4, !tbaa !44
  call void @getframebits(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !4
  %i.kh = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ki = call i32 @ResvFrameBegin(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.kg, i32 noundef %i.kh) #11
  %.not320 = icmp sgt i32 %.4308543, %i.ki        ; 2 uses
  %.pre516 = load i32, ptr %i.x, align 8, !tbaa !8 ; 4 uses
  %i.kj = icmp sgt i32 %.pre516, 0                ; 2 uses
  br i1 %.not320, label %.preheader378, label %.loopexit

.preheader378:                                    ; preds = %._crit_edge420
  br i1 %i.kj, label %.preheader377.lr.ph, label %._crit_edge449

.preheader377.lr.ph:                              ; preds = %.preheader378
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !16 ; 4 uses
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %.preheader377.lr.ph.split.us, label %.preheader374.lr.ph

.preheader377.lr.ph.split.us:                     ; preds = %.preheader377.lr.ph
  %i.kn = load i32, ptr %i.f, align 4, !tbaa !44
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !4  ; 3 uses
  %wide.trip.count481 = zext nneg i32 %i.kl to i64 ; 2 uses
  %i.kr = zext nneg i32 %.pre516 to i64
  %xtraiter = and i64 %wide.trip.count481, 1
  %i.ks = icmp eq i32 %i.kl, 1
  %unroll_iter = and i64 %wide.trip.count481, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod599 = trunc i32 %i.kl to i1
  br label %.preheader377.us

.preheader377.us:                                 ; preds = %._crit_edge426.us, %.preheader377.lr.ph.split.us
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge426.us ], [ 0, %.preheader377.lr.ph.split.us ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv483 ; 3 uses
  br i1 %i.ks, label %.epil.preheader, label %.preheader377.us.new

.preheader377.us.new:                             ; preds = %.preheader377.us, %.preheader377.us.new
  %indvars.iv478 = phi i64 [ %indvars.iv.next479.1, %.preheader377.us.new ], [ 0, %.preheader377.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader377.us.new ], [ 0, %.preheader377.us ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv478 ; 2 uses
end_hunk_0
begin_hunk_1_@VBR_iteration_loop:bb.a
.preheader373:                                    ; preds = %._crit_edge439
  %i.lx = icmp sgt i32 %i.qz, 0
  br i1 %i.lx, label %.preheader372.lr.ph, label %._crit_edge449

.preheader372.lr.ph:                              ; preds = %.preheader374.lr.ph, %.preheader373
  %i.ly = phi i32 [ %i.qz, %.preheader373 ], [ %.pre516, %.preheader374.lr.ph ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.mb = load i32, ptr %i.lz, align 4, !tbaa !16 ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.preheader372, label %.preheader370.lr.ph

bb.y:                                             ; preds = %.lr.ph438, %bb.ad
  %indvars.iv494 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next495, %bb.ad ] ; 11 uses
  br i1 %.not320, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.md = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %i.me = icmp ne i32 %i.md, 0
  %i.mf = icmp eq i64 %indvars.iv494, 1
  %or.cond = and i1 %i.mf, %i.me
  br i1 %or.cond, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mg = getelementptr inbounds nuw [120 x i8], ptr %i.lr, i64 %indvars.iv494 ; 14 uses
  %i.mh = getelementptr inbounds nuw [4608 x i8], ptr %i.ls, i64 %indvars.iv494 ; 8 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mi, i8 0, i64 16, i1 false), !tbaa !4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 96
  store ptr @nr_of_sfb_block, ptr %i.mj, align 8, !tbaa !17
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store i32 0, ptr %i.mk, align 8, !tbaa !20
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 44
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 76
  store i32 0, ptr %i.mn, align 4, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ml, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 210>, ptr %i.mg, align 8, !tbaa !4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mg, i64 72
  store i32 0, ptr %i.mo, align 8, !tbaa !22
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 88
  store i32 0, ptr %i.mp, align 8, !tbaa !23
  %i.mq = load i32, ptr %i.lk, align 4, !tbaa !24
  %.not.i331 = icmp eq i32 %i.mq, 0
  br i1 %.not.i331, label %.thread.i333.preheader, label %bb.ab

.thread.i333.preheader:                           ; preds = %bb.ab, %bb.aa
  br label %.thread.i333

bb.ab:                                            ; preds = %bb.aa
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !25
  %.not79.i332 = icmp eq i32 %i.ms, 2
  br i1 %.not79.i332, label %.preheader84.i338, label %.thread.i333.preheader

.preheader84.i338:                                ; preds = %bb.ab, %.preheader84.i338
  %.sroa.11.0.i340 = phi double [ %i.nj, %.preheader84.i338 ], [ 0.000000e+00, %bb.ab ]
  %indvars.iv.i342 = phi i64 [ %indvars.iv.next.i344.1, %.preheader84.i338 ], [ 0, %bb.ab ] ; 3 uses
  %.07092.i343 = phi i32 [ %i.np, %.preheader84.i338 ], [ 0, %bb.ab ]
  %i.mt = phi <2 x double> [ %i.no, %.preheader84.i338 ], [ zeroinitializer, %bb.ab ]
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.i342 ; 3 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !14
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !14 ; 2 uses
  %i.my = call double @llvm.fmuladd.f64(double %i.mx, double %i.mx, double %.sroa.11.0.i340)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.na = load double, ptr %i.mz, align 8, !tbaa !14
  %i.nb = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nc = insertelement <2 x double> %i.nb, double %i.mv, i64 1 ; 2 uses
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.nc, <2 x double> %i.mt)
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv.i342 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !14
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !14 ; 2 uses
  %i.nj = call double @llvm.fmuladd.f64(double %i.ni, double %i.ni, double %i.my) ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !14
  %i.nm = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nn = insertelement <2 x double> %i.nm, double %i.ng, i64 1 ; 2 uses
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.nn, <2 x double> %i.nd) ; 5 uses
  %indvars.iv.next.i344.1 = add nuw nsw i64 %indvars.iv.i342, 6
  %i.np = add nuw nsw i32 %.07092.i343, 2         ; 2 uses
  %exitcond.not.i345.1 = icmp eq i32 %i.np, 192
  br i1 %exitcond.not.i345.1, label %init_outer_loop.exit351, label %.preheader84.i338, !llvm.loop !26

.thread.i333.1:                                   ; preds = %.thread.i333
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv118.i334
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !14
  %i.nt = call double @llvm.fabs.f64(double %i.ns)
  %i.nu = fcmp ogt double %i.nt, 1.000000e-99
  br i1 %i.nu, label %init_outer_loop.exit351.thread359, label %.thread.i333.2

.thread.i333.2:                                   ; preds = %.thread.i333.1
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv118.i334
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !14
  %i.ny = call double @llvm.fabs.f64(double %i.nx)
  %i.nz = fcmp ogt double %i.ny, 1.000000e-99
  br i1 %i.nz, label %init_outer_loop.exit351.thread359, label %.thread.i333.3

.thread.i333.3:                                   ; preds = %.thread.i333.2
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv118.i334
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !14
  %i.od = call double @llvm.fabs.f64(double %i.oc)
  %i.oe = fcmp ogt double %i.od, 1.000000e-99
  br i1 %i.oe, label %init_outer_loop.exit351.thread359, label %bb.ac

bb.ac:                                            ; preds = %.thread.i333.3
  %indvars.iv.next119.i335.3 = add nuw nsw i64 %indvars.iv118.i334, 4 ; 2 uses
  %exitcond121.not.i336.3 = icmp eq i64 %indvars.iv.next119.i335.3, 576
  br i1 %exitcond121.not.i336.3, label %init_outer_loop.exit351.thread, label %.thread.i333, !llvm.loop !28

.thread.i333:                                     ; preds = %bb.ac, %.thread.i333.preheader
  %indvars.iv118.i334 = phi i64 [ 0, %.thread.i333.preheader ], [ %indvars.iv.next119.i335.3, %bb.ac ] ; 5 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv118.i334
  %i.og = load double, ptr %i.of, align 8, !tbaa !14
  %i.oh = call double @llvm.fabs.f64(double %i.og)
  %i.oi = fcmp ogt double %i.oh, 1.000000e-99
  br i1 %i.oi, label %init_outer_loop.exit351.thread359, label %.thread.i333.1

init_outer_loop.exit351:                          ; preds = %.preheader84.i338
  %i.oj = extractelement <2 x double> %i.no, i64 1 ; 2 uses
  %i.ok = fcmp olt double %i.oj, f0x3D719799812DEA11
  %.068..i347 = select i1 %i.ok, double f0x3D719799812DEA11, double %i.oj ; 2 uses
  %i.ol = fcmp ogt double %.068..i347, %i.nj
  %.068..1.i348 = select i1 %i.ol, double %.068..i347, double %i.nj ; 2 uses
  %i.om = extractelement <2 x double> %i.no, i64 0 ; 2 uses
  %i.on = fcmp ogt double %.068..1.i348, %i.om
  %.068..2.i349 = select i1 %i.on, double %.068..1.i348, double %i.om ; 2 uses
  %i.oo = fcmp ogt <2 x double> %i.no, splat (double f0x3D719799812DEA11)
  %i.op = fcmp ogt double %i.nj, f0x3D719799812DEA11
  %i.oq = select i1 %i.op, double %i.nj, double f0x3D719799812DEA11
  %i.or = fdiv double %i.oq, %.068..2.i349        ; 2 uses
  %i.os = select <2 x i1> %i.oo, <2 x double> %i.no, <2 x double> splat (double f0x3D719799812DEA11)
  %i.ot = insertelement <2 x double> poison, double %.068..2.i349, i64 0
  %i.ou = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = fdiv <2 x double> %i.os, %i.ou          ; 2 uses
  %i.ow = extractelement <2 x double> %i.ov, i64 1 ; 2 uses
  %i.ox = call double @log(double noundef %i.ow) #11, !tbaa !4
  %i.oy = fmul double %i.ox, 5.000000e-01
  %i.oz = fdiv double %i.oy, f0x3FE62E42FEFA39EF
  %i.pa = fsub double 5.000000e-01, %i.oz
  %i.pb = fptosi double %i.pa to i32
  %i.pc = call i32 @llvm.smax.i32(i32 %i.pb, i32 0)
  %i.pd = call i32 @llvm.umin.i32(i32 %i.pc, i32 2)
  store i32 %i.pd, ptr %i.mm, align 4, !tbaa !4
  %i.pe = call double @log(double noundef %i.or) #11, !tbaa !4
  %i.pf = fmul double %i.pe, 5.000000e-01
  %i.pg = fdiv double %i.pf, f0x3FE62E42FEFA39EF
  %i.ph = fsub double 5.000000e-01, %i.pg
  %i.pi = fptosi double %i.ph to i32
  %i.pj = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.pk = call i32 @llvm.smax.i32(i32 %i.pi, i32 0)
  %i.pl = call i32 @llvm.umin.i32(i32 %i.pk, i32 2)
  store i32 %i.pl, ptr %i.pj, align 8, !tbaa !4
  %i.pm = extractelement <2 x double> %i.ov, i64 0 ; 2 uses
  %i.pn = call double @log(double noundef %i.pm) #11, !tbaa !4
  %i.po = fmul double %i.pn, 5.000000e-01
  %i.pp = fdiv double %i.po, f0x3FE62E42FEFA39EF
  %i.pq = fsub double 5.000000e-01, %i.pp
  %i.pr = fptosi double %i.pq to i32
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mg, i64 52
  %i.pt = call i32 @llvm.smax.i32(i32 %i.pr, i32 0)
  %i.pu = call i32 @llvm.umin.i32(i32 %i.pt, i32 2)
  store i32 %i.pu, ptr %i.ps, align 4, !tbaa !4
  %i.pv = fadd double %i.ow, %i.or
  %i.pw = fadd double %i.pm, %i.pv
  %i.px = fcmp ule double %i.pw, 1.000000e-99
  br i1 %i.px, label %init_outer_loop.exit351.thread, label %init_outer_loop.exit351.thread359

init_outer_loop.exit351.thread:                   ; preds = %bb.ac, %init_outer_loop.exit351
  %i.py = getelementptr inbounds nuw [244 x i8], ptr %i.lt, i64 %indvars.iv494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.py, i8 0, i64 244, i1 false)
  %i.pz = getelementptr inbounds nuw [2304 x i8], ptr %i.lu, i64 %indvars.iv494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.pz, i8 0, i64 2304, i1 false)
  br label %bb.ad

init_outer_loop.exit351.thread359:                ; preds = %.thread.i333, %.thread.i333.1, %.thread.i333.2, %.thread.i333.3, %init_outer_loop.exit351
  %i.qa = load i32, ptr %i.ll, align 4, !tbaa !48
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv494
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !4  ; 2 uses
  %i.qd = shl nsw i32 %i.qa, 1
  %i.qe = add nsw i32 %i.qd, -6
  %i.qf = sitofp i32 %i.qe to float
  %i.qg = add nsw i32 %i.qc, -125
  %i.qh = sitofp i32 %i.qg to double
  %i.qi = fdiv nnan double %i.qh, 2.375000e+03
  %i.qj = fptrunc nnan double %i.qi to float
  %i.qk = fadd nnan float %i.qj, -1.000000e+00
  %i.ql = fmul nnan float %i.qk, 4.000000e+00
  %i.qm = fadd float %i.ql, %i.qf
  %i.qn = fdiv float %i.qm, 1.000000e+01
  %i.qo = fpext float %i.qn to double
  %i.qp = call double @pow(double noundef 1.000000e+01, double noundef %i.qo) #11, !tbaa !4
  %i.qq = fptrunc double %i.qp to float
  store float %i.qq, ptr @masking_lower, align 4, !tbaa !43
  %i.qr = getelementptr inbounds nuw [976 x i8], ptr %i.lw, i64 %indvars.iv494
  %i.qs = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.mh, ptr noundef %i.qr, ptr noundef nonnull %i.mg, ptr noundef nonnull %11) #11 ; 0 uses
  %i.qt = getelementptr inbounds nuw [2304 x i8], ptr %i.lu, i64 %indvars.iv494
  %i.qu = getelementptr inbounds nuw [244 x i8], ptr %i.lt, i64 %indvars.iv494
  %i.qv = trunc nuw nsw i64 %indvars.iv494 to i32
  call void @outer_loop(ptr noundef %0, ptr noundef nonnull %i.mh, i32 noundef %i.qc, ptr noundef nonnull %i.b, ptr noundef nonnull %11, ptr noundef %i.qt, ptr noundef %i.qu, ptr noundef nonnull %i.mg, ptr nonnull poison, i32 noundef %i.qv)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %init_outer_loop.exit351.thread359, %init_outer_loop.exit351.thread
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %i.qw = load i32, ptr %i.li, align 4, !tbaa !16 ; 2 uses
  %i.qx = sext i32 %i.qw to i64
  %i.qy = icmp slt i64 %indvars.iv.next495, %i.qx
  br i1 %i.qy, label %bb.y, label %._crit_edge439.loopexit, !llvm.loop !59

._crit_edge439.loopexit:                          ; preds = %bb.ad
  %.pre517 = load i32, ptr %i.x, align 8, !tbaa !8
  br label %._crit_edge439

._crit_edge439:                                   ; preds = %._crit_edge439.loopexit, %.preheader374
  %i.qz = phi i32 [ %.pre517, %._crit_edge439.loopexit ], [ %i.lo, %.preheader374 ] ; 4 uses
  %i.ra = phi i32 [ %i.qw, %._crit_edge439.loopexit ], [ %i.lp, %.preheader374 ]
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %i.rb = sext i32 %i.qz to i64
  %i.rc = icmp slt i64 %indvars.iv.next498, %i.rb
  br i1 %i.rc, label %.preheader374, label %.preheader373, !llvm.loop !60

.preheader372:                                    ; preds = %.preheader372.lr.ph, %._crit_edge443
  %i.rd = phi i32 [ %i.ry, %._crit_edge443 ], [ %i.ly, %.preheader372.lr.ph ]
  %i.re = phi i32 [ %i.rz, %._crit_edge443 ], [ %i.mb, %.preheader372.lr.ph ] ; 2 uses
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %._crit_edge443 ], [ 0, %.preheader372.lr.ph ] ; 4 uses
  %i.rf = icmp sgt i32 %i.re, 0
  br i1 %i.rf, label %.lr.ph442, label %._crit_edge443

.lr.ph442:                                        ; preds = %.preheader372
  %i.rg = getelementptr inbounds nuw [240 x i8], ptr %i.ma, i64 %indvars.iv503
  %i.rh = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv503
  %i.ri = trunc nuw nsw i64 %indvars.iv503 to i32 ; 2 uses
  br label %bb.ae

.preheader371:                                    ; preds = %._crit_edge443
  %i.rj = icmp sgt i32 %i.ry, 0
  br i1 %i.rj, label %.preheader370.lr.ph, label %._crit_edge449

.preheader370.lr.ph:                              ; preds = %.preheader372.lr.ph, %.preheader371
  %i.rk = phi i32 [ %i.ry, %.preheader371 ], [ %i.ly, %.preheader372.lr.ph ]
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !16 ; 2 uses
  %i.rn = icmp sgt i32 %i.rm, 0
  br i1 %i.rn, label %.preheader370, label %._crit_edge449

bb.ae:                                            ; preds = %.lr.ph442, %bb.ag
  %indvars.iv500 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next501, %bb.ag ] ; 4 uses
  %i.ro = getelementptr inbounds nuw [120 x i8], ptr %i.rg, i64 %indvars.iv500 ; 3 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv500 to i32 ; 2 uses
  call void @best_scalefac_store(ptr noundef nonnull %0, i32 noundef %i.ri, i32 noundef %i.rp, ptr noundef %6, ptr noundef %5, ptr noundef %7) #11
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !25
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.rt = getelementptr inbounds nuw [2304 x i8], ptr %i.rh, i64 %indvars.iv500
  call void @best_huffman_divide(i32 noundef %i.ri, i32 noundef %i.rp, ptr noundef nonnull %i.ro, ptr noundef %i.rt) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ru = load i32, ptr %i.e, align 4, !tbaa !4
  call void @ResvAdjust(ptr noundef nonnull %0, ptr noundef nonnull %i.ro, ptr noundef nonnull %5, i32 noundef %i.ru) #11
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.rv = load i32, ptr %i.lz, align 4, !tbaa !16 ; 2 uses
  %i.rw = sext i32 %i.rv to i64
  %i.rx = icmp slt i64 %indvars.iv.next501, %i.rw
  br i1 %i.rx, label %bb.ae, label %._crit_edge443.loopexit, !llvm.loop !62

._crit_edge443.loopexit:                          ; preds = %bb.ag
  %.pre518 = load i32, ptr %i.x, align 8, !tbaa !8
  br label %._crit_edge443

._crit_edge443:                                   ; preds = %._crit_edge443.loopexit, %.preheader372
  %i.ry = phi i32 [ %.pre518, %._crit_edge443.loopexit ], [ %i.rd, %.preheader372 ] ; 4 uses
  %i.rz = phi i32 [ %i.rv, %._crit_edge443.loopexit ], [ %i.re, %.preheader372 ]
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %i.sa = sext i32 %i.ry to i64
  %i.sb = icmp slt i64 %indvars.iv.next504, %i.sa
  br i1 %i.sb, label %.preheader372, label %.preheader371, !llvm.loop !63

.preheader370:                                    ; preds = %.preheader370.lr.ph, %._crit_edge447
  %i.sc = phi i32 [ %i.sy, %._crit_edge447 ], [ %i.rk, %.preheader370.lr.ph ]
  %i.sd = phi i32 [ %i.sz, %._crit_edge447 ], [ %i.rm, %.preheader370.lr.ph ] ; 2 uses
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %._crit_edge447 ], [ 0, %.preheader370.lr.ph ] ; 3 uses
  %i.se = icmp sgt i32 %i.sd, 0
  br i1 %i.se, label %.preheader.lr.ph, label %._crit_edge447

.preheader.lr.ph:                                 ; preds = %.preheader370
  %i.sf = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv513
  %i.sg = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv513
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.am
  %indvars.iv510 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next511, %bb.am ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [4608 x i8], ptr %i.sf, i64 %indvars.iv510 ; 2 uses
  %i.si = getelementptr inbounds nuw [2304 x i8], ptr %i.sg, i64 %indvars.iv510 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %.preheader
  %indvars.iv506 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next507.1, %bb.al ] ; 4 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv506
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !14
  %i.sl = fcmp olt double %i.sk, 0.000000e+00
  br i1 %i.sl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv506 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !4
  %i.so = sub nsw i32 0, %i.sn
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %indvars.iv.next507 = or disjoint i64 %indvars.iv506, 1 ; 2 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next507
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !14
  %i.sr = fcmp olt double %i.sq, 0.000000e+00
  br i1 %i.sr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv.next507 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !4
  %i.su = sub nsw i32 0, %i.st
  store i32 %i.su, ptr %i.ss, align 4, !tbaa !4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next507.1 = add nuw nsw i64 %indvars.iv506, 2 ; 2 uses
  %exitcond509.not.1 = icmp eq i64 %indvars.iv.next507.1, 576
  br i1 %exitcond509.not.1, label %bb.am, label %bb.ah, !llvm.loop !64

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.sv = load i32, ptr %i.rl, align 4, !tbaa !16 ; 2 uses
  %i.sw = sext i32 %i.sv to i64
  %i.sx = icmp slt i64 %indvars.iv.next511, %i.sw
  br i1 %i.sx, label %.preheader, label %._crit_edge447.loopexit, !llvm.loop !65

._crit_edge447.loopexit:                          ; preds = %bb.am
  %.pre519 = load i32, ptr %i.x, align 8, !tbaa !8
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %.preheader370
  %i.sy = phi i32 [ %.pre519, %._crit_edge447.loopexit ], [ %i.sc, %.preheader370 ] ; 2 uses
  %i.sz = phi i32 [ %i.sv, %._crit_edge447.loopexit ], [ %i.sd, %.preheader370 ]
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %i.ta = sext i32 %i.sy to i64
  %i.tb = icmp slt i64 %indvars.iv.next514, %i.ta
  br i1 %i.tb, label %.preheader370, label %._crit_edge449, !llvm.loop !66

._crit_edge449:                                   ; preds = %._crit_edge447, %.preheader378, %.loopexit, %.preheader373, %.preheader370.lr.ph, %.preheader371
  %i.tc = load i32, ptr %i.e, align 4, !tbaa !4
  call void @ResvFrameEnd(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.tc) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @VBR_compare(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #7 {
bb.a:
  %.not = icmp sle i32 %4, %0
  %i.a = fcmp ole double %6, %2
  %or.cond.not11 = and i1 %.not, %i.a
  %i.b = fcmp ole double %5, %1
  %i.c = fcmp ole double %7, %3
  %i.d = and i1 %i.b, %i.c
  %narrow = and i1 %or.cond.not11, %i.d
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare i32 @bin_search_StepSize2(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inner_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @calc_noise1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) initializes((0, 8)) %7, ptr nofree noundef captures(none) initializes((0, 8)) %8, ptr nofree noundef captures(none) initializes((0, 8)) %9) local_unnamed_addr #9 {
bb.a:
  store double 0.000000e+00, ptr %7, align 8, !tbaa !14
  store double 0.000000e+00, ptr %8, align 8, !tbaa !14
  store double -9.990000e+02, ptr %9, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %.not181 = icmp eq i32 %i.b, 0
  br i1 %.not181, label %.preheader, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41
  %i.i = add i32 %i.h, 1
  %wide.trip.count192 = zext i32 %i.b to i64
  br label %bb.n

.preheader:                                       ; preds = %bb.s, %bb.a
  %.0133.lcssa = phi i32 [ 0, %bb.a ], [ %.1134, %bb.s ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 3 uses
  %i.l = icmp ult i32 %i.k, 12
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 176
  br i1 %i.l, label %.preheader.split.us, label %.split.us

.preheader.split.us:                              ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %i.s = add i32 %i.r, 1                          ; 3 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !34   ; 3 uses
  %i.u = zext nneg i32 %i.k to i64                ; 4 uses
  %i.v = load i32, ptr %i.o, align 4, !tbaa !4
  %i.w = shl i32 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %i.u
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.split.us, %bb.e
  %i.z = phi i32 [ %.pre, %.preheader.split.us ], [ %i.ah, %bb.e ] ; 3 uses
  %indvars.iv199 = phi i64 [ %i.u, %.preheader.split.us ], [ %indvars.iv.next200, %bb.e ] ; 6 uses
  %.3168.us = phi i32 [ %.0133.lcssa, %.preheader.split.us ], [ %.4.us, %bb.e ] ; 3 uses
  %gep.us = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv199
  %i.aa = load i32, ptr %gep.us, align 4, !tbaa !4
  %i.ab = shl i32 %i.aa, %i.s
  %i.ac = add i32 %i.w, %i.ab
  %.reass.us = sub i32 %i.t, %i.ac
  %i.ad = sext i32 %.reass.us to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr @pow20, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14 ; 3 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv.next200
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 4 uses
  %i.ai = sub nsw i32 %i.ah, %i.z
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = icmp slt i32 %i.z, %i.ah
  br i1 %i.ak, label %.lr.ph164.us.preheader, label %._crit_edge165.us

.lr.ph164.us.preheader:                           ; preds = %bb.b
  %i.al = sext i32 %i.z to i64                    ; 5 uses
  %wide.trip.count197 = sext i32 %i.ah to i64     ; 3 uses
  %i.am = sub nsw i64 %wide.trip.count197, %i.al
  %xtraiter236 = and i64 %i.am, 1
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph164.us.prol.loopexit, label %.lr.ph164.us.prol

.lr.ph164.us.prol:                                ; preds = %.lr.ph164.us.preheader
  %i.an = mul nsw i64 %i.al, 3                    ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !14
  %i.aw = fneg double %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.af, double %i.aq) ; 2 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double 0.000000e+00) ; 2 uses
  %indvars.iv.next195.prol = add nsw i64 %i.al, 1
  br label %.lr.ph164.us.prol.loopexit

.lr.ph164.us.prol.loopexit:                       ; preds = %.lr.ph164.us.prol, %.lr.ph164.us.preheader
  %.lcssa234.unr = phi double [ poison, %.lr.ph164.us.preheader ], [ %i.ay, %.lr.ph164.us.prol ]
  %indvars.iv194.unr = phi i64 [ %i.al, %.lr.ph164.us.preheader ], [ %indvars.iv.next195.prol, %.lr.ph164.us.prol ]
  %.1137161.us.unr = phi double [ 0.000000e+00, %.lr.ph164.us.preheader ], [ %i.ay, %.lr.ph164.us.prol ]
  %i.az = add nsw i64 %wide.trip.count197, -1
  %i.ba = icmp eq i64 %i.az, %i.al
  br i1 %i.ba, label %._crit_edge165.us, label %.lr.ph164.us

.lr.ph164.us:                                     ; preds = %.lr.ph164.us.prol.loopexit, %.lr.ph164.us
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1240, %.lr.ph164.us ], [ %indvars.iv194.unr, %.lr.ph164.us.prol.loopexit ] ; 3 uses
  %.1137161.us = phi double [ %i.bz, %.lr.ph164.us ], [ %.1137161.us.unr, %.lr.ph164.us.prol.loopexit ]
  %i.bb = mul nsw i64 %indvars.iv194, 3           ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !14
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bb
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !14
  %i.bk = fneg double %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.af, double %i.be) ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %.1137161.us)
  %i.bn = mul i64 %indvars.iv194, 3
  %i.bo = add i64 %i.bn, 3                        ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bo
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !14
  %i.bx = fneg double %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.af, double %i.br) ; 2 uses
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.bm) ; 2 uses
  %indvars.iv.next195.1240 = add nsw i64 %indvars.iv194, 2 ; 2 uses
  %exitcond198.not.1 = icmp eq i64 %indvars.iv.next195.1240, %wide.trip.count197
  br i1 %exitcond198.not.1, label %._crit_edge165.us, label %.lr.ph164.us, !llvm.loop !70

._crit_edge165.us:                                ; preds = %.lr.ph164.us.prol.loopexit, %.lr.ph164.us, %bb.b
  %.1137.lcssa.us = phi double [ 0.000000e+00, %bb.b ], [ %.lcssa234.unr, %.lr.ph164.us.prol.loopexit ], [ %i.bz, %.lr.ph164.us ]
  %i.ca = fdiv double %.1137.lcssa.us, %i.aj      ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv199
  store double %i.ca, ptr %i.cb, align 8, !tbaa !14
  %gep176.us = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv199
  %i.cc = load double, ptr %gep176.us, align 8, !tbaa !14
  %i.cd = fdiv double %i.ca, %i.cc                ; 2 uses
  %i.ce = fcmp olt double %i.cd, 1.000000e-03
  br i1 %i.ce, label %.thread149.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge165.us
  %i.cf = tail call double @llvm.log10.f64(double %i.cd)
  %i.cg = fmul double %i.cf, 1.000000e+01         ; 5 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv199
  store double %i.cg, ptr %i.ch, align 8, !tbaa !14
  %i.ci = fcmp ogt double %i.cg, 0.000000e+00
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cj = add nsw i32 %.3168.us, 1
  %i.ck = load double, ptr %7, align 8, !tbaa !14
  %i.cl = fadd double %i.cg, %i.ck
  store double %i.cl, ptr %7, align 8, !tbaa !14
  br label %bb.e

.thread149.us:                                    ; preds = %._crit_edge165.us
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv199
  store double -3.000000e+01, ptr %i.cm, align 8, !tbaa !14
end_hunk_1
