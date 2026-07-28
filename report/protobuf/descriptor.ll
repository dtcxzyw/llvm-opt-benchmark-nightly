inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN6google8protobuf14DescriptorPoolD2Ev:bb.a
bb.h:                                             ; preds = %.noexc.i.i.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #42
  unreachable

_ZNKSt14default_deleteIN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseES_ISB_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SD_EEEEEclEPSM_.exit.i: ; preds = %.noexc.i.i.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 32) #41
  br label %_ZNSt10unique_ptrIN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ES_IN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISA_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SD_EEEESB_ISM_EED2Ev.exit

_ZNSt10unique_ptrIN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ES_IN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISA_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SD_EEEESB_ISM_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4absl12lts_2025051212AnyInvocableIKFvNS1_11FunctionRefIFvvEEEEEESt14default_deleteIS7_EED2Ev.exit, %_ZNKSt14default_deleteIN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseES_ISB_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SD_EEEEEclEPSM_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf14DescriptorPool31InternalDontEnforceDependenciesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((64, 65)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 8, !tbaa !606
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf14DescriptorPool18AddDirectInputFileESt17basic_string_viewIcSt11char_traitsIcEEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::pair.1158", align 8   ; 6 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESD_INSH_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1158") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !633, !range !49, !alias.scope !636, !noundef !51
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEEixISt17basic_string_viewIcS7_ESA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISF_EPT_RSN_EclL_ZSt7declvalIRSF_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !636 ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %5, align 8, !tbaa !19, !noalias !636 ; 5 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !636 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16 ; 3 uses
  store ptr %i.g, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !16
  %i.h = icmp eq ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  %i.i = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.i, %i.h
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.271) #44
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !636
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.a, align 8, !tbaa !19, !noalias !636
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %.sroa.2.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !20
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !636
  store i64 %i.l, ptr %i.g, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESM_IJEEEEEvNSH_8iteratorEDpOT_.exit.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !22
  store i8 %i.n, ptr %i.m, align 1, !tbaa !22
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESM_IJEEEEEvNSH_8iteratorEDpOT_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESM_IJEEEEEvNSH_8iteratorEDpOT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESM_IJEEEEEvNSH_8iteratorEDpOT_.exit.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !636 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = load ptr, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !636
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32
  store i8 0, ptr %i.s, align 8, !tbaa !637
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEEixISt17basic_string_viewIcS7_ESA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISF_EPT_RSN_EclL_ZSt7declvalIRSF_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEEixISt17basic_string_viewIcS7_ESA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISF_EPT_RSN_EclL_ZSt7declvalIRSF_EDTcl9__declvalISN_ELi0EEEvEEEEERKSN_.exit: ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKSt17basic_string_viewIcS7_EEESM_IJEEEEEvNSH_8iteratorEDpOT_.exit.i.i.i
  %i.t = zext i1 %3 to i8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  store i8 %i.t, ptr %i.u, align 1, !tbaa !639
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool35IsReadyForCheckingDescriptorExtDeclESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.a = alloca [9 x ptr], align 8                ; 5 uses
  %4 = alloca %"struct.absl::lts_20250512::container_internal::StringHash", align 1 ; 4 uses
  %5 = alloca %"struct.absl::lts_20250512::container_internal::StringEq", align 1 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = load atomic i8, ptr @_ZGVZNK6google8protobuf14DescriptorPool35IsReadyForCheckingDescriptorExtDeclESt17basic_string_viewIcSt11char_traitsIcEEE16kDescriptorTypesB5cxx11 acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f, !prof !640

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool35IsReadyForCheckingDescriptorExtDeclESt17basic_string_viewIcSt11char_traitsIcEEE16kDescriptorTypesB5cxx11) #40
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @constinit, i64 72, i1 false), !tbaa.struct !641
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  invoke void @_ZN4absl12lts_2025051213flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18container_internal10StringHashENS8_8StringEqESaIS7_EECI2NS8_12raw_hash_setINS8_17FlatHashSetPolicyIS7_EES9_SA_SB_EEIPKcTnNSt9enable_ifIXntsr3std7is_sameIT_S7_EE5valueEiE4typeELi0ETnNSI_IXsr10InsertableISJ_EE5valueEiE4typeELi0EEESt16initializer_listISJ_EmRKS9_RKSA_RKSB_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr nonnull %i.a, i64 9, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  store ptr %i.f, ptr @_ZZNK6google8protobuf14DescriptorPool35IsReadyForCheckingDescriptorExtDeclESt17basic_string_viewIcSt11char_traitsIcEEE16kDescriptorTypesB5cxx11, align 8, !tbaa !642
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool35IsReadyForCheckingDescriptorExtDeclESt17basic_string_viewIcSt11char_traitsIcEEE16kDescriptorTypesB5cxx11) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.g = load ptr, ptr @_ZZNK6google8protobuf14DescriptorPool35IsReadyForCheckingDescriptorExtDeclESt17basic_string_viewIcSt11char_traitsIcEEE16kDescriptorTypesB5cxx11, align 8, !tbaa !642, !nonnull !51, !align !644
  %i.h = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = icmp ne ptr %i.i, null
  ret i1 %i.j

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.k, %bb.g ]
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK6google8protobuf14DescriptorPool35IsReadyForCheckingDescriptorExtDeclESt17basic_string_viewIcSt11char_traitsIcEEE16kDescriptorTypesB5cxx11) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051213flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18container_internal10StringHashENS8_8StringEqESaIS7_EECI2NS8_12raw_hash_setINS8_17FlatHashSetPolicyIS7_EES9_SA_SB_EEIPKcTnNSt9enable_ifIXntsr3std7is_sameIT_S7_EE5valueEiE4typeELi0ETnNSI_IXsr10InsertableISJ_EE5valueEiE4typeELi0EEESt16initializer_listISJ_EmRKS9_RKSA_RKSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.idx.i = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.d = lshr i64 -2305843009213693952, %i.c
  %i.e = icmp ugt i64 %2, %i.d
  %.neg.i.i.i.i = sext i1 %i.e to i64
  %i.f = add nsw i64 %i.c, %.neg.i.i.i.i
  %i.g = lshr i64 -1, %i.f
  br label %bb.d

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.i.i: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0.i.ph.i.i = phi i64 [ %i.g, %bb.c ], [ %3, %bb.a ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i12.i.i, align 8
  tail call void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %.0.i.ph.i.i)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i: ; preds = %bb.d, %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.i.i
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIPKPKcEEvT_SK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %i.a)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2IPKcTnNSt9enable_ifIXntsr3std7is_sameIT_S9_EE5valueEiE4typeELi0ETnNSI_IXsr10InsertableISJ_EE5valueEiE4typeELi0EEESt16initializer_listISJ_EmRKSB_RKSC_RKSD_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #40
  resume { ptr, i32 } %i.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2IPKcTnNSt9enable_ifIXntsr3std7is_sameIT_S9_EE5valueEiE4typeELi0ETnNSI_IXsr10InsertableISJ_EE5valueEiE4typeELi0EEESt16initializer_listISJ_EmRKSB_RKSC_RKSD_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEC2EmRKSB_RKSC_RKSD_.exit.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf14DescriptorPool21ClearDirectInputFilesEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.785, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr %i.a, ptr %1, align 8, !tbaa !623
  call void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 40, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_bEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.d = icmp ult i64 %i.b, 128
  call void @_ZN4absl12lts_2025051218container_internal17ClearBackingArrayERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPvbb(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i1 noundef zeroext %i.d, i1 noundef zeroext false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE5clearEv.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_bEEE5clearEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf14DescriptorPool20InternalIsFileLoadedESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::MutexLockMaybe", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit

_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = invoke noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %i.d, i64 %1, ptr %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  br i1 %.not.i, label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #42
  unreachable

_ZN4absl12lts_2025051214MutexLockMaybeD2Ev.exit:  ; preds = %bb.c, %bb.d
  %i.h = icmp ne ptr %i.e, null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret i1 %i.h

bb.f:                                             ; preds = %_ZN4absl12lts_2025051214MutexLockMaybeC2EPNS0_5MutexE.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051214MutexLockMaybeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6google8protobuf14DescriptorPool6Tables8FindFileESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 %1, ptr %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.val18.val.i.fr.i.i = freeze i64 %1            ; 8 uses
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %.val.i.i, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !79
  %.not.i.i.i.i = icmp ult i64 %.val.i.i.i, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.val4.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !166
  %i.f = getelementptr i8, ptr %.val4.i.i.i, i64 8
  %.val4.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !167 ; 2 uses
  %.val4.val.val.i.i.i = load ptr, ptr %.val4.val.i.i.i, align 8, !tbaa !20
  %i.g = getelementptr i8, ptr %.val4.val.i.i.i, i64 8
  %.val4.val.val6.i.i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.h = icmp eq i64 %.val4.val.val6.i.i.i, %.val18.val.i.fr.i.i
  br i1 %i.h, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %.val18.val.i.fr.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val4.val.val.i.i.i, ptr readonly %2, i64 %.val18.val.i.fr.i.i)
  %i.j = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEEvE5applyINS1_12raw_hash_setIS9_NS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSD_19DescriptorsByNameEqIS6_EESaIS8_EE12EqualElementISt17basic_string_viewIcSt11char_traitsIcEEEEJRS8_ES9_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE4findISt17basic_string_viewIcSt11char_traitsIcEEEENSG_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %.val6.i.i = load ptr, ptr %i.k, align 8, !tbaa !22
  tail call void @llvm.prefetch.p0(ptr readonly %.val6.i.i, i32 0, i32 1, i32 1)
  %i.l = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %2, i64 noundef %.val18.val.i.fr.i.i)
  %i.m = add i64 %.val18.val.i.fr.i.i, 87
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load i64, ptr %i.o, align 8, !tbaa !79, !noalias !645
  %i.q = and i64 %i.p, 65535
  %i.r = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !645 ; 4 uses
  %i.s = lshr i64 %i.n, 7
  %i.t = xor i64 %i.q, %i.s                       ; 2 uses
  %i.u = trunc i64 %i.n to i8
  %i.v = and i8 %i.u, 127
  %.val15.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !22 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val14.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !22 ; 5 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.z = icmp eq i64 %.val18.val.i.fr.i.i, 0
  br i1 %i.z, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.f
  %.pn.i9.us.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.t, %bb.e ]
  %.sroa.13.0.i.us.i.i = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us.i.i = and i64 %.pn.i9.us.i.i, %i.r ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i, i64 %.sroa.6.0.i.us.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val15.i.i.i, i64 %.sroa.6.0.i.us.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !22 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.y, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not53.i.us.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not53.i.us.i.i, label %._crit_edge.i.us.i.i, label %.lr.ph.i.us.us.i.i

._crit_edge.i.us.i.i:                             ; preds = %bb.g, %.split.us.i.i
  %i.af = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %.not50.i.us.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not50.i.us.i.i, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf14FileDescriptorEEENS5_12_GLOBAL__N_121DescriptorsByNameHashIS6_EENSA_19DescriptorsByNameEqIS6_EESaIS8_EE10find_largeISt17basic_string_viewIcSt11char_traitsIcEEEENSG_8iteratorERKT_m.exit.i.i, !prof !163

bb.f:                                             ; preds = %._crit_edge.i.us.i.i
  %i.ah = add i64 %.sroa.13.0.i.us.i.i, 16        ; 2 uses
  %i.ai = add i64 %i.ah, %.sroa.6.0.i.us.i.i
  br label %.split.us.i.i, !llvm.loop !648

.lr.ph.i.us.us.i.i:                               ; preds = %.split.us.i.i, %bb.g
  %.sroa.024.054.i.us.us.i.i = phi i16 [ %i.as, %bb.g ], [ %i.ae, %.split.us.i.i ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.024.054.i.us.us.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.6.0.i.us.i.i, %i.ak
  %i.am = and i64 %i.al, %i.r                     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf14FileDescriptor22DebugStringWithOptionsB5cxx11ERKNS0_18DebugStringOptionsE:_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %bb.l
  %i.bm = load i64, ptr %i.al, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #41
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit134

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit134: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40
  br label %bb.ad

bb.m:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter14AddPostCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %17, ptr noundef nonnull %0)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %bb.n
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !22
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !101 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bv, %i.bx
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.by = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !22
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %i.bx
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !101
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !106
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.o, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !22
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #40
  %i.cw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.cw, ptr %22, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !23
  store i8 0, ptr %i.cw, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 0, ptr %i.db, align 8, !tbaa !23
  store i8 0, ptr %i.da, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 4 uses
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 64
  store i64 0, ptr %i.de, align 8, !tbaa !23
  store i8 0, ptr %i.dd, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dg, ptr noundef nonnull readonly align 1 dereferenceable(3) %2, i64 3, i1 false), !tbaa.struct !955
  %i.dh = getelementptr inbounds nuw i8, ptr %21, i64 120 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 136 ; 6 uses
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 128
  store i64 0, ptr %i.dj, align 8, !tbaa !23
  store i8 0, ptr %i.di, align 8, !tbaa !22
  %i.dk = load i8, ptr %2, align 1, !tbaa !947, !range !49, !noundef !51
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.p, label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i
  store i8 0, ptr %21, align 8, !tbaa !956
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.dm = invoke noundef zeroext i1 @_ZNK6google8protobuf14FileDescriptor17GetSourceLocationERKSt6vectorIiSaIiEEPNS0_14SourceLocationE(ptr noundef nonnull readonly align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %i.cy)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !20 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.di
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142: ; preds = %bb.q
  %i.dq = load i64, ptr %i.di, align 8, !tbaa !22
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142
  call void @_ZN6google8protobuf14SourceLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.cy) #40
  %i.ds = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.cw
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  %i.du = zext i1 %i.dm to i8
  %.pre = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  store i8 %i.du, ptr %21, align 8, !tbaa !956
  %i.dv = icmp eq ptr %.pre, %i.cw
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.r
  %i.dw = load i64, ptr %i.cw, align 8, !tbaa !22
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.r, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %21, ptr noundef nonnull %0)
          to label %bb.s unwind label %bb.af

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !871 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !864 ; 2 uses
  %i.ec = sext i32 %i.eb to i64                   ; 3 uses
  %.idx = shl nsw i64 %i.ec, 2
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %.idx
  %i.ee = icmp eq i32 %i.eb, 0
  br i1 %i.ee, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEC2EmRKS7_RKS9_RKSA_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true) ; 2 uses
  %i.eg = lshr i64 -2305843009213693952, %i.ef
  %i.eh = icmp ult i64 %i.eg, %i.ec
  %.neg.i.i.i.i = sext i1 %i.eh to i64
  %i.ei = add nsw i64 %i.ef, %.neg.i.i.i.i        ; 2 uses
  store i64 1, ptr %23, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.not453 = icmp eq i64 %i.ei, 63
  br i1 %.not453, label %.lr.ph.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = lshr i64 -1, %i.ei
  invoke void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ej)
          to label %.lr.ph.i.i.i unwind label %bb.ag

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEC2EmRKS7_RKS9_RKSA_.exit.i.i: ; preds = %bb.s
  store i64 1, ptr %23, align 8
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 8
  br label %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.u, %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i ], [ %i.eo, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.373") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 4 dereferenceable(4) %.06.i.i.i)
          to label %.noexc.i.i149 unwind label %bb.x

.noexc.i.i149:                                    ; preds = %bb.v
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !977, !range !49, !alias.scope !980, !noundef !51
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.w, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i

bb.w:                                             ; preds = %.noexc.i.i149
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !980
  %i.en = load i32, ptr %.06.i.i.i, align 4, !tbaa !3, !noalias !980
  store i32 %i.en, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i: ; preds = %bb.w, %.noexc.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  %i.eo = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.eo, %i.ed
  br i1 %.not.i10.i.i, label %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit, label %bb.v, !llvm.loop !981

bb.x:                                             ; preds = %bb.v
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #40
  br label %.body151

_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEC2EmRKS7_RKS9_RKSA_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !874 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.et = load i32, ptr %i.es, align 8, !tbaa !870 ; 2 uses
  %i.eu = sext i32 %i.et to i64                   ; 3 uses
  %.idx454 = shl nsw i64 %i.eu, 2
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %.idx454
  %i.ew = icmp eq i32 %i.et, 0
  br i1 %i.ew, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEC2EmRKS7_RKS9_RKSA_.exit.i.i155, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit
  %i.ex = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true) ; 2 uses
  %i.ey = lshr i64 -2305843009213693952, %i.ex
  %i.ez = icmp ult i64 %i.ey, %i.eu
  %.neg.i.i.i.i153 = sext i1 %i.ez to i64
  %i.fa = add nsw i64 %i.ex, %.neg.i.i.i.i153     ; 2 uses
  store i64 1, ptr %24, align 8
  %.sroa.4.0..sroa_idx.i.i.i154 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i154, align 8
  %.not455 = icmp eq i64 %i.fa, 63
  br i1 %.not455, label %.lr.ph.i.i.i157, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = lshr i64 -1, %i.fa
  invoke void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.fb)
          to label %.lr.ph.i.i.i157 unwind label %bb.ah

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEC2EmRKS7_RKS9_RKSA_.exit.i.i155: ; preds = %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit
  store i64 1, ptr %24, align 8
  %.sroa.4.0..sroa_idx.i12.i.i165 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i12.i.i165, align 8
  br label %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit169

.lr.ph.i.i.i157:                                  ; preds = %bb.z, %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i158 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i161, %.lr.ph.i.i.i157
  %.06.i.i.i159 = phi ptr [ %i.er, %.lr.ph.i.i.i157 ], [ %i.fg, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i161 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.373") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(4) %.06.i.i.i159)
          to label %.noexc.i.i160 unwind label %bb.ac

.noexc.i.i160:                                    ; preds = %bb.aa
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !977, !range !49, !alias.scope !997, !noundef !51
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ab, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i161

bb.ab:                                            ; preds = %.noexc.i.i160
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i163 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i158, align 8, !alias.scope !997
  %i.ff = load i32, ptr %.06.i.i.i159, align 4, !tbaa !3, !noalias !997
  store i32 %i.ff, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i163, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i161

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i161: ; preds = %bb.ab, %.noexc.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i159, i64 4 ; 2 uses
  %.not.i10.i.i162 = icmp eq ptr %i.fg, %i.ev
  br i1 %.not.i10.i.i162, label %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit169, label %bb.aa, !llvm.loop !981

bb.ac:                                            ; preds = %bb.aa
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #40
  br label %.body167

_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit169: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE7emplaceIJRiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSB_8iteratorEbEDpOSF_.exit.i.i.i161, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEC2EmRKS7_RKS9_RKSA_.exit.i.i155
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !863
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph, label %.preheader476

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit169
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ai

.preheader476:                                    ; preds = %bb.bn, %_ZN4absl12lts_2025051213flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEES4_S6_S7_EEIPiEET_SE_mRKS4_RKS6_RKS7_.exit169
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !873
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph488, label %._crit_edge

.lr.ph488:                                        ; preds = %.preheader476
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bo

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.g
  %.pn80 = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.bj, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit134 ]
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinterD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %17) #40
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn80.pn = phi { ptr, i32 } [ %.pn80, %bb.ad ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 4) #41
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

_ZNSt6vectorIiSaIiEED2Ev.exit171:                 ; preds = %.thread651, %bb.ae
  %.pn80.pn.pn654 = phi { ptr, i32 } [ %i.y, %.thread651 ], [ %.pn80.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.em

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143
  %i.gb = load i64, ptr %i.cw, align 8, !tbaa !22
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.gc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40
  br label %bb.el

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ag:                                            ; preds = %bb.u
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body151

bb.ah:                                            ; preds = %bb.z
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body167

bb.ai:                                            ; preds = %.lr.ph, %bb.bn
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bn ] ; 10 uses
  %i.gg = load i64, ptr %23, align 8, !tbaa !73   ; 4 uses
  %i.gh = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp ult i64 %i.gg, 2
  br i1 %i.gi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gj = load i64, ptr %i.fm, align 8, !tbaa !79
  %.not.i.i.i.i.i176 = icmp ugt i64 %i.gj, 131071
  %i.gk = load i32, ptr %i.fl, align 8
  %i.gl = zext i32 %i.gk to i64
  %i.gm = icmp eq i64 %indvars.iv, %i.gl
  %or.cond = select i1 %.not.i.i.i.i.i176, i1 %i.gm, i1 false
  br i1 %or.cond, label %bb.ao, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %i.gn = load ptr, ptr %i.fl, align 8, !tbaa !22 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.gn, i32 0, i32 1, i32 1)
  %i.go = xor i64 %indvars.iv, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gp = mul i64 %i.go, -2543921745674291987
  %i.gq = call noundef i64 @llvm.bswap.i64(i64 %i.gp) ; 2 uses
  %i.gr = load i64, ptr %i.fm, align 8, !tbaa !79, !noalias !998
  %i.gs = and i64 %i.gr, 65535
  %i.gt = lshr i64 %i.gq, 7
  %i.gu = xor i64 %i.gs, %i.gt
  %i.gv = trunc i64 %i.gq to i8
  %i.gw = and i8 %i.gv, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.fn, align 8, !tbaa !22 ; 2 uses
  %i.gx = insertelement <16 x i8> poison, i8 %i.gw, i64 0
  %i.gy = shufflevector <16 x i8> %i.gx, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.pn.i6.i.i.i = phi i64 [ %i.gu, %bb.ak ], [ %i.hr, %bb.an ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.ak ], [ %i.hq, %bb.an ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.gg ; 4 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.gz, i32 0, i32 3, i32 1)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sroa.6.0.i.i.i.i
  %i.hb = load <16 x i8>, ptr %i.ha, align 1, !tbaa !22 ; 2 uses
  %i.hc = icmp eq <16 x i8> %i.gy, %i.hb
  %i.hd = bitcast <16 x i1> %i.hc to i16          ; 2 uses
  %.not46.i.i.i.i = icmp eq i16 %i.hd, 0
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.am
  %.sroa.017.047.i.i.i.i = phi i16 [ %i.hn, %bb.am ], [ %i.hd, %bb.al ] ; 3 uses
  %i.he = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i, i1 true)
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = add i64 %.sroa.6.0.i.i.i.i, %i.hf
  %i.hh = and i64 %i.hg, %i.gg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp eq i64 %indvars.iv, %i.hk
  br i1 %i.hl, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit, label %bb.am, !prof !322

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hm = add i16 %.sroa.017.047.i.i.i.i, -1
  %i.hn = and i16 %i.hm, %.sroa.017.047.i.i.i.i   ; 2 uses
  %.not.i.i.i.i175 = icmp eq i16 %i.hn, 0
  br i1 %.not.i.i.i.i175, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.am, %bb.al
  %i.ho = icmp eq <16 x i8> %i.hb, splat (i8 -128)
  %i.hp = bitcast <16 x i1> %i.ho to i16
  %.not43.i.i.i.i = icmp eq i16 %i.hp, 0
  br i1 %.not43.i.i.i.i, label %bb.an, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread, !prof !163

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hq = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.hr = add i64 %i.hq, %.sroa.6.0.i.i.i.i
  br label %bb.al, !llvm.loop !1001

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit: ; preds = %.lr.ph.i.i.i.i
  %.not457 = icmp eq ptr %i.gn, null
  br i1 %.not457, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread, label %bb.ao

end_hunk_1
begin_hunk_2_@_ZN6google8protobufL18PlanAllocationSizeERKNS0_16RepeatedPtrFieldINS0_20FieldDescriptorProtoEEEmRNS0_8internal13FlatAllocatorE:bb.a
  %i.cy = zext i1 %i.cx to i64
  %spec.select.i.i.i.i38.i = add nuw nsw i64 %.08.i.i.i.i36.i, %i.cy ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i37.i, i64 1 ; 2 uses
  %.not.i.i.i.i39.i = icmp eq ptr %i.cz, %i.ci
  br i1 %.not.i.i.i.i39.i, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread, label %.lr.ph.i.i.i.i35.i, !llvm.loop !2220

_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread: ; preds = %.lr.ph.i.i.i.i35.i, %middle.block82
  %spec.select.i.i.i.i38.i.lcssa = phi i64 [ %i.cv, %middle.block82 ], [ %spec.select.i.i.i.i38.i, %.lr.ph.i.i.i.i35.i ] ; 2 uses
  br i1 %i.cg, label %.lr.ph.i.i.i.i43.i.preheader, label %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64

.lr.ph.i.i.i.i43.i.preheader:                     ; preds = %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread
  %i.da = ptrtoaddr ptr %i.ci to i64
  %i.db = ptrtoaddr ptr %i.al to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i43.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i43.i.preheader
  %n.vec = and i64 %i.dc, -4                      ; 3 uses
  %i.dd = getelementptr i8, ptr %i.al, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi67 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.al, i64 %index ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !22
  %wide.load68 = load <2 x i8>, ptr %i.de, align 1, !tbaa !22
  %i.df = icmp eq <2 x i8> %wide.load, splat (i8 95)
  %i.dg = icmp eq <2 x i8> %wide.load68, splat (i8 95)
  %i.dh = zext <2 x i1> %i.df to <2 x i64>
  %i.di = zext <2 x i1> %i.dg to <2 x i64>
  %i.dj = add <2 x i64> %vec.phi, %i.dh           ; 2 uses
  %i.dk = add <2 x i64> %vec.phi67, %i.di         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !2221

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.i43.i.preheader105

.lr.ph.i.i.i.i43.i.preheader105:                  ; preds = %.lr.ph.i.i.i.i43.i.preheader, %middle.block
  %.08.i.i.i.i44.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i43.i.preheader ], [ %i.dm, %middle.block ]
  %.057.i.i.i.i45.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i43.i.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i.i.i.i43.i

_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread
  %.0.lcssa.i.i.i.i40.i52 = phi i64 [ %spec.select.i.i.i.i38.i.lcssa, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ 0, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.dn = phi ptr [ %i.ch, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ %i.ce, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %.025.i3148 = phi i64 [ %.025.i32, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread ], [ %.025.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE16GetFieldNameCaseESt17basic_string_viewIcS6_E.exit.thread.i.thread ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !23
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i

.lr.ph.i.i.i.i43.i:                               ; preds = %.lr.ph.i.i.i.i43.i.preheader105, %.lr.ph.i.i.i.i43.i
  %.08.i.i.i.i44.i = phi i64 [ %spec.select.i.i.i.i46.i, %.lr.ph.i.i.i.i43.i ], [ %.08.i.i.i.i44.i.ph, %.lr.ph.i.i.i.i43.i.preheader105 ]
  %.057.i.i.i.i45.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i43.i ], [ %.057.i.i.i.i45.i.ph, %.lr.ph.i.i.i.i43.i.preheader105 ] ; 2 uses
  %i.dq = load i8, ptr %.057.i.i.i.i45.i, align 1, !tbaa !22
  %i.dr = icmp eq i8 %i.dq, 95
  %i.ds = zext i1 %i.dr to i64
  %spec.select.i.i.i.i46.i = add nuw nsw i64 %.08.i.i.i.i44.i, %i.ds ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i45.i, i64 1 ; 2 uses
  %.not.i.i.i.i47.i = icmp eq ptr %i.dt, %i.ci
  br i1 %.not.i.i.i.i47.i, label %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.i43.i, !llvm.loop !2222

_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.lr.ph.i.i.i.i43.i, %middle.block
  %spec.select.i.i.i.i46.i.lcssa = phi i64 [ %i.dm, %middle.block ], [ %spec.select.i.i.i.i46.i, %.lr.ph.i.i.i.i43.i ]
  %i.du = sub i64 %i.an, %spec.select.i.i.i.i46.i.lcssa
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64
  %.0.lcssa.i.i.i.i40.i51 = phi i64 [ %.0.lcssa.i.i.i.i40.i52, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %spec.select.i.i.i.i38.i.lcssa, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %.025.i3147 = phi i64 [ %.025.i3148, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %.025.i32, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %i.dv = phi i64 [ %i.dp, %_ZN6google8protobuf12_GLOBAL__N_113CamelCaseSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit41.i.thread64 ], [ %i.du, %_ZN6google8protobuf12_GLOBAL__N_112JsonNameSizeESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ]
  %factor.i = shl i64 %i.an, 1
  %i.dw = add i64 %factor.i, 3
  %i.dx = add i64 %i.dw, %.025.i3147
  %i.dy = sub i64 %i.dx, %.0.lcssa.i.i.i.i40.i51
  %i.dz = add i64 %i.dy, %i.dv
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = add i32 %i.ea, 7
  %i.ec = and i32 %i.eb, -8
  %i.ed = add i32 %i.ec, %i.y
  br label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i
  %.sink = phi i32 [ %i.bs, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit.i ], [ %i.cc, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit33.i ], [ %i.ed, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIcEEvi.exit52.i ] ; 2 uses
  store i32 %.sink, ptr %i.e, align 8, !tbaa !3
  %i.ee = load i32, ptr %i.aa, align 8, !tbaa !3
  %i.ef = and i32 %i.ee, 1032
  %or.cond = icmp eq i32 %i.ef, 1032
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !22
  switch i32 %i.eh, label %bb.j [
    i32 9, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
    i32 12, label %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit
  ]

_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit: ; preds = %bb.i, %bb.i
  %i.ei = add nsw i32 %i.w, 1                     ; 2 uses
  store i32 %i.ei, ptr %i.v, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit
  %i.ej = phi i32 [ %i.w, %bb.i ], [ %i.ei, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE9PlanArrayIS8_EEvi.exit ], [ %i.w, %_ZN6google8protobuf12_GLOBAL__N_117FlatAllocatorImplIJcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_14SourceCodeInfoENS0_20FileDescriptorTablesENS0_10FeatureSetENS0_14MessageOptionsENS0_12FieldOptionsENS0_11EnumOptionsENS0_16EnumValueOptionsENS0_21ExtensionRangeOptionsENS0_12OneofOptionsENS0_14ServiceOptionsENS0_13MethodOptionsENS0_11FileOptionsEEE14PlanFieldNamesEmSt17basic_string_viewIcS6_EPKS8_.exit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.026.039, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ek, %i.r
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SF_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSQ_SR_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #41
  br label %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #41
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf12_GLOBAL__N_115JsonNameDetailsEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SE_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSP_SQ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSV_DpOSW_.exit: ; preds = %_ZN6google8protobuf12_GLOBAL__N_115JsonNameDetailsD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_202505129CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SG_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSR_SS_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !22
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #41
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6google8protobuf19EnumValueDescriptorEEENS2_10StringHashENS2_8StringEqESaISt4pairIKSA_SF_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSQ_SR_EENSt13invoke_resultIT_JDpT0_EE4typeEOSW_DpOSX_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2IPKPKcEET_SI_mRKS9_RKSA_RKSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.377", align 8    ; 6 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread, label %bb.c

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread: ; preds = %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i13, align 8
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = lshr i64 -2305843009213693952, %i.f
  %i.h = icmp ugt i64 %i.e, %i.g
  %.neg.i.i = sext i1 %i.h to i64
  %i.i = add nsw i64 %i.f, %.neg.i.i
  %i.j = lshr i64 -1, %i.i
  br label %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit

_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit: ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %3, %bb.a ], [ %i.j, %bb.c ]  ; 2 uses
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.k = icmp ugt i64 %.0.i, 1
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit
  tail call void @_ZN4absl12lts_2025051218container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %.0.i)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit.thread, %_ZN4absl12lts_2025051218container_internal29SelectBucketCountForIterRangeIPKPKcEEmT_S7_m.exit, %bb.d
  %.not5.i = icmp eq ptr %1, %2
  br i1 %.not5.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIPKPKcEEvT_SI_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i, %.lr.ph.i
  %.06.i = phi ptr [ %1, %.lr.ph.i ], [ %i.u, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  %i.m = load i64, ptr %0, align 8, !tbaa !73, !noalias !2238 ; 2 uses
  %i.n = icmp ne i64 %i.m, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %i.m, 2
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE26find_or_prepare_insert_sooIPKcEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.377") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %.06.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooIPKcEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.377") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %.06.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i unwind label %bb.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.p = load i8, ptr %i.l, align 8, !tbaa !1380, !range !49, !alias.scope !2241, !noundef !51
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2241 ; 2 uses
  %i.r = load ptr, ptr %.06.i, align 8, !tbaa !270, !noalias !2241 ; 2 uses
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #40
  store i64 %i.s, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !847
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !848
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %.not.i10 = icmp eq ptr %i.u, %2
  br i1 %.not.i10, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIPKPKcEEvT_SI_.exit, label %bb.e, !llvm.loop !2242

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE6insertIPKPKcEEvT_SI_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EEC2EmRKS9_RKSA_RKSB_.exit
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #40
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEEEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !19 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !270
  %i.a = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
  %i.b = add i64 %.sroa.0.0.copyload, 87
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm16EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #36 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSI_PFvSI_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.063 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.063
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.063 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not61 = icmp eq i16 %i.r, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %bb.c
  %i.s = add nuw i64 %.063, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !2243

.lr.ph:                                           ; preds = %bb.c, %bb.u
  %.sroa.055.062 = phi i16 [ %i.di, %bb.u ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.062, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.063, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.w ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !19 ; 14 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !270 ; 12 uses
  %i.y = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i, 9
  br i1 %i.y, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.z = icmp samesign ugt i64 %.sroa.0.0.copyload.i.i.i.i.i, 3
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %.sroa.2.0.copyload.i.i.i.i.i, align 1
  %i.aa = zext i32 %.0.copyload.i.i.i to i64
  %i.ab = shl nuw i64 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ad, align 1
  %i.ae = zext i32 %.0.copyload.i4.i.i to i64
  %i.af = or disjoint i64 %i.ab, %i.ae
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i, align 1, !tbaa !22
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 8
  %i.at = or disjoint i64 %i.an, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.af, %bb.e ], [ %i.at, %bb.g ]
  %i.au = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.av = mul i64 %i.au, -2543921745674291987
  %i.aw = tail call noundef i64 @llvm.bswap.i64(i64 %i.av)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ax = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i, 17
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.az, align 1
  %i.ba = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
end_hunk_2
