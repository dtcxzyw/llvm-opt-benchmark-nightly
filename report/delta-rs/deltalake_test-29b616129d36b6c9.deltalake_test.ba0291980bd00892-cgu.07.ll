inline.NumInlined: 593
inline.NumDeleted: 280
begin_hunk_0_@_RINvMNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handleNtB3_6Handle13bind_new_taskNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EB1H_:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -1) i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECsfY7SmN0bPrO_14deltalake_test(ptr noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %2 = ptrtoint ptr %0 to i64                     ; 2 uses
  %3 = add i64 %1, %2
  %i.a = add i64 %3, -1
  %i.b = sub i64 0, %1
  %i.c = and i64 %i.a, %i.b
  %i.d = sub i64 %i.c, %2                         ; 2 uses
  %i.e = icmp ult i64 %i.d, %1
  tail call void @llvm.assume(i1 %i.e)
  ret i64 %i.d
end_hunk_0
begin_hunk_1_@_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.d = load i8, ptr %i.c, align 1, !noundef !3
  %i.e = icmp eq i8 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %2 = add i64 %i.g, %i.i
  %i.j = add i64 %2, 1
  store i64 %i.j, ptr %i.h, align 8
  %i.k = load i64, ptr %1, align 8, !noundef !3
  %i.l = add i64 %i.k, 1
end_hunk_1
begin_hunk_2_@_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesNtNtB13_2fs4FileEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:bb.a
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %3 = add i64 %i.g, 1
  store i64 %3, ptr %i.f, align 8
  br label %bb.c
}

end_hunk_2
