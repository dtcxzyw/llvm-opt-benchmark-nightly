inline.NumInlined: 4003
inline.NumDeleted: 1574
begin_hunk_0_@_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCs2VbMhdeEr66_16delta_benchmarks:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3951)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3951, !noundef !11 ; 2 uses
  %i.n = add nuw i64 %1, 1                        ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.f
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
end_hunk_0
