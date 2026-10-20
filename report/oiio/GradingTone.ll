Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/GradingTone?download=true
inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_520GradingTonePreRenderC2ENS_12GradingStyleE:.preheader43.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_520GradingTonePreRender8setStyleENS_12GradingStyleE.exit, label %bb.a

bb.a:                                             ; preds = %.preheader43.preheader
  store i32 %1, ptr %i.c, align 4, !tbaa !23
  switch i32 %1, label %_ZN16OpenColorIO_v2_520GradingTonePreRender8setStyleENS_12GradingStyleE.exit [
    i32 2, label %.sink.split.i.i
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.a, %bb.b
  %i.d = phi <4 x float> [ <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 4.000000e-01>, %bb.a ], [ <float 7.500000e+00, float 6.500000e+00, float -5.500000e+00, float 0.000000e+00>, %bb.b ]
  store <4 x float> %i.d, ptr %i.a, align 8, !tbaa !18
  br label %_ZN16OpenColorIO_v2_520GradingTonePreRender8setStyleENS_12GradingStyleE.exit

_ZN16OpenColorIO_v2_520GradingTonePreRender8setStyleENS_12GradingStyleE.exit: ; preds = %.preheader43.preheader, %bb.a, %.sink.split.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender8setStyleENS_12GradingStyleE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %.not = icmp eq i32 %i.b, %1
  br i1 %.not, label %_ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp ult i32 %1, 3
  br i1 %i.c, label %switch.lookup, label %_ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.exit

switch.lookup:                                    ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.h = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_, i64 %i.h
  %switch.load = load float, ptr %switch.gep, align 4
  %i.i = zext nneg i32 %1 to i64
  %switch.gep3 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.4, i64 %i.i
  %switch.load4 = load float, ptr %switch.gep3, align 4
  %i.j = zext nneg i32 %1 to i64
  %switch.gep5 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.5, i64 %i.j
  %switch.load6 = load float, ptr %switch.gep5, align 4
  %i.k = zext nneg i32 %1 to i64
  %switch.gep7 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.6, i64 %i.k
  %switch.load8 = load float, ptr %switch.gep7, align 4
  store float %switch.load, ptr %i.g, align 8, !tbaa !18
  store float %switch.load4, ptr %i.f, align 4, !tbaa !18
  store float %switch.load6, ptr %i.e, align 8, !tbaa !18
  store float %switch.load8, ptr %i.d, align 4, !tbaa !18
  br label %_ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.exit

_ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.exit: ; preds = %bb.b, %switch.lookup, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_(i32 noundef %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_, i64 %i.b
  %switch.load = load float, ptr %switch.gep, align 4
  %i.c = zext nneg i32 %0 to i64
  %switch.gep15 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.4, i64 %i.c
  %switch.load16 = load float, ptr %switch.gep15, align 4
  %i.d = zext nneg i32 %0 to i64
  %switch.gep17 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.5, i64 %i.d
  %switch.load18 = load float, ptr %switch.gep17, align 4
  %i.e = zext nneg i32 %0 to i64
  %switch.gep19 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.6, i64 %i.e
  %switch.load20 = load float, ptr %switch.gep19, align 4
  store float %switch.load, ptr %1, align 4, !tbaa !18
  store float %switch.load16, ptr %2, align 4, !tbaa !18
  store float %switch.load18, ptr %3, align 4, !tbaa !18
  store float %switch.load20, ptr %4, align 4, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender6updateERKNS_11GradingToneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) initializes((928, 929)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN16OpenColorIO_v2_510IsIdentityERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(248) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !22
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load double, ptr %i.d, align 8, !tbaa !32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load double, ptr %i.f, align 8, !tbaa !33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !34 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.k = load double, ptr %i.j, align 8, !tbaa !35 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.m = load double, ptr %i.l, align 8, !tbaa !36
  %i.n = fadd double %i.i, -1.000000e-02          ; 2 uses
  %i.o = fcmp ogt double %i.g, %i.n
  %i.p = select i1 %i.o, double %i.n, double %i.g ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.p, ptr %i.q, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.i, ptr %i.r, align 8, !tbaa !38
  %i.s = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %i.k, double noundef %i.p, double noundef %i.i, double noundef %i.e) ; 2 uses
  %i.t = fadd double %i.k, %i.m
  %i.u = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %i.t, double noundef %i.p, double noundef %i.i, double noundef %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.s, ptr %i.v, align 8, !tbaa !39
  %i.w = fsub double %i.u, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.w, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load double, ptr %i.y, align 8, !tbaa !41 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !43 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !44 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !45
  %i.ai = fadd double %i.ad, 1.000000e-02         ; 2 uses
  %i.aj = fcmp olt double %i.ab, %i.ai
  %i.ak = select i1 %i.aj, double %i.ai, double %i.ab ; 3 uses
  store double %i.ak, ptr %0, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ad, ptr %i.al, align 8, !tbaa !47
  %i.am = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %i.af, double noundef %i.ad, double noundef %i.ak, double noundef %i.z) ; 2 uses
  %i.an = fsub double %i.af, %i.ah
  %i.ao = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %i.an, double noundef %i.ad, double noundef %i.ak, double noundef %i.z)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.am, ptr %i.ap, align 8, !tbaa !48
  %i.aq = fsub double %i.am, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.aq, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.at = load float, ptr %i.as, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !tbaa !51
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, float noundef %i.at, float noundef %i.av)
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender26highlightShadow_precomputeERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender21whiteBlack_precomputeERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !52
  %i.ay = load float, ptr %i.au, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.ba = load float, ptr %i.az, align 4, !tbaa !53
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender20scontrast_precomputeERKNS_11GradingToneEfff(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, float noundef %i.ax, float noundef %i.ay, float noundef %i.ba)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.b = insertelement <2 x double> <double poison, double 0.000000e+00>, double %1, i64 0 ; 3 uses
  %i.c = fsub <2 x double> %i.a, %i.b
  %i.d = insertelement <2 x double> %i.b, double %2, i64 1
  %i.e = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.c, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %i.d) ; 3 uses
  %i.f = fsub double 2.000000e+00, %3             ; 4 uses
  %i.g = fcmp ugt double %i.f, 1.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp olt double %i.f, 1.000000e-02
  %i.i = select i1 %i.h, double 1.000000e-02, double %i.f ; 3 uses
  %i.j = fsub double %0, %1                       ; 2 uses
  %i.k = fcmp olt double %0, %1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = fadd double %1, %i.j
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.m = extractelement <2 x double> %i.e, i64 0  ; 4 uses
  %i.n = fcmp olt double %0, %i.m
  %i.o = fsub double %i.m, %1                     ; 5 uses
  %4 = fdiv double %i.j, %i.o                     ; 6 uses
  %i.p = fsub double 1.000000e+00, %4
  %5 = fmul double %4, %i.p
  %i.q = fneg double %4
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %4, double 1.000000e+00)
  %i.s = fsub double %2, %i.m                     ; 5 uses
  %i.t = fadd double %i.s, %i.o
  %i.u = fneg double %i.s
  %i.v = fmul double %i.i, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.v)
  %i.x = fmul double %i.o, %i.w
  %6 = fsub double %0, %i.m
  %i.y = tail call double @llvm.fmuladd.f64(double %1, double 2.000000e+00, double %i.o)
  %7 = tail call double @llvm.fmuladd.f64(double %i.y, double %i.s, double %i.x)
  %i.z = insertelement <2 x double> <double poison, double 5.000000e-01>, double %6, i64 0
  %i.aa = insertelement <2 x double> poison, double %i.s, i64 0
  %8 = insertelement <2 x double> %i.aa, double %i.t, i64 1
  %9 = fdiv <2 x double> %i.z, %8                 ; 3 uses
  %i.ab = extractelement <2 x double> %9, i64 1
  %i.ac = fmul double %7, %i.ab                   ; 2 uses
  %10 = fmul double %4, %i.ac
  %11 = fmul double %4, %10
  %12 = tail call double @llvm.fmuladd.f64(double %1, double %i.r, double %11)
  %13 = tail call double @llvm.fmuladd.f64(double %5, double %i.o, double %12)
  %14 = extractelement <2 x double> %9, i64 0     ; 4 uses
  %15 = fadd double %14, -1.000000e+00
  %16 = fmul double %i.i, %15
  %17 = fmul double %14, %16
  %18 = extractelement <2 x double> %9, i64 0
  %19 = fsub double 1.000000e+00, %18             ; 2 uses
  %20 = fmul double %19, %i.ac
  %21 = fsub double 2.000000e+00, %14
  %22 = fmul double %2, %21
  %23 = fmul double %14, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %19, double %23)
  %25 = tail call double @llvm.fmuladd.f64(double %17, double %i.s, double %24)
  %i.ad = select i1 %i.n, double %13, double %25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.c, %bb.d
  %i.ae = phi double [ %i.l, %bb.c ], [ %i.ad, %bb.d ]
  %i.af = fcmp ogt double %0, %2
  %i.ag = fsub double %0, %2
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.i, double %2)
  %i.ai = select i1 %i.af, double %i.ah, double %i.ae
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.aj = fsub double 2.000000e+00, %i.f          ; 2 uses
  %i.ak = fcmp olt double %i.aj, 1.000000e-02
  %i.al = select i1 %i.ak, double 1.000000e-02, double %i.aj ; 4 uses
  %i.am = shufflevector <2 x double> %i.b, <2 x double> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.an = fsub <2 x double> %i.e, %i.am           ; 5 uses
  %i.ao = extractelement <2 x double> %i.an, i64 1 ; 3 uses
  %i.ap = fneg double %i.ao
  %26 = fmul double %i.al, %i.ap
  %27 = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %26)
  %i.aq = fneg double %i.al
  %i.ar = insertelement <2 x double> poison, double %1, i64 0
  %i.as = insertelement <2 x double> poison, double %0, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = extractelement <2 x double> %i.an, i64 0 ; 4 uses
  %i.av = fadd double %i.ao, %i.au
  %i.aw = fdiv double 5.000000e-01, %i.av
  %28 = tail call double @llvm.fmuladd.f64(double %1, double 2.000000e+00, double %i.au)
  %29 = fmul double %i.au, %27
  %i.ax = tail call double @llvm.fmuladd.f64(double %28, double %i.ao, double %29)
  %i.ay = fmul double %i.aw, %i.ax                ; 5 uses
  %i.az = fsub double %i.ay, %1
  %i.ba = fsub double %i.az, %i.au
  %i.bb = insertelement <2 x double> %i.ar, double %i.ay, i64 1
  %i.bc = fsub <2 x double> %i.bb, %i.at          ; 2 uses
  %i.bd = fmul double %i.ay, -2.000000e+00
  %i.be = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.bd)
  %i.bf = fsub double %i.ay, %2
  %i.bg = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.al, i64 1
  %i.bi = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bf, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bi, <2 x double> %i.bk) ; 2 uses
  %i.bm = insertelement <2 x double> %i.bl, double %i.ba, i64 0
  %i.bn = fmul <2 x double> %i.bm, splat (double 4.000000e+00)
  %i.bo = fneg <2 x double> %i.bc
  %i.bp = fmul <2 x double> %i.bn, %i.bo
  %i.bq = shufflevector <2 x double> %i.an, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bp) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %i.bt = tail call double @sqrt(double noundef %i.bs) #16, !tbaa !6
  %i.bu = extractelement <2 x double> %i.br, i64 1
  %i.bv = tail call double @sqrt(double noundef %i.bu) #16, !tbaa !6
  %i.bw = fcmp olt double %0, %1
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bx = fsub double %0, %1
  %i.by = fadd double %1, %i.bx
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.bz = fcmp olt double %0, %i.ay
  %i.ca = fmul <2 x double> %i.bc, splat (double 2.000000e+00)
  %i.cb = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bv, i64 1
  %i.cd = fneg <2 x double> %i.cc
  %i.ce = fsub <2 x double> %i.cd, %i.bq
  %i.cf = fdiv <2 x double> %i.ca, %i.ce
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.an, <2 x double> %i.am) ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = extractelement <2 x double> %i.cg, i64 1
  %i.cj = select i1 %i.bz, double %i.ch, double %i.ci
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit: ; preds = %bb.f, %bb.g
  %i.ck = phi double [ %i.by, %bb.f ], [ %i.cj, %bb.g ]
  %i.cl = fcmp ogt double %0, %2
  %i.cm = fsub double %0, %2
  %i.cn = fdiv double %i.cm, %i.al
  %i.co = fadd double %2, %i.cn
  %i.cp = select i1 %i.cl, double %i.co, double %i.ck
  br label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit
  %.0 = phi double [ %i.ai, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit ], [ %i.cp, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %i.b = insertelement <2 x double> <double poison, double 0.000000e+00>, double %1, i64 0 ; 3 uses
  %i.c = fsub <2 x double> %i.a, %i.b
  %i.d = insertelement <2 x double> %i.b, double %2, i64 1
  %i.e = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.c, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %i.d) ; 3 uses
  %i.f = fcmp ugt double %3, 1.000000e+00
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp olt double %3, 1.000000e-02
  %i.h = select i1 %i.g, double 1.000000e-02, double %3 ; 3 uses
  %i.i = fsub double %0, %1                       ; 2 uses
  %i.j = fcmp olt double %0, %1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call double @llvm.fmuladd.f64(double %i.i, double %i.h, double %1)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.l = extractelement <2 x double> %i.e, i64 0  ; 4 uses
  %i.m = fcmp olt double %0, %i.l
  %i.n = fsub double %i.l, %1                     ; 5 uses
  %4 = fdiv double %i.i, %i.n                     ; 6 uses
  %i.o = fsub double 1.000000e+00, %4
  %5 = fmul double %i.h, %i.o
  %i.p = fmul double %4, %5
  %i.q = fneg double %4
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %4, double 1.000000e+00)
  %i.s = fsub double %2, %i.l                     ; 5 uses
  %i.t = fadd double %i.s, %i.n
  %i.u = fmul double %i.h, %i.n
  %i.v = fneg double %i.s
  %i.w = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.v)
  %i.x = fmul double %i.n, %i.w
  %6 = fsub double %0, %i.l
  %i.y = tail call double @llvm.fmuladd.f64(double %1, double 2.000000e+00, double %i.u)
  %7 = tail call double @llvm.fmuladd.f64(double %i.y, double %i.s, double %i.x)
  %i.z = insertelement <2 x double> <double poison, double 5.000000e-01>, double %6, i64 0
  %i.aa = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.t, i64 1
  %8 = fdiv <2 x double> %i.z, %i.ab              ; 3 uses
  %9 = extractelement <2 x double> %8, i64 1
  %10 = fmul double %7, %9                        ; 2 uses
  %11 = fmul double %4, %10
  %12 = fmul double %4, %11
  %13 = tail call double @llvm.fmuladd.f64(double %1, double %i.r, double %12)
  %14 = tail call double @llvm.fmuladd.f64(double %i.p, double %i.n, double %13)
  %15 = extractelement <2 x double> %8, i64 0     ; 4 uses
  %16 = fadd double %15, -1.000000e+00
  %17 = fmul double %15, %16
  %18 = extractelement <2 x double> %8, i64 0
  %19 = fsub double 1.000000e+00, %18             ; 2 uses
  %20 = fmul double %19, %10
  %21 = fsub double 2.000000e+00, %15
  %22 = fmul double %2, %21
  %23 = fmul double %15, %22
  %24 = tail call double @llvm.fmuladd.f64(double %20, double %19, double %23)
  %25 = tail call double @llvm.fmuladd.f64(double %17, double %i.s, double %24)
  %i.ac = select i1 %i.m, double %14, double %25
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = fsub double 2.000000e+00, %3            ; 2 uses
  %i.ae = fcmp olt double %i.ad, 1.000000e-02
  %i.af = select i1 %i.ae, double 1.000000e-02, double %i.ad ; 3 uses
  %i.ag = shufflevector <2 x double> %i.b, <2 x double> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ah = fsub <2 x double> %i.e, %i.ag           ; 5 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x double> %i.ah, i64 1 ; 4 uses
  %i.ak = fadd double %i.aj, %i.ai
  %i.al = fdiv double 5.000000e-01, %i.ak
  %i.am = fneg double %i.aj
  %i.an = fneg double %i.af
  %i.ao = insertelement <2 x double> poison, double %1, i64 0
  %i.ap = insertelement <2 x double> poison, double %0, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul double %i.ai, %i.af                ; 2 uses
  %i.as = insertelement <2 x double> poison, double %2, i64 0
  %i.at = insertelement <2 x double> %i.as, double %1, i64 1
  %i.au = insertelement <2 x double> poison, double %i.am, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double 2.000000e+00), <2 x double> %i.av) ; 2 uses
  %foldExtExtBinop.a = fmul <2 x double> %i.ah, %i.aw
  %i.ax = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.aj, double %i.ax)
  %i.ba = fmul double %i.al, %i.az                ; 5 uses
  %i.bb = fsub double %i.ba, %1
  %i.bc = insertelement <2 x double> %i.ao, double %i.ba, i64 1
  %i.bd = fsub <2 x double> %i.bc, %i.aq          ; 2 uses
  %i.be = fmul double %i.ba, -2.000000e+00
  %i.bf = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.be)
  %i.bg = fsub double %i.bf, %i.aj
  %i.bh = fsub double %i.ba, %2
  %26 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.an, i64 0
  %i.bi = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bh, i64 1
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %i.ah, <2 x double> %i.bj)
  %i.bk = fmul <2 x double> %27, splat (double 4.000000e+00)
  %i.bl = fneg <2 x double> %i.bd
  %i.bm = fmul <2 x double> %i.bk, %i.bl
  %i.bn = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bg, i64 1 ; 3 uses
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bo, <2 x double> %i.bm) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = tail call double @sqrt(double noundef %i.bq) #16, !tbaa !6
  %i.bs = extractelement <2 x double> %i.bp, i64 1
  %i.bt = tail call double @sqrt(double noundef %i.bs) #16, !tbaa !6
  %i.bu = fcmp olt double %0, %1
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bv = fsub double %0, %1
  %i.bw = fdiv double %i.bv, %i.af
  %i.bx = fadd double %1, %i.bw
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.by = fcmp olt double %0, %i.ba
  %i.bz = fmul <2 x double> %i.bd, splat (double 2.000000e+00)
  %i.ca = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bt, i64 1
  %i.cc = fneg <2 x double> %i.cb
  %i.cd = fsub <2 x double> %i.cc, %i.bo
  %i.ce = fdiv <2 x double> %i.bz, %i.cd
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.ah, <2 x double> %i.ag) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = extractelement <2 x double> %i.cf, i64 1
  %i.ci = select i1 %i.by, double %i.cg, double %i.ch
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink35 = phi double [ %i.ac, %bb.d ], [ %i.k, %bb.c ], [ %i.bx, %bb.f ], [ %i.ci, %bb.g ]
  %i.cj = fcmp ogt double %0, %2
  %i.ck = fsub double %0, %2
  %i.cl = fadd double %2, %i.ck
  %i.cm = select i1 %i.cj, double %i.cl, double %.sink35
  ret double %i.cm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, float noundef %2, float noundef %3) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load <2 x double>, ptr %i.e, align 8
  %i.g = fptrunc <2 x double> %i.f to <2 x float> ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load <2 x double>, ptr %i.h, align 8
  %i.j = fptrunc <2 x double> %i.i to <2 x float> ; 2 uses
  %i.k = fsub float %2, %3
  %i.l = fmul float %i.k, f0x3F733333             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load double, ptr %i.m, align 8
  %i.o = fptrunc double %i.n to float             ; 2 uses
  %i.p = fcmp ogt float %i.o, f0x3C23D70A
  %.sroa.speculated2.i163 = select i1 %i.p, float %i.o, float f0x3C23D70A ; 2 uses
  %i.q = fcmp olt float %i.l, %.sroa.speculated2.i163
  %.sroa.speculated.i164 = select i1 %i.q, float %i.l, float %.sroa.speculated2.i163 ; 3 uses
  %i.r = fneg float %.sroa.speculated.i164        ; 2 uses
  %i.s = insertelement <2 x float> poison, float %.sroa.speculated.i164, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = insertelement <2 x float> poison, float %3, i64 0
  %i.v = insertelement <2 x float> %i.u, float %2, i64 1
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> splat (float 5.100000e-01), <2 x float> %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = fadd float %2, %3
  %i.z = fmul float %i.y, 5.000000e-01
  %i.aa = insertelement <2 x float> <float 1.000000e+00, float poison>, float %3, i64 1
  %i.ab = extractelement <2 x float> %i.w, i64 0  ; 2 uses
  %i.ac = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ad = extractelement <2 x float> %i.g, i64 0
  %i.ae = extractelement <2 x float> %i.g, i64 1
  %i.af = extractelement <2 x float> %i.j, i64 0
  %i.ag = extractelement <2 x float> %i.j, i64 1
  %i.ah = load double, ptr %i.x, align 8
  %i.ai = fptrunc double %i.ah to float           ; 2 uses
  %i.aj = fcmp olt float %i.ab, %i.ai
  %.sroa.speculated2.i165 = select i1 %i.aj, float %i.ai, float %i.ab ; 2 uses
  %i.ak = fcmp olt float %i.ac, %.sroa.speculated2.i165
  %.sroa.speculated.i166 = select i1 %i.ak, float %i.ac, float %.sroa.speculated2.i165 ; 6 uses
  %i.al = insertelement <2 x float> poison, float %i.r, i64 1
  %i.am = insertelement <2 x float> <float 1.000000e+00, float poison>, float %.sroa.speculated.i166, i64 1
  %i.an = fcmp ugt float %.sroa.speculated.i166, %i.z
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %.0.idx168 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.l ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx168
  %i.ao = load i32, ptr %.0.ptr, align 4, !tbaa !55 ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ap ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ap ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ap ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  switch i32 %i.ao, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.f:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.g:                                             ; preds = %bb.c
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi float [ %i.af, %bb.d ], [ %i.ag, %bb.e ], [ %i.ad, %bb.f ], [ %i.ae, %bb.g ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bh = fcmp ogt float %.0.i, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.bh, float %.0.i, float f0x3C23D70A ; 2 uses
  %i.bi = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.bi, float 1.990000e+00, float %.sroa.speculated2.i ; 2 uses
  %i.bj = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.bj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  store float %3, ptr %i.aq, align 8, !tbaa !18
  store float %2, ptr %i.av, align 4, !tbaa !18
  store float %3, ptr %i.aw, align 8, !tbaa !18
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !18
  %i.bk = fadd float %.sroa.speculated.i, -1.000000e+00
  %i.bl = fmul float %i.bk, f0x3F666666           ; 4 uses
  %i.bm = fadd float %i.bl, 1.000000e+00          ; 7 uses
  store float %i.bm, ptr %i.be, align 8, !tbaa !18
  %i.bn = fsub float 1.000000e+00, %i.bl          ; 7 uses
  store float %i.bn, ptr %i.bf, align 4, !tbaa !18
  %i.bo = insertelement <2 x float> %i.al, float %i.bl, i64 0
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> <float 4.000000e-01, float 5.000000e-01>, <2 x float> %i.am) ; 4 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 1 ; 6 uses
  store float %i.bq, ptr %i.ar, align 4, !tbaa !18
  %i.br = fadd float %.sroa.speculated.i164, %i.bq ; 6 uses
  store float %i.br, ptr %i.au, align 8, !tbaa !18
  %i.bs = fsub float %i.br, %i.bq
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.bv) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 1 ; 7 uses
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 7 uses
  store float %i.by, ptr %i.as, align 8, !tbaa !18
  store float %i.bx, ptr %i.at, align 4, !tbaa !18
  %i.bz = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  store float %i.bz, ptr %i.bd, align 4, !tbaa !18
  %i.ca = fneg float %i.bl
  %.scalar = tail call float @llvm.fmuladd.f32(float %i.ca, float 4.000000e-01, float 1.000000e+00) ; 4 uses
  %i.cb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0
  store <2 x float> %i.cb, ptr %i.bg, align 8, !tbaa !18
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = fsub <2 x float> %i.bp, %i.aa           ; 2 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = fsub float %i.by, %i.bq                 ; 2 uses
  %i.ch = fsub float %i.bm, %i.bz
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float 5.000000e-01, float %i.cd)
  %i.cj = fmul float %i.ci, %i.cg
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cf, float 5.000000e-01, float %i.cj)
  %i.cl = fsub float %.sroa.speculated.i166, %i.by
  %i.cm = fadd float %i.bm, -1.000000e+00
  %i.cn = fmul float %i.cm, %i.cl
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float 5.000000e-01, float %i.ck)
  %i.cp = fsub float %2, %i.br                    ; 2 uses
  %i.cq = fmul float %i.cp, 5.000000e-01
  %i.cr = fsub float %i.br, %i.bx                 ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.bn, float 5.000000e-01, float -1.000000e+00)
  %i.ct = fmul float %i.cs, %i.cr
  %i.cu = fsub float %i.ct, %i.cq
end_hunk_0
