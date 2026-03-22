begin_hunk_0
  %14 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; [#uses=3 type=ptr]
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %12 ; [#uses=2 type=ptr]
  %16 = load i64, ptr %4, align 8, !range !44     ; [#uses=1 type=i64]
  %.fr42 = freeze i64 %16                         ; [#uses=1 type=i64]
  %17 = trunc i64 %.fr42 to i1                    ; [#uses=1 type=i1]
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; [#uses=1 type=ptr]
  %19 = load i64, ptr %18, align 8                ; [#uses=1 type=i64]
  br i1 %17, label %.split.us, label %.split
end_hunk_0
