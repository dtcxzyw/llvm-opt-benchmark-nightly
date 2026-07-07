inline.NumInlined: 142
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7815ChineseCalendar23handleComputeMonthStartEiiaR10UErrorCode:bb.a
}

declare noundef i32 @_ZN6icu_789ClockMath11floorDivideEiiPi(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_17newYearERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 @_ZN6icu_7813CalendarCache3getEPPS0_iR10UErrorCode(ptr noundef %i.f, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 ; 2 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.k = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -1, ptr noundef nonnull %i.a) #7
  %.not51 = icmp eq i8 %i.k, 0
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 4
  %i.m = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.n = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.o = add nsw i32 %i.m, 1
  %i.p = sitofp i32 %i.o to double
  %i.q = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.d, double noundef %i.p, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 3 uses
  %i.r = add nsw i32 %i.q, 25
  %i.s = sitofp i32 %i.r to double
  %i.t = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.d, double noundef %i.s, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 4 uses
  %i.u = add nsw i32 %i.n, 1
  %i.v = sitofp i32 %i.u to double
  %i.w = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.d, double noundef %i.v, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.x = load i32, ptr %2, align 4
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.z = sub nsw i32 %i.w, %i.q
  %i.aa = sitofp i32 %i.z to double
  %i.ab = load double, ptr @_ZN6icu_7818CalendarAstronomer13SYNODIC_MONTHE, align 8
  %i.ac = fdiv double %i.aa, %i.ab                ; 2 uses
  %i.ad = fcmp oge double %i.ac, 0.000000e+00
  %i.ae = select i1 %i.ad, double 5.000000e-01, double -5.000000e-01
  %i.af = fadd double %i.ac, %i.ae
  %i.ag = fptosi double %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 12
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode(ptr noundef %i.d, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not53 = icmp eq i8 %i.ai, 0
  br i1 %.not53, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode(ptr noundef %i.d, i32 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not54 = icmp eq i8 %i.aj, 0
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = add nsw i32 %i.t, 25
  %i.al = sitofp i32 %i.ak to double
  %i.am = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.d, double noundef %i.al, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j
  %.044 = phi i32 [ %i.am, %bb.j ], [ %i.t, %bb.i ], [ %i.t, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %2, align 4
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8
  call void @_ZN6icu_7813CalendarCache3putEPPS0_iiR10UErrorCode(ptr noundef %i.ap, i32 noundef %1, i32 noundef %.044, ptr noundef nonnull align 4 dereferenceable(4) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre = load i32, ptr %2, align 4
  %i.aq = icmp sgt i32 %.pre, 0
  %i.ar = select i1 %i.aq, i32 0, i32 %.044
  br label %bb.m

.critedge:                                        ; preds = %bb.k, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.b, %.critedge, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.b ], [ %i.ar, %bb.l ], [ %i.g, %bb.c ]
  ret i32 %.3
}

declare noundef i32 @_ZN6icu_785Grego9dayToYearEiR10UErrorCode(i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i64, i64 } @_ZN6icu_7812_GLOBAL__N_116computeMonthInfoERKNS_15ChineseCalendar7SettingEiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load i32, ptr %3, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %2, %i.f
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.j = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -1, ptr noundef nonnull %i.a) #7
  %.not103 = icmp eq i8 %i.j, 0
  br i1 %.not103, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.k = load i32, ptr %i.a, align 4
  %i.l = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.v

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.m = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef 1, ptr noundef nonnull %i.b) #7
  %.not102 = icmp eq i8 %i.m, 0
  br i1 %.not102, label %.thread117, label %bb.g

.thread117:                                       ; preds = %bb.f
  %i.n = load i32, ptr %i.b, align 4
  %i.o = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.v

bb.h:                                             ; preds = %.thread117, %.thread
  %.193 = phi i32 [ %i.l, %.thread ], [ %i.f, %.thread117 ] ; 2 uses
  %.191 = phi i32 [ %i.f, %.thread ], [ %i.o, %.thread117 ] ; 2 uses
  %.not104 = icmp sle i32 %.193, %2
  %i.p = icmp slt i32 %2, %.191
  %or.cond = and i1 %.not104, %i.p
  br i1 %or.cond, label %bb.i, label %.thread124

.thread124:                                       ; preds = %bb.h
  store i32 1, ptr %3, align 4
  br label %bb.v

bb.i:                                             ; preds = %bb.h
  %.pre = load i32, ptr %3, align 4
  %i.q = icmp slt i32 %.pre, 1
  br i1 %i.q, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %0, align 8                ; 7 uses
  %i.s = add nsw i32 %.193, 1
  %i.t = sitofp i32 %i.s to double
  %i.u = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.t, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 4 uses
  %i.v = add nsw i32 %.191, 1
  %i.w = sitofp i32 %i.v to double
  %i.x = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.w, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.y = load i32, ptr %3, align 4
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %2, 1
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.ab, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 6 uses
  %.sroa.12.8.insert.ext = zext i32 %i.ac to i64  ; 2 uses
  %i.ad = load i32, ptr %3, align 4
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.l, label %bb.v

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
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp slt i32 %2, %i.am
  br i1 %i.ap, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.aq = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -1, ptr noundef nonnull %i.c) #7
  %.not109 = icmp eq i8 %i.aq, 0
  br i1 %.not109, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.n
  store i32 1, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr %i.c, align 4
  %i.as = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_17newYearERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.at = load i32, ptr %3, align 4
  %i.au = icmp slt i32 %i.at, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br i1 %i.au, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.m
  %.1 = phi i32 [ %i.as, %bb.o ], [ %i.am, %bb.m ]
  br i1 %i.aj, label %bb.q, label %.thread125

bb.q:                                             ; preds = %bb.p
  %i.av = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_118isLeapMonthBetweenEPKNS_8TimeZoneEiiR10UErrorCode(ptr noundef %i.r, i32 noundef %i.u, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %sext = sub nsw i8 0, %i.av
  %i.aw = sext i8 %sext to i32
  %spec.select = add nsw i32 %i.aw, %i.al         ; 2 uses
  %.pre119 = load i32, ptr %3, align 4
  %i.ax = icmp slt i32 %.pre119, 1
  br i1 %i.ax, label %.thread125, label %bb.u

.thread125:                                       ; preds = %bb.p, %bb.q
  %.sroa.0.sroa.0.0127 = phi i32 [ %spec.select, %bb.q ], [ %i.al, %bb.p ] ; 3 uses
  %i.ay = icmp slt i32 %.sroa.0.sroa.0.0127, 1
  %i.az = add nsw i32 %.sroa.0.sroa.0.0127, 12
  %spec.select115 = select i1 %i.ay, i32 %i.az, i32 %.sroa.0.sroa.0.0127
  %i.ba = sub nsw i32 %i.ac, %.1
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fdiv double %i.bb, %5                   ; 2 uses
  %i.bd = fcmp oge double %i.bc, 0.000000e+00
  %i.be = select i1 %i.bd, double 5.000000e-01, double -5.000000e-01
  %i.bf = fadd double %i.bc, %i.be
  %i.bg = fptosi double %i.bf to i32              ; 3 uses
  %i.bh = icmp slt i32 %i.bg, 0
  %i.bi = add nsw i32 %i.bg, 12
  %.sroa.0.sroa.8.0 = select i1 %i.bh, i32 %i.bi, i32 %i.bg
  br i1 %i.aj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.thread125
  %i.bj = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode(ptr noundef %i.r, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not113 = icmp eq i8 %i.bj, 0
  br i1 %.not113, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = add nsw i32 %i.ac, -25
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.bl, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bn = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_118isLeapMonthBetweenEPKNS_8TimeZoneEiiR10UErrorCode(ptr noundef %i.r, i32 noundef %i.u, i32 noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bo = xor i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 32
  %i.br = or disjoint i64 %i.bq, %.sroa.12.13.insert.insert
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.thread125
  %.sroa.12.12.insert.ext = phi i64 [ %.sroa.12.13.insert.insert, %bb.r ], [ %.sroa.12.13.insert.insert, %.thread125 ], [ %i.br, %bb.s ]
  %i.bs = zext i32 %.sroa.0.sroa.8.0 to i64
  %i.bt = shl nuw i64 %i.bs, 32
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %.critedge, %bb.l, %bb.t, %bb.o
  %.sroa.12.0 = phi i64 [ %.sroa.12.13.insert.insert, %bb.o ], [ %.sroa.12.13.insert.insert, %.critedge ], [ %.sroa.12.12.insert.ext, %bb.t ], [ %.sroa.12.13.insert.insert, %bb.l ], [ %.sroa.12.13.insert.insert, %bb.q ]
  %.sroa.0.sroa.8.1 = phi i64 [ 0, %bb.o ], [ 0, %.critedge ], [ %i.bt, %bb.t ], [ 0, %bb.l ], [ 0, %bb.q ]
  %.sroa.0.sroa.0.2 = phi i32 [ %i.al, %bb.o ], [ %i.al, %.critedge ], [ %spec.select115, %bb.t ], [ %i.al, %bb.l ], [ %spec.select, %bb.q ]
  %i.bu = zext i32 %.sroa.0.sroa.0.2 to i64
  %i.bv = or disjoint i64 %.sroa.0.sroa.8.1, %i.bu
  br label %bb.v

bb.v:                                             ; preds = %.thread124, %bb.g, %bb.e, %bb.b, %bb.i, %bb.k, %bb.j, %bb.u, %bb.a
  %.sroa.12.3 = phi i64 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %.sroa.12.0, %bb.u ], [ 0, %bb.j ], [ %.sroa.12.8.insert.ext, %bb.k ], [ 0, %.thread124 ]
  %.sroa.0.sroa.0.0.insert.insert = phi i64 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %i.bv, %bb.u ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %.thread124 ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.3, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815ChineseCalendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 2, label %bb.b
    i32 23, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %3) #7 ; 2 uses
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  %i.e = load i32, ptr %3, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %reass.sub = sub i32 %i.d, %i.a
  %i.g = add i32 %reass.sub, -2440587
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %i.g, i32 noundef %i.a, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.f
  ret void
}

declare noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815ChineseCalendar3addENS_8Calendar11EDateFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815ChineseCalendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"struct.icu_78::ChineseCalendar::Setting", align 8 ; 4 uses
  switch i32 %1, label %bb.l [
    i32 2, label %bb.b
    i32 23, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"struct.icu_78::ChineseCalendar::Setting") align 8 %4, ptr noundef nonnull align 8 dereferenceable(257) %0, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  %i.e = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  %i.f = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) #7 ; 5 uses
  %i.g = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %3) #7 ; 2 uses
  %i.h = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(4) %3) #7
  %i.i = load i32, ptr %3, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %4, align 8                ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load i8, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4
  %.not29 = icmp eq i8 %i.m, 0
  %i.n = add i32 %i.e, -2440587
  %i.o = sub i32 %i.n, %i.g                       ; 3 uses
  br i1 %.not29, label %.loopexit.thread46.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.h, 1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.f, 1
  br label %.loopexit.thread46.i

bb.g:                                             ; preds = %bb.e
  %i.r = load double, ptr @_ZN6icu_7818CalendarAstronomer13SYNODIC_MONTHE, align 8
  %i.s = sitofp i32 %i.f to double
  %i.t = fadd nnan double %i.s, -5.000000e-01
  %i.u = fmul double %i.t, %i.r
  %i.v = fptosi double %i.u to i32
  %i.w = sub nsw i32 %i.o, %i.v
  %i.x = sitofp i32 %i.w to double
  %i.y = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.k, double noundef %i.x, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.z = load i32, ptr %3, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %.preheader.i.i, label %_ZN6icu_7812_GLOBAL__N_19rollMonthEPKNS_8TimeZoneEiiiibbR10UErrorCode.exit.thread

.preheader.i.i:                                   ; preds = %bb.g, %_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.thread.i.i
  %.010.i.i = phi i32 [ %i.al, %_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.thread.i.i ], [ %i.o, %bb.g ] ; 4 uses
  %.not11.i.i = icmp slt i32 %.010.i.i, %i.y
  br i1 %.not11.i.i, label %.loopexit.thread46.i, label %_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.i.i

_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.i.i: ; preds = %.preheader.i.i
  %i.ab = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114majorSolarTermEPKNS_8TimeZoneEiR10UErrorCode(ptr noundef %i.k, i32 noundef %.010.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ac = add nsw i32 %.010.i.i, 25
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.k, double noundef %i.ad, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.af = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114majorSolarTermEPKNS_8TimeZoneEiR10UErrorCode(ptr noundef %i.k, i32 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ag = load i32, ptr %3, align 4
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = icmp ne i32 %i.ab, %i.af
  %narrow.i.not.i.i = or i1 %i.ai, %i.ah
  br i1 %narrow.i.not.i.i, label %_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.thread.i.i, label %.loopexit.thread.i

_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.thread.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.i.i
  %i.aj = add nsw i32 %.010.i.i, -25
  %i.ak = sitofp i32 %i.aj to double
  %i.al = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.k, double noundef %i.ak, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.am = load i32, ptr %3, align 4
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.preheader.i.i, label %_ZN6icu_7812_GLOBAL__N_19rollMonthEPKNS_8TimeZoneEiiiibbR10UErrorCode.exit.thread, !llvm.loop !9

.loopexit.thread.i:                               ; preds = %_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode.exit.i.i
  %i.ao = add nsw i32 %i.f, 1
  br label %.loopexit.thread46.i

.loopexit.thread46.i:                             ; preds = %.preheader.i.i, %.loopexit.thread.i, %bb.f, %bb.d
  %i.ap = phi i32 [ 13, %bb.f ], [ 12, %bb.d ], [ 13, %.loopexit.thread.i ], [ 13, %.preheader.i.i ] ; 2 uses
  %.2.i = phi i32 [ %i.q, %bb.f ], [ %i.f, %bb.d ], [ %i.ao, %.loopexit.thread.i ], [ %i.f, %.preheader.i.i ] ; 3 uses
  %i.aq = call signext i8 @uprv_add32_overflow_78(i32 noundef range(i32 1, 0) %2, i32 noundef %.2.i, ptr noundef nonnull %i.a) #7
  %.not37.i = icmp eq i8 %i.aq, 0
  br i1 %.not37.i, label %_ZN6icu_7812_GLOBAL__N_19rollMonthEPKNS_8TimeZoneEiiiibbR10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit.thread46.i
  store i32 1, ptr %3, align 4
end_hunk_0
