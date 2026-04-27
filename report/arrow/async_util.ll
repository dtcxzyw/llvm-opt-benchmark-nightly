inline.NumInlined: 1792
inline.NumDeleted: 1060
begin_hunk_0_@_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
  br i1 %.not, label %bb.o, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.r = load i64, ptr %1, align 8, !tbaa !225    ; 5 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 8 uses
  store ptr null, ptr %1, align 8, !tbaa !225
  %i.t = invoke noundef zeroext i1 @_ZNK5arrow9StopToken15IsStopRequestedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
end_hunk_0
begin_hunk_1_@_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
_ZNSt11unique_lockISt5mutexE6unlockEv.exit.i:     ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %9 = icmp ne i64 %i.r, 0
  call void @llvm.assume(i1 %9)
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
end_hunk_1
begin_hunk_2_@_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
bb.av:                                            ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i
  %i.ca = load ptr, ptr %i.be, align 8, !tbaa !79
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25, !nonnull !102, !noundef !102
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl14OnTaskFinishedERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %bb.aw unwind label %bb.ag

end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlvE_ZZNSF_12DoSubmitTaskESL_ENSM_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlvE_ZZNSF_12DoSubmitTaskESL_ENSM_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISQ_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEEUlvE_ZZNS9_12DoSubmitTaskESF_ENSG_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit [
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEENUlvE_clEvEUlRKNS_6StatusEE_EEE6invokeES4_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25, !nonnull !102, !noundef !102
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225  ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow4util12_GLOBAL__N_19FifoQueue4PeekEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225, !nonnull !102, !noundef !102
  ret ptr %i.d
}

end_hunk_5
begin_hunk_6_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread

_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread: ; preds = %bb.x, %bb.y, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i23, %bb.g, %bb.f, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24
  %.pn13.pn.pn.pn68 = phi { ptr, i32 } [ %i.by, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24.thread69 ], [ %i.bz, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit24 ], [ %i.s, %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i23 ], [ %i.s, %bb.g ], [ %i.r, %bb.f ], [ %i.bx, %bb.y ], [ %i.bw, %bb.x ]
  %i.dk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit50

end_hunk_6
begin_hunk_7_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEEUlRKNS_6StatusEE_EEE6invokeES4_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25, !nonnull !102, !noundef !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157, !noalias !361 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
end_hunk_7
begin_hunk_8_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv:bb.a
bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %3, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25, !nonnull !102, !noundef !102
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.x, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit
end_hunk_8
begin_hunk_9_@_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNSF_13ContinueTasksEvENKSG_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISK_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvEUlvE_ZZNS9_13ContinueTasksEvENKSA_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISE_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit [
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEvENKUlvE_clEvEUlRKNS_6StatusEE_EEE6invokeES4_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25, !nonnull !102, !noundef !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157, !noalias !387 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
end_hunk_10
begin_hunk_11_@_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EclEv:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !400
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225, !noalias !400, !nonnull !102, !noundef !102 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !noalias !400
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !400
end_hunk_11
begin_hunk_12_@_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E9_M_invokeERKSt9_Any_data:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEZNKS0_6FutureINS1_5EmptyEE14TryAddCallbackIZZNS0_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvEUlvE_ZZZNSF_10SubmitTaskESL_ibENSM_clEvENKSN_clEvEUlRKNS0_6StatusEE_NSB_21WrapStatusyOnComplete8CallbackISR_EEEEbT_NS0_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK5arrow6FutureINS1_8internal5EmptyEE14TryAddCallbackIZZNS1_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEibENUlvE_clEvEUlvE_ZZZNS9_10SubmitTaskESF_ibENSG_clEvENKSH_clEvEUlRKNS1_6StatusEE_NS5_21WrapStatusyOnComplete8CallbackISL_EEEEbT_NS1_15CallbackOptionsEEUlvE_E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation.exit [
end_hunk_12
begin_hunk_13_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZZZNS_4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINSD_18AsyncTaskScheduler4TaskESt14default_deleteISI_EEibENUlvE_clEvENKUlvE_clEvEUlRKNS_6StatusEE_EEE6invokeES4_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25, !nonnull !102, !noundef !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157, !noalias !444 ; 9 uses
end_hunk_13
begin_hunk_14_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a
  %9 = alloca %"class.arrow::Future", align 16    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225, !nonnull !102, !noundef !102 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_14
begin_hunk_15_@llvm.smin.i32
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
end_hunk_15
