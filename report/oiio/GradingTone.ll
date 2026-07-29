inline.NumInlined: 239
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16OpenColorIO_v2_510IsIdentityERKNS_11GradingToneE:bb.a
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
  %i.a = fsub double %2, %1
  %i.b = tail call double @llvm.fmuladd.f64(double %i.a, double 5.000000e-01, double %1) ; 7 uses
  %i.c = fsub double 2.000000e+00, %3             ; 4 uses
  %i.d = fcmp ugt double %i.c, 1.000000e+00
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt double %i.c, 1.000000e-02
  %i.f = select i1 %i.e, double 1.000000e-02, double %i.c ; 3 uses
  %i.g = fsub double %0, %1                       ; 2 uses
  %i.h = fcmp olt double %0, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = fadd double %1, %i.g
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.j = fcmp olt double %0, %i.b
  %i.k = fsub double %0, %i.b
  %i.l = fsub double %2, %i.b                     ; 5 uses
  %i.m = fneg double %i.l
  %i.n = fmul double %i.f, %i.m
  %i.o = fsub double %i.b, %1                     ; 5 uses
  %i.p = fdiv double %i.g, %i.o                   ; 6 uses
  %i.q = fsub double 1.000000e+00, %i.p
  %i.r = fmul double %i.p, %i.q
  %i.s = fneg double %i.p
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.p, double 1.000000e+00)
  %i.u = fadd double %i.l, %i.o
  %i.v = insertelement <2 x double> poison, double %1, i64 0
  %i.w = insertelement <2 x double> %i.v, double %2, i64 1
  %i.x = insertelement <2 x double> poison, double %i.o, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.n, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> splat (double 2.000000e+00), <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  %i.ab = fmul double %i.o, %i.aa
  %i.ac = extractelement <2 x double> %i.z, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.l, double %i.ab)
  %i.ae = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.k, i64 0
  %i.af = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.u, i64 1
  %i.ah = fdiv <2 x double> %i.ae, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 1
  %4 = fmul double %i.ad, %i.ai                   ; 2 uses
  %i.aj = fmul double %i.p, %4
  %i.ak = fmul double %i.p, %i.aj
  %5 = tail call double @llvm.fmuladd.f64(double %1, double %i.t, double %i.ak)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.r, double %i.o, double %5)
  %6 = extractelement <2 x double> %i.ah, i64 0   ; 4 uses
  %i.am = fadd double %6, -1.000000e+00
  %i.an = fmul double %i.f, %i.am
  %i.ao = fmul double %6, %i.an
  %i.ap = extractelement <2 x double> %i.ah, i64 0
  %i.aq = fsub double 1.000000e+00, %i.ap         ; 2 uses
  %i.ar = fmul double %i.aq, %4
  %i.as = fsub double 2.000000e+00, %6
  %i.at = fmul double %2, %i.as
  %i.au = fmul double %6, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.aq, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.l, double %i.av)
  %i.ax = select i1 %i.j, double %i.al, double %i.aw
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.c, %bb.d
  %i.ay = phi double [ %i.i, %bb.c ], [ %i.ax, %bb.d ]
  %i.az = fcmp ogt double %0, %2
  %i.ba = fsub double %0, %2
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.f, double %2)
  %i.bc = select i1 %i.az, double %i.bb, double %i.ay
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.bd = fsub double 2.000000e+00, %i.c          ; 2 uses
  %i.be = fcmp olt double %i.bd, 1.000000e-02
  %i.bf = select i1 %i.be, double 1.000000e-02, double %i.bd ; 4 uses
  %7 = fsub double %2, %i.b                       ; 5 uses
  %8 = fneg double %7
  %9 = fneg double %i.bf
  %i.bg = insertelement <2 x double> poison, double %1, i64 0 ; 2 uses
  %i.bh = insertelement <2 x double> poison, double %0, i64 0
  %10 = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fsub double %i.b, %1                      ; 5 uses
  %12 = fmul double %i.bf, %8
  %i.bi = fadd double %7, %11
  %i.bj = fdiv double 5.000000e-01, %i.bi
  %13 = insertelement <2 x double> poison, double %2, i64 0
  %i.bk = insertelement <2 x double> %13, double %1, i64 1
  %i.bl = insertelement <2 x double> poison, double %12, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %11, i64 1
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bm) ; 2 uses
  %14 = extractelement <2 x double> %i.bn, i64 0
  %15 = fmul double %11, %14
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %7, double %15)
  %i.bq = fmul double %i.bj, %i.bp                ; 5 uses
  %i.br = fsub double %i.bq, %1
  %i.bs = insertelement <2 x double> %i.bg, double %i.bq, i64 1
  %i.bt = fsub <2 x double> %i.bs, %10            ; 2 uses
  %i.bu = fmul double %i.bq, -2.000000e+00
  %i.bv = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double %i.bu)
  %16 = fsub double %i.bq, %2
  %i.bw = fsub double %i.br, %11
  %17 = insertelement <2 x double> poison, double %9, i64 0
  %i.bx = insertelement <2 x double> %17, double %i.bf, i64 1
  %i.by = insertelement <2 x double> poison, double %7, i64 0
  %18 = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %16, i64 1
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %18, <2 x double> %i.ca) ; 2 uses
  %i.cc = insertelement <2 x double> %i.cb, double %i.bw, i64 0
  %i.cd = fmul <2 x double> %i.cc, splat (double 4.000000e+00)
  %i.ce = fneg <2 x double> %i.bt
  %i.cf = fmul <2 x double> %i.cd, %i.ce
  %19 = insertelement <2 x double> poison, double %11, i64 0 ; 2 uses
  %i.cg = shufflevector <2 x double> %19, <2 x double> %i.cb, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.cg, <2 x double> %i.cf) ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = tail call double @sqrt(double noundef %i.ci) #16, !tbaa !3
  %i.ck = extractelement <2 x double> %i.ch, i64 1
  %i.cl = tail call double @sqrt(double noundef %i.ck) #16, !tbaa !3
  %i.cm = fcmp olt double %0, %1
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cn = fsub double %0, %1
  %i.co = fadd double %1, %i.cn
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.cp = fcmp olt double %0, %i.bq
  %i.cq = fmul <2 x double> %i.bt, splat (double 2.000000e+00)
  %i.cr = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cl, i64 1
  %i.ct = fneg <2 x double> %i.cs
  %20 = fsub <2 x double> %i.ct, %i.cg
  %21 = fdiv <2 x double> %i.cq, %20
  %22 = insertelement <2 x double> %19, double %7, i64 1
  %23 = insertelement <2 x double> %i.bg, double %i.b, i64 1
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %22, <2 x double> %23) ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0
  %i.cw = extractelement <2 x double> %i.cu, i64 1
  %i.cx = select i1 %i.cp, double %i.cv, double %i.cw
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit: ; preds = %bb.f, %bb.g
  %i.cy = phi double [ %i.co, %bb.f ], [ %i.cx, %bb.g ]
  %i.cz = fcmp ogt double %0, %2
  %i.da = fsub double %0, %2
  %i.db = fdiv double %i.da, %i.bf
  %i.dc = fadd double %2, %i.db
  %i.dd = select i1 %i.cz, double %i.dc, double %i.cy
  br label %bb.h

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit
  %.0 = phi double [ %i.bc, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit ], [ %i.dd, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicRevEvalEdddddddd.exit ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN16OpenColorIO_v2_512_GLOBAL__N_113ShadowFwdEvalEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = fsub double %2, %1
  %i.b = tail call double @llvm.fmuladd.f64(double %i.a, double 5.000000e-01, double %1) ; 7 uses
  %i.c = fcmp ugt double %3, 1.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp olt double %3, 1.000000e-02
  %i.e = select i1 %i.d, double 1.000000e-02, double %3 ; 3 uses
  %i.f = fsub double %0, %1                       ; 2 uses
  %i.g = fcmp olt double %0, %1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call double @llvm.fmuladd.f64(double %i.f, double %i.e, double %1)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.d:                                             ; preds = %bb.b
  %i.i = fcmp olt double %0, %i.b
  %i.j = fsub double %i.b, %1                     ; 5 uses
  %i.k = fdiv double %i.f, %i.j                   ; 6 uses
  %i.l = fsub double 1.000000e+00, %i.k
  %i.m = fmul double %i.e, %i.l
  %i.n = fmul double %i.k, %i.m
  %i.o = fneg double %i.k
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.k, double 1.000000e+00)
  %i.q = fmul double %i.e, %i.j
  %i.r = fsub double %0, %i.b
  %i.s = fsub double %2, %i.b                     ; 5 uses
  %i.t = fadd double %i.s, %i.j
  %i.u = fneg double %i.s
  %i.v = insertelement <2 x double> poison, double %1, i64 0
  %i.w = insertelement <2 x double> %i.v, double %2, i64 1
  %i.x = insertelement <2 x double> poison, double %i.q, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.u, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> splat (double 2.000000e+00), <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  %i.ab = fmul double %i.j, %i.aa
  %i.ac = extractelement <2 x double> %i.z, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.s, double %i.ab)
  %i.ae = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.r, i64 0
  %i.af = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.t, i64 1
  %i.ah = fdiv <2 x double> %i.ae, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 1
  %4 = fmul double %i.ad, %i.ai                   ; 2 uses
  %i.aj = fmul double %i.k, %4
  %i.ak = fmul double %i.k, %i.aj
  %5 = tail call double @llvm.fmuladd.f64(double %1, double %i.p, double %i.ak)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.n, double %i.j, double %5)
  %6 = extractelement <2 x double> %i.ah, i64 0   ; 4 uses
  %i.am = fadd double %6, -1.000000e+00
  %i.an = fmul double %6, %i.am
  %i.ao = extractelement <2 x double> %i.ah, i64 0
  %i.ap = fsub double 1.000000e+00, %i.ao         ; 2 uses
  %i.aq = fmul double %i.ap, %4
  %i.ar = fsub double 2.000000e+00, %6
  %i.as = fmul double %2, %i.ar
  %i.at = fmul double %6, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ap, double %i.at)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.an, double %i.s, double %i.au)
  %i.aw = select i1 %i.i, double %i.al, double %i.av
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.e:                                             ; preds = %bb.a
  %i.ax = fsub double 2.000000e+00, %3            ; 2 uses
  %i.ay = fcmp olt double %i.ax, 1.000000e-02
  %i.az = select i1 %i.ay, double 1.000000e-02, double %i.ax ; 3 uses
  %7 = fsub double %2, %i.b                       ; 6 uses
  %8 = fsub double %i.b, %1                       ; 5 uses
  %i.ba = fadd double %7, %8
  %i.bb = fdiv double 5.000000e-01, %i.ba
  %i.bc = fneg double %7
  %i.bd = fneg double %i.az
  %i.be = insertelement <2 x double> poison, double %1, i64 0 ; 2 uses
  %i.bf = insertelement <2 x double> poison, double %0, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul double %8, %i.az                   ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %2, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %1, i64 1
  %i.bk = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bh, i64 1
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bl) ; 2 uses
  %9 = extractelement <2 x double> %i.bm, i64 0
  %10 = fmul double %8, %9
  %i.bn = extractelement <2 x double> %i.bm, i64 1
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %7, double %10)
  %i.bp = fmul double %i.bb, %i.bo                ; 5 uses
  %i.bq = insertelement <2 x double> %i.be, double %i.bp, i64 1
  %i.br = fsub <2 x double> %i.bq, %i.bg          ; 2 uses
  %i.bs = fmul double %i.bp, -2.000000e+00
  %i.bt = fsub double %i.bp, %1
  %11 = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bu = insertelement <2 x double> %11, double %2, i64 1
  %i.bv = insertelement <2 x double> <double poison, double 2.000000e+00>, double %8, i64 0
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bs, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bv, <2 x double> %i.bx) ; 2 uses
  %12 = extractelement <2 x double> %i.by, i64 1
  %13 = fsub double %12, %7
  %i.bz = fsub double %i.bp, %2
  %i.ca = fadd double %7, %i.bz
  %i.cb = insertelement <2 x double> %i.by, double %i.ca, i64 1
  %i.cc = fmul <2 x double> %i.cb, splat (double 4.000000e+00)
  %i.cd = fneg <2 x double> %i.br
  %i.ce = fmul <2 x double> %i.cc, %i.cd
  %14 = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cf = insertelement <2 x double> %14, double %13, i64 1 ; 3 uses
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cf, <2 x double> %i.ce) ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = tail call double @sqrt(double noundef %i.ch) #16, !tbaa !3
  %i.cj = extractelement <2 x double> %i.cg, i64 1
  %i.ck = tail call double @sqrt(double noundef %i.cj) #16, !tbaa !3
  %i.cl = fcmp olt double %0, %1
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cm = fsub double %0, %1
  %i.cn = fdiv double %i.cm, %i.az
  %i.co = fadd double %1, %i.cn
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

bb.g:                                             ; preds = %bb.e
  %i.cp = fcmp olt double %0, %i.bp
  %i.cq = fmul <2 x double> %i.br, splat (double 2.000000e+00)
  %i.cr = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.ck, i64 1
  %i.ct = fneg <2 x double> %i.cs
  %i.cu = fsub <2 x double> %i.ct, %i.cf
  %i.cv = fdiv <2 x double> %i.cq, %i.cu
  %15 = insertelement <2 x double> poison, double %8, i64 0
  %16 = insertelement <2 x double> %15, double %7, i64 1
  %17 = insertelement <2 x double> %i.be, double %i.b, i64 1
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %16, <2 x double> %17) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = extractelement <2 x double> %i.cw, i64 1
  %i.cz = select i1 %i.cp, double %i.cx, double %i.cy
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116FauxCubicFwdEvalEdddddddd.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink35 = phi double [ %i.aw, %bb.d ], [ %i.h, %bb.c ], [ %i.co, %bb.f ], [ %i.cz, %bb.g ]
  %i.da = fcmp ogt double %0, %2
  %i.db = fsub double %0, %2
  %i.dc = fadd double %2, %i.db
  %i.dd = select i1 %i.da, double %i.dc, double %.sink35
  ret double %i.dd
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
  %4 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
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
  %i.bi = fcmp ogt float %.0.i, f0x3C23D70A
  %.sroa.speculated2.i = select i1 %i.bi, float %.0.i, float f0x3C23D70A ; 2 uses
  %i.bj = fcmp ogt float %.sroa.speculated2.i, 1.990000e+00
  %.sroa.speculated.i = select i1 %i.bj, float 1.990000e+00, float %.sroa.speculated2.i ; 2 uses
  %i.bk = fcmp une float %.sroa.speculated.i, 1.000000e+00
  br i1 %i.bk, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  store float %3, ptr %i.as, align 8, !tbaa !24
  store float %2, ptr %i.aw, align 4, !tbaa !24
  store float %3, ptr %i.ax, align 8, !tbaa !24
  store float 1.000000e+00, ptr %i.bd, align 8, !tbaa !24
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !24
  %i.bl = fadd float %.sroa.speculated.i, -1.000000e+00
  %i.bm = fmul float %i.bl, f0x3F666666           ; 4 uses
  %5 = fadd float %i.bm, 1.000000e+00             ; 7 uses
  store float %5, ptr %i.be, align 8, !tbaa !24
  %6 = fsub float 1.000000e+00, %i.bm             ; 7 uses
  store float %6, ptr %i.bf, align 4, !tbaa !24
  %i.bn = insertelement <2 x float> %i.an, float %i.bm, i64 0
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> <float 4.000000e-01, float 5.000000e-01>, <2 x float> %i.ao) ; 4 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1 ; 6 uses
  store float %i.bp, ptr %i.at, align 4, !tbaa !24
  %i.bq = fadd float %.sroa.speculated.i164, %i.bp ; 6 uses
  store float %i.bq, ptr %i.av, align 8, !tbaa !24
  %i.br = fsub float %i.bq, %i.bp
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> <float 2.500000e-01, float 7.500000e-01>, <2 x float> %i.bu) ; 3 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1 ; 6 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 0 ; 6 uses
  store <2 x float> %i.bv, ptr %i.au, align 8, !tbaa !24
  %i.by = extractelement <2 x float> %i.bo, i64 0 ; 3 uses
  store float %i.by, ptr %4, align 4, !tbaa !24
  %i.bz = fneg float %i.bm
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float 4.000000e-01, float 1.000000e+00) ; 4 uses
  store float %i.ca, ptr %i.bg, align 8, !tbaa !24
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = fsub <2 x float> %i.bo, %i.ag           ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  %i.ce = fmul float %i.cc, %i.cd
  %i.cf = fsub float %i.bx, %i.bp                 ; 2 uses
  %7 = fsub float %5, %i.by
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 5.000000e-01, float %i.cc)
  %9 = fmul float %8, %i.cf
  %10 = tail call float @llvm.fmuladd.f32(float %i.ce, float 5.000000e-01, float %9)
  %11 = fsub float %.sroa.speculated.i166, %i.bx
  %12 = fadd float %5, -1.000000e+00
  %13 = fmul float %12, %11
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 5.000000e-01, float %10)
  %i.cg = fsub float %2, %i.bq                    ; 2 uses
  %i.ch = fmul float %i.cg, 5.000000e-01
  %i.ci = fsub float %i.bq, %i.bw                 ; 2 uses
  %15 = tail call float @llvm.fmuladd.f32(float %6, float 5.000000e-01, float -1.000000e+00)
  %i.cj = fmul float %15, %i.ci
  %i.ck = fsub float %i.cj, %i.ch
  %16 = fsub float %i.bw, %.sroa.speculated.i166
  %17 = fadd float %6, -1.000000e+00
  %18 = fmul float %17, %16
  %19 = tail call float @llvm.fmuladd.f32(float %18, float 5.000000e-01, float %i.ck)
  %20 = fadd float %19, %14
  %i.cl = fsub float %2, %i.bw
  %i.cm = fmul float %i.cl, -5.000000e-01
  %i.cn = fdiv float %20, %i.cm                   ; 2 uses
  store float %i.cn, ptr %i.bg, align 8, !tbaa !24
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.co = fsub float %2, %i.bq                    ; 2 uses
  %i.cp = fadd float %i.ca, -1.000000e+00         ; 2 uses
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fsub float %i.bq, %i.bw                 ; 2 uses
  %i.cs = fsub float %6, %i.ca
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float 5.000000e-01, float %i.cp)
  %i.cu = fmul float %i.ct, %i.cr
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cq, float 5.000000e-01, float %i.cu)
  %21 = fsub float %i.bw, %.sroa.speculated.i166
  %22 = fadd float %6, -1.000000e+00
  %23 = fmul float %22, %21
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 5.000000e-01, float %i.cv)
  %i.cw = fsub float %i.bp, %3                    ; 2 uses
  %i.cx = fmul float %i.cw, 5.000000e-01
  %i.cy = fsub float %i.bx, %i.bp                 ; 2 uses
  %i.cz = tail call float @llvm.fmuladd.f32(float %5, float 5.000000e-01, float -1.000000e+00)
  %i.da = fmul float %i.cz, %i.cy
  %i.db = fsub float %i.da, %i.cx
  %25 = fsub float %.sroa.speculated.i166, %i.bx
  %26 = fadd float %5, -1.000000e+00
  %27 = fmul float %26, %25
  %28 = tail call float @llvm.fmuladd.f32(float %27, float 5.000000e-01, float %i.db)
  %29 = fadd float %28, %24
  %i.dc = fsub float %i.bx, %3
  %i.dd = fmul float %i.dc, -5.000000e-01
  %i.de = fdiv float %29, %i.dd                   ; 2 uses
  store float %i.de, ptr %4, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi171 = phi float [ %i.co, %bb.j ], [ %i.cg, %bb.i ]
  %.pre-phi170 = phi float [ %i.cr, %bb.j ], [ %i.ci, %bb.i ]
  %.pre-phi169 = phi float [ %i.cy, %bb.j ], [ %i.cf, %bb.i ]
  %.pre-phi = phi float [ %i.cw, %bb.j ], [ %i.cd, %bb.i ]
  %i.df = phi float [ %i.ca, %bb.j ], [ %i.cn, %bb.i ] ; 2 uses
  %i.dg = phi float [ %i.de, %bb.j ], [ %i.by, %bb.i ] ; 2 uses
  %i.dh = fadd float %i.dg, 1.000000e+00
  %i.di = fmul float %i.dh, %.pre-phi
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float 5.000000e-01, float %3) ; 2 uses
  store float %i.dj, ptr %i.ay, align 4, !tbaa !24
  %i.dk = fadd float %i.dg, %5
  %i.dl = fmul float %i.dk, %.pre-phi169
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float 5.000000e-01, float %i.dj) ; 2 uses
  store float %i.dm, ptr %i.az, align 8, !tbaa !24
  %i.dn = fadd float %5, %6
  %i.do = fsub float %i.bw, %i.bx
  %i.dp = fmul float %i.dn, %i.do
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float 5.000000e-01, float %i.dm) ; 2 uses
  store float %i.dq, ptr %i.ba, align 4, !tbaa !24
  %i.dr = fadd float %6, %i.df
  %i.ds = fmul float %i.dr, %.pre-phi170
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float 5.000000e-01, float %i.dq) ; 2 uses
  store float %i.dt, ptr %i.bb, align 8, !tbaa !24
  %i.du = fadd float %i.df, 1.000000e+00
  %i.dv = fmul float %i.du, %.pre-phi171
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float 5.000000e-01, float %i.dt)
  store float %i.dw, ptr %i.bc, align 4, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %.0.add = add nuw nsw i64 %.0.idx168, 4         ; 2 uses
  %.not = icmp eq i64 %.0.add, 16
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_520GradingTonePreRender26highlightShadow_precomputeERKNS_11GradingToneE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(936) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load double, ptr %i.g, align 8
  %i.m = fptrunc double %i.l to float
  %i.n = load double, ptr %i.k, align 8
  %i.o = fptrunc double %i.n to float
  %i.p = load double, ptr %i.f, align 8
  %i.q = fptrunc double %i.p to float
  %i.r = load double, ptr %i.j, align 8
  %i.s = fptrunc double %i.r to float
  %i.t = load double, ptr %i.e, align 8
  %i.u = fptrunc double %i.t to float
  %i.v = load double, ptr %i.i, align 8
  %i.w = fptrunc double %i.v to float
  %i.x = load double, ptr %i.d, align 8
  %i.y = fptrunc double %i.x to float
  %i.z = load double, ptr %i.h, align 8
  %i.aa = fptrunc double %i.z to float
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit

bb.b:                                             ; preds = %bb.ai
  ret void

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit: ; preds = %bb.a, %bb.ai
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.ai ]
  %.0.idx126.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.a ], [ 1, %bb.ai ] ; 2 uses
  %i.ab = trunc nuw i8 %.0.idx126.sroa.phi.sroa.speculated to i1 ; 26 uses
  %i.ac = zext nneg i8 %.0.idx126.sroa.phi.sroa.speculated to i64 ; 3 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.ac ; 14 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ac ; 14 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ac ; 9 uses
  %.in.idx = select i1 %i.ab, i64 0, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.idx ; 4 uses
  %.in95.v = select i1 %i.ab, i64 8, i64 24
  %.in95 = getelementptr inbounds nuw i8, ptr %0, i64 %.in95.v ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.al = select i1 %i.ab, float %i.o, float %i.m ; 4 uses
  %i.am = fsub float 2.000000e+00, %i.al          ; 6 uses
  %storemerge = select i1 %i.ab, float %i.al, float %i.am ; 3 uses
  %i.an = fcmp une float %storemerge, 1.000000e+00
  br i1 %i.an, label %bb.c, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %i.ao = load double, ptr %.in, align 8, !tbaa !55
  %i.ap = fptrunc double %i.ao to float           ; 2 uses
  %i.aq = load double, ptr %.in95, align 8, !tbaa !55
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = select i1 %i.ab, float %i.ar, float %i.ap ; 4 uses
  store float %i.as, ptr %i.ad, align 8, !tbaa !24
  %i.at = select i1 %i.ab, float %i.ap, float %i.ar ; 3 uses
  store float %i.at, ptr %i.ah, align 8, !tbaa !24
  store float %i.as, ptr %i.ae, align 8, !tbaa !24
  store float %i.at, ptr %i.aj, align 8, !tbaa !24
  %i.au = fsub float %i.at, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float 5.000000e-01, float %i.as)
  store float %i.av, ptr %i.ag, align 4, !tbaa !24
  %i.aw = fcmp olt float %storemerge, 1.000000e+00
  br i1 %i.aw, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ax = fcmp ogt float %i.al, f0x3C23D70A
  %.sroa.speculated113 = select i1 %i.ax, float %i.al, float f0x3C23D70A
  br label %bb.f

.critedge:                                        ; preds = %bb.d
  %i.ay = fcmp ogt float %i.am, f0x3C23D70A
  %.sroa.speculated109 = select i1 %i.ay, float %i.am, float f0x3C23D70A
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sink = phi float [ %.sroa.speculated113, %bb.e ], [ 1.000000e+00, %.critedge ] ; 2 uses
  %i.az = phi float [ 1.000000e+00, %bb.e ], [ %.sroa.speculated109, %.critedge ] ; 2 uses
  store float %.sink, ptr %i.af, align 8, !tbaa !24
  store float %i.az, ptr %i.ak, align 4, !tbaa !24
  %i.ba = load float, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.bb = load float, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.bc = fsub float %i.ba, %i.bb
  %i.bd = fdiv float 5.000000e-01, %i.bc
  %i.be = load float, ptr %i.ae, align 8, !tbaa !24
  %i.bf = load float, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.bg = fsub float %i.bf, %i.bb                 ; 2 uses
  %i.bh = fmul float %.sink, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.be, float 2.000000e+00, float %i.bh)
  %i.bj = fsub float %i.ba, %i.bf                 ; 2 uses
  %i.bk = load float, ptr %i.aj, align 8, !tbaa !24
  %i.bl = fneg float %i.bj
  %i.bm = fmul float %i.az, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bk, float 2.000000e+00, float %i.bm)
  %i.bo = fmul float %i.bg, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bj, float %i.bo)
  %i.bq = fmul float %i.bd, %i.bp
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.br = fcmp ogt float %storemerge, 1.000000e+00
  br i1 %i.br, label %bb.h, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

bb.h:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.i, label %.critedge97

bb.i:                                             ; preds = %bb.h
  %i.bs = fcmp ogt float %i.am, f0x3C23D70A
  %.sroa.speculated104 = select i1 %i.bs, float %i.am, float f0x3C23D70A
  br label %bb.j

.critedge97:                                      ; preds = %bb.h
  %i.bt = fsub float 2.000000e+00, %i.am          ; 2 uses
  %i.bu = fcmp ogt float %i.bt, f0x3C23D70A
  %.sroa.speculated = select i1 %i.bu, float %i.bt, float f0x3C23D70A
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge97
  %.sink127 = phi float [ %.sroa.speculated104, %bb.i ], [ 1.000000e+00, %.critedge97 ] ; 2 uses
  %i.bv = phi float [ 1.000000e+00, %bb.i ], [ %.sroa.speculated, %.critedge97 ] ; 2 uses
  store float %.sink127, ptr %i.af, align 8, !tbaa !24
  store float %i.bv, ptr %i.ak, align 4, !tbaa !24
  %i.bw = load <2 x float>, ptr %i.ag, align 4, !tbaa !24
  %i.bx = load <2 x float>, ptr %i.ad, align 8, !tbaa !24
  %i.by = fsub <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0 ; 3 uses
  %i.ca = extractelement <2 x float> %i.by, i64 1 ; 3 uses
  %i.cb = fadd float %i.ca, %i.bz
  %i.cc = fdiv float 5.000000e-01, %i.cb
  %i.cd = load float, ptr %i.ae, align 8, !tbaa !24
  %i.ce = fmul float %i.bz, %.sink127
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cd, float 2.000000e+00, float %i.ce)
  %i.cg = load float, ptr %i.aj, align 8, !tbaa !24
  %i.ch = fneg float %i.ca
  %i.ci = fmul float %i.bv, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cg, float 2.000000e+00, float %i.ci)
  %i.ck = fmul float %i.bz, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ca, float %i.ck)
  %i.cm = fmul float %i.cc, %i.cl
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.f
  %.sink128 = phi float [ %i.bq, %bb.f ], [ %i.cm, %bb.j ]
  store float %.sink128, ptr %i.ai, align 4, !tbaa !24
  br label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1

_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1: ; preds = %.sink.split, %bb.g, %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 20 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %i.cv = select i1 %i.ab, float %i.s, float %i.q ; 4 uses
  %i.cw = fsub float 2.000000e+00, %i.cv          ; 6 uses
  %storemerge.1 = select i1 %i.ab, float %i.cv, float %i.cw ; 3 uses
  %i.cx = fcmp une float %storemerge.1, 1.000000e+00
  br i1 %i.cx, label %bb.k, label %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.2

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_515GetChannelValueERKNS_13GradingRGBMSWENS_11RGBMChannelE.exit.1
  %i.cy = load double, ptr %.in, align 8, !tbaa !55
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %i.da = load double, ptr %.in95, align 8, !tbaa !55
  %i.db = fptrunc double %i.da to float           ; 2 uses
  %i.dc = select i1 %i.ab, float %i.db, float %i.cz ; 4 uses
  store float %i.dc, ptr %i.cn, align 4, !tbaa !24
  %i.dd = select i1 %i.ab, float %i.cz, float %i.db ; 3 uses
  store float %i.dd, ptr %i.cp, align 4, !tbaa !24
  store float %i.dc, ptr %i.cq, align 4, !tbaa !24
  store float %i.dd, ptr %i.cs, align 4, !tbaa !24
end_hunk_0
