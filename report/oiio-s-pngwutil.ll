begin_hunk_0
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 508
  %13 = load i32, ptr %12, align 4, !tbaa !50     ; 15 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 626
  %15 = load i8, ptr %14, align 2, !tbaa !52      ; 3 uses
  %16 = icmp ugt i8 %15, 7
  %17 = zext nneg i8 %15 to i64                   ; 7 uses
  %18 = lshr i8 %15, 3
  %19 = zext nneg i8 %18 to i64                   ; 7 uses
  %20 = add i32 %13, 7
  %21 = lshr i32 %20, 3                           ; 3 uses
end_hunk_0
begin_hunk_1
  tail call void @png_write_finish_row(ptr noundef nonnull %0)
  %973 = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %974 = load i32, ptr %973, align 4, !tbaa !317, !alias.scope !314
  %975 = add i32 %974, 1                          ; 2 uses
  store i32 %975, ptr %973, align 4, !tbaa !317, !alias.scope !314
  %976 = getelementptr inbounds nuw i8, ptr %0, i64 672
  %977 = load i32, ptr %976, align 8, !tbaa !318, !alias.scope !314
end_hunk_1
