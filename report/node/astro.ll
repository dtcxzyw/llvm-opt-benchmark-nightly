inline.NumInlined: 54
inline.NumDeleted: 16
begin_hunk_0_@_ZN6icu_7818CalendarAstronomer15getSunLongitudeEdRdS1_:bb.a
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
define dso_local void @_ZN6icu_7818CalendarAstronomer9AngleFuncD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #2 align 2 {
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
  %i.f = insertelement <2 x double> poison, double %2, i64 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %i.g = load ptr, ptr %1, align 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef double %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %0) #12 ; 2 uses
  %i.j = fsub double %2, %i.i                     ; 2 uses
  %i.k = fdiv double %i.j, f0x401921FB54442D18
  %i.l = tail call noundef double @uprv_floor_78(double noundef %i.k) #12
  %i.m = tail call noundef double @llvm.fmuladd.f64(double %i.l, double f0xC01921FB54442D18, double %i.j)
  %i.n = fadd double %i.a, %i.m
  %i.o = fmul double %i.b, %i.n
  %i.p = fdiv double %i.o, f0x401921FB54442D18    ; 2 uses
  %i.q = load double, ptr %0, align 8             ; 2 uses
  %i.r = tail call double @uprv_ceil_78(double noundef %i.p) #12
  %i.s = fadd double %i.q, %i.r
  store double %i.s, ptr %0, align 8
  %i.t = tail call double @uprv_getNaN_78() #12
  %i.u = insertelement <4 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <4 x double> %i.u, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.v, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %tailrecurse
  %.038 = phi double [ %i.p, %tailrecurse ], [ %i.ar, %bb.d ] ; 2 uses
  %.035 = phi double [ %i.i, %tailrecurse ], [ %i.y, %bb.d ]
  %i.w = load ptr, ptr %1, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef double %i.x(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %0) #12 ; 3 uses
  %i.z = insertelement <2 x double> %i.f, double %i.y, i64 0
  %i.aa = insertelement <2 x double> poison, double %.035, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.y, i64 1
  %i.ac = fsub <2 x double> %i.z, %i.ab
  %i.ad = fadd <2 x double> %i.ac, splat (double f0x400921FB54442D18) ; 3 uses
  %i.ae = fdiv <2 x double> %i.ad, splat (double f0x401921FB54442D18) ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = tail call noundef double @uprv_floor_78(double noundef %i.af) #12
  %i.ah = extractelement <2 x double> %i.ad, i64 0
  %i.ai = tail call noundef double @llvm.fmuladd.f64(double %i.ag, double f0xC01921FB54442D18, double %i.ah)
  %i.aj = fadd double %i.ai, f0xC00921FB54442D18
  %i.ak = fdiv double %.038, %i.aj
  %i.al = tail call double @uprv_fabs_78(double noundef %i.ak) #12
  %i.am = extractelement <2 x double> %i.ae, i64 1
  %i.an = tail call noundef double @uprv_floor_78(double noundef %i.am) #12
  %i.ao = extractelement <2 x double> %i.ad, i64 1
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.an, double f0xC01921FB54442D18, double %i.ao)
  %i.aq = fadd double %i.ap, f0xC00921FB54442D18
  %i.ar = fmul double %i.al, %i.aq                ; 4 uses
  %i.as = tail call double @uprv_fabs_78(double noundef %i.ar) #12
  %i.at = tail call double @uprv_fabs_78(double noundef %.038) #12
  %i.au = fcmp ule double %i.as, %i.at
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = tail call double @uprv_ceil_78(double noundef %i.e) #12 ; 2 uses
  %i.aw = fneg double %i.av
  %i.ax = select i1 %.not, double %i.aw, double %i.av
  %i.ay = fadd double %i.q, %i.ax
  store double %i.ay, ptr %0, align 8
  %i.az = tail call double @uprv_getNaN_78() #12
  %i.ba = insertelement <4 x double> poison, double %i.az, i64 0
  %i.bb = shufflevector <4 x double> %i.ba, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bb, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  br label %tailrecurse

bb.d:                                             ; preds = %bb.b
  %i.bc = load double, ptr %0, align 8
  %i.bd = tail call double @uprv_ceil_78(double noundef %i.ar) #12
  %i.be = fadd double %i.bc, %i.bd
  store double %i.be, ptr %0, align 8
  %i.bf = tail call double @uprv_getNaN_78() #12
  %i.bg = insertelement <4 x double> poison, double %i.bf, i64 0
  %i.bh = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bh, ptr %i.c, align 8
  store i8 0, ptr %i.d, align 8
  %i.bi = tail call double @uprv_fabs_78(double noundef %i.ar) #12
  %i.bj = fcmp ogt double %i.bi, %4
  br i1 %i.bj, label %bb.b, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d
  %i.bk = load double, ptr %0, align 8
  ret double %i.bk
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
  %1 = tail call double @llvm.fmuladd.f64(double %i.l, double f0x3FCD6FB4CCD0BC8D, double f0x401639A2A09C75E2) ; 2 uses
  %2 = fdiv double %1, f0x401921FB54442D18
  %3 = tail call noundef double @uprv_floor_78(double noundef %2) #12
  %4 = tail call noundef double @llvm.fmuladd.f64(double %3, double f0xC01921FB54442D18, double %1) ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x double> <double poison, double f0x40163C779EFC0D54>, double %4, i64 0
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> <double f0xBF5FDB459D100168, double f0xBF4E48EB230F0FE5>, <2 x double> %i.o) ; 2 uses
  %i.q = fadd <2 x double> %i.p, <double f0xBFE44BDB3881627C, double -0.000000e+00> ; 2 uses
  %i.r = fdiv <2 x double> %i.q, splat (double f0x401921FB54442D18) ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = tail call noundef double @uprv_floor_78(double noundef %i.s) #12
  %i.u = extractelement <2 x double> %i.q, i64 0
  %i.v = tail call noundef double @llvm.fmuladd.f64(double %i.t, double f0xC01921FB54442D18, double %i.u) ; 2 uses
  %i.w = load double, ptr %5, align 8             ; 2 uses
  %i.x = fsub double %4, %i.w
  %i.y = fneg double %i.v
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double 2.000000e+00, double %i.y)
  %i.aa = tail call double @sin(double noundef %i.z) #12
  %i.ab = fmul double %i.aa, f0x3F96C471A926A187  ; 2 uses
  %i.ac = load double, ptr %6, align 8
  %i.ad = tail call double @sin(double noundef %i.ac) #12 ; 2 uses
  %i.ae = fmul double %i.ad, f0x3F6A90B0ABA4FC89  ; 2 uses
  %i.af = fmul double %i.ad, f0x3F7A736889D66DD0
  %i.ag = fsub double %i.ab, %i.ae
  %i.ah = fsub double %i.ag, %i.af
  %i.ai = fadd double %i.v, %i.ah                 ; 2 uses
  %i.aj = tail call double @sin(double noundef %i.ai) #12
  %i.ak = fmul double %i.aj, f0x3FBC1905209A88DE
  %i.al = fmul double %i.ai, 2.000000e+00
  %i.am = tail call double @sin(double noundef %i.al) #12
  %i.an = fmul double %i.am, f0x3F6E98DF535623B2
  %i.ao = fadd double %4, %i.ab
  %i.ap = fadd double %i.ao, %i.ak
  %i.aq = fsub double %i.ap, %i.ae
  %i.ar = fadd double %i.an, %i.aq                ; 2 uses
  %i.as = fsub double %i.ar, %i.w
  %i.at = fmul double %i.as, 2.000000e+00
  %i.au = tail call double @sin(double noundef %i.at) #12
  %i.av = fmul double %i.au, f0x3F8787CEEAB4C1CA
  %i.aw = fadd double %i.av, %i.ar
  %i.ax = extractelement <2 x double> %i.r, i64 1
  %i.ay = tail call noundef double @uprv_floor_78(double noundef %i.ax) #12
  %i.az = extractelement <2 x double> %i.p, i64 1
  %i.ba = tail call noundef double @llvm.fmuladd.f64(double %i.ay, double f0xC01921FB54442D18, double %i.az)
  %i.bb = load double, ptr %6, align 8
  %i.bc = tail call double @sin(double noundef %i.bb) #12
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double f0xBF66E05A695F8191, double %i.ba) ; 2 uses
  %i.be = fsub double %i.aw, %i.bd                ; 2 uses
  %i.bf = tail call double @sin(double noundef %i.be) #12 ; 2 uses
  %i.bg = tail call double @cos(double noundef %i.be) #12
  %i.bh = fmul double %i.bf, f0x3FEFDEFD3FC184D3
  %i.bi = tail call double @atan2(double noundef %i.bh, double noundef %i.bg) #12
  %i.bj = fadd double %i.bd, %i.bi                ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.bj, ptr %i.bk, align 8
  %i.bl = fmul double %i.bf, f0x3FB6F575B9F2C24F
  %i.bm = tail call double @asin(double noundef %i.bl) #12 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load double, ptr %i.e, align 8
  %i.bp = tail call noundef signext i8 @uprv_isNaN_78(double noundef %i.bo) #12
  %.not.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.d

._crit_edge.i.i.i:                                ; preds = %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit
  %.pre.i.i.i = load double, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit

bb.d:                                             ; preds = %_ZN6icu_7818CalendarAstronomer12getJulianDayEv.exit
  %i.bq = load double, ptr %0, align 8
  %i.br = fadd double %i.bq, f0x42E7F907CA644000
  %i.bs = fdiv double %i.br, 8.640000e+07         ; 2 uses
  store double %i.bs, ptr %i.e, align 8
  br label %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit

_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %i.bt = phi double [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.bs, %bb.d ]
  %i.bu = fadd double %i.bt, f0xC142B42C80000000
  %i.bv = fdiv double %i.bu, 3.652500e+04         ; 6 uses
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double f0xBF8AA1EDB45C4BE9, double f0x4037707570C564F9)
  %i.bx = fmul double %i.bv, f0xBE865E9F80F29211
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bv, double %i.bw)
  %i.bz = fmul double %i.bv, f0x3EA0DED40694CE29
  %i.ca = fmul double %i.bv, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bv, double %i.by)
  %i.cc = fmul double %i.cb, f0x3F91DF46A2529D39  ; 2 uses
  %i.cd = tail call double @sin(double noundef %i.cc) #12 ; 2 uses
  %i.ce = tail call double @cos(double noundef %i.cc) #12 ; 2 uses
  %i.cf = tail call double @sin(double noundef %i.bj) #12 ; 2 uses
  %i.cg = tail call double @cos(double noundef %i.bj) #12
  %i.ch = tail call double @sin(double noundef %i.bm) #12
  %i.ci = tail call double @cos(double noundef %i.bm) #12
  %i.cj = tail call double @tan(double noundef %i.bm) #12
  %i.ck = fneg double %i.cd
  %i.cl = fmul double %i.cj, %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double %i.cl)
  %i.cn = tail call double @atan2(double noundef %i.cm, double noundef %i.cg) #12
  %i.co = fmul double %i.cd, %i.ci
  %i.cp = fmul double %i.cf, %i.co
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ce, double %i.cp)
  %i.cr = tail call double @asin(double noundef %i.cq) #12
  store double %i.cn, ptr %i.bn, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.cr, ptr %i.cs, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7818CalendarAstronomer20eclipticToEquatorialERNS0_10EquatorialEdd.exit, %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.ct
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
