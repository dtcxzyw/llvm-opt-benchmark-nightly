inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_510IsIdentityERKNS_11GradingToneE:bb.a
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load double, ptr %i.y, align 8, !tbaa !15
  %i.aa = fcmp oeq double %i.z, 1.000000e+00
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread

_ZN16OpenColorIO_v2_512_GLOBAL__N_110IsIdentityERKNS_13GradingRGBMSWE.exit.thread: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %i.ab = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ %i.aa, %bb.f ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRenderC2ENS_12GradingStyleE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) initializes((0, 929), (932, 936)) %0, i32 noundef %1) unnamed_addr #7 align 2 {
.preheader43.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %0, i8 0, i64 912, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 4.000000e-01>, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i8 0, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !30
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_520GradingTonePreRender8setStyleENS_12GradingStyleE.exit, label %bb.a

bb.a:                                             ; preds = %.preheader43.preheader
  store i32 %1, ptr %i.c, align 4, !tbaa !30
  switch i32 %1, label %_ZN16OpenColorIO_v2_520GradingTonePreRender8setStyleENS_12GradingStyleE.exit [
    i32 2, label %.sink.split.i.i
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.a, %bb.b
  %i.d = phi <4 x float> [ <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 4.000000e-01>, %bb.a ], [ <float 7.500000e+00, float 6.500000e+00, float -5.500000e+00, float 0.000000e+00>, %bb.b ]
  store <4 x float> %i.d, ptr %i.a, align 8, !tbaa !24
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30
  %.not = icmp eq i32 %i.b, %1
  br i1 %.not, label %_ZN16OpenColorIO_v2_520GradingTonePreRender9FromStyleENS_12GradingStyleERfS2_S2_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !30
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
  store float %switch.load, ptr %i.g, align 8, !tbaa !24
  store float %switch.load4, ptr %i.f, align 4, !tbaa !24
  store float %switch.load6, ptr %i.e, align 8, !tbaa !24
  store float %switch.load8, ptr %i.d, align 4, !tbaa !24
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
  store float %switch.load, ptr %1, align 4, !tbaa !24
  store float %switch.load16, ptr %2, align 4, !tbaa !24
  store float %switch.load18, ptr %3, align 4, !tbaa !24
  store float %switch.load20, ptr %4, align 4, !tbaa !24
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
  store i8 %i.c, ptr %i.b, align 8, !tbaa !26
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load double, ptr %i.d, align 8, !tbaa !31 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load double, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !33 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.k = load double, ptr %i.j, align 8, !tbaa !34 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.m = load double, ptr %i.l, align 8, !tbaa !35
  %i.n = fadd double %i.i, -1.000000e-02          ; 2 uses
  %i.o = fcmp ogt double %i.g, %i.n
  %i.p = select i1 %i.o, double %i.n, double %i.g ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.p, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.i, ptr %i.r, align 8, !tbaa !37
  %i.s = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %i.k, double noundef %i.p, double noundef %i.i, double noundef %i.e) ; 2 uses
  %i.t = fadd double %i.k, %i.m
  %i.u = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %i.t, double noundef %i.p, double noundef %i.i, double noundef %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.s, ptr %i.v, align 8, !tbaa !38
  %i.w = fsub double %i.u, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.w, ptr %i.x, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load double, ptr %i.y, align 8, !tbaa !40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !42 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !43 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !44
  %i.ai = fadd double %i.ad, 1.000000e-02         ; 2 uses
  %i.aj = fcmp olt double %i.ab, %i.ai
  %i.ak = select i1 %i.aj, double %i.ai, double %i.ab ; 3 uses
  store double %i.ak, ptr %0, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ad, ptr %i.al, align 8, !tbaa !46
  %i.am = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %i.af, double noundef %i.ad, double noundef %i.ak, double noundef %i.z) ; 2 uses
  %i.an = fsub double %i.af, %i.ah
  %i.ao = tail call fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %i.an, double noundef %i.ad, double noundef %i.ak, double noundef %i.z)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.am, ptr %i.ap, align 8, !tbaa !47
  %i.aq = fsub double %i.am, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.aq, ptr %i.ar, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.at = load float, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !tbaa !50
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, float noundef %i.at, float noundef %i.av)
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender26highlightShadow_precomputeERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender21whiteBlack_precomputeERKNS_11GradingToneE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !51
  %i.ay = load float, ptr %i.au, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.ba = load float, ptr %i.az, align 4, !tbaa !52
  tail call void @_ZN16OpenColorIO_v2_520GradingTonePreRender20scontrast_precomputeERKNS_11GradingToneEfff(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, float noundef %i.ax, float noundef %i.ay, float noundef %i.ba)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_116HighlightFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %4 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %5 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %1, i64 0 ; 3 uses
  %6 = fsub <2 x double> %4, %5
  %7 = insertelement <2 x double> %5, double %2, i64 1
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %7) ; 3 uses
  %i.a = fsub double 2.000000e+00, %3             ; 4 uses
  %i.b = fcmp ugt double %i.a, 1.000000e+00
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt double %i.a, 1.000000e-02
  %i.d = select i1 %i.c, double 1.000000e-02, double %i.a ; 3 uses
  %i.e = fsub double %0, %1                       ; 2 uses
  %i.f = fcmp olt double %0, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = fadd double %1, %i.e
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %9 = extractelement <2 x double> %8, i64 0      ; 4 uses
  %i.h = fcmp olt double %0, %9
  %i.i = fsub double %0, %9
  %i.j = fsub double %2, %9                       ; 5 uses
  %i.k = fneg double %i.j
  %i.l = fmul double %i.d, %i.k
  %i.m = fsub double %9, %1                       ; 5 uses
  %i.n = fdiv double %i.e, %i.m                   ; 6 uses
  %i.o = fsub double 1.000000e+00, %i.n
  %i.p = fmul double %i.n, %i.o
  %i.q = fneg double %i.n
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.n, double 1.000000e+00)
  %i.s = fadd double %i.j, %i.m
  %i.t = insertelement <2 x double> poison, double %1, i64 0
  %i.u = insertelement <2 x double> %i.t, double %2, i64 1
  %i.v = insertelement <2 x double> poison, double %i.m, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.l, i64 1
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 2.000000e+00), <2 x double> %i.w) ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 1
  %i.z = fmul double %i.m, %i.y
  %i.aa = extractelement <2 x double> %i.x, i64 0
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.j, double %i.z)
  %i.ac = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.i, i64 0
  %i.ad = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.s, i64 1
  %i.af = fdiv <2 x double> %i.ac, %i.ae          ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1
  %i.ah = fmul double %i.ab, %i.ag                ; 2 uses
  %i.ai = fmul double %i.n, %i.ah
  %i.aj = fmul double %i.n, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %1, double %i.r, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.p, double %i.m, double %i.ak)
  %i.am = extractelement <2 x double> %i.af, i64 0 ; 4 uses
  %i.an = fadd double %i.am, -1.000000e+00
  %i.ao = fmul double %i.d, %i.an
  %i.ap = fmul double %i.am, %i.ao
  %i.aq = extractelement <2 x double> %i.af, i64 0
  %i.ar = fsub double 1.000000e+00, %i.aq         ; 2 uses
  %i.as = fmul double %i.ar, %i.ah
  %i.at = fsub double 2.000000e+00, %i.am
  %i.au = fmul double %2, %i.at
  %i.av = fmul double %i.am, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.av)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.j, double %i.aw)
  %i.ay = select i1 %i.h, double %i.al, double %i.ax
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.c, %bb.d
  %i.az = phi double [ %i.g, %bb.c ], [ %i.ay, %bb.d ]
  %i.ba = fcmp ogt double %0, %2
  %i.bb = fsub double %0, %2
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.d, double %2)
  %i.bd = select i1 %i.ba, double %i.bc, double %i.az
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.be = fsub double 2.000000e+00, %i.a          ; 2 uses
  %i.bf = fcmp olt double %i.be, 1.000000e-02
  %i.bg = select i1 %i.bf, double 1.000000e-02, double %i.be ; 4 uses
  %10 = shufflevector <2 x double> %5, <2 x double> %8, <2 x i32> <i32 0, i32 2> ; 2 uses
  %11 = fsub <2 x double> %8, %10                 ; 5 uses
  %12 = extractelement <2 x double> %11, i64 1    ; 3 uses
  %13 = fneg double %12
  %i.bh = fmul double %i.bg, %13
  %14 = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.bh)
  %15 = fneg double %i.bg
  %i.bi = insertelement <2 x double> poison, double %1, i64 0
  %i.bj = insertelement <2 x double> poison, double %0, i64 0
  %16 = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = extractelement <2 x double> %11, i64 0    ; 4 uses
  %18 = fadd double %12, %17
  %19 = fdiv double 5.000000e-01, %18
  %20 = tail call double @llvm.fmuladd.f64(double %1, double 2.000000e+00, double %17)
  %21 = fmul double %17, %14
  %i.bk = tail call double @llvm.fmuladd.f64(double %20, double %12, double %21)
  %i.bl = fmul double %19, %i.bk                  ; 5 uses
  %i.bm = fsub double %i.bl, %1
  %i.bn = insertelement <2 x double> %i.bi, double %i.bl, i64 1
  %i.bo = fsub <2 x double> %i.bn, %16            ; 2 uses
  %i.bp = fmul double %i.bl, -2.000000e+00
  %i.bq = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.bp)
  %i.br = fsub double %i.bl, %2
  %i.bs = fsub double %i.bm, %17
  %i.bt = insertelement <2 x double> poison, double %15, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bg, i64 1
  %22 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.br, i64 1
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %22, <2 x double> %i.bw) ; 2 uses
  %i.by = insertelement <2 x double> %i.bx, double %i.bs, i64 0
  %i.bz = fmul <2 x double> %i.by, splat (double 4.000000e+00)
  %i.ca = fneg <2 x double> %i.bo
  %i.cb = fmul <2 x double> %i.bz, %i.ca
  %i.cc = shufflevector <2 x double> %11, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cc, <2 x double> %i.cb) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = tail call double @sqrt(double noundef %i.ce) #16, !tbaa !3
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = tail call double @sqrt(double noundef %i.cg) #16, !tbaa !3
  %i.ci = fcmp olt double %0, %1
  br i1 %i.ci, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cj = fsub double %0, %1
  %i.ck = fadd double %1, %i.cj
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.cl = fcmp olt double %0, %i.bl
  %i.cm = fmul <2 x double> %i.bo, splat (double 2.000000e+00)
  %i.cn = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.ch, i64 1
  %i.cp = fneg <2 x double> %i.co
  %i.cq = fsub <2 x double> %i.cp, %i.cc
  %i.cr = fdiv <2 x double> %i.cm, %i.cq
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %11, <2 x double> %10) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = select i1 %i.cl, double %i.ct, double %i.cu
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit: ; preds = %bb.f, %bb.g
  %i.cw = phi double [ %i.ck, %bb.f ], [ %i.cv, %bb.g ]
  %i.cx = fcmp ogt double %0, %2
  %i.cy = fsub double %0, %2
  %i.cz = fdiv double %i.cy, %i.bg
  %i.da = fadd double %2, %i.cz
  %i.db = select i1 %i.cx, double %i.da, double %i.cw
  br label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit
  %.0 = phi double [ %i.bd, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit ], [ %i.db, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %4 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %2, i64 0
  %5 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %1, i64 0 ; 3 uses
  %6 = fsub <2 x double> %4, %5
  %7 = insertelement <2 x double> %5, double %2, i64 1
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %7) ; 3 uses
  %i.a = fcmp ugt double %3, 1.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %3, 1.000000e-02
  %i.c = select i1 %i.b, double 1.000000e-02, double %3 ; 3 uses
  %i.d = fsub double %0, %1                       ; 2 uses
  %i.e = fcmp olt double %0, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.fmuladd.f64(double %i.d, double %i.c, double %1)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %9 = extractelement <2 x double> %8, i64 0      ; 4 uses
  %i.g = fcmp olt double %0, %9
  %i.h = fsub double %9, %1                       ; 5 uses
  %i.i = fdiv double %i.d, %i.h                   ; 6 uses
  %i.j = fsub double 1.000000e+00, %i.i
  %i.k = fmul double %i.c, %i.j
  %i.l = fmul double %i.i, %i.k
  %i.m = fneg double %i.i
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.i, double 1.000000e+00)
  %i.o = fmul double %i.c, %i.h
  %i.p = fsub double %0, %9
  %i.q = fsub double %2, %9                       ; 5 uses
  %i.r = fadd double %i.q, %i.h
  %i.s = fneg double %i.q
  %i.t = insertelement <2 x double> poison, double %1, i64 0
  %i.u = insertelement <2 x double> %i.t, double %2, i64 1
  %i.v = insertelement <2 x double> poison, double %i.o, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.s, i64 1
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double 2.000000e+00), <2 x double> %i.w) ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 1
  %i.z = fmul double %i.h, %i.y
  %i.aa = extractelement <2 x double> %i.x, i64 0
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.q, double %i.z)
  %i.ac = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.p, i64 0
  %i.ad = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.r, i64 1
  %i.af = fdiv <2 x double> %i.ac, %i.ae          ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1
  %i.ah = fmul double %i.ab, %i.ag                ; 2 uses
  %i.ai = fmul double %i.i, %i.ah
  %i.aj = fmul double %i.i, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %1, double %i.n, double %i.aj)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.l, double %i.h, double %i.ak)
  %i.am = extractelement <2 x double> %i.af, i64 0 ; 4 uses
  %i.an = fadd double %i.am, -1.000000e+00
  %i.ao = fmul double %i.am, %i.an
  %i.ap = extractelement <2 x double> %i.af, i64 0
  %i.aq = fsub double 1.000000e+00, %i.ap         ; 2 uses
  %i.ar = fmul double %i.aq, %i.ah
  %i.as = fsub double 2.000000e+00, %i.am
  %i.at = fmul double %2, %i.as
  %i.au = fmul double %i.am, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.aq, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.q, double %i.av)
  %i.ax = select i1 %i.g, double %i.al, double %i.aw
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.e:                                             ; preds = %bb.a
  %i.ay = fsub double 2.000000e+00, %3            ; 2 uses
  %i.az = fcmp olt double %i.ay, 1.000000e-02
  %i.ba = select i1 %i.az, double 1.000000e-02, double %i.ay ; 3 uses
  %10 = shufflevector <2 x double> %5, <2 x double> %8, <2 x i32> <i32 0, i32 2> ; 2 uses
  %11 = fsub <2 x double> %8, %10                 ; 6 uses
  %12 = extractelement <2 x double> %11, i64 0    ; 2 uses
  %13 = extractelement <2 x double> %11, i64 1    ; 4 uses
  %i.bb = fadd double %13, %12
  %i.bc = fdiv double 5.000000e-01, %i.bb
  %i.bd = fneg double %13
  %i.be = fneg double %i.ba
  %i.bf = insertelement <2 x double> poison, double %1, i64 0
  %i.bg = insertelement <2 x double> poison, double %0, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul double %12, %i.ba                  ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %2, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %1, i64 1
  %i.bl = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bi, i64 1
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bm) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %11, %i.bn
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %13, double %14)
  %i.bq = fmul double %i.bc, %i.bp                ; 5 uses
  %i.br = insertelement <2 x double> %i.bf, double %i.bq, i64 1
  %i.bs = fsub <2 x double> %i.br, %i.bh          ; 2 uses
  %i.bt = fmul double %i.bq, -2.000000e+00
  %i.bu = fsub double %i.bq, %1
  %i.bv = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %2, i64 1
  %i.bx = insertelement <2 x double> %11, double 2.000000e+00, i64 1
  %i.by = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bt, i64 1
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bx, <2 x double> %i.bz) ; 2 uses
  %foldExtExtBinop38 = fsub <2 x double> %i.ca, %11
  %i.cb = fsub double %i.bq, %2
  %i.cc = fadd double %13, %i.cb
  %i.cd = insertelement <2 x double> %i.ca, double %i.cc, i64 1
  %i.ce = fmul <2 x double> %i.cd, splat (double 4.000000e+00)
  %i.cf = fneg <2 x double> %i.bs
  %i.cg = fmul <2 x double> %i.ce, %i.cf
  %i.ch = insertelement <2 x double> %foldExtExtBinop38, double %i.bi, i64 0 ; 3 uses
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ch, <2 x double> %i.cg) ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = tail call double @sqrt(double noundef %i.cj) #16, !tbaa !3
  %i.cl = extractelement <2 x double> %i.ci, i64 1
  %i.cm = tail call double @sqrt(double noundef %i.cl) #16, !tbaa !3
  %i.cn = fcmp olt double %0, %1
  br i1 %i.cn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.co = fsub double %0, %1
  %i.cp = fdiv double %i.co, %i.ba
  %i.cq = fadd double %1, %i.cp
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.cr = fcmp olt double %0, %i.bq
  %i.cs = fmul <2 x double> %i.bs, splat (double 2.000000e+00)
  %i.ct = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cm, i64 1
  %i.cv = fneg <2 x double> %i.cu
  %i.cw = fsub <2 x double> %i.cv, %i.ch
  %i.cx = fdiv <2 x double> %i.cs, %i.cw
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %11, <2 x double> %10) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0
  %i.da = extractelement <2 x double> %i.cy, i64 1
  %i.db = select i1 %i.cr, double %i.cz, double %i.da
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink35 = phi double [ %i.ax, %bb.d ], [ %i.f, %bb.c ], [ %i.cq, %bb.f ], [ %i.db, %bb.g ]
  %i.dc = fcmp ogt double %0, %2
  %i.dd = fsub double %0, %2
  %i.de = fadd double %2, %i.dd
  %i.df = select i1 %i.dc, double %i.de, double %.sink35
  ret double %i.df
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender15mids_precomputeERKNS_11GradingToneEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, float noundef %2, float noundef %3) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = load double, ptr %i.e, align 8
  %i.g = fptrunc double %i.f to float
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load double, ptr %i.h, align 8
  %i.j = fptrunc double %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load double, ptr %i.k, align 8
  %i.m = fptrunc double %i.l to float
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load double, ptr %i.n, align 8
  %i.p = fptrunc double %i.o to float
  %i.q = fsub float %2, %3
  %i.r = fmul float %i.q, f0x3F733333             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load double, ptr %i.s, align 8
  %i.u = fptrunc double %i.t to float             ; 2 uses
  %i.v = fcmp ogt float %i.u, f0x3C23D70A
  %.sroa.speculated2.i163 = select i1 %i.v, float %i.u, float f0x3C23D70A ; 2 uses
  %i.w = fcmp olt float %i.r, %.sroa.speculated2.i163
  %.sroa.speculated.i164 = select i1 %i.w, float %i.r, float %.sroa.speculated2.i163 ; 3 uses
  %i.x = fneg float %.sroa.speculated.i164        ; 2 uses
  %i.y = insertelement <2 x float> poison, float %.sroa.speculated.i164, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = insertelement <2 x float> poison, float %3, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %2, i64 1
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> splat (float 5.100000e-01), <2 x float> %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ae = fadd float %2, %3
  %i.af = fmul float %i.ae, 5.000000e-01
  %i.ag = insertelement <2 x float> <float 1.000000e+00, float poison>, float %3, i64 1
  %i.ah = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ai = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.aj = load double, ptr %i.ad, align 8
  %i.ak = fptrunc double %i.aj to float           ; 2 uses
  %i.al = fcmp olt float %i.ah, %i.ak
  %.sroa.speculated2.i165 = select i1 %i.al, float %i.ak, float %i.ah ; 2 uses
  %i.am = fcmp olt float %i.ai, %.sroa.speculated2.i165
  %.sroa.speculated.i166 = select i1 %i.am, float %i.ai, float %.sroa.speculated2.i165 ; 6 uses
  %i.an = insertelement <2 x float> poison, float %i.x, i64 1
  %i.ao = insertelement <2 x float> <float 1.000000e+00, float poison>, float %.sroa.speculated.i166, i64 1
  %i.ap = fcmp ugt float %.sroa.speculated.i166, %i.af
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %.0.idx168 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.l ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx168
  %i.aq = load i32, ptr %.0.ptr, align 4, !tbaa !53 ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ar ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ar ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ar ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  switch i32 %i.aq, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit [
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
  %.0.i = phi float [ %i.p, %bb.d ], [ %i.m, %bb.e ], [ %i.j, %bb.f ], [ %i.g, %bb.g ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bj = fcmp ogt float %.0.i, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.bj, float %.0.i, float f0x3C23D70A ; 2 uses
  %i.bk = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.bk, float 1.990000e+00, float %.sroa.speculated2.i ; 2 uses
  %i.bl = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.bl, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  store float %3, ptr %i.as, align 8, !tbaa !24
  store float %2, ptr %i.aw, align 4, !tbaa !24
  store float %3, ptr %i.ax, align 8, !tbaa !24
  store float 1.000000e+00, ptr %i.bd, align 8, !tbaa !24
  store float 1.000000e+00, ptr %i.bi, align 4, !tbaa !24
  %i.bm = fadd float %.sroa.speculated.i, -1.000000e+00
  %i.bn = fmul float %i.bm, f0x3F666666           ; 4 uses
  %i.bo = fadd float %i.bn, 1.000000e+00          ; 7 uses
  store float %i.bo, ptr %i.bf, align 8, !tbaa !24
  %i.bp = fsub float 1.000000e+00, %i.bn          ; 7 uses
  store float %i.bp, ptr %i.bg, align 4, !tbaa !24
  %i.bq = insertelement <2 x float> %i.an, float %i.bn, i64 0
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> <float 4.000000e-01, float 5.000000e-01>, <2 x float> %i.ao) ; 4 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1 ; 6 uses
  store float %i.bs, ptr %i.at, align 4, !tbaa !24
  %i.bt = fadd float %.sroa.speculated.i164, %i.bs ; 6 uses
  store float %i.bt, ptr %i.av, align 8, !tbaa !24
  %i.bu = fsub float %i.bt, %i.bs
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.bx) ; 3 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1 ; 6 uses
  %i.ca = extractelement <2 x float> %i.by, i64 0 ; 6 uses
  store <2 x float> %i.by, ptr %i.au, align 8, !tbaa !24
  %i.cb = extractelement <2 x float> %i.br, i64 0 ; 3 uses
  store float %i.cb, ptr %i.be, align 4, !tbaa !24
  %i.cc = fneg float %i.bn
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float 4.000000e-01, float 1.000000e+00) ; 4 uses
  store float %i.cd, ptr %i.bh, align 8, !tbaa !24
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = fsub <2 x float> %i.br, %i.ag           ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.cg = extractelement <2 x float> %i.ce, i64 1 ; 2 uses
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = fsub float %i.ca, %i.bs                 ; 2 uses
  %i.cj = fsub float %i.bo, %i.cb
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float 5.000000e-01, float %i.cf)
  %i.cl = fmul float %i.ck, %i.ci
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ch, float 5.000000e-01, float %i.cl)
  %i.cn = fsub float %.sroa.speculated.i166, %i.ca
  %i.co = fadd float %i.bo, -1.000000e+00
  %i.cp = fmul float %i.co, %i.cn
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float 5.000000e-01, float %i.cm)
  %i.cr = fsub float %2, %i.bt                    ; 2 uses
  %i.cs = fmul float %i.cr, 5.000000e-01
  %i.ct = fsub float %i.bt, %i.bz                 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bp, float 5.000000e-01, float -1.000000e+00)
  %i.cv = fmul float %i.cu, %i.ct
  %i.cw = fsub float %i.cv, %i.cs
  %i.cx = fsub float %i.bz, %.sroa.speculated.i166
  %i.cy = fadd float %i.bp, -1.000000e+00
  %i.cz = fmul float %i.cy, %i.cx
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float 5.000000e-01, float %i.cw)
  %i.db = fadd float %i.da, %i.cq
  %i.dc = fsub float %2, %i.bz
  %i.dd = fmul float %i.dc, -5.000000e-01
  %i.de = fdiv float %i.db, %i.dd                 ; 2 uses
  store float %i.de, ptr %i.bh, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.df = fsub float %2, %i.bt                    ; 2 uses
  %i.dg = fadd float %i.cd, -1.000000e+00         ; 2 uses
  %i.dh = fmul float %i.dg, %i.df
  %i.di = fsub float %i.bt, %i.bz                 ; 2 uses
  %i.dj = fsub float %i.bp, %i.cd
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float 5.000000e-01, float %i.dg)
  %i.dl = fmul float %i.dk, %i.di
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dh, float 5.000000e-01, float %i.dl)
  %i.dn = fsub float %i.bz, %.sroa.speculated.i166
  %i.do = fadd float %i.bp, -1.000000e+00
  %i.dp = fmul float %i.do, %i.dn
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float 5.000000e-01, float %i.dm)
  %i.dr = fsub float %i.bs, %3                    ; 2 uses
  %i.ds = fmul float %i.dr, 5.000000e-01
end_hunk_0
