Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/flip?download=true
inline.NumInlined: 376
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11flip_detail5image8convolveERS0_S1_:bb.a
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %i.ac
  br i1 %exitcond132.not, label %._crit_edge93.split.split.us.us.us, label %.lr.ph84.us.us.us, !llvm.loop !41

._crit_edge93.split.split.us.us.us:               ; preds = %.lr.ph84.us.us.us, %middle.block
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge100, label %.preheader.us.us109, !llvm.loop !42

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge93.split.split.us107
  %indvars.iv123 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next124, %._crit_edge93.split.split.us107 ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv123, %i.ab
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ak
  %i.am = trunc nuw nsw i64 %indvars.iv123 to i32
  br label %.lr.ph84.us103

.lr.ph84.us103:                                   ; preds = %._crit_edge85.split.us, %.preheader.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge85.split.us ], [ 0, %.preheader.us ] ; 3 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph84.us103
  %.03282.us = phi i32 [ %i.k, %.lr.ph84.us103 ], [ %i.bh, %._crit_edge.us ] ; 4 uses
  %.sroa.10.081.us = phi float [ 0.000000e+00, %.lr.ph84.us103 ], [ %i.bg, %._crit_edge.us ]
  %i.an = phi <2 x float> [ zeroinitializer, %.lr.ph84.us103 ], [ %i.bf, %._crit_edge.us ]
  %i.ao = add nsw i32 %.03282.us, %i.am
  %.sroa.speculated60.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %.sroa.speculated56.us = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.sroa.speculated60.us)
  %i.ap = add nsw i32 %.03282.us, %i.e
  %i.aq = mul nsw i32 %i.ap, %i.a
  %i.ar = add i32 %i.aq, %i.b
  %i.as = mul nsw i32 %i.t, %.sroa.speculated56.us
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.z, %.lr.ph.us ] ; 3 uses
  %.sroa.10.174.us = phi float [ %i.bg, %bb.b ], [ %.sroa.10.081.us, %.lr.ph.us ]
  %i.at = phi <2 x float> [ %i.bf, %bb.b ], [ %i.an, %.lr.ph.us ]
  %i.au = add i64 %indvars.iv, %indvars.iv119
  %i.av = trunc i64 %i.au to i32
  %.sroa.speculated49.us = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.sroa.speculated49.us)
  %i.aw = trunc i64 %indvars.iv to i32
  %i.ax = add i32 %i.ar, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.ay ; 2 uses
  %.sroa.53.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.53.0.copyload.us = load float, ptr %.sroa.53.0..sroa_idx.us, align 4, !tbaa !15
  %i.ba = add nsw i32 %i.as, %.sroa.speculated.us
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.bb ; 2 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4, !tbaa !15
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.us = load float, ptr %.sroa.5.0..sroa_idx.us, align 4, !tbaa !15
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.at) ; 3 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.53.0.copyload.us, float %.sroa.5.0.copyload.us, float %.sroa.10.174.us) ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !43

._crit_edge.us:                                   ; preds = %bb.b
  %i.bh = add i32 %.03282.us, 1
  %exitcond118.not = icmp eq i32 %.03282.us, %smax117
  br i1 %exitcond118.not, label %._crit_edge85.split.us, label %.lr.ph.us, !llvm.loop !44

._crit_edge85.split.us:                           ; preds = %._crit_edge.us
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv119 ; 2 uses
  store <2 x float> %i.bf, ptr %i.bi, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx43.us106 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bg, ptr %.sroa.5.0..sroa_idx43.us106, align 4, !tbaa !15
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count
  br i1 %exitcond122.not, label %._crit_edge93.split.split.us107, label %.lr.ph84.us103, !llvm.loop !45

._crit_edge93.split.split.us107:                  ; preds = %._crit_edge85.split.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge100, label %.preheader.us, !llvm.loop !42

._crit_edge100:                                   ; preds = %._crit_edge93.split.split.us107, %._crit_edge93.split.split.us.us.us, %.preheader.lr.ph, %.preheader.us.us.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11flip_detail5image14huntAdjustmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load float, ptr %.sroa.09.013, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 4 ; 2 uses
  %i.g = fmul float %i.e, f0x3C23D70A
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !15
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %i.h
  store <2 x float> %i.k, ptr %i.f, align 4, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image10preprocessERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.flip_detail::image", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load i64, ptr %0, align 8
  store i64 %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = icmp ugt i64 %i.j, 768614336404564650
  br i1 %i.k, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, !prof !31

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #19
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !30
  %.pre32 = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.e, %bb.a ], [ %.pre32, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.a ], [ %i.l, %_ZNSt15__new_allocatorIN11flip_detail6color3EE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.o, ptr %i.b, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !32
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !33
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN11flip_detail5imageC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN11flip_detail5imageC2ERKS0_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !25
  call void @_ZN11flip_detail5image8convolveERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %.not30 = icmp eq ptr %i.u, %i.v
  br i1 %.not30, label %_ZN11flip_detail5image14huntAdjustmentEv.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.u, %bb.l ] ; 3 uses
  %i.w = load float, ptr %.sroa.09.013.i, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 4 ; 2 uses
  %i.y = fmul float %i.w, f0x3C23D70A
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !15
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.z
  store <2 x float> %i.ac, ptr %i.x, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.v
  br i1 %.not.i, label %_ZN11flip_detail5image14huntAdjustmentEv.exit, label %.lr.ph.i

.lr.ph:                                           ; preds = %_ZN11flip_detail5imageC2ERKS0_.exit, %bb.l
  %.sroa.027.031 = phi ptr [ %i.ca, %bb.l ], [ %i.u, %_ZN11flip_detail5imageC2ERKS0_.exit ] ; 6 uses
  %.sroa.0.0.copyload.i = load float, ptr %.sroa.027.031, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 4 ; 3 uses
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 8
  %i.ae = fdiv float %.sroa.4.0.copyload.i, 5.000000e+02
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !15
  %i.af = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.5.0.copyload.i, i64 1
  %i.ah = fadd <2 x float> %i.ag, <float 1.600000e+01, float -0.000000e+00>
  %i.ai = fdiv <2 x float> %i.ah, <float 1.160000e+02, float 2.000000e+02> ; 4 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %3 = fmul float %i.aj, f0xBE50E850
  %i.ak = fadd float %i.aj, %i.ae
  %shift = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ai, %shift
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = fmul float %i.ak, f0x3F734F49           ; 2 uses
  %i.an = fmul float %i.al, f0x3F8B6116           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, <float 1.875930e+00, float f0xBFC4C97D>
  %i.aq = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> <float f0xBF781F15, float f0x404F6C99>, <2 x float> %i.ap)
  %i.at = insertelement <2 x float> poison, float %i.an, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> <float f0x3D2A34C4, float f0xBEFF4A95>, <2 x float> %i.as) ; 3 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  store float %i.aw, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !13
  %4 = tail call float @llvm.fmuladd.f32(float %i.am, float f0x3D63E629, float %3)
  %5 = tail call float @llvm.fmuladd.f32(float %i.an, float f0x3F8750A8, float %4) ; 2 uses
  %6 = fcmp ogt <2 x float> %i.av, splat (float 1.000000e+00)
  %7 = select <2 x i1> %6, <2 x float> splat (float 1.000000e+00), <2 x float> %i.av ; 3 uses
  %8 = extractelement <2 x float> %7, i64 1       ; 2 uses
  store float %8, ptr %.sroa.027.031, align 4, !tbaa !12
  %9 = fcmp ogt float %5, 1.000000e+00
  %.sroa.speculated.i = select i1 %9, float 1.000000e+00, float %5 ; 2 uses
  %10 = fcmp olt <2 x float> %7, zeroinitializer  ; 2 uses
  %11 = extractelement <2 x i1> %10, i64 1
  %12 = extractelement <2 x i1> %10, i64 0
  %i.ax = extractelement <2 x float> %7, i64 0
  %.sroa.speculated10.i11 = select i1 %11, float 0.000000e+00, float %8 ; 2 uses
  %.sroa.speculated7.i12 = select i1 %12, float 0.000000e+00, float %i.ax ; 2 uses
  %13 = fcmp olt float %.sroa.speculated.i, 0.000000e+00
  %.sroa.speculated.i13.a = select i1 %13, float 0.000000e+00, float %.sroa.speculated.i ; 2 uses
  %14 = fmul float %.sroa.speculated7.i12, f0x3F37163B
  %15 = tail call float @llvm.fmuladd.f32(float %.sroa.speculated10.i11, float f0x3E59BD78, float %14)
  %16 = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i13.a, float 7.218020e-02, float %15)
  %17 = insertelement <2 x float> poison, float %.sroa.speculated7.i12, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x float> %18, <float f0x3EB7163B, float f0x3DF41DA4>
  %i.ay = insertelement <2 x float> poison, float %.sroa.speculated10.i11, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> <float f0x3ED32455, float f0x3C9E5B3F>, <2 x float> %19)
  %21 = insertelement <2 x float> poison, float %.sroa.speculated.i13.a, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> <float f0x3E38C803, float f0x3F734B9E>, <2 x float> %20)
  %23 = tail call float @llvm.fabs.f32(float %16) ; 3 uses
  %i.bb = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ba)
  %i.bc = fdiv <2 x float> %i.bb, <float f0x3F734F49, float f0x3F8B6116> ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0 ; 3 uses
  %i.be = fpext float %i.bd to double
  %i.bf = fcmp ogt double %i.be, 8.856000e-03
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bg = tail call float @powf(float noundef %i.bd, float noundef f0x3EAAAAAB) #17
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bd, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bi = phi float [ %i.bg, %bb.d ], [ %i.bh, %bb.e ]
  %i.bj = fpext float %23 to double
  %i.bk = fcmp ogt double %i.bj, 8.856000e-03
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = tail call float @powf(float noundef %23, float noundef f0x3EAAAAAB) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bm = tail call float @llvm.fmuladd.f32(float %23, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bn = phi float [ %i.bl, %bb.g ], [ %i.bm, %bb.h ] ; 3 uses
  %i.bo = extractelement <2 x float> %i.bc, i64 1 ; 3 uses
  %i.bp = fpext float %i.bo to double
  %i.bq = fcmp ogt double %i.bp, 8.856000e-03
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = tail call float @powf(float noundef %i.bo, float noundef f0x3EAAAAAB) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bo, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = phi float [ %i.br, %bb.j ], [ %i.bs, %bb.k ]
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bn, float 1.160000e+02, float -1.600000e+01)
  store float %i.bu, ptr %.sroa.027.031, align 4, !tbaa !12
  %i.bv = fsub float %i.bi, %i.bn
  %i.bw = fsub float %i.bn, %i.bt
  %i.bx = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bw, i64 1
  %i.bz = fmul <2 x float> %i.by, <float 5.000000e+02, float 2.000000e+02>
  store <2 x float> %i.bz, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ca, %i.v
  br i1 %.not, label %.lr.ph.i, label %.lr.ph

_ZN11flip_detail5image14huntAdjustmentEv.exit:    ; preds = %.lr.ph.i, %_ZN11flip_detail5imageC2ERKS0_.exit
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN11flip_detail5imageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11flip_detail5image14huntAdjustmentEv.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.i) #20
  br label %_ZN11flip_detail5imageD2Ev.exit

_ZN11flip_detail5imageD2Ev.exit:                  ; preds = %_ZN11flip_detail5image14huntAdjustmentEv.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image22computeColorDifferenceERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 5 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = mul nsw i32 %i.c, %i.a
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 12                  ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.g
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.g, %i.o
  call void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.j, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !24
  br label %_ZN11flip_detail5image8allocateEii.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ugt i64 %i.o, %i.g
  br i1 %i.r, label %bb.d, label %_ZN11flip_detail5image8allocateEii.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i.i, label %_ZN11flip_detail5image8allocateEii.exit, label %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.i, align 8, !tbaa !25
  br label %_ZN11flip_detail5image8allocateEii.exit

_ZN11flip_detail5image8allocateEii.exit:          ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.lr.ph, label %._crit_edge38.split

.preheader.lr.ph:                                 ; preds = %_ZN11flip_detail5image8allocateEii.exit
  %i.v = load i32, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.lr.ph.split, label %._crit_edge38.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %1, align 8, !tbaa !23
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ab = load i32, ptr %2, align 8, !tbaa !23
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.ae = zext nneg i32 %i.v to i64
  %i.af = sext i32 %i.ab to i64
  %i.ag = sext i32 %i.z to i64
  %wide.trip.count43 = zext nneg i32 %i.t to i64
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.ah = mul nsw i64 %indvars.iv40, %i.ag
  %i.ai = mul nsw i64 %indvars.iv40, %i.af
  %i.aj = mul nuw nsw i64 %indvars.iv40, %i.ae
  %i.ak = getelementptr [12 x i8], ptr %i.aa, i64 %i.ah
  %i.al = getelementptr [12 x i8], ptr %i.ac, i64 %i.ai
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ad, i64 %i.aj
  br label %bb.e

._crit_edge38.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN11flip_detail5image8allocateEii.exit
  ret void

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge38.split, label %.preheader, !llvm.loop !46

bb.e:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.an = getelementptr [12 x i8], ptr %i.ak, i64 %indvars.iv ; 3 uses
  %.sroa.033.0.copyload = load float, ptr %i.an, align 4, !tbaa !15
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.434.0.copyload = load float, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !15
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.535.0.copyload = load float, ptr %.sroa.535.0..sroa_idx, align 4, !tbaa !15
  %i.ao = getelementptr [12 x i8], ptr %i.al, i64 %indvars.iv ; 3 uses
  %.sroa.030.0.copyload = load float, ptr %i.ao, align 4, !tbaa !15
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.431.0.copyload = load float, ptr %.sroa.431.0..sroa_idx, align 4, !tbaa !15
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.532.0.copyload = load float, ptr %.sroa.532.0..sroa_idx, align 4, !tbaa !15
  %i.ap = fsub float %.sroa.033.0.copyload, %.sroa.030.0.copyload
  %i.aq = call float @llvm.fabs.f32(float %i.ap)
  %i.ar = fsub float %.sroa.434.0.copyload, %.sroa.431.0.copyload ; 2 uses
  %i.as = fsub float %.sroa.535.0.copyload, %.sroa.532.0.copyload ; 2 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %i.av = call float @sqrtf(float noundef %i.au) #17
  %i.aw = fadd float %i.aq, %i.av
  %i.ax = call float @powf(float noundef %i.aw, float noundef f0x3F333333) #17 ; 3 uses
  %i.ay = fcmp olt float %i.ax, f0x41841561
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = fmul nnan float %i.ax, f0x3D6BAE63
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ba = fadd float %i.ax, f0xC1841561
  %i.bb = fdiv float %i.ba, f0x41C62011
  %i.bc = call float @llvm.fmuladd.f32(float %i.bb, float f0x3D4CCCD0, float f0x3F733333)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi float [ %i.az, %bb.f ], [ %i.bc, %bb.g ]
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  store float %.0, ptr %i.bd, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store <2 x float> zeroinitializer, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !47
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image24generateDetectionFiltersEfb(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %i.a = fmul float %1, 4.100000e-02              ; 2 uses
  %i.b = fmul float %i.a, 3.000000e+00
  %i.c = tail call noundef float @llvm.ceil.f32(float %i.b)
  %i.d = fptosi float %i.c to i32                 ; 6 uses
  %i.e = shl nsw i32 %i.d, 1                      ; 3 uses
  %i.f = or disjoint i32 %i.e, 1                  ; 4 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = mul nsw i32 %i.f, %i.f
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.j
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !25
  br label %_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i70 ], [ %i.aj, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i71, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i72, i64 12, i1 false), !tbaa.struct !33
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 12
  %.not.i.i.i.i.i73 = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !98

_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.j
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !25
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ap, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 4
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !103
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 12 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !99

_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8, !tbaa !26    ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.as = sub i64 %i.f, %i.ar
  %i.at = sdiv exact i64 %i.as, 12                ; 4 uses
  %i.au = sub nsw i64 768614336404564650, %i.at
  %i.av = icmp ult i64 %i.au, %2
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %2)
  %i.aw = add nsw i64 %.sroa.speculated.i, %i.at  ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 768614336404564650)
  %i.az = select i1 %i.ax, i64 768614336404564650, i64 %i.ay ; 3 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.ba, %i.ar
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bc = mul nuw nsw i64 %i.az, 12
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #19
  br label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.be = phi ptr [ %i.bd, %bb.l ], [ null, %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb ; 2 uses
  %xtraiter142 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i82.prol ], [ %i.bf, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i82.prol ], [ %2, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ]
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83.prol, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bg = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 12 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !102

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ], [ %i.bh, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ], [ %i.bg, %.lr.ph.i.i.i.i82.prol ]
  %i.bi = icmp ult i64 %2, 4
  br i1 %i.bi, label %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i84 = phi i64 [ %i.bm, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bm = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  %.not.i.i.i.i85.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !101

_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.aq, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i89 ], [ %i.be, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i89 ], [ %i.aq, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i91, i64 12, i1 false), !tbaa.struct !33
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 12 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bo, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !98

_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.be, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ], [ %i.bp, %.lr.ph.i.i.i.i.i89 ]
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i95 ], [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i96, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i97, i64 12, i1 false), !tbaa.struct !33
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 12 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.br, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !98

_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.bs, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.aq, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bv) #20
  br label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, %bb.m
  store ptr %i.be, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.az
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!"_ZTSN11flip_detail6color3E", !10, i64 0, !10, i64 4, !10, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 4}
!14 = !{!11, !10, i64 8}
!15 = !{!10, !10, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 _ZTSN11flip_detail6color3E", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIN11flip_detail6color3ESaIS1_EE", !20, i64 0}
!22 = !{!"_ZTSN11flip_detail5imageE", !7, i64 0, !7, i64 4, !21, i64 8}
!23 = !{!22, !7, i64 0}
!24 = !{!22, !7, i64 4}
!25 = !{!18, !17, i64 8}
!26 = !{!18, !17, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!17, !17, i64 0}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!18, !17, i64 16}
!33 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27, !28, !29}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27, !29, !28}
!40 = distinct !{!40, !27, !28, !29}
!41 = distinct !{!41, !27, !29, !28}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27, !28, !29}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27, !29, !28}
!53 = distinct !{!53, !28, !29}
!54 = distinct !{!54, !28, !29}
!55 = distinct !{!55, !29, !28}
!56 = distinct !{!56, !29, !28}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27, !74}
!62 = distinct !{!62, !27}
!63 = !{!"long", !6, i64 0}
!64 = !{!"double", !6, i64 0}
!65 = !{!"p1 long", !16, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseImSaImEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorImSaImEE", !68, i64 0}
!70 = !{!"_ZTSN11flip_detail9histogramE", !64, i64 0, !64, i64 8, !63, i64 16, !63, i64 24, !64, i64 32, !69, i64 40, !6, i64 64, !63, i64 80}
!71 = !{!"_ZTSN11flip_detail7poolingE", !63, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !6, i64 48, !6, i64 56, !70, i64 64}
!72 = !{!71, !64, i64 8}
!73 = !{!71, !64, i64 16}
!74 = !{!"llvm.loop.unswitch.partial.disable"}
!75 = !{!71, !63, i64 0}
!76 = !{!63, !63, i64 0}
!77 = !{!70, !63, i64 16}
!78 = !{!70, !63, i64 24}
!79 = !{!71, !64, i64 24}
!80 = !{!7, !7, i64 0}
!81 = !{!71, !64, i64 32}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !27, !28, !29}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !27, !28}
!91 = !{!"_ZTS11FLIPOptions", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!92 = !{!91, !10, i64 0}
!93 = !{!91, !10, i64 4}
!94 = !{!91, !10, i64 8}
!95 = !{!91, !10, i64 12}
!96 = !{!86}
!97 = !{!87}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !34}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !34}
!103 = !{i64 0, i64 3, !15, i64 3, i64 4, !15, i64 7, i64 4, !15}
!104 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_1
