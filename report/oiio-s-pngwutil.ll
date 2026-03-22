begin_hunk_0
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 508 ; [#uses=1 type=ptr]
  %13 = load i32, ptr %12, align 4, !tbaa !50     ; [#uses=15 type=i32]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 626 ; [#uses=1 type=ptr]
  %15 = load i8, ptr %14, align 2, !tbaa !52      ; [#uses=3 type=i8]
  %16 = icmp ugt i8 %15, 7                        ; [#uses=1 type=i1]
  %17 = zext nneg i8 %15 to i64                   ; [#uses=7 type=i64]
  %18 = lshr i8 %15, 3                            ; [#uses=1 type=i8]
  %19 = zext nneg i8 %18 to i64                   ; [#uses=7 type=i64]
  %20 = add i32 %13, 7                            ; [#uses=1 type=i32]
  %21 = lshr i32 %20, 3                           ; [#uses=3 type=i32]
end_hunk_0
begin_hunk_1
  tail call void @png_write_finish_row(ptr noundef nonnull %0)
  %973 = getelementptr inbounds nuw i8, ptr %0, i64 676 ; [#uses=2 type=ptr]
  %974 = load i32, ptr %973, align 4, !tbaa !317, !alias.scope !314 ; [#uses=1 type=i32]
  %975 = add i32 %974, 1                          ; [#uses=2 type=i32]
  store i32 %975, ptr %973, align 4, !tbaa !317, !alias.scope !314
  %976 = getelementptr inbounds nuw i8, ptr %0, i64 672 ; [#uses=1 type=ptr]
  %977 = load i32, ptr %976, align 8, !tbaa !318, !alias.scope !314 ; [#uses=1 type=i32]
end_hunk_1
