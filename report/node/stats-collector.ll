begin_hunk_0
define hidden void @_ZN5cppgc8internal14StatsCollector23NotifySweepingCompletedENS_4Heap12SweepingTypeE(ptr noundef nonnull align 8 dereferenceable(336) initializes((89, 90), (178, 179)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0 = alloca { [6 x %"class.v8::base::TimeDelta"], [3 x i64] }, align 8 ; 4 uses
  %2 = alloca %"struct.cppgc::internal::MetricRecorder::GCCycle", align 8 ; 26 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89
  store i8 0, ptr %i.a, align 1
end_hunk_0
begin_hunk_1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i8 0, i64 72, i1 false)
  %i.e = atomicrmw add ptr @_ZZN5cppgc8internal14StatsCollector5EventC1EvE13epoch_counter, i64 1 seq_cst, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
end_hunk_1
begin_hunk_2
  %.sroa.101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %.sroa.101.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x i64> splat (i64 -1), ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
end_hunk_2
