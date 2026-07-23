inline.NumInlined: 54
inline.NumDeleted: 16
begin_hunk_0_@sin

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer15getSunLongitudeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load double, ptr %i.a, align 8
  %i.c = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.b) #12
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load double, ptr %i.a, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load double, ptr %i.d, align 8
  %i.f = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.e) #12
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load double, ptr %i.d, align 8
  br label %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %0, align 8
  %i.h = fadd double %i.g, f0x42E7F907CA644000
  %i.i = fdiv double %i.h, 8.640000e+07           ; 2 uses
  store double %i.i, ptr %i.d, align 8
  br label %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit

_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit: ; preds = %._crit_edge.i, %bb.c
  %i.j = phi double [ %.pre.i, %._crit_edge.i ], [ %i.i, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = fadd double %i.j, f0xC142AD09C0000000
  %i.m = fmul double %i.l, f0x3F919D9BCDD8AC02    ; 2 uses
  %i.n = fdiv double %i.m, f0x401921FB54442D18
  %i.o = tail call noundef double @uprv_floor_78(double noundef %i.n) #12
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.o, double f0xC01921FB54442D18, double %i.m)
  %i.q = fadd double %i.p, f0x4013818B33DDEEE0
  %i.r = fadd double %i.q, f0xC013BDAF8CEE89A2    ; 2 uses
  %i.s = fdiv double %i.r, f0x401921FB54442D18
  %i.t = tail call noundef double @uprv_floor_78(double noundef %i.s) #12
  %i.u = tail call noundef double @llvm.fmuladd.f64(double %i.t, double f0xC01921FB54442D18, double %i.r) ; 3 uses
  store double %i.u, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit
  %.0.i.i = phi double [ %i.u, %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit ], [ %i.af, %bb.d ] ; 4 uses
  %i.v = tail call double @sin(double noundef %.0.i.i) #12
  %i.w = tail call double @cos(double noundef %.0.i.i) #12
  %i.x = insertelement <2 x double> poison, double %i.v, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.0.i.i, i64 0
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> splat (double -1.671300e-02), <2 x double> %i.z) ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = fsub double %i.ab, %i.u                 ; 2 uses
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = fdiv double %i.ac, %i.ad
  %i.af = fsub double %.0.i.i, %i.ae              ; 2 uses
  %i.ag = tail call double @uprv_fabs_78(double noundef %i.ac) #12
  %i.ah = fcmp ogt double %i.ag, 1.000000e-05
  br i1 %i.ah, label %bb.d, label %_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit, !llvm.loop !5

_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit: ; preds = %bb.d
  %i.ai = fmul double %i.af, 5.000000e-01
  %i.aj = tail call double @tan(double noundef %i.ai) #12
  %i.ak = fmul double %i.aj, f0x3FF04509C69ED7D5
  %i.al = tail call double @atan(double noundef %i.ak) #12
  %i.am = fmul double %i.al, 2.000000e+00
  %i.an = fadd double %i.am, f0x4013BDAF8CEE89A2  ; 2 uses
  %i.ao = fdiv double %i.an, f0x401921FB54442D18
  %i.ap = tail call noundef double @uprv_floor_78(double noundef %i.ao) #12
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.ap, double f0xC01921FB54442D18, double %i.an) ; 2 uses
  store double %i.aq, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit
  %i.ar = phi double [ %.pre, %._crit_edge ], [ %i.aq, %_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit ]
  ret double %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(57) %0, double noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fadd double %1, f0xC142AD09C0000000
  %i.b = fmul double %i.a, f0x3F919D9BCDD8AC02    ; 2 uses
  %i.c = fdiv double %i.b, f0x401921FB54442D18
  %i.d = tail call noundef double @uprv_floor_78(double noundef %i.c) #12
  %i.e = tail call noundef double @llvm.fmuladd.f64(double %i.d, double f0xC01921FB54442D18, double %i.b)
  %i.f = fadd double %i.e, f0x4013818B33DDEEE0
  %i.g = fadd double %i.f, f0xC013BDAF8CEE89A2    ; 2 uses
  %i.h = fdiv double %i.g, f0x401921FB54442D18
  %i.i = tail call noundef double @uprv_floor_78(double noundef %i.h) #12
  %i.j = tail call noundef double @llvm.fmuladd.f64(double %i.i, double f0xC01921FB54442D18, double %i.g) ; 3 uses
  store double %i.j, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi double [ %i.j, %bb.a ], [ %i.u, %bb.b ] ; 4 uses
  %i.k = tail call double @sin(double noundef %.0.i) #12
  %i.l = tail call double @cos(double noundef %.0.i) #12
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.l, i64 1
  %i.o = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.0.i, i64 0
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> splat (double -1.671300e-02), <2 x double> %i.o) ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  %i.r = fsub double %i.q, %i.j                   ; 2 uses
  %i.s = extractelement <2 x double> %i.p, i64 1
  %i.t = fdiv double %i.r, %i.s
  %i.u = fsub double %.0.i, %i.t                  ; 2 uses
  %i.v = tail call double @uprv_fabs_78(double noundef %i.r) #12
  %i.w = fcmp ogt double %i.v, 1.000000e-05
  br i1 %i.w, label %bb.b, label %_ZN6icu_78L11trueAnomalyEdd.exit, !llvm.loop !5

_ZN6icu_78L11trueAnomalyEdd.exit:                 ; preds = %bb.b
  %i.x = fmul double %i.u, 5.000000e-01
  %i.y = tail call double @tan(double noundef %i.x) #12
  %i.z = fmul double %i.y, f0x3FF04509C69ED7D5
  %i.aa = tail call double @atan(double noundef %i.z) #12
  %i.ab = fmul double %i.aa, 2.000000e+00
  %i.ac = fadd double %i.ab, f0x4013BDAF8CEE89A2  ; 2 uses
  %i.ad = fdiv double %i.ac, f0x401921FB54442D18
  %i.ae = tail call noundef double @uprv_floor_78(double noundef %i.ad) #12
  %i.af = tail call noundef double @llvm.fmuladd.f64(double %i.ae, double f0xC01921FB54442D18, double %i.ac)
  store double %i.af, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer15WINTER_SOLSTICEEv() local_unnamed_addr #2 align 2 {
bb.a:
  ret double f0x4012D97C7F3321D2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7818CalendarAstronomer9AngleFuncD2Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN6icu_7818CalendarAstronomer9AngleFuncD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7816SunTimeAngleFuncD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer10getSunTimeEda(ptr noundef nonnull align 8 dereferenceable(57) %0, double noundef %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::SunTimeAngleFunc", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816SunTimeAngleFuncE, i64 16), ptr %3, align 8
  %i.a = call noundef double @_ZN6icu_7818CalendarAstronomer11timeOfAngleERNS0_9AngleFuncEddda(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %1, double noundef f0x4076D3E003AB862B, double noundef 6.000000e+04, i8 noundef signext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret double %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer11timeOfAngleERNS0_9AngleFuncEddda(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %2, double noundef %3, double noundef %4, i8 noundef signext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i8 %5, 0                        ; 2 uses
  %i.a = select i1 %.not, double f0xC01921FB54442D18, double 0.000000e+00
  %i.b = fmul double %3, 8.640000e+07             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = fmul double %i.b, 1.250000e-01
  %6 = insertelement <2 x double> poison, double %2, i64 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef double %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %0) #12 ; 2 uses
  %i.i = fsub double %2, %i.h                     ; 2 uses
  %i.j = fdiv double %i.i, f0x401921FB54442D18
  %i.k = tail call noundef double @uprv_floor_78(double noundef %i.j) #12
  %i.l = tail call noundef double @llvm.fmuladd.f64(double %i.k, double f0xC01921FB54442D18, double %i.i)
  %i.m = fadd double %i.a, %i.l
  %i.n = fmul double %i.b, %i.m
  %i.o = fdiv double %i.n, f0x401921FB54442D18    ; 2 uses
  %i.p = load double, ptr %0, align 8             ; 2 uses
  %i.q = tail call double @uprv_ceil_78(double noundef %i.o) #12
  %i.r = fadd double %i.p, %i.q
  store double %i.r, ptr %0, align 8
  %i.s = tail call double @uprv_getNaN_78() #12
  %i.t = insertelement <4 x double> poison, double %i.s, i64 0
  %i.u = shufflevector <4 x double> %i.t, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.u, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %tailrecurse
  %.038 = phi double [ %i.o, %tailrecurse ], [ %i.aq, %bb.d ] ; 2 uses
  %.035 = phi double [ %i.h, %tailrecurse ], [ %i.x, %bb.d ]
  %i.v = load ptr, ptr %1, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef double %i.w(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %0) #12 ; 3 uses
  %i.y = insertelement <2 x double> %6, double %i.x, i64 0
  %i.z = insertelement <2 x double> poison, double %.035, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.x, i64 1
  %i.ab = fsub <2 x double> %i.y, %i.aa
  %i.ac = fadd <2 x double> %i.ab, splat (double f0x400921FB54442D18) ; 3 uses
  %i.ad = fdiv <2 x double> %i.ac, splat (double f0x401921FB54442D18) ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = tail call noundef double @uprv_floor_78(double noundef %i.ae) #12
  %i.ag = extractelement <2 x double> %i.ac, i64 0
  %i.ah = tail call noundef double @llvm.fmuladd.f64(double %i.af, double f0xC01921FB54442D18, double %i.ag)
  %i.ai = fadd double %i.ah, f0xC00921FB54442D18
  %i.aj = fdiv double %.038, %i.ai
  %i.ak = tail call double @uprv_fabs_78(double noundef %i.aj) #12
  %i.al = extractelement <2 x double> %i.ad, i64 1
  %i.am = tail call noundef double @uprv_floor_78(double noundef %i.al) #12
  %i.an = extractelement <2 x double> %i.ac, i64 1
  %i.ao = tail call noundef double @llvm.fmuladd.f64(double %i.am, double f0xC01921FB54442D18, double %i.an)
  %i.ap = fadd double %i.ao, f0xC00921FB54442D18
  %i.aq = fmul double %i.ak, %i.ap                ; 4 uses
  %i.ar = tail call double @uprv_fabs_78(double noundef %i.aq) #12
  %i.as = tail call double @uprv_fabs_78(double noundef %.038) #12
  %i.at = fcmp ule double %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = tail call double @uprv_ceil_78(double noundef %i.e) #12 ; 2 uses
  %i.av = fneg double %i.au
  %i.aw = select i1 %.not, double %i.av, double %i.au
  %i.ax = fadd double %i.p, %i.aw
  store double %i.ax, ptr %0, align 8
  %i.ay = tail call double @uprv_getNaN_78() #12
  %i.az = insertelement <4 x double> poison, double %i.ay, i64 0
  %i.ba = shufflevector <4 x double> %i.az, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.ba, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  br label %tailrecurse

bb.d:                                             ; preds = %bb.b
  %i.bb = load double, ptr %0, align 8
  %i.bc = tail call double @uprv_ceil_78(double noundef %i.aq) #12
  %i.bd = fadd double %i.bb, %i.bc
  store double %i.bd, ptr %0, align 8
  %i.be = tail call double @uprv_getNaN_78() #12
  %i.bf = insertelement <4 x double> poison, double %i.be, i64 0
  %i.bg = shufflevector <4 x double> %i.bf, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bg, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  %i.bh = tail call double @uprv_fabs_78(double noundef %i.aq) #12
  %i.bi = fcmp ogt double %i.bh, %4
  br i1 %i.bi, label %bb.b, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d
  %i.bj = load double, ptr %0, align 8
  ret double %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_7818CalendarAstronomer15getMoonPositionEv(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(57) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef double @_ZN6icu_7818CalendarAstronomer15getSunLongitudeEv(ptr noundef nonnull align 8 dereferenceable(57) %0) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load double, ptr %i.e, align 8
  %i.g = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.f) #12
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load double, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load double, ptr %0, align 8
  %i.i = fadd double %i.h, f0x42E7F907CA644000
  %i.j = fdiv double %i.i, 8.640000e+07           ; 2 uses
  store double %i.j, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit

_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit: ; preds = %._crit_edge.i, %bb.c
  %i.k = phi double [ %.pre.i, %._crit_edge.i ], [ %i.j, %bb.c ]
  %i.l = fadd double %i.k, f0xC142AD09C0000000    ; 2 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double f0x3FCD6FB4CCD0BC8D, double f0x401639A2A09C75E2) ; 2 uses
  %i.n = fdiv double %i.m, f0x401921FB54442D18
  %i.o = tail call noundef double @uprv_floor_78(double noundef %i.n) #12
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.o, double f0xC01921FB54442D18, double %i.m) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.l, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = insertelement <2 x double> <double poison, double f0x40163C779EFC0D54>, double %i.p, i64 0
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> <double f0xBF5FDB459D100168, double f0xBF4E48EB230F0FE5>, <2 x double> %i.u) ; 2 uses
  %i.w = fadd <2 x double> %i.v, <double f0xBFE44BDB3881627C, double -0.000000e+00> ; 2 uses
  %i.x = fdiv <2 x double> %i.w, splat (double f0x401921FB54442D18) ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = tail call noundef double @uprv_floor_78(double noundef %i.y) #12
  %i.aa = extractelement <2 x double> %i.w, i64 0
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.z, double f0xC01921FB54442D18, double %i.aa) ; 2 uses
  %i.ac = load double, ptr %i.q, align 8          ; 2 uses
  %i.ad = fsub double %i.p, %i.ac
  %i.ae = fneg double %i.ab
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ad, double 2.000000e+00, double %i.ae)
  %i.ag = tail call double @sin(double noundef %i.af) #12
  %i.ah = fmul double %i.ag, f0x3F96C471A926A187  ; 2 uses
  %i.ai = load double, ptr %i.r, align 8
  %i.aj = tail call double @sin(double noundef %i.ai) #12 ; 2 uses
  %i.ak = fmul double %i.aj, f0x3F6A90B0ABA4FC89  ; 2 uses
  %i.al = fmul double %i.aj, f0x3F7A736889D66DD0
  %i.am = fsub double %i.ah, %i.ak
  %i.an = fsub double %i.am, %i.al
  %i.ao = fadd double %i.ab, %i.an                ; 2 uses
  %i.ap = tail call double @sin(double noundef %i.ao) #12
  %i.aq = fmul double %i.ap, f0x3FBC1905209A88DE
  %i.ar = fmul double %i.ao, 2.000000e+00
  %i.as = tail call double @sin(double noundef %i.ar) #12
  %i.at = fmul double %i.as, f0x3F6E98DF535623B2
  %i.au = fadd double %i.p, %i.ah
  %i.av = fadd double %i.au, %i.aq
  %i.aw = fsub double %i.av, %i.ak
  %i.ax = fadd double %i.at, %i.aw                ; 2 uses
  %i.ay = fsub double %i.ax, %i.ac
  %i.az = fmul double %i.ay, 2.000000e+00
  %i.ba = tail call double @sin(double noundef %i.az) #12
  %i.bb = fmul double %i.ba, f0x3F8787CEEAB4C1CA
  %i.bc = fadd double %i.bb, %i.ax
  %i.bd = extractelement <2 x double> %i.x, i64 1
  %i.be = tail call noundef double @uprv_floor_78(double noundef %i.bd) #12
  %i.bf = extractelement <2 x double> %i.v, i64 1
  %i.bg = tail call noundef double @llvm.fmuladd.f64(double %i.be, double f0xC01921FB54442D18, double %i.bf)
  %i.bh = load double, ptr %i.r, align 8
  %i.bi = tail call double @sin(double noundef %i.bh) #12
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double f0xBF66E05A695F8191, double %i.bg) ; 2 uses
  %i.bk = fsub double %i.bc, %i.bj                ; 2 uses
  %i.bl = tail call double @sin(double noundef %i.bk) #12 ; 2 uses
  %i.bm = tail call double @cos(double noundef %i.bk) #12
  %i.bn = fmul double %i.bl, f0x3FEFDEFD3FC184D3
  %i.bo = tail call double @atan2(double noundef %i.bn, double noundef %i.bm) #12
  %i.bp = fadd double %i.bj, %i.bo                ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.bp, ptr %i.bq, align 8
  %i.br = fmul double %i.bl, f0x3FB6F575B9F2C24F
  %i.bs = tail call double @asin(double noundef %i.br) #12 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load double, ptr %i.e, align 8
  %i.bv = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.bu) #12
  %.not.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d

._crit_edge.i.i.i:                                ; preds = %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit
  %.pre.i.i.i = load double, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit

bb.d:                                             ; preds = %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit
  %i.bw = load double, ptr %0, align 8
  %i.bx = fadd double %i.bw, f0x42E7F907CA644000
  %i.by = fdiv double %i.bx, 8.640000e+07         ; 2 uses
  store double %i.by, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit

_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %i.bz = phi double [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.by, %bb.d ]
  %i.ca = fadd double %i.bz, f0xC142B42C80000000
  %i.cb = fdiv double %i.ca, 3.652500e+04         ; 6 uses
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double f0xBF8AA1EDB45C4BE9, double f0x4037707570C564F9)
  %i.cd = fmul double %i.cb, f0xBE865E9F80F29211
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cb, double %i.cc)
  %i.cf = fmul double %i.cb, f0x3EA0DED40694CE29
  %i.cg = fmul double %i.cb, %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cb, double %i.ce)
  %i.ci = fmul double %i.ch, f0x3F91DF46A2529D39  ; 2 uses
  %i.cj = tail call double @sin(double noundef %i.ci) #12 ; 2 uses
  %i.ck = tail call double @cos(double noundef %i.ci) #12 ; 2 uses
  %i.cl = tail call double @sin(double noundef %i.bp) #12 ; 2 uses
  %i.cm = tail call double @cos(double noundef %i.bp) #12
  %i.cn = tail call double @sin(double noundef %i.bs) #12
  %i.co = tail call double @cos(double noundef %i.bs) #12
  %i.cp = tail call double @tan(double noundef %i.bs) #12
  %i.cq = fneg double %i.cj
  %i.cr = fmul double %i.cp, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ck, double %i.cr)
  %i.ct = tail call double @atan2(double noundef %i.cs, double noundef %i.cm) #12
  %i.cu = fmul double %i.cj, %i.co
  %i.cv = fmul double %i.cl, %i.cu
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.ck, double %i.cv)
  %i.cx = tail call double @asin(double noundef %i.cw) #12
  store double %i.ct, ptr %i.bt, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.cx, ptr %i.cy, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit, %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.cz
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
