inline.NumInlined: 94
inline.NumDeleted: 19
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode:bb.a
  %i.ab = fmul double %i.aa, 1.800000e+02
  %i.ac = fdiv double %i.ab, %i.n                 ; 3 uses
  call void @_ZN6icu_7818CalendarAstronomerD1Ev(ptr noundef nonnull align 8 dereferenceable(57) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.ad = fcmp ogt double %i.ac, 1.800000e+02
  %i.ae = fadd double %i.ac, -3.600000e+02
  %.0.i26 = select i1 %i.ad, double %i.ae, double %i.ac
  %i.af = fcmp olt double %.0.i26, 0.000000e+00
  br i1 %i.af, label %.preheader, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %.preheader27, %.preheader
  %.2 = phi double [ %i.z, %.preheader ], [ %i.s, %.preheader27 ]
  %i.ag = fptosi double %.2 to i64
  %i.ah = sitofp i64 %i.ag to double
  %i.ai = fadd double %i.ah, f0x42C3562A0CD80000
  %i.aj = fptosi double %i.ai to i64
  %i.ak = call noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef %i.aj, i64 noundef 86400000) #8
  %i.al = trunc i64 %i.ak to i32
  %i.am = add i32 %i.al, 1                        ; 2 uses
  call void @_ZN6icu_7813CalendarCache3putEPPS0_iiR10UErrorCode(ptr noundef nonnull @_ZL11gMonthCache, i32 noundef %0, i32 noundef %i.am, ptr noundef nonnull align 4 dereferenceable(4) %1) #8
  %.pre = load i32, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.b
  %i.an = phi i32 [ %.pre, %.loopexit ], [ %i.d, %bb.b ]
  %.021 = phi i32 [ %i.am, %.loopexit ], [ %i.c, %bb.b ]
  %.inv = icmp sgt i32 %i.an, 0
  %i.ao = select i1 %.inv, i32 0, i32 %.021
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.023 = phi i32 [ %i.ao, %bb.d ], [ 0, %bb.a ]
  ret i32 %.023
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 -2147483648, 2147483648) i64 @_ZNK6icu_7815IslamicCalendar10monthStartEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  store i32 %2, ptr %i.a, align 4
  %i.c = load i32, ptr %3, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.e = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -1, ptr noundef nonnull %i.b) #8
  %.not4 = icmp eq i8 %i.e, 0
  br i1 %.not4, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 4
  %i.g = call signext i8 @uprv_mul32_overflow_78(i32 noundef %i.f, i32 noundef 12, ptr noundef nonnull %i.b) #8
  %.not5 = icmp eq i8 %i.g, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.b, align 4
  %i.i = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.h, i32 noundef %2, ptr noundef nonnull %i.a) #8
  %.not6 = icmp eq i8 %i.i, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 4
  %i.k = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode(i32 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.l = sext i32 %i.k to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i64 [ 0, %bb.e ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i64 [ %.0, %bb.g ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare signext i8 @uprv_add32_overflow_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare signext i8 @uprv_mul32_overflow_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7815IslamicCalendar20handleGetMonthLengthEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = mul i32 %1, 12
  %i.b = add i32 %i.a, -12
  %i.c = add nsw i32 %i.b, %2                     ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  %i.e = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode(i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.f = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode(i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.g = load i32, ptr %3, align 4
  %i.h = sub nsw i32 %i.e, %i.f
  %.inv = icmp sgt i32 %i.g, 0
  %.0 = select i1 %.inv, i32 0, i32 %i.h
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7815IslamicCalendar19handleGetYearLengthEiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = mul i32 %1, 12                           ; 2 uses
  %i.b = add i32 %i.a, -12
  %i.c = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode(i32 noundef %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.d = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.e = load i32, ptr %2, align 4
  %i.f = sub nsw i32 %i.c, %i.d
  %.inv.i = icmp sgt i32 %i.e, 0
  %.0.i = select i1 %.inv.i, i32 0, i32 %i.f
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 -9223372036854775808, 9223372036854775807) i64 @_ZNK6icu_7815IslamicCalendar23handleComputeMonthStartEiiaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %2, 11
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = udiv i32 %2, 12
  %i.f = urem i32 %2, 12
  %i.g = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef %i.e, ptr noundef nonnull %i.a) #8
  %.not16 = icmp eq i8 %i.g, 0
  br i1 %.not16, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %2, 0
  br i1 %i.h, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.nonneg = xor i32 %2, -1                       ; 2 uses
  %i.i = udiv i32 %.nonneg, 12
  %i.j = urem i32 %.nonneg, 12
  %i.k = xor i32 %i.i, -1
  %i.l = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef %i.k, ptr noundef nonnull %i.a) #8
  %.not15 = icmp eq i8 %i.l, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %4, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i32 11, %i.j
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.h
  %.013 = phi i32 [ %2, %bb.e ], [ %i.m, %bb.h ], [ %i.f, %bb.c ]
  %i.n = load i32, ptr %i.a, align 4
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 464
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.n, i32 noundef %.013, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(256) %0) #8
  %i.w = sext i32 %i.v to i64
  %i.x = add i64 %i.r, -1
  %i.y = add i64 %i.x, %i.w
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.g, %bb.d
  %.0 = phi i64 [ 0, %bb.g ], [ 0, %bb.d ], [ %i.y, %bb.i ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7815IslamicCalendar21handleGetExtendedYearER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6icu_788Calendar10newerFieldE19UCalendarDateFieldsS1_(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 19, i32 noundef 1) #8
  %i.b = icmp eq i32 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink2 = phi i64 [ 84, %bb.b ], [ 12, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2
  %i.j = load i32, ptr %i.i, align 4
  br label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.j, %bb.d ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6icu_788Calendar10newerFieldE19UCalendarDateFieldsS1_(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815IslamicCalendar19handleComputeFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::CalendarAstronomer", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(256) %0) #8
  %i.g = sub nsw i32 %1, %i.f                     ; 5 uses
  %i.h = sitofp i32 %i.g to double
  %i.i = load double, ptr @_ZN6icu_7818CalendarAstronomer13SYNODIC_MONTHE, align 8 ; 2 uses
  %i.j = fdiv double %i.h, %i.i
  %i.k = tail call double @uprv_floor_78(double noundef %i.j) #8
  %i.l = fptosi double %i.k to i32                ; 2 uses
  %i.m = sitofp i32 %i.l to double
  %i.n = fmul double %i.i, %i.m
  %i.o = tail call double @uprv_floor_78(double noundef %i.n) #8
  %i.p = fptosi double %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load double, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @_ZN6icu_7818CalendarAstronomerC1Ed(ptr noundef nonnull align 8 dereferenceable(57) %3, double noundef %i.r) #8
  %i.s = call noundef double @_ZN6icu_7818CalendarAstronomer10getMoonAgeEv(ptr noundef nonnull align 8 dereferenceable(57) %3) #8
  %i.t = fmul double %i.s, 1.800000e+02
  %i.u = load double, ptr @_ZN6icu_7818CalendarAstronomer2PIE, align 8
  %i.v = fdiv double %i.t, %i.u                   ; 3 uses
  call void @_ZN6icu_7818CalendarAstronomerD1Ev(ptr noundef nonnull align 8 dereferenceable(57) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.w = fcmp ogt double %i.v, 1.800000e+02
  %i.x = fadd double %i.v, -3.600000e+02
  %.0.i = select i1 %i.w, double %i.x, double %i.v
  %i.y = sub nsw i32 %i.g, %i.p
  %i.z = icmp sgt i32 %i.y, 24
  %i.aa = fcmp ogt double %.0.i, 0.000000e+00
  %or.cond = and i1 %i.z, %i.aa
  %i.ab = zext i1 %or.cond to i32
  %spec.select = add nsw i32 %i.ab, %i.l          ; 3 uses
  %i.ac = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode(i32 noundef %spec.select, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ad = icmp sgt i32 %i.ac, %i.g
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.152 = phi i32 [ %i.ag, %bb.c ], [ %spec.select, %bb.b ]
  %i.ae = load i32, ptr %2, align 4
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.ag = add nsw i32 %.152, -1                   ; 3 uses
  %i.ah = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114trueMonthStartEiR10UErrorCode(i32 noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ai = icmp sgt i32 %i.ah, %i.g
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.1.lcssa = phi i32 [ %spec.select, %bb.b ], [ %i.ag, %bb.c ] ; 4 uses
  %i.aj = load i32, ptr %2, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %i.al = icmp sgt i32 %.1.lcssa, -1
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = udiv i32 %.1.lcssa, 12
  %i.an = add nuw nsw i32 %i.am, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.nonneg = xor i32 %.1.lcssa, -1
  %i.ao = udiv i32 %.nonneg, 12
  %.neg = sub nsw i32 0, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = phi i32 [ %i.an, %bb.e ], [ %.neg, %bb.f ] ; 4 uses
  %i.aq = srem i32 %.1.lcssa, 12                  ; 3 uses
  %i.ar = add nsw i32 %i.aq, 12
  %.cmp = icmp slt i32 %i.aq, 0
  %i.as = select i1 %.cmp, i32 %i.ar, i32 %i.aq   ; 3 uses
  %i.at = sext i32 %i.g to i64                    ; 2 uses
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 464
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.ap, i32 noundef %i.as, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.ay = sub nsw i64 %i.at, %i.ax                ; 2 uses
  %i.az = load i32, ptr %2, align 4
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bb = add i64 %i.ay, -2147483647
  %or.cond3 = icmp ult i64 %i.bb, -4294967296
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %2, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 464
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.ap, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  %i.bg = sub nsw i64 %i.at, %i.bf                ; 2 uses
  %i.bh = load i32, ptr %2, align 4
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bj = add i64 %i.bg, -2147483647
  %or.cond5 = icmp ult i64 %i.bj, -4294967296
  br i1 %or.cond5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %2, align 4
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ap, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.ap, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 1, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.as, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 1, ptr %i.br, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.as, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 1, ptr %i.bt, align 1
  %i.bu = trunc i64 %i.ay to i32
  %i.bv = add i32 %i.bu, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 1, ptr %i.bx, align 1
  %i.by = trunc i64 %i.bg to i32
  %i.bz = add i32 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 1, ptr %i.cb, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.l, %bb.m, %bb.j, %bb.g, %bb.i, %bb.a
  ret void
}

declare double @uprv_floor_78(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK6icu_7815IslamicCalendar7getEpocEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret i32 1948440
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7815IslamicCalendar14getRelatedYearER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(4) %1) #8 ; 4 uses
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, 1396
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.a, -1397                  ; 2 uses
  %i.f = udiv i32 %i.e, 67
  %i.g = urem i32 %i.e, 67
  %i.h = icmp samesign ugt i32 %i.g, 32
  %.neg12.i = sext i1 %i.h to i32
  %i.i = shl nuw nsw i32 %i.f, 1
  %.neg13.i = sub nsw i32 %.neg12.i, %i.i
  br label %_ZN6icu_78L25gregoYearFromIslamicStartEi.exit

bb.d:                                             ; preds = %bb.b
  %.nonneg.i = sub i32 1396, %i.a                 ; 2 uses
  %i.j = udiv i32 %.nonneg.i, 67
end_hunk_0
