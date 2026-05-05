inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RNvXsO_NtCs1N9T06jgEdt_11arrow_array5typesINtB5_17GenericBinaryTypelENtB5_13ByteArrayType8validateCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr [4 x i8], ptr %i.h, i64 %i.f
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !noundef !10
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  store i64 %i.l, ptr %i.c, align 8
end_hunk_0
