begin_hunk_0
define hidden void @_ZN2v88internal10MapUpdater29CompleteInobjectSlackTrackingEPNS0_7IsolateENS0_6TaggedINS0_3MapEEE(ptr noundef %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TransitionsAccessor", align 8 ; 8 uses
  %5 = alloca %"class.std::function", align 16    ; 12 uses
  %i.a = add i64 %1, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8 ; 3 uses
end_hunk_0
begin_hunk_1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.ar, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %"_ZNSt8functionIFvN2v88internal6TaggedINS1_3MapEEEEEaSIZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit", label %"_ZNSt8functionIFvN2v88internal6TaggedINS1_3MapEEEEEaSIZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit"

"_ZNSt8functionIFvN2v88internal6TaggedINS1_3MapEEEEEaSIZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit": ; preds = %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit
  %.sroa.0.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  store <4 x i32> %.sroa.0.0.vec.insert, ptr %5, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_0E9_M_invokeERKSt9_Any_dataOS4_", ptr %i.at, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

"_ZNSt8functionIFvN2v88internal6TaggedINS1_3MapEEEEEaSIZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_1EENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSD_.exit": ; preds = %_ZN2v88internal19TransitionsAccessorC2EPNS0_7IsolateENS0_6TaggedINS0_3MapEEEb.exit
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_3MapEEEEZNS1_10MapUpdater29CompleteInobjectSlackTrackingEPNS1_7IsolateES4_E3$_1E9_M_invokeERKSt9_Any_dataOS4_", ptr %i.av, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load ptr, ptr %i.ax, align 16           ; 2 uses
  %.not.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

end_hunk_2
