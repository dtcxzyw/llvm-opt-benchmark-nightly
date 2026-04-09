inline.NumInlined: 1135
inline.NumDeleted: 586
begin_hunk_0_@_ZN5arrow6BufferC2EPKhlSt10shared_ptrINS_13MemoryManagerEES3_IS0_ESt8optionalINS_20DeviceAllocationTypeEE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(25) %i.af)
          to label %bb.h unwind label %bb.p, !inline_history !296

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EEC2INS0_9CPUDeviceEvEEPT_:bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(25) %1) #25, !inline_history !297
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EEC2INS0_9CPUDeviceEvEEPT_:bb.a
  store i32 1, ptr %i.n, align 4, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN5arrow9CPUDeviceELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.o, align 8, !tbaa !298
  store ptr %i.b, ptr %i.a, align 8, !tbaa !7
  %i.p = icmp eq ptr %1, null
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EEC2INS0_9CPUDeviceEvEEPT_:bb.a
  br i1 %i.v, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withINS0_9CPUDeviceES6_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.j:                                             ; preds = %bb.i, %_ZNKSt10__weak_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %1, ptr %i.q, align 8, !tbaa !301
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i3.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i3.i.i.i, label %bb.l, label %bb.k
end_hunk_3
begin_hunk_4_@_ZNSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EEC2INS0_9CPUDeviceEvEEPT_:bb.a
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #25, !inline_history !302
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNSt15_Sp_counted_ptrIPN5arrow9CPUDeviceELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN5arrow9CPUDeviceELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
!293 = !{!108, !46, i64 8}
!294 = !{!108, !59, i64 32}
!295 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!296 = distinct !{null}
!297 = distinct !{null, null}
!298 = !{!299, !300, i64 16}
!299 = !{!"_ZTSSt15_Sp_counted_ptrIPN5arrow9CPUDeviceELN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0, !300, i64 16}
!300 = !{!"p1 _ZTSN5arrow9CPUDeviceE", !10, i64 0}
!301 = !{!44, !39, i64 0}
!302 = distinct !{null, null, null, null, null}
end_hunk_6
