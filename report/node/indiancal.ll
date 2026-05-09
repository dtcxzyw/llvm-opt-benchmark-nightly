inline.NumInlined: 35
inline.NumDeleted: 13
begin_hunk_0_@_ZN6icu_7814IndianCalendar19handleComputeFieldsEiR10UErrorCode:bb.a
  %i.l = add i32 %i.b, -1                         ; 3 uses
  %i.m = and i32 %i.l, 3
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread40

bb.c:                                             ; preds = %bb.b
  %i.o = srem i32 %i.l, 100
  %.not49 = icmp eq i32 %i.o, 0
  br i1 %.not49, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread, label %_ZN6icu_78L15isGregorianLeapEi.exit.thread40

_ZN6icu_78L15isGregorianLeapEi.exit.thread:       ; preds = %bb.c
  %3 = srem i32 %i.l, 400
  %.not61 = icmp eq i32 %3, 0                     ; 2 uses
  %spec.select = select i1 %.not61, i32 31, i32 30
  %spec.select62 = select i1 %.not61, i32 286, i32 285
  br label %_ZN6icu_78L15isGregorianLeapEi.exit.thread40

_ZN6icu_78L15isGregorianLeapEi.exit.thread40:     ; preds = %_ZN6icu_78L15isGregorianLeapEi.exit.thread, %bb.b, %bb.c
  %4 = phi i32 [ 31, %bb.c ], [ %spec.select, %_ZN6icu_78L15isGregorianLeapEi.exit.thread ], [ 30, %bb.b ]
  %5 = phi i32 [ 286, %bb.c ], [ %spec.select62, %_ZN6icu_78L15isGregorianLeapEi.exit.thread ], [ 285, %bb.b ]
  %i.p = add nsw i32 %5, %i.i
  br label %bb.f

bb.d:                                             ; preds = %bb.a
end_hunk_0
