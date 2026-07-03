inline.NumInlined: 35
inline.NumDeleted: 13
begin_hunk_0_@_ZNK6icu_7814IndianCalendar7getTypeEv
define dso_local noundef nonnull ptr @_ZNK6icu_7814IndianCalendar7getTypeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK6icu_7814IndianCalendar14handleGetLimitE19UCalendarDateFieldsNS_8Calendar10ELimitTypeE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L6LIMITSE, i64 %i.a
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 30, 32) i32 @_ZNK6icu_7814IndianCalendar20handleGetMonthLengthEiiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree nonnull readnone align 4 captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %2, ptr %i.a, align 4
  %or.cond = icmp ugt i32 %2, 11
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef i32 @_ZN6icu_789ClockMath11floorDivideEiiPi(i32 noundef %2, i32 noundef 12, ptr noundef nonnull %i.a) #7
  %i.c = add nsw i32 %i.b, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.08 = phi i32 [ %i.c, %bb.b ], [ %1, %bb.a ]
  %i.d = add nsw i32 %.08, 78                     ; 3 uses
  %i.e = and i32 %i.d, 3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN6icu_78L15isGregorianLeapEi.exit

bb.d:                                             ; preds = %bb.c
  %i.g = srem i32 %i.d, 100
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN6icu_78L15isGregorianLeapEi.exit

bb.e:                                             ; preds = %bb.d
  %i.h = srem i32 %i.d, 400
  %i.i = icmp eq i32 %i.h, 0
  br label %_ZN6icu_78L15isGregorianLeapEi.exit

_ZN6icu_78L15isGregorianLeapEi.exit:              ; preds = %bb.c, %bb.d, %bb.e
  %i.j = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ %i.i, %bb.e ]
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %or.cond3 = select i1 %i.j, i1 %i.l, i1 false
  %i.m = add i32 %i.k, -1
  %or.cond5 = icmp ult i32 %i.m, 5
  %i.n = select i1 %or.cond3, i1 true, i1 %or.cond5
  %.0 = select i1 %i.n, i32 31, i32 30
  ret i32 %.0
}

declare noundef i32 @_ZN6icu_789ClockMath11floorDivideEiiPi(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 367) i32 @_ZNK6icu_7814IndianCalendar19handleGetYearLengthEiR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread5

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, 78                           ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = srem i32 %i.c, 100
  %.not.i.i = icmp ne i32 %i.f, 0
  %i.g = srem i32 %i.c, 400
  %.not = icmp eq i32 %i.g, 0
  %or.cond = or i1 %.not.i.i, %.not
  br i1 %or.cond, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread5, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread

_ZN6icu_78L15isGregorianLeapEi.exit.thread:       ; preds = %bb.c, %bb.b
  br label %_ZN6icu_78L15isGregorianLeapEi.exit.thread5

_ZN6icu_78L15isGregorianLeapEi.exit.thread5:      ; preds = %bb.c, %_ZN6icu_78L15isGregorianLeapEi.exit.thread, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 365, %_ZN6icu_78L15isGregorianLeapEi.exit.thread ], [ 366, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6icu_7814IndianCalendar23handleComputeMonthStartEiiaR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i8 signext %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.a, align 4
  store i32 %2, ptr %i.b, align 4
  %i.c = load i32, ptr %4, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %2, 11
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef i32 @_ZN6icu_789ClockMath11floorDivideEiiPi(i32 noundef %2, i32 noundef 12, ptr noundef nonnull %i.b) #7
  %i.f = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef %i.e, ptr noundef nonnull %i.a) #7
  %.not7 = icmp eq i8 %i.f, 0
  br i1 %.not7, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.b, align 4
  %.pre8 = load i32, ptr %i.a, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.g = phi i32 [ %.pre8, %._crit_edge ], [ %1, %bb.b ]
  %i.h = phi i32 [ %.pre, %._crit_edge ], [ %2, %bb.b ] ; 2 uses
  %i.i = icmp eq i32 %i.h, 12
  %i.j = add nsw i32 %i.h, 1
  %.05 = select i1 %i.i, i32 1, i32 %i.j          ; 4 uses
  %i.k = add nsw i32 %i.g, 78                     ; 4 uses
  %i.l = and i32 %i.k, 3
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.n = srem i32 %i.k, 100
  %.not.i.i.i = icmp ne i32 %i.n, 0
  %i.o = srem i32 %i.k, 400
  %.not.i = icmp eq i32 %i.o, 0
  %or.cond.i = or i1 %.not.i.i.i, %.not.i
  br i1 %or.cond.i, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread23.i, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread.i

_ZN6icu_78L15isGregorianLeapEi.exit.thread.i:     ; preds = %bb.f, %bb.e
  br label %_ZN6icu_78L15isGregorianLeapEi.exit.thread23.i

_ZN6icu_78L15isGregorianLeapEi.exit.thread23.i:   ; preds = %_ZN6icu_78L15isGregorianLeapEi.exit.thread.i, %bb.f
  %.sink.i = phi i32 [ 22, %_ZN6icu_78L15isGregorianLeapEi.exit.thread.i ], [ 21, %bb.f ]
  %.020.i = phi double [ 3.000000e+01, %_ZN6icu_78L15isGregorianLeapEi.exit.thread.i ], [ 3.100000e+01, %bb.f ]
  %i.p = call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %i.k, i32 noundef 2, i32 noundef %.sink.i) #7
  %.019.in.in.i = add nsw i64 %i.p, 2440588
  %.019.in.i = sitofp i64 %.019.in.in.i to double
  %.019.i = fadd double %.019.in.i, -5.000000e-01 ; 2 uses
  %i.q = icmp eq i32 %.05, 1
  br i1 %i.q, label %_ZN6icu_78L10IndianToJDEiii.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_78L15isGregorianLeapEi.exit.thread23.i
  %i.r = fadd double %.020.i, %.019.i
  %i.s = call i32 @llvm.smin.i32(i32 range(i32 -2147483647, -2147483648) %.05, i32 7)
  %i.t = mul i32 %i.s, 31
  %i.u = add i32 %i.t, -62
  %i.v = sitofp i32 %i.u to double
  %i.w = fadd double %i.r, %i.v
  %i.x = icmp sgt i32 %.05, 7
  %i.y = mul i32 %.05, 30
  %i.z = add i32 %i.y, -210
  %i.aa = uitofp nneg i32 %i.z to double
  %i.ab = select i1 %i.x, double %i.aa, double -0.000000e+00
  %.0.i = fadd double %i.ab, %i.w
  br label %_ZN6icu_78L10IndianToJDEiii.exit

_ZN6icu_78L10IndianToJDEiii.exit:                 ; preds = %_ZN6icu_78L15isGregorianLeapEi.exit.thread23.i, %bb.g
  %.1.i = phi double [ %.0.i, %bb.g ], [ %.019.i, %_ZN6icu_78L15isGregorianLeapEi.exit.thread23.i ]
  %i.ac = fptosi double %.1.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZN6icu_78L10IndianToJDEiii.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %i.ac, %_ZN6icu_78L10IndianToJDEiii.exit ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare signext i8 @uprv_add32_overflow_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7814IndianCalendar21handleGetExtendedYearER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK6icu_788Calendar10newerFieldE19UCalendarDateFieldsS1_(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 19, i32 noundef 1) #7
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp sgt i8 %i.f, 0
  br i1 %i.g, label %2, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

2:                                                ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %4 = load i32, ptr %3, align 4
  br label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp sgt i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  br label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit: ; preds = %bb.e, %bb.d, %2, %bb.c, %bb.a
  %.03 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ %4, %2 ], [ %i.l, %bb.e ], [ 1, %bb.d ]
  ret i32 %.03
}

declare noundef i32 @_ZNK6icu_788Calendar10newerFieldE19UCalendarDateFieldsS1_(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7814IndianCalendar19handleComputeFieldsEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) initializes((8, 20), (28, 36), (84, 88), (100, 107), (109, 111), (123, 124), (127, 128)) %0, i32 noundef %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.b = load i32, ptr %i.a, align 4              ; 7 uses
  %i.c = tail call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %i.b, i32 noundef 0, i32 noundef 1) #7
  %i.d = add nsw i64 %i.c, 2440588
  %i.e = sitofp i64 %i.d to double
  %i.f = fadd double %i.e, -5.000000e-01
  %i.g = sitofp i32 %1 to double
  %i.h = fsub double %i.g, %i.f
  %i.i = fptosi double %i.h to i32                ; 3 uses
  %i.j = icmp slt i32 %i.i, 80
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.b, -79
  %i.l = add i32 %i.b, -1                         ; 3 uses
  %i.m = and i32 %i.l, 3
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = srem i32 %i.l, 100
  %.not.i.i = icmp ne i32 %i.o, 0
  %i.p = srem i32 %i.l, 400
  %.not49 = icmp eq i32 %i.p, 0
  %or.cond = or i1 %.not.i.i, %.not49
  br i1 %or.cond, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread40, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread

_ZN6icu_78L15isGregorianLeapEi.exit.thread:       ; preds = %bb.c, %bb.b
  br label %_ZN6icu_78L15isGregorianLeapEi.exit.thread40

_ZN6icu_78L15isGregorianLeapEi.exit.thread40:     ; preds = %bb.c, %_ZN6icu_78L15isGregorianLeapEi.exit.thread
  %i.q = phi i32 [ 30, %_ZN6icu_78L15isGregorianLeapEi.exit.thread ], [ 31, %bb.c ] ; 2 uses
  %i.r = add nsw i32 %i.i, 255
  %i.s = add nsw i32 %i.r, %i.q
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.t = add nsw i32 %i.b, -78
  %i.u = and i32 %i.b, 3
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZN6icu_78L15isGregorianLeapEi.exit37.thread

bb.e:                                             ; preds = %bb.d
  %i.w = srem i32 %i.b, 100
  %.not.i.i36 = icmp ne i32 %i.w, 0
  %i.x = srem i32 %i.b, 400
  %.not = icmp eq i32 %i.x, 0
  %or.cond50 = or i1 %.not.i.i36, %.not
  br i1 %or.cond50, label %_ZN6icu_78L15isGregorianLeapEi.exit37.thread44, label %_ZN6icu_78L15isGregorianLeapEi.exit37.thread

_ZN6icu_78L15isGregorianLeapEi.exit37.thread:     ; preds = %bb.e, %bb.d
  br label %_ZN6icu_78L15isGregorianLeapEi.exit37.thread44

_ZN6icu_78L15isGregorianLeapEi.exit37.thread44:   ; preds = %bb.e, %_ZN6icu_78L15isGregorianLeapEi.exit37.thread
  %i.y = phi i32 [ 30, %_ZN6icu_78L15isGregorianLeapEi.exit37.thread ], [ 31, %bb.e ]
  %i.z = add nsw i32 %i.i, -80
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_78L15isGregorianLeapEi.exit37.thread44, %_ZN6icu_78L15isGregorianLeapEi.exit.thread40
  %.031 = phi i32 [ %i.k, %_ZN6icu_78L15isGregorianLeapEi.exit.thread40 ], [ %i.t, %_ZN6icu_78L15isGregorianLeapEi.exit37.thread44 ] ; 2 uses
  %.030 = phi i32 [ %i.s, %_ZN6icu_78L15isGregorianLeapEi.exit.thread40 ], [ %i.z, %_ZN6icu_78L15isGregorianLeapEi.exit37.thread44 ] ; 4 uses
  %.0 = phi i32 [ %i.q, %_ZN6icu_78L15isGregorianLeapEi.exit.thread40 ], [ %i.y, %_ZN6icu_78L15isGregorianLeapEi.exit37.thread44 ] ; 2 uses
  %i.aa = icmp slt i32 %.030, %.0
  br i1 %i.aa, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = sub nsw i32 %.030, %.0                  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 155
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.lhs.trunc = trunc nsw i32 %i.ab to i16        ; 2 uses
  %i.ad = sdiv i16 %.lhs.trunc, 31
  %i.ae = uitofp nneg i16 %i.ad to double
  %i.af = tail call double @uprv_floor_78(double noundef %i.ae) #7
  %i.ag = fptosi double %i.af to i32
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = srem i16 %.lhs.trunc, 31
  %.sext47 = sext i16 %i.ai to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.ab, -155                 ; 2 uses
  %i.ak = udiv i32 %i.aj, 30
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = tail call double @uprv_floor_78(double noundef %i.al) #7
  %i.an = fptosi double %i.am to i32
  %i.ao = add nsw i32 %i.an, 6
  %i.ap = urem i32 %i.aj, 30
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %.029 = phi i32 [ %i.ao, %bb.i ], [ %i.ah, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.028.in = phi i32 [ %i.ap, %bb.i ], [ %.sext47, %bb.h ], [ %.030, %bb.f ]
  %.028 = add nsw i32 %.028.in, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.031, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 1, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.031, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 1, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.029, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 1, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.029, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 1, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.028, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 1, ptr %i.bb, align 1
  %i.bc = add nsw i32 %.030, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 1, ptr %i.be, align 2
  ret void
}

declare double @uprv_floor_78(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_7814IndianCalendar19defaultCenturyStartEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE acquire, align 4
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE) #7
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_130initializeSystemDefaultCenturyEv() #7, !inline_history !6
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE) #7
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvvE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load double, ptr @_ZN6icu_7812_GLOBAL__N_126gSystemDefaultCenturyStartE, align 8
  ret double %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_130initializeSystemDefaultCenturyEv() unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %0 = alloca %"class.icu_78::IndianCalendar", align 8 ; 9 uses
  %1 = alloca %"class.icu_78::Locale", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %i.b = call noundef ptr @_ZN6icu_788TimeZone18forLocaleOrDefaultERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(40) %1) #7, !inline_history !7
  call void @_ZN6icu_788CalendarC2EPNS_8TimeZoneERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7, !inline_history !7
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTVN6icu_7814IndianCalendarE, i64 16), ptr %0, align 8
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef double @_ZN6icu_788Calendar6getNowEv() #7
  call void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7
  call void @_ZN6icu_788Calendar3addE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 1, i32 noundef -80, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7
  %i.f = call noundef double @_ZNK6icu_788Calendar15getTimeInMillisER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7
  store double %i.f, ptr @_ZN6icu_7812_GLOBAL__N_126gSystemDefaultCenturyStartE, align 8
  %i.g = call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #7
  store i32 %i.g, ptr @_ZN6icu_7812_GLOBAL__N_130gSystemDefaultCenturyStartYearE, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @_ZN6icu_788CalendarD2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7814IndianCalendar23defaultCenturyStartYearEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN6icu_7812_GLOBAL__N_125gSystemDefaultCenturyInitE acquire, align 4
end_hunk_0
