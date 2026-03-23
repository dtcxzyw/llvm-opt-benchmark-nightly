begin_hunk_0
  %14 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %12 ; 2 uses
  %16 = load i64, ptr %4, align 8, !range !44
  %17 = trunc nuw i64 %16 to i1
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %19 = load i64, ptr %18, align 8
  br i1 %17, label %.split.us, label %.split
end_hunk_0
