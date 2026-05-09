inline.NumInlined: 168
inline.NumDeleted: 41
begin_hunk_0_@append_ast_expr:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %i.e = select i1 %i.d, ptr @.str.2, ptr @.str.3
  %i.f = select i1 %i.d, i32 3, i32 2             ; 2 uses
  %i.g = icmp samesign ugt i32 %2, %i.f           ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

end_hunk_0
begin_hunk_1_@append_ast_expr:bb.a

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %3 = add nuw nsw i32 %i.f, 1                    ; 2 uses
  %.pre246 = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.p = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %.pre246, i32 noundef %3), !inline_history !22
  %i.q = icmp eq i32 %i.p, -1
end_hunk_1
