inline.NumInlined: 94
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7815IslamicCalendar14setRelatedYearEi:bb.a
  %i.j = urem i32 %.nonneg, 65
  %i.k = shl nuw nsw i32 %i.i, 1
  %i.l = icmp samesign ult i32 %i.j, 33
  %i.m = zext i1 %i.l to i32
  %reass.sub = sub nsw i32 %i.m, %i.k
  %i.n = add nsw i32 %reass.sub, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.n, %bb.c ]
  %i.o = add nsw i32 %1, -579
  %i.p = add nsw i32 %i.o, %.0
  tail call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 19, i32 noundef %i.p) #8
  ret void
}

declare void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_7815IslamicCalendar19defaultCenturyStartEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE acquire, align 4
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE) #8
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_130initializeSystemDefaultCenturyEv() #8, !inline_history !10
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE) #8
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load double, ptr @_ZN6icu_7812_GLOBAL__N_126gSystemDefaultCenturyStartE, align 8
  ret double %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_130initializeSystemDefaultCenturyEv() unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %0 = alloca %"class.icu_78::IslamicCalendar", align 8 ; 9 uses
  %1 = alloca %"class.icu_78::Locale", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %i.b = call noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40) %1) #8, !inline_history !11
  call void @_ZN6icu_788CalendarC2EPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #8, !inline_history !11
  store ptr getelementptr inbounds nuw inrange(-16, 480) (i8, ptr @_ZTVN6icu_7815IslamicCalendarE, i64 16), ptr %0, align 8
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZN6icu_788Calendar6getNowEv() #8
  call void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #8
  call void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 1, i32 noundef -80, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #8
  %i.f = call noundef double @_ZNK6icu_788Calendar15getTimeInMillisER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #8
  store double %i.f, ptr @_ZN6icu_7812_GLOBAL__N_126gSystemDefaultCenturyStartE, align 8
  %i.g = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #8
  store i32 %i.g, ptr @_ZN6icu_7812_GLOBAL__N_130gSystemDefaultCenturyStartYearE, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @_ZN6icu_788CalendarD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7815IslamicCalendar23defaultCenturyStartYearEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE acquire, align 4
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE) #8
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_130initializeSystemDefaultCenturyEv() #8, !inline_history !10
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE) #8
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load i32, ptr @_ZN6icu_7812_GLOBAL__N_130gSystemDefaultCenturyStartYearE, align 4
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i8 @_ZNK6icu_7815IslamicCalendar18haveDefaultCenturyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7815IslamicCalendar18inTemporalLeapYearER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(4) %1) #8
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp slt i32 %i.e, 1
  %i.g = icmp eq i32 %i.d, 355
  %.0 = and i1 %i.g, %i.f
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820IslamicCivilCalendarC2ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40) %1) #8, !inline_history !11
  tail call void @_ZN6icu_788CalendarC2EPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8, !inline_history !11
  store ptr getelementptr inbounds nuw inrange(-16, 480) (i8, ptr @_ZTVN6icu_7820IslamicCivilCalendarE, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820IslamicCivilCalendarD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788CalendarD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #8
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7820IslamicCivilCalendar7getTypeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7820IslamicCivilCalendar5cloneEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 256) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_788CalendarC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %0) #8, !inline_history !12
  store ptr getelementptr inbounds nuw inrange(-16, 480) (i8, ptr @_ZTVN6icu_7820IslamicCivilCalendarE, i64 16), ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6icu_7820IslamicCivilCalendar9yearStartEiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = mul nsw i64 %i.a, 354
  %i.c = add nsw i64 %i.b, -354
  %i.d = mul nsw i64 %i.a, 11
  %i.e = add nsw i64 %i.d, 3
  %i.f = tail call noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef %i.e, i64 noundef 30) #8
  %i.g = add nsw i64 %i.c, %i.f
  ret i64 %i.g
}

declare noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6icu_7820IslamicCivilCalendar10monthStartEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = sitofp i32 %2 to double
  %i.b = fmul nnan double %i.a, 2.950000e+01
  %i.c = tail call double @uprv_ceil_78(double noundef %i.b) #8
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = mul nsw i64 %i.d, 354
  %i.f = add nsw i64 %i.e, -354
  %i.g = sitofp i64 %i.f to double
  %i.h = fadd double %i.c, %i.g
  %i.i = mul nsw i64 %i.d, 11
  %i.j = add nsw i64 %i.i, 3
  %i.k = tail call noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef %i.j, i64 noundef 30) #8
  %i.l = sitofp i64 %i.k to double
  %i.m = fadd double %i.h, %i.l
  %i.n = fptosi double %i.m to i64
  ret i64 %i.n
}

declare double @uprv_ceil_78(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 28, 31) i32 @_ZNK6icu_7820IslamicCivilCalendar20handleGetMonthLengthEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i32 %2, 1
  %i.b = srem i32 %i.a, 2
  %i.c = add nsw i32 %i.b, 29
  %i.d = icmp eq i32 %2, 11
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = mul nsw i32 %1, 11
  %i.f = add nsw i32 %i.e, 14
  %i.g = srem i32 %i.f, 30
  %i.h = icmp slt i32 %i.g, 11
  %spec.select = select i1 %i.h, i32 30, i32 29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 356) i32 @_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i32 %1, 11
  %i.d = add nsw i32 %i.c, 14
  %i.e = srem i32 %i.d, 30
  %i.f = icmp slt i32 %i.e, 11
  %i.g = select i1 %i.f, i32 355, i32 354
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820IslamicCivilCalendar19handleComputeFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(256) %0) #8
  %i.g = sub nsw i32 %1, %i.f                     ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = mul nsw i64 %i.h, 30
  %i.j = add nsw i64 %i.i, 10646
  %i.k = tail call noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef %i.j, i64 noundef 10631) #8
  %i.l = add nsw i32 %i.g, -29
  %i.m = sext i32 %i.l to i64
  %i.n = trunc i64 %i.k to i32                    ; 5 uses
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.s = sub nsw i64 %i.m, %i.r
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 2.950000e+01
  %i.v = tail call double @uprv_ceil_78(double noundef %i.u) #8
  %i.w = load i32, ptr %2, align 4
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.y = fptosi double %i.v to i32
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 11) ; 3 uses
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 464
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.n, i32 noundef %i.z, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.ae = sub nsw i64 %i.h, %i.ad                 ; 2 uses
  %i.af = load i32, ptr %2, align 4
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ah = add i64 %i.ae, -2147483647
  %or.cond = icmp ult i64 %i.ah, -4294967296
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 464
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.n, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.am = sub nsw i64 %i.h, %i.al                 ; 2 uses
  %i.an = load i32, ptr %2, align 4
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ap = add i64 %i.am, -2147483647
  %or.cond3 = icmp ult i64 %i.ap, -4294967296
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %2, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.n, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.n, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 1, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.z, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 1, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.z, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 1, ptr %i.az, align 1
  %i.ba = trunc i64 %i.ae to i32
  %i.bb = add i32 %i.ba, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 1, ptr %i.bd, align 1
  %i.be = trunc i64 %i.am to i32
  %i.bf = add i32 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 1, ptr %i.bh, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.i, %bb.f, %bb.c, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819IslamicTBLACalendarC2ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40) %1) #8, !inline_history !11
  tail call void @_ZN6icu_788CalendarC2EPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8, !inline_history !11
  store ptr getelementptr inbounds nuw inrange(-16, 480) (i8, ptr @_ZTVN6icu_7819IslamicTBLACalendarE, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7819IslamicTBLACalendarD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788CalendarD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #8
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7819IslamicTBLACalendar7getTypeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7819IslamicTBLACalendar5cloneEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 256) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_788CalendarC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %0) #8, !inline_history !13
  store ptr getelementptr inbounds nuw inrange(-16, 480) (i8, ptr @_ZTVN6icu_7819IslamicTBLACalendarE, i64 16), ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK6icu_7819IslamicTBLACalendar7getEpocEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i32 1948439
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7823IslamicUmalquraCalendarC2ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40) %1) #8, !inline_history !11
  tail call void @_ZN6icu_788CalendarC2EPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8, !inline_history !11
  store ptr getelementptr inbounds nuw inrange(-16, 488) (i8, ptr @_ZTVN6icu_7823IslamicUmalquraCalendarE, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7823IslamicUmalquraCalendarD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788CalendarD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #8
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7823IslamicUmalquraCalendar7getTypeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7823IslamicUmalquraCalendar5cloneEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 256) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_788CalendarC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %0) #8, !inline_history !14
  store ptr getelementptr inbounds nuw inrange(-16, 488) (i8, ptr @_ZTVN6icu_7823IslamicUmalquraCalendarE, i64 16), ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6icu_7823IslamicUmalquraCalendar9yearStartEiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = add i32 %1, -1601
  %or.cond = icmp ult i32 %i.a, -301
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = mul nsw i64 %i.b, 354
  %i.d = add nsw i64 %i.c, -354
  %i.e = mul nsw i64 %i.b, 11
  %i.f = add nsw i64 %i.e, 3
  %i.g = tail call noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef %i.f, i64 noundef 30) #8
  %i.h = add nsw i64 %i.d, %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i32 %1, -1300                    ; 2 uses
  %i.j = uitofp nneg i32 %i.i to double
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double f0x407625E00D1B7176, double f0x411C188833333333)
  %i.l = fadd double %i.k, 5.000000e-01
  %i.m = fptosi double %i.l to i64
  %i.n = zext nneg i32 %i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812_GLOBAL__N_126umAlQuraYrStartEstimateFixE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i64
  %i.r = add nsw i64 %i.q, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.r, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6icu_7823IslamicUmalquraCalendar10monthStartEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #8 ; 2 uses
  %i.e = load i32, ptr %3, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.not1920 = icmp sgt i32 %2, 0
  br i1 %.not1920, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.022 = phi i32 [ %i.o, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %.01521 = phi i64 [ %i.n, %bb.b ], [ %i.d, %.preheader ]
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %.022, ptr noundef nonnull align 4 dereferenceable(4) %3) #8
  %i.k = load i32, ptr %3, align 4
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.m = sext i32 %i.j to i64
  %i.n = add nsw i64 %.01521, %i.m                ; 2 uses
  %i.o = add nuw nsw i32 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.117 = phi i64 [ 0, %bb.a ], [ %i.d, %.preheader ], [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  ret i64 %.117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 28, 31) i32 @_ZNK6icu_7823IslamicUmalquraCalendar20handleGetMonthLengthEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, -1601
  %or.cond = icmp ult i32 %i.a, -301
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, 1
  %i.c = srem i32 %i.b, 2
  %i.d = add nsw i32 %i.c, 29
  %i.e = icmp eq i32 %2, 11
  br i1 %i.e, label %bb.c, label %_ZNK6icu_7820IslamicCivilCalendar20handleGetMonthLengthEiiR10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.f = mul nsw i32 %1, 11
  %i.g = add nsw i32 %i.f, 14
  %i.h = srem i32 %i.g, 30
  %i.i = icmp slt i32 %i.h, 11
  %spec.select.i = select i1 %i.i, i32 30, i32 29
  br label %_ZNK6icu_7820IslamicCivilCalendar20handleGetMonthLengthEiiR10UErrorCode.exit

bb.d:                                             ; preds = %bb.a
  %i.j = sub nsw i32 11, %2
  %i.k = shl nuw i32 1, %i.j
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr [4 x i8], ptr @_ZN6icu_78L20UMALQURA_MONTHLENGTHE, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -5200
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, %i.k
  %.not = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not, i32 29, i32 30
  br label %_ZNK6icu_7820IslamicCivilCalendar20handleGetMonthLengthEiiR10UErrorCode.exit

_ZNK6icu_7820IslamicCivilCalendar20handleGetMonthLengthEiiR10UErrorCode.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ %spec.select, %bb.d ], [ %i.d, %bb.b ], [ %spec.select.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7823IslamicUmalquraCalendar10yearLengthEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = add i32 %1, -1601
  %or.cond = icmp ult i32 %i.a, -301
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.f = load i32, ptr %2, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.preheader.1, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.j = mul nsw i32 %1, 11
  %i.k = add nsw i32 %i.j, 14
  %i.l = srem i32 %i.k, 30
  %i.m = icmp slt i32 %i.l, 11
  %i.n = select i1 %i.m, i32 355, i32 354
  br label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 328
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.s = load i32, ptr %2, align 4
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %.preheader.2, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.2:                                     ; preds = %.preheader.1
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 328
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.y = load i32, ptr %2, align 4
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %.preheader.3, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.3:                                     ; preds = %.preheader.2
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 328
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.ae = load i32, ptr %2, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %.preheader.4, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.4:                                     ; preds = %.preheader.3
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.ak = load i32, ptr %2, align 4
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %.preheader.5, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.5:                                     ; preds = %.preheader.4
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 328
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.aq = load i32, ptr %2, align 4
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %.preheader.6, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.6:                                     ; preds = %.preheader.5
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 328
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.aw = load i32, ptr %2, align 4
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %.preheader.7, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.7:                                     ; preds = %.preheader.6
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 328
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 7, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.bc = load i32, ptr %2, align 4
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %.preheader.8, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.8:                                     ; preds = %.preheader.7
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 328
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.bi = load i32, ptr %2, align 4
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.preheader.9, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.9:                                     ; preds = %.preheader.8
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 328
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 9, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.bo = load i32, ptr %2, align 4
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %.preheader.10, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.10:                                    ; preds = %.preheader.9
  %i.bq = load ptr, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 328
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 10, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.bu = load i32, ptr %2, align 4
  %i.bv = icmp slt i32 %i.bu, 1
  br i1 %i.bv, label %.preheader.11, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

.preheader.11:                                    ; preds = %.preheader.10
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 328
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.ca = load i32, ptr %2, align 4
  %i.cb = icmp slt i32 %i.ca, 1
  br i1 %i.cb, label %bb.d, label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

bb.d:                                             ; preds = %.preheader.11
  %i.cc = add nsw i32 %i.r, %i.e
  %i.cd = add nsw i32 %i.x, %i.cc
  %i.ce = add nsw i32 %i.ad, %i.cd
  %i.cf = add nsw i32 %i.aj, %i.ce
  %i.cg = add nsw i32 %i.ap, %i.cf
  %i.ch = add nsw i32 %i.av, %i.cg
  %i.ci = add nsw i32 %i.bb, %i.ch
  %i.cj = add nsw i32 %i.bh, %i.ci
  %i.ck = add nsw i32 %i.bn, %i.cj
  %i.cl = add nsw i32 %i.bt, %i.ck
  %i.cm = add nsw i32 %i.bz, %i.cl
  br label %_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit

_ZNK6icu_7820IslamicCivilCalendar19handleGetYearLengthEiR10UErrorCode.exit: ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %bb.d, %bb.c, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %i.n, %bb.c ], [ %i.cm, %bb.d ], [ 0, %.preheader.preheader ], [ 0, %.preheader.1 ], [ 0, %.preheader.11 ], [ 0, %.preheader.2 ], [ 0, %.preheader.8 ], [ 0, %.preheader.3 ], [ 0, %.preheader.10 ], [ 0, %.preheader.4 ], [ 0, %.preheader.7 ], [ 0, %.preheader.5 ], [ 0, %.preheader.9 ], [ 0, %.preheader.6 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7823IslamicUmalquraCalendar19handleGetYearLengthEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7823IslamicUmalquraCalendar19handleComputeFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(256) %0) #8
  %i.i = sub nsw i32 %1, %i.h                     ; 5 uses
  %i.j = load atomic i8, ptr @_ZGVZN6icu_7823IslamicUmalquraCalendar19handleComputeFieldsEiR10UErrorCodeE14kUmalquraStart acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6icu_7823IslamicUmalquraCalendar19handleComputeFieldsEiR10UErrorCodeE14kUmalquraStart) #8
  %.not56 = icmp eq i32 %i.l, 0
  br i1 %.not56, label %bb.e, label %bb.d

end_hunk_0
