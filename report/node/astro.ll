inline.NumInlined: 54
inline.NumDeleted: 16
begin_hunk_0_@_ZN6icu_7818CalendarAstronomer7setTimeEd:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = insertelement <4 x double> poison, double %i.a, i64 0
  %i.d = shufflevector <4 x double> %i.c, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer7getTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8
  ret double %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer12getJulianDayEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load double, ptr %i.a, align 8
  %i.c = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.b) #12
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load double, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8
  %i.e = fadd double %i.d, f0x42E7F907CA644000
  %i.f = fdiv double %i.e, 8.640000e+07           ; 2 uses
  store double %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.g = phi double [ %.pre, %._crit_edge ], [ %i.f, %bb.b ]
  ret double %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(16) initializes((0, 16)) %1, double noundef %2, double noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load double, ptr %i.a, align 8
  %i.c = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.b) #12
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %.pre.i.i = load double, ptr %i.a, align 8
  br label %_ZN6icu_7818CalendarAstronomer17eclipticObliquityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8
  %i.e = fadd double %i.d, f0x42E7F907CA644000
  %i.f = fdiv double %i.e, 8.640000e+07           ; 2 uses
  store double %i.f, ptr %i.a, align 8
  br label %_ZN6icu_7818CalendarAstronomer17eclipticObliquityEv.exit

_ZN6icu_7818CalendarAstronomer17eclipticObliquityEv.exit: ; preds = %._crit_edge.i.i, %bb.b
  %i.g = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.f, %bb.b ]
  %i.h = fadd double %i.g, f0xC142B42C80000000
  %i.i = fdiv double %i.h, 3.652500e+04           ; 6 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double f0xBF8AA1EDB45C4BE9, double f0x4037707570C564F9)
  %i.k = fmul double %i.i, f0xBE865E9F80F29211
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.i, double %i.j)
  %i.m = fmul double %i.i, f0x3EA0DED40694CE29
  %i.n = fmul double %i.i, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.i, double %i.l)
  %i.p = fmul double %i.o, f0x3F91DF46A2529D39    ; 2 uses
  %i.q = tail call double @sin(double noundef %i.p) #12 ; 2 uses
  %i.r = tail call double @cos(double noundef %i.p) #12 ; 2 uses
  %i.s = tail call double @sin(double noundef %2) #12 ; 2 uses
  %i.t = tail call double @cos(double noundef %2) #12
  %i.u = tail call double @sin(double noundef %3) #12
  %i.v = tail call double @cos(double noundef %3) #12
  %i.w = tail call double @tan(double noundef %3) #12
  %i.x = fneg double %i.q
  %i.y = fmul double %i.w, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.s, double %i.r, double %i.y)
  %i.aa = tail call double @atan2(double noundef %i.z, double noundef %i.t) #12
  %i.ab = fmul double %i.q, %i.v
  %i.ac = fmul double %i.s, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.u, double %i.r, double %i.ac)
  %i.ae = tail call double @asin(double noundef %i.ad) #12
  store double %i.aa, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ae, ptr %i.af, align 8
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer17eclipticObliquityEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load double, ptr %i.a, align 8
  %i.c = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.b) #12
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load double, ptr %i.a, align 8
  br label %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8
  %i.e = fadd double %i.d, f0x42E7F907CA644000
  %i.f = fdiv double %i.e, 8.640000e+07           ; 2 uses
  store double %i.f, ptr %i.a, align 8
  br label %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit

_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit: ; preds = %._crit_edge.i, %bb.b
  %i.g = phi double [ %.pre.i, %._crit_edge.i ], [ %i.f, %bb.b ]
  %i.h = fadd double %i.g, f0xC142B42C80000000
  %i.i = fdiv double %i.h, 3.652500e+04           ; 6 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double f0xBF8AA1EDB45C4BE9, double f0x4037707570C564F9)
  %i.k = fmul double %i.i, f0xBE865E9F80F29211
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.i, double %i.j)
  %i.m = fmul double %i.i, f0x3EA0DED40694CE29
  %i.n = fmul double %i.i, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.i, double %i.l)
  %i.p = fmul double %i.o, f0x3F91DF46A2529D39
  ret double %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

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
  %.0.i.i = phi double [ %i.u, %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit ], [ %i.x, %bb.d ] ; 4 uses
  %i.v = tail call double @sin(double noundef %.0.i.i) #12
  %1 = tail call double @llvm.fmuladd.f64(double %i.v, double -1.671300e-02, double %.0.i.i)
  %2 = fsub double %1, %i.u                       ; 2 uses
  %3 = tail call double @cos(double noundef %.0.i.i) #12
  %4 = tail call double @llvm.fmuladd.f64(double %3, double -1.671300e-02, double 1.000000e+00)
  %i.w = fdiv double %2, %4
  %i.x = fsub double %.0.i.i, %i.w                ; 2 uses
  %i.y = tail call double @uprv_fabs_78(double noundef %2) #12
  %i.z = fcmp ogt double %i.y, 1.000000e-05
  br i1 %i.z, label %bb.d, label %_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit, !llvm.loop !5

_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit: ; preds = %bb.d
  %i.aa = fmul double %i.x, 5.000000e-01
  %i.ab = tail call double @tan(double noundef %i.aa) #12
  %i.ac = fmul double %i.ab, f0x3FF04509C69ED7D5
  %i.ad = tail call double @atan(double noundef %i.ac) #12
  %i.ae = fmul double %i.ad, 2.000000e+00
  %i.af = fadd double %i.ae, f0x4013BDAF8CEE89A2  ; 2 uses
  %i.ag = fdiv double %i.af, f0x401921FB54442D18
  %i.ah = tail call noundef double @uprv_floor_78(double noundef %i.ag) #12
  %i.ai = tail call noundef double @llvm.fmuladd.f64(double %i.ah, double f0xC01921FB54442D18, double %i.af) ; 2 uses
  store double %i.ai, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit
  %i.aj = phi double [ %.pre, %._crit_edge ], [ %i.ai, %_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_.exit ]
  ret double %i.aj
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
  %.0.i = phi double [ %i.j, %bb.a ], [ %i.m, %bb.b ] ; 4 uses
  %i.k = tail call double @sin(double noundef %.0.i) #12
  %4 = tail call double @llvm.fmuladd.f64(double %i.k, double -1.671300e-02, double %.0.i)
  %5 = fsub double %4, %i.j                       ; 2 uses
  %6 = tail call double @cos(double noundef %.0.i) #12
  %7 = tail call double @llvm.fmuladd.f64(double %6, double -1.671300e-02, double 1.000000e+00)
  %i.l = fdiv double %5, %7
  %i.m = fsub double %.0.i, %i.l                  ; 2 uses
  %i.n = tail call double @uprv_fabs_78(double noundef %5) #12
  %i.o = fcmp ogt double %i.n, 1.000000e-05
  br i1 %i.o, label %bb.b, label %_ZN6icu_78L11trueAnomalyEdd.exit, !llvm.loop !5

_ZN6icu_78L11trueAnomalyEdd.exit:                 ; preds = %bb.b
  %i.p = fmul double %i.m, 5.000000e-01
  %i.q = tail call double @tan(double noundef %i.p) #12
  %i.r = fmul double %i.q, f0x3FF04509C69ED7D5
  %i.s = tail call double @atan(double noundef %i.r) #12
  %i.t = fmul double %i.s, 2.000000e+00
  %i.u = fadd double %i.t, f0x4013BDAF8CEE89A2    ; 2 uses
  %i.v = fdiv double %i.u, f0x401921FB54442D18
  %i.w = tail call noundef double @uprv_floor_78(double noundef %i.v) #12
  %i.x = tail call noundef double @llvm.fmuladd.f64(double %i.w, double f0xC01921FB54442D18, double %i.u)
  store double %i.x, ptr %2, align 8
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
  %.038 = phi double [ %i.o, %tailrecurse ], [ %i.ae, %bb.d ] ; 2 uses
  %.035 = phi double [ %i.h, %tailrecurse ], [ %i.x, %bb.d ]
  %i.v = load ptr, ptr %1, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef double %i.w(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %0) #12 ; 3 uses
  %6 = fsub double %i.x, %.035
  %7 = fadd double %6, f0x400921FB54442D18        ; 2 uses
  %8 = fdiv double %7, f0x401921FB54442D18
  %9 = tail call noundef double @uprv_floor_78(double noundef %8) #12
  %10 = tail call noundef double @llvm.fmuladd.f64(double %9, double f0xC01921FB54442D18, double %7)
  %11 = fadd double %10, f0xC00921FB54442D18
  %12 = fdiv double %.038, %11
  %i.y = tail call double @uprv_fabs_78(double noundef %12) #12
  %13 = fsub double %2, %i.x
  %i.z = fadd double %13, f0x400921FB54442D18     ; 2 uses
  %i.aa = fdiv double %i.z, f0x401921FB54442D18
  %i.ab = tail call noundef double @uprv_floor_78(double noundef %i.aa) #12
  %i.ac = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double f0xC01921FB54442D18, double %i.z)
  %i.ad = fadd double %i.ac, f0xC00921FB54442D18
  %i.ae = fmul double %i.y, %i.ad                 ; 4 uses
  %i.af = tail call double @uprv_fabs_78(double noundef %i.ae) #12
  %i.ag = tail call double @uprv_fabs_78(double noundef %.038) #12
  %i.ah = fcmp ule double %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = tail call double @uprv_ceil_78(double noundef %i.e) #12 ; 2 uses
  %i.aj = fneg double %i.ai
  %i.ak = select i1 %.not, double %i.aj, double %i.ai
  %i.al = fadd double %i.p, %i.ak
  store double %i.al, ptr %0, align 8
  %i.am = tail call double @uprv_getNaN_78() #12
  %i.an = insertelement <4 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <4 x double> %i.an, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.ao, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  br label %tailrecurse

bb.d:                                             ; preds = %bb.b
  %i.ap = load double, ptr %0, align 8
  %i.aq = tail call double @uprv_ceil_78(double noundef %i.ae) #12
  %i.ar = fadd double %i.ap, %i.aq
  store double %i.ar, ptr %0, align 8
  %i.as = tail call double @uprv_getNaN_78() #12
  %i.at = insertelement <4 x double> poison, double %i.as, i64 0
  %i.au = shufflevector <4 x double> %i.at, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.au, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  %i.av = tail call double @uprv_fabs_78(double noundef %i.ae) #12
  %i.aw = fcmp ogt double %i.av, %4
  br i1 %i.aw, label %bb.b, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d
  %i.ax = load double, ptr %0, align 8
  ret double %i.ax
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
  %i.l = fadd double %i.k, f0xC142AD09C0000000    ; 3 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double f0x3FCD6FB4CCD0BC8D, double f0x401639A2A09C75E2) ; 2 uses
  %i.n = fdiv double %i.m, f0x401921FB54442D18
  %i.o = tail call noundef double @uprv_floor_78(double noundef %i.n) #12
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.o, double f0xC01921FB54442D18, double %i.m) ; 3 uses
  %1 = tail call double @llvm.fmuladd.f64(double %i.l, double f0xBF5FDB459D100168, double %i.p)
  %2 = fadd double %1, f0xBFE44BDB3881627C        ; 2 uses
  %3 = fdiv double %2, f0x401921FB54442D18
  %i.q = tail call noundef double @uprv_floor_78(double noundef %3) #12
  %4 = tail call noundef double @llvm.fmuladd.f64(double %i.q, double f0xC01921FB54442D18, double %2) ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load double, ptr %5, align 8             ; 2 uses
  %i.s = fsub double %i.p, %i.r
  %i.t = fneg double %4
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double 2.000000e+00, double %i.t)
  %i.v = tail call double @sin(double noundef %i.u) #12
  %i.w = fmul double %i.v, f0x3F96C471A926A187    ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load double, ptr %6, align 8
  %i.y = tail call double @sin(double noundef %i.x) #12 ; 2 uses
  %i.z = fmul double %i.y, f0x3F6A90B0ABA4FC89    ; 2 uses
  %i.aa = fmul double %i.y, f0x3F7A736889D66DD0
  %i.ab = fsub double %i.w, %i.z
  %i.ac = fsub double %i.ab, %i.aa
  %i.ad = fadd double %4, %i.ac                   ; 2 uses
  %i.ae = tail call double @sin(double noundef %i.ad) #12
  %i.af = fmul double %i.ae, f0x3FBC1905209A88DE
  %i.ag = fmul double %i.ad, 2.000000e+00
  %i.ah = tail call double @sin(double noundef %i.ag) #12
  %i.ai = fmul double %i.ah, f0x3F6E98DF535623B2
  %i.aj = fadd double %i.p, %i.w
  %i.ak = fadd double %i.aj, %i.af
  %i.al = fsub double %i.ak, %i.z
  %i.am = fadd double %i.ai, %i.al                ; 2 uses
  %i.an = fsub double %i.am, %i.r
  %i.ao = fmul double %i.an, 2.000000e+00
  %i.ap = tail call double @sin(double noundef %i.ao) #12
  %i.aq = fmul double %i.ap, f0x3F8787CEEAB4C1CA
  %i.ar = fadd double %i.aq, %i.am
  %7 = tail call double @llvm.fmuladd.f64(double %i.l, double f0xBF4E48EB230F0FE5, double f0x40163C779EFC0D54) ; 2 uses
  %8 = fdiv double %7, f0x401921FB54442D18
  %9 = tail call noundef double @uprv_floor_78(double noundef %8) #12
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %9, double f0xC01921FB54442D18, double %7)
  %i.at = load double, ptr %6, align 8
  %i.au = tail call double @sin(double noundef %i.at) #12
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double f0xBF66E05A695F8191, double %i.as) ; 2 uses
  %i.aw = fsub double %i.ar, %i.av                ; 2 uses
  %i.ax = tail call double @sin(double noundef %i.aw) #12 ; 2 uses
  %i.ay = tail call double @cos(double noundef %i.aw) #12
  %i.az = fmul double %i.ax, f0x3FEFDEFD3FC184D3
  %i.ba = tail call double @atan2(double noundef %i.az, double noundef %i.ay) #12
  %i.bb = fadd double %i.av, %i.ba                ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.bb, ptr %i.bc, align 8
  %i.bd = fmul double %i.ax, f0x3FB6F575B9F2C24F
  %i.be = tail call double @asin(double noundef %i.bd) #12 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load double, ptr %i.e, align 8
  %i.bh = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.bg) #12
  %.not.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d

._crit_edge.i.i.i:                                ; preds = %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit
  %.pre.i.i.i = load double, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit

bb.d:                                             ; preds = %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit
  %i.bi = load double, ptr %0, align 8
  %i.bj = fadd double %i.bi, f0x42E7F907CA644000
  %i.bk = fdiv double %i.bj, 8.640000e+07         ; 2 uses
  store double %i.bk, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit

_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %i.bl = phi double [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.bk, %bb.d ]
  %i.bm = fadd double %i.bl, f0xC142B42C80000000
  %i.bn = fdiv double %i.bm, 3.652500e+04         ; 6 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double f0xBF8AA1EDB45C4BE9, double f0x4037707570C564F9)
  %i.bp = fmul double %i.bn, f0xBE865E9F80F29211
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bn, double %i.bo)
  %i.br = fmul double %i.bn, f0x3EA0DED40694CE29
  %i.bs = fmul double %i.bn, %i.br
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bn, double %i.bq)
  %i.bu = fmul double %i.bt, f0x3F91DF46A2529D39  ; 2 uses
  %i.bv = tail call double @sin(double noundef %i.bu) #12 ; 2 uses
  %i.bw = tail call double @cos(double noundef %i.bu) #12 ; 2 uses
  %i.bx = tail call double @sin(double noundef %i.bb) #12 ; 2 uses
  %i.by = tail call double @cos(double noundef %i.bb) #12
  %i.bz = tail call double @sin(double noundef %i.be) #12
  %i.ca = tail call double @cos(double noundef %i.be) #12
  %i.cb = tail call double @tan(double noundef %i.be) #12
  %i.cc = fneg double %i.bv
  %i.cd = fmul double %i.cb, %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bw, double %i.cd)
  %i.cf = tail call double @atan2(double noundef %i.ce, double noundef %i.by) #12
  %i.cg = fmul double %i.bv, %i.ca
  %i.ch = fmul double %i.bx, %i.cg
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bw, double %i.ch)
  %i.cj = tail call double @asin(double noundef %i.ci) #12
  store double %i.cf, ptr %i.bf, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.cj, ptr %i.ck, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit, %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.cl
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer10getMoonAgeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_7818CalendarAstronomer15getMoonPositionEv(ptr noundef nonnull align 8 dereferenceable(57) %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load double, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8
  %i.f = fsub double %i.c, %i.e                   ; 2 uses
  %i.g = fdiv double %i.f, f0x401921FB54442D18
  %i.h = tail call noundef double @uprv_floor_78(double noundef %i.g) #12
  %i.i = tail call noundef double @llvm.fmuladd.f64(double %i.h, double f0xC01921FB54442D18, double %i.f)
  ret double %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer8NEW_MOONEv() local_unnamed_addr #2 align 2 {
bb.a:
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817MoonTimeAngleFuncD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN6icu_7818CalendarAstronomer11getMoonTimeERKNS0_7MoonAgeEa(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::MoonTimeAngleFunc", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7817MoonTimeAngleFuncE, i64 16), ptr %3, align 8
  %i.a = load double, ptr %1, align 8
  %i.b = call noundef double @_ZN6icu_7818CalendarAstronomer11timeOfAngleERNS0_9AngleFuncEddda(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %i.a, double noundef f0x403D87D4ABCB41D5, double noundef 6.000000e+04, i8 noundef signext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret double %i.b
}

declare double @uprv_ceil_78(double noundef) local_unnamed_addr #1

declare double @uprv_fabs_78(double noundef) local_unnamed_addr #1

declare double @uprv_getNaN_78() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK6icu_7818CalendarAstronomer8Ecliptic8toStringEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::UnicodeString") align 8 captures(none) initializes((0, 10)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK6icu_7818CalendarAstronomer10Equatorial8toStringEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::UnicodeString") align 8 captures(none) initializes((0, 10)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @ucln_i18n_registerCleanup_78(i32 noundef 11, ptr noundef nonnull @_ZL22calendar_astro_cleanupv) #12
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %1, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 16) #12 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7813CalendarCacheE, i64 16), ptr %i.b, align 8
  %i.d = tail call ptr @uhash_openSize_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, i32 noundef 32, ptr noundef nonnull align 4 dereferenceable(4) %1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store ptr %i.b, ptr %0, align 8
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.c
  store ptr null, ptr %0, align 8
  %i.h = load i32, ptr %1, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %.thread10

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #12
  br label %.thread10

.thread10:                                        ; preds = %.thread, %bb.e
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %.thread10, %bb.b
  ret void
}

declare void @ucln_i18n_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef signext i8 @_ZL22calendar_astro_cleanupv() #2 {
bb.a:
  ret i8 1
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7813CalendarCache3getEPPS0_iR10UErrorCode(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZL6ccLock) #12
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread
end_hunk_0
begin_hunk_1_@_ZN6icu_7813CalendarCache3getEPPS0_iR10UErrorCode:bb.a
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 16) #12 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7813CalendarCacheE, i64 16), ptr %i.e, align 8
  %i.g = tail call ptr @uhash_openSize_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, i32 noundef 32, ptr noundef nonnull align 4 dereferenceable(4) %2) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %0, align 8
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread, label %bb.e

.thread.i:                                        ; preds = %bb.c
  store ptr null, ptr %0, align 8
  br label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #12, !inline_history !8
  br label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit

_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit: ; preds = %.thread.i, %bb.e
  store ptr null, ptr %0, align 8
  br label %.sink.split

_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread: ; preds = %bb.d, %bb.b
  %i.n = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @uhash_igeti_78(ptr noundef %i.p, i32 noundef %1) #12
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit, %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread
  %.0.ph = phi i32 [ 0, %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit ], [ %i.q, %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread ]
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZL6ccLock) #12
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare void @umtx_lock_78(ptr noundef) local_unnamed_addr #1

declare void @umtx_unlock_78(ptr noundef) local_unnamed_addr #1

declare i32 @uhash_igeti_78(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813CalendarCache3putEPPS0_iiR10UErrorCode(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZL6ccLock) #12
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @ucln_i18n_registerCleanup_78(i32 noundef 11, ptr noundef nonnull @_ZL22calendar_astro_cleanupv) #12
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 16) #12 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7813CalendarCacheE, i64 16), ptr %i.e, align 8
  %i.g = tail call ptr @uhash_openSize_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, i32 noundef 32, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %0, align 8
  %i.i = load i32, ptr %3, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread, label %bb.e

.thread.i:                                        ; preds = %bb.c
  store ptr null, ptr %0, align 8
  br label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #12, !inline_history !8
  br label %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit

_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit: ; preds = %.thread.i, %bb.e
  store ptr null, ptr %0, align 8
  br label %.sink.split

_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread: ; preds = %bb.d, %bb.b
  %i.n = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @uhash_iputi_78(ptr noundef %i.p, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3) #12 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit, %_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode.exit.thread
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZL6ccLock) #12
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare i32 @uhash_iputi_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813CalendarCacheC2EiR10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7813CalendarCacheE, i64 16), ptr %0, align 8
  %i.a = tail call ptr @uhash_openSize_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, i32 noundef %1, ptr noundef nonnull %2) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  ret void
}

declare ptr @uhash_openSize_78(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uhash_hashLong_78(ptr) #1

declare signext i8 @uhash_compareLong_78(ptr, ptr) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813CalendarCacheD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7813CalendarCacheE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uhash_close_78(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @uhash_close_78(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813CalendarCacheD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7813CalendarCacheE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6icu_7813CalendarCacheD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uhash_close_78(ptr noundef nonnull %i.b) #12, !inline_history !9
  br label %_ZN6icu_7813CalendarCacheD2Ev.exit

_ZN6icu_7813CalendarCacheD2Ev.exit:               ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZN6icu_7816SunTimeAngleFunc4evalERNS_18CalendarAstronomerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef double @_ZN6icu_7818CalendarAstronomer15getSunLongitudeEv(ptr noundef nonnull align 8 dereferenceable(57) %1)
  ret double %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZN6icu_7817MoonTimeAngleFunc4evalERNS_18CalendarAstronomerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_7818CalendarAstronomer15getMoonPositionEv(ptr noundef nonnull align 8 dereferenceable(57) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load double, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8
  %i.f = fsub double %i.c, %i.e                   ; 2 uses
  %i.g = fdiv double %i.f, f0x401921FB54442D18
  %i.h = tail call noundef double @uprv_floor_78(double noundef %i.g) #12
  %i.i = tail call noundef double @llvm.fmuladd.f64(double %i.h, double f0xC01921FB54442D18, double %i.f)
  ret double %i.i
}

declare signext i8 @uprv_isNaN_78(double noundef) local_unnamed_addr #1

declare double @uprv_floor_78(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{ptr @_ZN6icu_7813CalendarCache11createCacheEPPS0_R10UErrorCode}
!9 = !{ptr @_ZN6icu_7813CalendarCacheD2Ev}
end_hunk_1
