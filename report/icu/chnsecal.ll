inline.NumInlined: 141
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_17newYearERKNS_15ChineseCalendar7SettingEiR10UErrorCode:bb.a
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !23
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = tail call noundef i32 @_ZN6icu_7813CalendarCache3getEPPS0_iR10UErrorCode(ptr noundef %i.f, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !23
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.k = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -1, ptr noundef nonnull %i.a)
  %.not51 = icmp eq i8 %i.k, 0
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4, !tbaa !23
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 4, !tbaa !22
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
  %i.x = load i32, ptr %2, align 4, !tbaa !23
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.z = sub nsw i32 %i.w, %i.q
  %i.aa = sitofp i32 %i.z to double
  %i.ab = load double, ptr @_ZN6icu_7818CalendarAstronomer13SYNODIC_MONTHE, align 8, !tbaa !34
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
  %i.an = load i32, ptr %2, align 4, !tbaa !23
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !33
  call void @_ZN6icu_7813CalendarCache3putEPPS0_iiR10UErrorCode(ptr noundef %i.ap, i32 noundef %1, i32 noundef %.044, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.pre = load i32, ptr %2, align 4, !tbaa !23
  %i.aq = icmp sgt i32 %.pre, 0
  %i.ar = select i1 %i.aq, i32 0, i32 %.044
  br label %bb.m

.critedge:                                        ; preds = %bb.k, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.b, %.critedge, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.b ], [ %i.ar, %bb.l ], [ %i.g, %bb.c ]
  ret i32 %.3
}

declare noundef i32 @_ZN6icu_785Grego9dayToYearEiR10UErrorCode(i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc { i64, i64 } @_ZN6icu_7812_GLOBAL__N_116computeMonthInfoERKNS_15ChineseCalendar7SettingEiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !23
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.g = load i32, ptr %3, align 4, !tbaa !23
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %2, %i.f
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.j = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -1, ptr noundef nonnull %i.a)
  %.not103 = icmp eq i8 %i.j, 0
  br i1 %.not103, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.k = load i32, ptr %i.a, align 4, !tbaa !22
  %i.l = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %3, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.v

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.m = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef 1, ptr noundef nonnull %i.b)
  %.not102 = icmp eq i8 %i.m, 0
  br i1 %.not102, label %.thread117, label %bb.g

.thread117:                                       ; preds = %bb.f
  %i.n = load i32, ptr %i.b, align 4, !tbaa !22
  %i.o = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_114winterSolsticeERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %3, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.v

bb.h:                                             ; preds = %.thread117, %.thread
  %.193 = phi i32 [ %i.l, %.thread ], [ %i.f, %.thread117 ] ; 2 uses
  %.191 = phi i32 [ %i.f, %.thread ], [ %i.o, %.thread117 ] ; 2 uses
  %.not104 = icmp sle i32 %.193, %2
  %i.p = icmp slt i32 %2, %.191
  %or.cond = and i1 %.not104, %i.p
  br i1 %or.cond, label %bb.i, label %.thread124

.thread124:                                       ; preds = %bb.h
  store i32 1, ptr %3, align 4, !tbaa !23
  br label %bb.v

bb.i:                                             ; preds = %bb.h
  %.pre = load i32, ptr %3, align 4, !tbaa !23
  %i.q = icmp slt i32 %.pre, 1
  br i1 %i.q, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !27     ; 7 uses
  %i.s = add nsw i32 %.193, 1
  %i.t = sitofp i32 %i.s to double
  %i.u = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.t, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 4 uses
  %i.v = add nsw i32 %.191, 1
  %i.w = sitofp i32 %i.v to double
  %i.x = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.w, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.y = load i32, ptr %3, align 4, !tbaa !23
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %2, 1
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.ab, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 6 uses
  %.sroa.12.8.insert.ext = zext i32 %i.ac to i64  ; 2 uses
  %i.ad = load i32, ptr %3, align 4, !tbaa !23
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.af = sub nsw i32 %i.x, %i.u
  %i.ag = load double, ptr @_ZN6icu_7818CalendarAstronomer13SYNODIC_MONTHE, align 8, !tbaa !34 ; 2 uses
  %i.ah = sub nsw i32 %i.ac, %i.u
  %i.ai = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x double> %i.ak, %i.am          ; 2 uses
  %i.ao = fcmp oge <2 x double> %i.an, zeroinitializer
  %4 = select <2 x i1> %i.ao, <2 x double> splat (double 5.000000e-01), <2 x double> splat (double -5.000000e-01)
  %5 = fadd <2 x double> %i.an, %4                ; 2 uses
  %i.ap = extractelement <2 x double> %5, i64 1
  %i.aq = fptosi double %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 12                   ; 3 uses
  %.sroa.12.13.insert.shift = select i1 %i.ar, i64 1099511627776, i64 0
  %.sroa.12.13.insert.insert = or disjoint i64 %.sroa.12.13.insert.shift, %.sroa.12.8.insert.ext ; 7 uses
  %i.as = extractelement <2 x double> %5, i64 0
  %i.at = fptosi double %i.as to i32              ; 5 uses
  %i.au = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_17newYearERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.av = load i32, ptr %3, align 4, !tbaa !23
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp slt i32 %2, %i.au
  br i1 %i.ax, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.ay = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef -1, ptr noundef nonnull %i.c)
  %.not109 = icmp eq i8 %i.ay, 0
  br i1 %.not109, label %bb.o, label %.critedge

.critedge:                                        ; preds = %bb.n
  store i32 1, ptr %3, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr %i.c, align 4, !tbaa !22
  %i.ba = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_17newYearERKNS_15ChineseCalendar7SettingEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bb = load i32, ptr %3, align 4, !tbaa !23
  %i.bc = icmp slt i32 %i.bb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br i1 %i.bc, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.m
  %.1 = phi i32 [ %i.ba, %bb.o ], [ %i.au, %bb.m ]
  br i1 %i.ar, label %bb.q, label %.thread125

bb.q:                                             ; preds = %bb.p
  %i.bd = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_118isLeapMonthBetweenEPKNS_8TimeZoneEiiR10UErrorCode(ptr noundef %i.r, i32 noundef %i.u, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %sext = sub nsw i8 0, %i.bd
  %i.be = sext i8 %sext to i32
  %spec.select = add nsw i32 %i.be, %i.at         ; 2 uses
  %.pre119 = load i32, ptr %3, align 4, !tbaa !23
  %i.bf = icmp slt i32 %.pre119, 1
  br i1 %i.bf, label %.thread125, label %bb.u

.thread125:                                       ; preds = %bb.p, %bb.q
  %.sroa.0.sroa.0.0127 = phi i32 [ %spec.select, %bb.q ], [ %i.at, %bb.p ] ; 3 uses
  %i.bg = icmp slt i32 %.sroa.0.sroa.0.0127, 1
  %i.bh = add nsw i32 %.sroa.0.sroa.0.0127, 12
  %spec.select115 = select i1 %i.bg, i32 %i.bh, i32 %.sroa.0.sroa.0.0127
  %i.bi = sub nsw i32 %i.ac, %.1
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = fdiv double %i.bj, %i.ag                ; 2 uses
  %i.bl = fcmp oge double %i.bk, 0.000000e+00
  %i.bm = select i1 %i.bl, double 5.000000e-01, double -5.000000e-01
  %i.bn = fadd double %i.bk, %i.bm
  %i.bo = fptosi double %i.bn to i32              ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 0
  %i.bq = add nsw i32 %i.bo, 12
  %.sroa.0.sroa.8.0 = select i1 %i.bp, i32 %i.bq, i32 %i.bo
  br i1 %i.ar, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.thread125
  %i.br = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_119hasNoMajorSolarTermEPKNS_8TimeZoneEiR10UErrorCode(ptr noundef %i.r, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not113 = icmp eq i8 %i.br, 0
  br i1 %.not113, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = add nsw i32 %i.ac, -25
  %i.bt = sitofp i32 %i.bs to double
  %i.bu = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_111newMoonNearEPKNS_8TimeZoneEdaR10UErrorCode(ptr noundef %i.r, double noundef %i.bt, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bv = call fastcc noundef signext i8 @_ZN6icu_7812_GLOBAL__N_118isLeapMonthBetweenEPKNS_8TimeZoneEiiR10UErrorCode(ptr noundef %i.r, i32 noundef %i.u, i32 noundef %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bw = xor i8 %i.bv, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 32
  %i.bz = or disjoint i64 %i.by, %.sroa.12.13.insert.insert
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.thread125
  %.sroa.12.12.insert.ext = phi i64 [ %.sroa.12.13.insert.insert, %bb.r ], [ %.sroa.12.13.insert.insert, %.thread125 ], [ %i.bz, %bb.s ]
  %i.ca = zext i32 %.sroa.0.sroa.8.0 to i64
  %i.cb = shl nuw i64 %i.ca, 32
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %.critedge, %bb.l, %bb.t, %bb.o
  %.sroa.12.0 = phi i64 [ %.sroa.12.13.insert.insert, %bb.o ], [ %.sroa.12.13.insert.insert, %.critedge ], [ %.sroa.12.12.insert.ext, %bb.t ], [ %.sroa.12.13.insert.insert, %bb.l ], [ %.sroa.12.13.insert.insert, %bb.q ]
  %.sroa.0.sroa.8.1 = phi i64 [ 0, %bb.o ], [ 0, %.critedge ], [ %i.cb, %bb.t ], [ 0, %bb.l ], [ 0, %bb.q ]
  %.sroa.0.sroa.0.2 = phi i32 [ %i.at, %bb.o ], [ %i.at, %.critedge ], [ %spec.select115, %bb.t ], [ %i.at, %bb.l ], [ %spec.select, %bb.q ]
  %i.cc = zext i32 %.sroa.0.sroa.0.2 to i64
  %i.cd = or disjoint i64 %.sroa.0.sroa.8.1, %i.cc
  br label %bb.v

bb.v:                                             ; preds = %.thread124, %bb.g, %bb.e, %bb.b, %bb.i, %bb.k, %bb.j, %bb.u, %bb.a
  %.sroa.12.3 = phi i64 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %.sroa.12.0, %bb.u ], [ 0, %bb.j ], [ %.sroa.12.8.insert.ext, %bb.k ], [ 0, %.thread124 ]
  %.sroa.0.sroa.0.0.insert.insert = phi i64 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.e ], [ %i.cd, %bb.u ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %.thread124 ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.3, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815ChineseCalendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 2, label %bb.b
    i32 23, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !23
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.e = load i32, ptr %3, align 4, !tbaa !23
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %reass.sub = sub i32 %i.d, %i.a
  %i.g = add i32 %reass.sub, -2440587
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %i.g, i32 noundef %i.a, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.f
  ret void
}

declare noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815ChineseCalendar3addENS_8Calendar11EDateFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815ChineseCalendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(257) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"struct.icu_78::ChineseCalendar::Setting") align 8 %4, ptr noundef nonnull align 8 dereferenceable(257) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.e = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.f = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 5 uses
  %i.g = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.h = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.i = load i32, ptr %3, align 4, !tbaa !23
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %4, align 8, !tbaa !27     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.m = load i8, ptr %i.l, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !22
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
  %i.r = load double, ptr @_ZN6icu_7818CalendarAstronomer13SYNODIC_MONTHE, align 8, !tbaa !34
end_hunk_0
