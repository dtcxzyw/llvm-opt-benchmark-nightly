inline.NumInlined: 94
inline.NumDeleted: 19
begin_hunk_0_@_ZNK6icu_7815IslamicCalendar14getRelatedYearER10UErrorCode:bb.a
  %i.j = udiv i32 %.nonneg.i, 67
  %i.k = urem i32 %.nonneg.i, 67
  %i.l = shl nuw nsw i32 %i.j, 1
  %2 = icmp samesign ult i32 %i.k, 34
  %.neg.i = sext i1 %2 to i32
  %reass.sub.neg.i = add nuw nsw i32 %i.l, 2
  %.neg14.i = add nsw i32 %reass.sub.neg.i, %.neg.i
  br label %_ZN6icu_78L25gregoYearFromIslamicStartEi.exit

_ZN6icu_78L25gregoYearFromIslamicStartEi.exit:    ; preds = %bb.c, %bb.d
end_hunk_0
begin_hunk_1_@_ZN6icu_7815IslamicCalendar14setRelatedYearEi:bb.a
  %i.b = add nsw i32 %1, -1977                    ; 2 uses
  %i.c = udiv i32 %i.b, 65
  %i.d = urem i32 %i.b, 65
  %2 = shl nuw nsw i32 %i.c, 1
  %i.e = icmp samesign ugt i32 %i.d, 31
  %3 = zext i1 %i.e to i32
  %4 = or disjoint i32 %2, %3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.nonneg = sub i32 1976, %1                     ; 2 uses
  %i.f = udiv i32 %.nonneg, 65
  %i.g = urem i32 %.nonneg, 65
  %5 = shl nuw nsw i32 %i.f, 1
  %i.h = icmp samesign ult i32 %i.g, 33
  %6 = zext i1 %i.h to i32
  %reass.sub = sub nsw i32 %6, %5
  %7 = add nsw i32 %reass.sub, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %4, %bb.b ], [ %7, %bb.c ]
  %i.i = add nsw i32 %1, -579
  %i.j = add nsw i32 %i.i, %.0
  tail call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 19, i32 noundef %i.j) #8
  ret void
}
end_hunk_1
