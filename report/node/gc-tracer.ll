inline.NumInlined: 1245
inline.NumDeleted: 558
begin_hunk_0_@_ZN2v88internal8GCTracer18UpdateCurrentEventENS0_23GarbageCollectionReasonEPKc:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer10StartCycleENS0_16GarbageCollectorENS0_23GarbageCollectionReasonEPKcNS1_11MarkingTypeE(ptr noundef nonnull align 8 dereferenceable(6440) initializes((5078, 5079)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.10 = alloca [21 x i8], align 1           ; 4 uses
  %.sroa.11 = alloca [150 x i8], align 2          ; 4 uses
  %.sroa.14 = alloca [24 x i8], align 4           ; 4 uses
  %.sroa.15 = alloca [24 x i8], align 4           ; 4 uses
  %.sroa.16 = alloca [24 x i8], align 4           ; 4 uses
  %.sroa.17 = alloca [24 x i8], align 4           ; 4 uses
  %.sroa.18 = alloca [24 x i8], align 4           ; 4 uses
  %.sroa.19 = alloca [24 x i8], align 4           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8GCTracer10StartCycleENS0_16GarbageCollectorENS0_23GarbageCollectionReasonEPKcNS1_11MarkingTypeE:bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ %i.j, %bb.g ], [ %i.h, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1712) %i.k, ptr noundef nonnull align 8 dereferenceable(1712) %i.a, i64 1712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  %i.l = load ptr, ptr %0, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 59476
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4
  %.sroa.10.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.sroa.10.3..sroa_idx, i8 0, i64 18, i1 false)
  %.sroa.11.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(144) %.sroa.11.6..sroa_idx, i8 0, i64 144, i1 false)
  %.sroa.14.4..ptr8.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.14.4..ptr8.1.i.sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.15.4..ptr8.2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.15.4..ptr8.2.i.sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.16.4..ptr8.3.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16.4..ptr8.3.i.sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.17.4..ptr8.4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.17.4..ptr8.4.i.sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.18.4..ptr8.5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.18.4..ptr8.5.i.sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.19.4..ptr8.6.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.19.4..ptr8.6.i.sroa_idx, i8 0, i64 20, i1 false)
  store i32 %.0, ptr %i.a, align 8
  store i32 1, ptr %i.b, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN2v88internal8GCTracer10StartCycleENS0_16GarbageCollectorENS0_23GarbageCollectionReasonEPKcNS1_11MarkingTypeE:bb.a
  store i32 %i.q, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, i64 21, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(150) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(150) %.sroa.11, i64 150, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1356) %.sroa.13.0..sroa_idx, i8 0, i64 1356, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.15, i64 24, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.17, i64 24, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.18.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.18, i64 24, i1 false)
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.19, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  switch i32 %4, label %bb.l [
    i32 0, label %bb.i
    i32 1, label %bb.k
end_hunk_2
