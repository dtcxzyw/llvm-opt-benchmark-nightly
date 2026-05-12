inline.NumInlined: 193
inline.NumDeleted: 119
begin_hunk_0_@_ZN5folly6fibers5Baton4waitERNS1_14TimeoutHandlerE:bb.a
  %2 = alloca %"class.folly::fibers::Baton::FiberWaiter", align 8 ; 5 uses
  %3 = alloca %class.anon.29, align 8             ; 6 uses
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %class.anon.34, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %0, ptr %6, align 8, !tbaa !127
end_hunk_0
begin_hunk_1_@_ZN5folly6fibers5Baton4waitERNS1_14TimeoutHandlerE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.b, ptr %5, align 16, !tbaa !112
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !130
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !112
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvESt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.e, align 8, !tbaa !112
  store <2 x ptr> %i.g, ptr %i.c, align 16, !tbaa !112
  store ptr @"_ZNSt17_Function_handlerIFvvESt17reference_wrapperIZN5folly6fibers5Baton4waitERNS4_14TimeoutHandlerEE3$_0EE9_M_invokeERKSt9_Any_data", ptr %i.f, align 8, !tbaa !112
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %"_ZNSt8functionIFvvEEaSIZN5folly6fibers5Baton4waitERNS5_14TimeoutHandlerEE3$_0EERS1_St17reference_wrapperIT_E.exit", label %bb.b
end_hunk_1
begin_hunk_2_@llvm.smax.i64
!126 = distinct !{null, null, null, null, ptr @_ZN5folly6fibers5Baton9setWaiterERNS1_6WaiterE}
!127 = !{!128, !110, i64 0}
!128 = !{!"_ZTSZN5folly6fibers5Baton4waitERNS1_14TimeoutHandlerEE3$_0", !110, i64 0}
!129 = !{!9, !9, i64 0}
!130 = !{i64 0, i64 16, !129}
!131 = !{!132, !35, i64 96}
!132 = !{!"_ZTSN5folly6fibers5Baton14TimeoutHandlerE", !91, i64 0, !133, i64 64, !35, i64 96}
!133 = !{!"_ZTSSt8functionIFvvEE", !134, i64 0, !36, i64 24}
end_hunk_2
