begin_hunk_0_@cli_md5_final
define dso_local void @cli_md5_final(ptr noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  %i.b = and i32 %i.a, 63
  %i.c = zext nneg i32 %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.e = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 -128, ptr %i.f, align 1, !tbaa !17
  %2 = xor i64 %i.c, 63                           ; 3 uses
  %3 = icmp samesign ult i64 %2, 8
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
