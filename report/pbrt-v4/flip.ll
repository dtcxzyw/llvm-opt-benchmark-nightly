Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/flip?download=true
inline.NumInlined: 376
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11flip_detail5image8convolveERS0_S1_:bb.a
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
  %.sroa.027.031 = phi ptr [ %i.ck, %bb.l ], [ %i.u, %_ZN11flip_detail5imageC2ERKS0_.exit ] ; 6 uses
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
  %i.ak = fmul float %i.aj, f0xBE50E850
  %i.al = fadd float %i.aj, %i.ae
  %shift = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.ai, %shift
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = fmul float %i.al, f0x3F734F49           ; 2 uses
  %i.ao = fmul float %i.am, f0x3F8B6116           ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, <float 1.875930e+00, float f0xBFC4C97D>
  %i.ar = insertelement <2 x float> poison, float %i.an, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> <float f0xBF781F15, float f0x404F6C99>, <2 x float> %i.aq)
  %i.au = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> <float f0x3D2A34C4, float f0xBEFF4A95>, <2 x float> %i.at) ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  store float %i.ax, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !13
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.an, float f0x3D63E629, float %i.ak)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ao, float f0x3F8750A8, float %i.ay) ; 2 uses
  %i.ba = fcmp ogt <2 x float> %i.aw, splat (float 1.000000e+00)
  %i.bb = select <2 x i1> %i.ba, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aw ; 3 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 1 ; 2 uses
  store float %i.bc, ptr %.sroa.027.031, align 4, !tbaa !12
  %i.bd = fcmp ogt float %i.az, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.bd, float 1.000000e+00, float %i.az ; 2 uses
  %i.be = fcmp olt <2 x float> %i.bb, zeroinitializer ; 2 uses
  %3 = extractelement <2 x i1> %i.be, i64 1
  %4 = extractelement <2 x i1> %i.be, i64 0
  %5 = extractelement <2 x float> %i.bb, i64 0
  %6 = fcmp olt float %.sroa.speculated.i, 0.000000e+00
  %.sroa.speculated7.i12 = select i1 %4, float 0.000000e+00, float %5 ; 2 uses
  %.sroa.speculated10.i11 = select i1 %3, float 0.000000e+00, float %i.bc ; 2 uses
  %.sroa.speculated.i13 = select i1 %6, float 0.000000e+00, float %.sroa.speculated.i ; 2 uses
  %i.bf = fmul float %.sroa.speculated7.i12, f0x3F37163B
  %7 = tail call float @llvm.fmuladd.f32(float %.sroa.speculated10.i11, float f0x3E59BD78, float %i.bf)
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i13, float 7.218020e-02, float %7)
  %8 = insertelement <2 x float> poison, float %.sroa.speculated7.i12, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x float> %9, <float f0x3EB7163B, float f0x3DF41DA4>
  %11 = insertelement <2 x float> poison, float %.sroa.speculated10.i11, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> <float f0x3ED32455, float f0x3C9E5B3F>, <2 x float> %10)
  %13 = insertelement <2 x float> poison, float %.sroa.speculated.i13, i64 0
  %i.bi = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> <float f0x3E38C803, float f0x3F734B9E>, <2 x float> %i.bh)
  %i.bk = tail call float @llvm.fabs.f32(float %i.bg) ; 3 uses
  %i.bl = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bj)
  %i.bm = fdiv <2 x float> %i.bl, <float f0x3F734F49, float f0x3F8B6116> ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0 ; 3 uses
  %i.bo = fpext float %i.bn to double
  %i.bp = fcmp ogt double %i.bo, 8.856000e-03
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bq = tail call float @powf(float noundef %i.bn, float noundef f0x3EAAAAAB) #17
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bn, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bs = phi float [ %i.bq, %bb.d ], [ %i.br, %bb.e ]
  %i.bt = fpext float %i.bk to double
  %i.bu = fcmp ogt double %i.bt, 8.856000e-03
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call float @powf(float noundef %i.bk, float noundef f0x3EAAAAAB) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bk, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bx = phi float [ %i.bv, %bb.g ], [ %i.bw, %bb.h ] ; 3 uses
  %i.by = extractelement <2 x float> %i.bm, i64 1 ; 3 uses
  %i.bz = fpext float %i.by to double
  %i.ca = fcmp ogt double %i.bz, 8.856000e-03
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = tail call float @powf(float noundef %i.by, float noundef f0x3EAAAAAB) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.by, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cd = phi float [ %i.cb, %bb.j ], [ %i.cc, %bb.k ]
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bx, float 1.160000e+02, float -1.600000e+01)
  store float %i.ce, ptr %.sroa.027.031, align 4, !tbaa !12
  %i.cf = fsub float %i.bs, %i.bx
  %i.cg = fsub float %i.bx, %i.cd
  %i.ch = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1
  %i.cj = fmul <2 x float> %i.ci, <float 5.000000e+02, float 2.000000e+02>
  store <2 x float> %i.cj, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.v
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
  %sqrt.i = call float @llvm.sqrt.f32(float %i.au)
  %i.av = fadd float %i.aq, %sqrt.i
  %i.aw = call float @powf(float noundef %i.av, float noundef f0x3F333333) #17 ; 3 uses
  %i.ax = fcmp olt float %i.aw, f0x41841561
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = fmul nnan float %i.aw, f0x3D6BAE63
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.az = fadd float %i.aw, f0xC1841561
  %i.ba = fdiv float %i.az, f0x41C62011
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float f0x3D4CCCD0, float f0x3F733333)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_0
