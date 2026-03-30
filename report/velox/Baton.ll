begin_hunk_0
  %2 = alloca %"class.folly::fibers::Baton::FiberWaiter", align 8 ; 5 uses
  %3 = alloca %class.anon.29, align 8             ; 6 uses
  %4 = alloca %class.anon, align 1                ; 3 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %class.anon.34, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %0, ptr %6, align 8, !tbaa !125
end_hunk_0
begin_hunk_1
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.b, ptr %5, align 16, !tbaa !112
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %5, align 16, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !128
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !tbaa !127
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
begin_hunk_2
!124 = !{i64 8}
!125 = !{!126, !110, i64 0}
!126 = !{!"_ZTSZN5folly6fibers5Baton4waitERNS1_14TimeoutHandlerEE3$_0", !110, i64 0}
!127 = !{!9, !9, i64 0}
!128 = !{i64 0, i64 16, !127}
!129 = !{!130, !35, i64 96}
!130 = !{!"_ZTSN5folly6fibers5Baton14TimeoutHandlerE", !91, i64 0, !131, i64 64, !35, i64 96}
!131 = !{!"_ZTSSt8functionIFvvEE", !132, i64 0, !36, i64 24}
end_hunk_2
