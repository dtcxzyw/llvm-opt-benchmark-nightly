inline.NumInlined: 3570
inline.NumDeleted: 1632
begin_hunk_0
%"class.std::tuple.922" = type { %"struct.std::_Tuple_impl.923" }
%"struct.std::_Tuple_impl.923" = type { %"struct.std::_Head_base.926" }
%"struct.std::_Head_base.926" = type { ptr }
%union.anon.816 = type { ptr }
%"class.v8::base::TimeTicks" = type { %"class.v8::base::time_internal::TimeBase" }
%"class.v8::base::time_internal::TimeBase" = type { i64 }
%"class.v8::base::TimeDelta" = type { i64 }
%"struct.v8::internal::TickSample" = type { ptr, %union.anon.816, ptr, ptr, %"class.v8::base::TimeTicks", %"class.v8::base::TimeDelta", i16, i8, i16, i8, i8, %"class.std::optional.817", [255 x ptr] }
%"class.std::optional.817" = type { %"struct.std::_Optional_base.818" }
%"struct.std::_Optional_base.818" = type { %"struct.std::_Optional_payload.820" }
%"struct.std::_Optional_payload.820" = type { %"struct.std::_Optional_payload_base.base.822", [7 x i8] }
end_hunk_0
begin_hunk_1_@_ZN2v88internal12V8FileLogger18ProfilerBeginEventEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Profiler9DisengageEv(ptr noundef nonnull align 8 dereferenceable(270444) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0 = alloca { ptr, %union.anon.816, ptr, ptr, %"class.v8::base::TimeTicks", %"class.v8::base::TimeDelta" }, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58736
end_hunk_1
begin_hunk_2_@_ZN2v88internal8Profiler9DisengageEv:bb.a
  tail call void @_ZN2v84base6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l) #30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 270440
  store atomic volatile i32 0, ptr %i.m monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i8 0, i64 48, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 270392 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add nsw i32 %i.o, 1
end_hunk_2
begin_hunk_3_@_ZN2v88internal8Profiler9DisengageEv:bb.a
  %i.w = load i32, ptr %i.n, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [2112 x i8], ptr %i.v, i64 %i.x ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i16 5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 50
end_hunk_3
begin_hunk_4_@_ZN2v88internal8Profiler9DisengageEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8Profiler6InsertEPNS0_10TickSampleE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

end_hunk_4
begin_hunk_5_@_ZN2v88internal12V8FileLogger20UncheckedStringEventEPKcS3_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Profiler3RunEv(ptr noundef nonnull align 8 dereferenceable(270444) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::TickSample", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2112) %1, i8 0, i64 48, i1 false)
  store i16 5, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 0, ptr %3, align 2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i16 0, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 0, ptr %5, align 2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 55
  store i8 1, ptr %6, align 1
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 270408 ; 2 uses
  tail call void @_ZN2v84base9Semaphore4WaitEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
end_hunk_5
