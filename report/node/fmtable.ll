inline.NumInlined: 158
inline.NumDeleted: 47
begin_hunk_0_@_ZN6icu_7811Formattable16setDecimalNumberENS_11StringPieceER10UErrorCode:bb.a
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %4, label %_ZN6icu_7811Formattable20adoptDecimalQuantityEPNS_6number4impl15DecimalQuantityE.exit

4:                                                ; preds = %bb.a
  tail call void @_ZN6icu_7811Formattable7disposeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %5 = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 72) #14 ; 5 uses
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb.b, label %7

7:                                                ; preds = %4
  tail call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %5) #14
  br label %bb.b

bb.b:                                             ; preds = %7, %4
  %i.c = tail call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #14 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.e, null
end_hunk_0
begin_hunk_1_@_ZN6icu_7811Formattable16setDecimalNumberENS_11StringPieceER10UErrorCode:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store ptr %5, ptr %i.d, align 8
  %i.j = tail call noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantity10fitsInLongEb(ptr noundef nonnull align 8 dereferenceable(66) %5, i1 noundef zeroext false) #14
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
end_hunk_1
