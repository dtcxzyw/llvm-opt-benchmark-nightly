inline.NumInlined: 243
inline.NumDeleted: 94
begin_hunk_0_@_ZN2v88internal10StackGuard23FetchAndClearInterruptsENS1_14InterruptLevelE:bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58672 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #6
  %2 = insertelement <12 x i32> poison, i32 %1, i64 0
  %3 = shufflevector <12 x i32> %2, <12 x i32> poison, <12 x i32> zeroinitializer
  %4 = icmp sgt <12 x i32> %3, <i32 -1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0>
  %i.c = bitcast <12 x i1> %4 to i12
  %i.d = zext i12 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE:bb.a
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 58672 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #6
  %26 = insertelement <12 x i32> poison, i32 %1, i64 0
  %27 = shufflevector <12 x i32> %26, <12 x i32> poison, <12 x i32> zeroinitializer
  %28 = icmp sgt <12 x i32> %27, <i32 -1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0>
  %i.ad = bitcast <12 x i1> %28 to i12
  %i.ae = zext i12 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 3 uses
end_hunk_1
