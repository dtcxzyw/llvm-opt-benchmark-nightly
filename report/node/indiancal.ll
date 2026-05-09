inline.NumInlined: 35
inline.NumDeleted: 13
begin_hunk_0_@_ZN6icu_7814IndianCalendar19handleComputeFieldsEiR10UErrorCode:bb.a
  %i.l = add i32 %i.b, -1                         ; 3 uses
  %i.m = and i32 %i.l, 3
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = srem i32 %i.l, 100
  %.not.i.i = icmp ne i32 %i.o, 0
  %3 = srem i32 %i.l, 400
  %.not49 = icmp eq i32 %3, 0
  %or.cond = or i1 %.not.i.i, %.not49
  br i1 %or.cond, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread40, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread

_ZN6icu_78L15isGregorianLeapEi.exit.thread:       ; preds = %bb.c, %bb.b
  br label %_ZN6icu_78L15isGregorianLeapEi.exit.thread40

_ZN6icu_78L15isGregorianLeapEi.exit.thread40:     ; preds = %bb.c, %_ZN6icu_78L15isGregorianLeapEi.exit.thread
  %4 = phi i32 [ 30, %_ZN6icu_78L15isGregorianLeapEi.exit.thread ], [ 31, %bb.c ] ; 2 uses
  %5 = add nsw i32 %i.i, 255
  %i.p = add nsw i32 %5, %4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
end_hunk_0
