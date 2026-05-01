inline.NumInlined: 7892
inline.NumDeleted: 3175
begin_hunk_0_@_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateE:bb.a
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 10 uses
  %6 = alloca %"class.std::function", align 8     ; 7 uses
  %7 = alloca %"class.std::function", align 8     ; 7 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateE:bb.a
  br i1 %i.de, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.m
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.n

end_hunk_1
begin_hunk_2_@_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateE:bb.a
  br i1 %.not77, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.df, align 8
  store ptr @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask28CreateFillerFreeSpaceHandlerEPNS0_4HeapEmmb, ptr %6, align 8
  store ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E9_M_invokeERKSt9_Any_dataOS3_OmSB_Ob, ptr %9, align 8
  store ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %8, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fg = call noundef i64 @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask9SweepPageESt8functionIFvPNS0_4HeapEmmbEEPNS0_11MemoryChunkEPNS0_12PageMetadataERSt6vectorISt4pairImmESaISF_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %6, ptr nonnull poison, ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.ff) ; 0 uses
  %i.fh = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i48 = icmp eq ptr %i.fh, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.w

end_hunk_2
begin_hunk_3_@_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask3RunEPNS_11JobDelegateE:bb.a
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj) #26
  store i64 0, ptr %i.di, align 8
  store ptr @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask29AddToFreeListFreeSpaceHandlerEPNS0_4HeapEmmb, ptr %7, align 8
  store ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E9_M_invokeERKSt9_Any_dataOS3_OmSB_Ob, ptr %i.dh, align 8
  store ptr @_ZNSt17_Function_handlerIFvPN2v88internal4HeapEmmbEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.dg, align 8
  %i.fk = load ptr, ptr %i.dd, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = call noundef i64 @_ZN2v88internal18ScavengerCollector22QuarantinedPageSweeper7JobTask9SweepPageESt8functionIFvPNS0_4HeapEmmbEEPNS0_11MemoryChunkEPNS0_12PageMetadataERSt6vectorISt4pairImmESaISF_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %7, ptr nonnull poison, ptr noundef nonnull %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.fl)
  %i.fn = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not.i49 = icmp eq ptr %i.fn, null
  br i1 %.not.i49, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.y

end_hunk_3
