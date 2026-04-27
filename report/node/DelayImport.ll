inline.NumInlined: 2430
inline.NumDeleted: 705
begin_hunk_0_@_ZN4LIEF2PE11DelayImportC2ERKS1_:bb.a

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE16DelayImportEntryESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %2 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #25 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.am, align 8
  store ptr %2, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  store ptr %i.ba, ptr %i.az, align 8
  %.pre = load ptr, ptr %i.aq, align 8, !noalias !4 ; 3 uses
  %.pre27 = load ptr, ptr %i.as, align 8, !noalias !7 ; 2 uses
end_hunk_0
