inline.NumInlined: 1245
inline.NumDeleted: 558
begin_hunk_0_@_ZN2v88internal8GCTracer18UpdateCurrentEventENS0_23GarbageCollectionReasonEPKc:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer10StartCycleENS0_16GarbageCollectorENS0_23GarbageCollectionReasonEPKcNS1_11MarkingTypeE(ptr noundef nonnull align 8 dereferenceable(6440) initializes((5078, 5079)) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8GCTracer10StartCycleENS0_16GarbageCollectorENS0_23GarbageCollectionReasonEPKcNS1_11MarkingTypeE:bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ %i.j, %bb.g ], [ %i.h, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1712) %i.k, ptr noundef nonnull align 8 dereferenceable(1712) %i.a, i64 1712, i1 false)
  %i.l = load ptr, ptr %0, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 59476
  %i.q = load atomic i32, ptr %i.p seq_cst, align 4
  store i32 %.0, ptr %i.a, align 8
  store i32 1, ptr %i.b, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN2v88internal8GCTracer10StartCycleENS0_16GarbageCollectorENS0_23GarbageCollectionReasonEPKcNS1_11MarkingTypeE:bb.a
  store i32 %i.q, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.r, i8 0, i64 18, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.s, i8 0, i64 144, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1356) %.sroa.13.0..sroa_idx, i8 0, i64 1356, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 20, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 0, i64 20, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1696
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  switch i32 %4, label %bb.l [
    i32 0, label %bb.i
    i32 1, label %bb.k
end_hunk_2
