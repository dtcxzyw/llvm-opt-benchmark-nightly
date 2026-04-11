inline.NumInlined: 142
inline.NumDeleted: 32
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_116computeMonthInfoERKNS_15ChineseCalendar7SettingEiiR10UErrorCode:bb.a

bb.l:                                             ; preds = %bb.k
  %i.af = sub nsw i32 %i.x, %i.u
  %4 = sitofp i32 %i.af to double
  %5 = load double, ptr @_ZN6icu_7818CalendarAstronomer13SYNODIC_MONTHE, align 8 ; 3 uses
  %6 = fdiv double %4, %5                         ; 2 uses
  %7 = fcmp oge double %6, 0.000000e+00
  %i.ag = select i1 %7, double 5.000000e-01, double -5.000000e-01
  %i.ah = fadd double %6, %i.ag
  %i.ai = fptosi double %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 12                   ; 3 uses
  %.sroa.12.13.insert.shift = select i1 %i.aj, i64 1099511627776, i64 0
  %.sroa.12.13.insert.insert = or disjoint i64 %.sroa.12.13.insert.shift, %.sroa.12.8.insert.ext ; 7 uses
  %8 = sub nsw i32 %i.ac, %i.u
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, %5                        ; 2 uses
  %11 = fcmp oge double %10, 0.000000e+00
  %12 = select i1 %11, double 5.000000e-01, double -5.000000e-01
  %i.ak = fadd double %10, %12
  %i.al = fptosi double %i.ak to i32              ; 5 uses
  %i.am = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_17newYearERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.an = load i32, ptr %3, align 4
end_hunk_0
begin_hunk_1_@_ZN6icu_7812_GLOBAL__N_116computeMonthInfoERKNS_15ChineseCalendar7SettingEiiR10UErrorCode:bb.a
  %spec.select115 = select i1 %i.ay, i32 %i.az, i32 %.sroa.0.sroa.0.0130
  %i.ba = sub nsw i32 %i.ac, %.1
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fdiv double %i.bb, %5                   ; 2 uses
  %i.bd = fcmp oge double %i.bc, 0.000000e+00
  %i.be = select i1 %i.bd, double 5.000000e-01, double -5.000000e-01
  %i.bf = fadd double %i.bc, %i.be
end_hunk_1
