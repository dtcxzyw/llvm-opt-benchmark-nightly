inline.NumInlined: 8537
inline.NumDeleted: 3636
begin_hunk_0_@_ZN8facebook5velox10createTypeILNS0_8TypeKindE31EEESt10shared_ptrIKNS0_4TypeEEOSt6vectorIS6_SaIS6_EE:bb.a
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1023", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::shared_ptr.317", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10createTypeILNS0_8TypeKindE31EEESt10shared_ptrIKNS0_4TypeEEOSt6vectorIS6_SaIS6_EE:bb.a
          to label %_ZNSt12__shared_ptrIKN8facebook5velox7MapTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.x

_ZNSt12__shared_ptrIKN8facebook5velox7MapTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit14
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load <2 x ptr>, ptr %4, align 16, !tbaa !47
  store ptr null, ptr %7, align 8, !tbaa !99
  store <2 x ptr> %i.aj, ptr %0, align 8, !tbaa !47
  store ptr null, ptr %4, align 16, !tbaa !653
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_117MapParametricType6createERKSt6vectorINS0_13TypeParameterESaIS4_EE:bb.a
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.804", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::shared_ptr.317", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_117MapParametricType6createERKSt6vectorINS0_13TypeParameterESaIS4_EE:bb.a
          to label %_ZNSt12__shared_ptrIKN8facebook5velox7MapTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.af

_ZNSt12__shared_ptrIKN8facebook5velox7MapTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit16
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load <2 x ptr>, ptr %4, align 16, !tbaa !47
  store ptr null, ptr %7, align 8, !tbaa !99
  store <2 x ptr> %i.an, ptr %0, align 8, !tbaa !47
  store ptr null, ptr %4, align 16, !tbaa !653
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !99 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t
end_hunk_3
