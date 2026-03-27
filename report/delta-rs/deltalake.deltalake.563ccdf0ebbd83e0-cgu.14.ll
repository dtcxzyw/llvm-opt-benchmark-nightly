begin_hunk_0
define internal void @_RNvMsl_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_13PrimitiveType24___pymethod___richcmp____(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 21 uses
  %i.c = alloca [64 x i8], align 8                ; 14 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [64 x i8], align 8                ; 14 uses
end_hunk_0
begin_hunk_1
  unreachable

bb.r:                                             ; preds = %bb.i
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 2, ptr %4, align 1
  store i8 0, ptr %i.b, align 8
  %.sroa.04.1.extract.shift.i87 = lshr i24 %.sroa.036.0.copyload, 8
  %.sroa.04.1.extract.trunc.i88 = trunc i24 %.sroa.04.1.extract.shift.i87 to i8
  %.sroa.04.2.extract.shift.i89 = lshr i24 %.sroa.036.0.copyload, 16
end_hunk_1
begin_hunk_2
  br i1 %i.af, label %bb.t, label %.thread94

bb.s:                                             ; preds = %bb.i
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 3, ptr %5, align 1
  store i8 0, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6422)
  call void @llvm.experimental.noalias.scope.decl(metadata !6421)
  %.sroa.04.1.extract.shift.i = lshr i24 %.sroa.036.0.copyload, 8
end_hunk_2
