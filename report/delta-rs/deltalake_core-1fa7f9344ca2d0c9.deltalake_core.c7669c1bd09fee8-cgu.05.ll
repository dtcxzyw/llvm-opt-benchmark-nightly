inline.NumInlined: 6802
inline.NumDeleted: 1969
begin_hunk_0_@_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_array0B8_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17815)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17818, !noundef !9 ; 2 uses
  %i.o = add nuw i64 %.0.val, 1                   ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.g
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
end_hunk_0
begin_hunk_1_@_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arrays2_0B8_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17828)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17831, !noundef !9 ; 2 uses
  %i.o = add nuw i64 %.0.val, 1                   ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.g
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
end_hunk_1
begin_hunk_2_@_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arrays3_0B8_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17838)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17841, !noundef !9 ; 2 uses
  %i.o = add nuw i64 %.0.val, 1                   ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.g
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
end_hunk_2
begin_hunk_3_@_RNCNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB4_9ScalarExt10from_arrays_0B8_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17854)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !17857, !noundef !9 ; 2 uses
  %i.o = add nuw i64 %.0.val, 1                   ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.g
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCs14kWLkQVSKO_14deltalake_core:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19302)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19302, !noundef !9 ; 2 uses
  %i.n = add nuw i64 %1, 1                        ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.f
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypexEE5valueCs14kWLkQVSKO_14deltalake_core:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19305)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19305, !noundef !9 ; 2 uses
  %i.n = add nuw i64 %1, 1                        ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.f
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
end_hunk_5
begin_hunk_6_@_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !22867, !noundef !9
  %i.f = lshr i64 %i.e, 2
  %i.g = add nuw i64 %1, 1                        ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
end_hunk_6
