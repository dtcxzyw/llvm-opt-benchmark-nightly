begin_hunk_0
  %i.d = load i8, ptr %i.c, align 8               ; 4 uses
  switch i8 %i.d, label %_ZNK6icu_788message211Formattable7getTypeEv.exit [
    i8 0, label %_ZNK6icu_788message211Formattable7getTypeEv.exit23.thread41
    i8 1, label %.thread
    i8 2, label %.thread
    i8 3, label %select.unfold
    i8 4, label %.thread
  ]

select.unfold:                                    ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = tail call noundef i32 @_ZNK6icu_7811Formattable7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.e) #11 ; 0 uses
  %.pr = load i8, ptr %i.c, align 8               ; 5 uses
  switch i8 %.pr, label %.thread.thread [
    i8 5, label %_ZNK6icu_788message211Formattable7getTypeEv.exit
    i8 1, label %.thread
    i8 2, label %.thread
    i8 3, label %3
    i8 4, label %.thread
  ]

3:                                                ; preds = %select.unfold
  %4 = tail call noundef i32 @_ZNK6icu_7811Formattable7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %i.e) #11 ; 0 uses
  %.pr36.pre = load i8, ptr %i.c, align 8
  br label %.thread

_ZNK6icu_788message211Formattable7getTypeEv.exit: ; preds = %select.unfold, %bb.c
  store i32 1, ptr %2, align 4
  tail call void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #11
  br label %bb.e

.thread:                                          ; preds = %3, %bb.c, %select.unfold, %bb.c, %select.unfold, %bb.c, %select.unfold
  %.pr36 = phi i8 [ %.pr36.pre, %3 ], [ %i.d, %bb.c ], [ %.pr, %select.unfold ], [ %i.d, %bb.c ], [ %.pr, %select.unfold ], [ %i.d, %bb.c ], [ %.pr, %select.unfold ] ; 2 uses
  %.not = icmp eq i8 %.pr36, 3
  br i1 %.not, label %bb.d, label %.thread.thread

bb.d:                                             ; preds = %.thread
end_hunk_0
begin_hunk_1
  tail call void @_ZN6icu_7811FormattableC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g) #11
  br label %bb.e

.thread.thread:                                   ; preds = %select.unfold, %.thread
  %5 = phi i8 [ %.pr36, %.thread ], [ %.pr, %select.unfold ]
  switch i8 %5, label %_ZNK6icu_788message211Formattable7getTypeEv.exit23.thread [
    i8 0, label %_ZNK6icu_788message211Formattable7getTypeEv.exit23.thread41
    i8 1, label %_ZNK6icu_788message211Formattable7getTypeEv.exit23.thread45
    i8 2, label %_ZNK6icu_788message211Formattable7getTypeEv.exit23.thread47
end_hunk_1
