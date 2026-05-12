inline.NumInlined: 191
inline.NumDeleted: 52
begin_hunk_0_@_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 6 uses
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  switch i32 %0, label %.thread32 [
    i32 0, label %.thread.sink.split
end_hunk_0
begin_hunk_1_@_ZN10ODDLParser14ValueAllocator13allocPrimDataENS_5Value9ValueTypeEm:bb.a
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f
  %i.d = phi i64 [ %i.c, %bb.f ], [ %.sink, %.thread.sink.split ] ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #26 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i8 0, i64 %i.d, i1 false)
  br label %.thread32

.thread32:                                        ; preds = %bb.b, %bb.f, %.thread, %bb.a, %bb.a
end_hunk_1
