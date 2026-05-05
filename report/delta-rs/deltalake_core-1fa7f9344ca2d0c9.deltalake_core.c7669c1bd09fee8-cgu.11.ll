inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs3_NtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.062, i64 noundef %.sroa.6.061) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 12 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.q, label %.thread, label %bb.f

bb.k:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !2871, !noundef !3
  %i.t = icmp eq i8 %i.s, 35
end_hunk_1
