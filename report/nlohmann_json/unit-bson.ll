Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-bson?download=true
inline.NumInlined: 12444
inline.NumDeleted: 2458
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE10write_bsonERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !107
  %cond = icmp eq i8 %i.b, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_objectERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.f = tail call noundef nonnull ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  store ptr %i.f, ptr %i.a, align 8, !tbaa !150
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA61_KcPS9_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(61) @.str.101, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %i.e, i32 noundef 317, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.e, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #34
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !114    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn13, %bb.g ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn12

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !128
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !4
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !128
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !5
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_objectERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array", align 4       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.not7.i = icmp eq ptr %i.b, %i.c
  br i1 %.not7.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i9.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 64
  %i.f = tail call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e), !inline_history !763
  %i.g = add i64 %i.f, %.0.i9.i                   ; 2 uses
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.08.i) #35, !inline_history !764 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_hE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !6

_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_hE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i: ; preds = %.lr.ph.i
  %i.i = trunc i64 %i.g to i32
  %i.j = add i32 %i.i, 5
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit: ; preds = %bb.a, %_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_hE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i
  %.0.i.lcssa.i = phi i32 [ 5, %bb.a ], [ %i.j, %_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_hE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i32 %.0.i.lcssa.i, ptr %2, align 4
  %i.k = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i7.not = icmp eq i8 %i.k, 0
  br i1 %.not.i7.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit
  %3 = tail call i32 @llvm.bswap.i32(i32 %.0.i.lcssa.i)
  store i32 %3, ptr %2, align 4, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !147  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %2, i64 noundef 4), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %.not11 = icmp eq ptr %i.q, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !147  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 0)
  ret void

.lr.ph:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.w, %.lr.ph ], [ %i.q, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 64
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE18write_bson_elementERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.w = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.08.012) #35 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind noalias writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.105, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !90
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail9exception4nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !110, !alias.scope !771
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !113, !alias.scope !771
  store i8 0, ptr %i.d, align 8, !tbaa !90, !alias.scope !771
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !110, !alias.scope !772
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.g, align 8, !tbaa !113, !alias.scope !772
  store i8 0, ptr %i.f, align 8, !tbaa !90, !alias.scope !772
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !113, !noalias !772
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !113, !noalias !772
  %i.l = add i64 %i.k, %i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.h, align 8, !tbaa !113, !noalias !772 ; 2 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !113, !alias.scope !772
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.b
  %i.q = load ptr, ptr %5, align 8, !tbaa !114, !noalias !772
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.q, i64 noundef %i.m)
          to label %.noexc8.i unwind label %bb.c  ; 0 uses

.noexc8.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.s = load i64, ptr %i.e, align 8, !tbaa !113, !noalias !772 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !tbaa !113, !alias.scope !772
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %.noexc8.i
  %i.w = load ptr, ptr %7, align 8, !tbaa !114, !noalias !772
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc10.i unwind label %bb.c ; 0 uses

.noexc10.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.y = load i64, ptr %i.j, align 8, !tbaa !113, !noalias !772 ; 2 uses
  %i.z = load i64, ptr %i.g, align 8, !tbaa !113, !alias.scope !772
  %i.aa = sub i64 4611686018427387903, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %.invoke.i, label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRKS8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i.i

.invoke.i:                                        ; preds = %.noexc10.i, %.noexc8.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #34
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRKS8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i.i: ; preds = %.noexc10.i
  %i.ac = load ptr, ptr %2, align 8, !tbaa !114, !noalias !772
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ac, i64 noundef %i.y)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_S8_RKS8_EEET_DpOT0_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRKS8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i.i, %.invoke.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !114, !alias.scope !772 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.f
  br i1 %i.ag, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.af) #31
  br label %.body

_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_S8_RKS8_EEET_DpOT0_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRKS8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i.i
  %i.ah = load ptr, ptr %7, align 8, !tbaa !114   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_S8_RKS8_EEET_DpOT0_.exit
  call void @_ZdlPv(ptr noundef %i.ah) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS8_S8_RKS8_EEET_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.aj = load ptr, ptr %5, align 8, !tbaa !114   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.am = load ptr, ptr %6, align 8, !tbaa !114   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  call void @_ZdlPv(ptr noundef %i.am) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ao = load ptr, ptr %4, align 8, !tbaa !114
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.ap, align 8, !tbaa !211
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull %i.ao)
          to label %bb.d unwind label %.body20

.body20:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29
  %i.as = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.f
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail10type_errorE, i64 16), ptr %0, align 8, !tbaa !76
  %i.au = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = load ptr, ptr %7, align 8, !tbaa !114   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.d
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.ax) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.az = load ptr, ptr %5, align 8, !tbaa !114   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  call void @_ZdlPv(ptr noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.e ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  %i.bc = load ptr, ptr %6, align 8, !tbaa !114   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  call void @_ZdlPv(ptr noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.body20
  call void @_ZdlPv(ptr noundef %i.as) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %.body20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn12 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.ar, %.body20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn12
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA61_KcPS9_EEET_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(61) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !113
  store i8 0, ptr %i.a, align 8, !tbaa !90
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.d = load ptr, ptr %2, align 8, !tbaa !150
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #35
  %i.f = add i64 %i.e, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %1) #29 ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !113
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(61) %1, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !150    ; 2 uses
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #29 ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !113
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.m
  br i1 %i.p, label %.invoke, label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i

.invoke:                                          ; preds = %.noexc6, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #34
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i: ; preds = %.noexc6
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l, i64 noundef %i.m)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA61_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %.invoke, %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !114    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.r

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA61_KcJPS9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSE_OSF_DpOT1_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcJETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSC_OSD_DpOT1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !107     ; 2 uses
  %i.b = icmp ult i8 %i.a, 10
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv, i64 %i.c
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE18write_bson_elementERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array", align 4       ; 5 uses
  %4 = alloca %"struct.std::array.81", align 8    ; 5 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !107
  switch i8 %i.a, label %bb.k [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 8, label %bb.d
    i8 4, label %bb.e
    i8 7, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 3, label %bb.i
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext 3), !inline_history !773
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !113
  %i.l = add i64 %i.k, 1
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.l), !inline_history !773
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_objectERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c), !inline_history !774
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE16write_bson_arrayERKSB_RKS5_ISF_SaISF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_binaryERKSB_RKNS0_27byte_container_with_subtypeISE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(33) %i.s)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !90, !range !84, !noundef !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef zeroext 8), !inline_history !775
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !147  ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !113
  %i.ad = add i64 %i.ac, 1
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa, i64 noundef %i.ad), !inline_history !775
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !147 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef zeroext %i.u), !inline_history !776
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !90 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !147 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef zeroext 1), !inline_history !777
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !147 ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !113
  %i.au = add i64 %i.at, 1
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ar, i64 noundef %i.au), !inline_history !777
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store double %i.al, ptr %4, align 8
  %i.ay = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i.not.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.not.i, label %.lr.ph.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_doubleERKSB_d.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %5 = bitcast double %i.al to i64
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  store i64 %6, ptr %4, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_doubleERKSB_d.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_doubleERKSB_d.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !147 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %4, i64 noundef 8), !inline_history !778
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE18write_bson_integerERKSB_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE19write_bson_unsignedERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !147 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i8 noundef zeroext 2), !inline_history !779
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !147 ; 2 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !113
  %i.bp = add i64 %i.bo, 1
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bm, i64 noundef %i.bp), !inline_history !779
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add i32 %i.bv, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %i.bw, ptr %3, align 4
  %i.bx = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i.not.i19 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.not.i19, label %.lr.ph.i.i.i.i20, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_stringERKSB_SI_.exit

.lr.ph.i.i.i.i20:                                 ; preds = %bb.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  store i32 %7, ptr %3, align 4, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_stringERKSB_SI_.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_stringERKSB_SI_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i20
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !147 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %3, i64 noundef 4), !inline_history !780
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !147 ; 2 uses
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !114
  %i.ce = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.cf = add i64 %i.ce, 1
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cd, i64 noundef %i.cf), !inline_history !781
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !147 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !76
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef zeroext 10), !inline_history !782
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !147 ; 2 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !113
  %i.cr = add i64 %i.cq, 1
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.co, i64 noundef %i.cr), !inline_history !782
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_stringERKSB_SI_.exit, %bb.h, %bb.g, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_doubleERKSB_d.exit, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE27calc_bson_entry_header_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 9 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !107
  switch i8 %i.b, label %bb.t [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 8, label %bb.n
    i8 4, label %bb.o
    i8 7, label %bb.p
    i8 5, label %bb.q
    i8 6, label %bb.r
    i8 3, label %bb.s
    i8 0, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !183  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not3142 = icmp eq ptr %i.f, %i.g
  br i1 %.not3142, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.b, %.lr.ph45
  %.0.i.i44 = phi i64 [ %i.k, %.lr.ph45 ], [ 0, %bb.b ]
  %.sroa.022.043 = phi ptr [ %i.l, %.lr.ph45 ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 64
  %i.j = tail call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i), !inline_history !783
  %i.k = add i64 %i.j, %.0.i.i44                  ; 2 uses
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.022.043) #35 ; 2 uses
  %.not31 = icmp eq ptr %i.l, %i.g
  br i1 %.not31, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, label %.lr.ph45, !llvm.loop !6

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit: ; preds = %.lr.ph45, %bb.b
  %.0.i.i.lcssa = phi i64 [ 0, %bb.b ], [ %i.k, %.lr.ph45 ]
  %i.m = add i64 %i.a, 5
  %i.n = add i64 %i.m, %.0.i.i.lcssa
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !186  ; 2 uses
  %.not38 = icmp eq ptr %i.q, %i.s
  br i1 %.not38, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEmZNS3_6detail13binary_writerISG_hE20calc_bson_array_sizeERKSK_EUlmRSH_E_ET0_T_SU_ST_T1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i41 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.027.040 = phi ptr [ %i.q, %.lr.ph ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.03039 = phi i64 [ 0, %.lr.ph ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.v = add i64 %.03039, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.w = icmp ult i64 %.03039, 10
  br i1 %i.w, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.j
  %.029.i.i = phi i32 [ %i.ae, %bb.j ], [ 1, %bb.d ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ad, %bb.j ], [ %.03039, %bb.d ] ; 5 uses
  %i.x = icmp ult i64 %.02328.i.i, 100
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.y = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ad = udiv i64 %.02328.i.i, 10000
  %i.ae = add i32 %.029.i.i, 4                    ; 2 uses
  %i.af = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.af, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.d
  %.022.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.y, %bb.e ], [ %i.aa, %bb.g ], [ 1, %bb.d ], [ %i.ae, %bb.j ]
  %i.ag = zext i32 %.022.i.i to i64
  store ptr %i.t, ptr %2, align 8, !tbaa !110, !alias.scope !787
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ag, i8 noundef signext 0)
  %i.ah = load ptr, ptr %2, align 8, !tbaa !114, !alias.scope !787 ; 4 uses
  %i.ai = icmp ugt i64 %.03039, 99
  br i1 %i.ai, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !113, !alias.scope !787
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %i.ak, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ao, %.lr.ph.i4.i ], [ %.03039, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ay, %.lr.ph.i4.i ], [ %i.al, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.am = urem i64 %.020.i.i, 100
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.an ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !90, !noalias !787
  %i.as = zext i32 %.01819.i.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !90
  %i.au = load i8, ptr %i.ap, align 2, !tbaa !90, !noalias !787
  %i.av = add i32 %.01819.i.i, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !90
  %i.ay = add i32 %.01819.i.i, -2
  %i.az = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.az, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %.03039, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.ao, %.lr.ph.i4.i ] ; 3 uses
  %i.ba = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bb = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !90, !noalias !787
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !90
  %i.bg = load i8, ptr %i.bc, align 2, !tbaa !90, !noalias !787
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bh = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bi = or disjoint i8 %i.bh, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.k, %bb.l
  %storemerge.i.i = phi i8 [ %i.bi, %bb.l ], [ %i.bg, %bb.k ]
  store i8 %storemerge.i.i, ptr %i.ah, align 1, !tbaa !90
  %i.bj = invoke noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.040)
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA52_KcJS8_RA2_S9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSF_OSG_DpOT1_
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA52_KcJS8_RA2_S9_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSF_OSG_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !113
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !113  ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !113
  %i.j = sub i64 4611686018427387903, %i.i
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.l = load ptr, ptr %2, align 8, !tbaa !114
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l, i64 noundef %i.h) ; 0 uses
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #29 ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !113
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRA2_KcETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSD_OSE_DpOT1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #34
  unreachable

_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_JRA2_KcETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSD_OSE_DpOT1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.n) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEmZNS3_6detail13binary_writerISG_hE20calc_bson_array_sizeERKSK_EUlmRSH_E_ET0_T_SU_ST_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %.017 = phi i64 [ %2, %.lr.ph ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ]
  %.sroa.06.016 = phi ptr [ %0, %.lr.ph ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = load i64, ptr %3, align 8, !tbaa !151    ; 6 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %3, align 8, !tbaa !151
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.e = icmp ult i64 %i.c, 10
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.029.i.i = phi i32 [ %i.m, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.l, %bb.h ], [ %i.c, %bb.b ] ; 5 uses
  %i.f = icmp ult i64 %.02328.i.i, 100
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = udiv i64 %.02328.i.i, 10000
  %i.m = add i32 %.029.i.i, 4                     ; 2 uses
  %i.n = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i = phi i32 [ %i.k, %bb.g ], [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ 1, %bb.b ], [ %i.m, %bb.h ]
  %i.o = zext i32 %.022.i.i to i64
  store ptr %i.a, ptr %4, align 8, !tbaa !110, !alias.scope !799
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.o, i8 noundef signext 0)
  %i.p = load ptr, ptr %4, align 8, !tbaa !114, !alias.scope !799 ; 4 uses
  %i.q = icmp ugt i64 %i.c, 99
  br i1 %i.q, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !113, !alias.scope !799
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.w, %.lr.ph.i4.i ], [ %i.c, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ag, %.lr.ph.i4.i ], [ %i.t, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.u = urem i64 %.020.i.i, 100
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !90, !noalias !799
  %i.aa = zext i32 %.01819.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !90
  %i.ac = load i8, ptr %i.x, align 2, !tbaa !90, !noalias !799
  %i.ad = add i32 %.01819.i.i, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !90
  %i.ag = add i32 %.01819.i.i, -2
  %i.ah = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.c, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.w, %.lr.ph.i4.i ] ; 3 uses
  %i.ai = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !90, !noalias !799
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !90
  %i.ao = load i8, ptr %i.ak, align 2, !tbaa !90, !noalias !799
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ap = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.aq = or disjoint i8 %i.ap, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.aq, %bb.j ], [ %i.ao, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.p, align 1, !tbaa !90
  %i.ar = invoke noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.016)
          to label %_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit unwind label %bb.k, !inline_history !798

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.as

_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.av = add i64 %i.ar, %.017                    ; 2 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.a
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit
  call void @_ZdlPv(ptr noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ay, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, %bb.a
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE16write_bson_arrayERKSB_RKS5_ISF_SaISF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array", align 4       ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 4), !inline_history !11
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !113
  %i.j = add i64 %i.i, 1
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.g, i64 noundef %i.j), !inline_history !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !tbaa !151
  %i.n = load ptr, ptr %2, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.q = call noundef i64 @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEmZNS3_6detail13binary_writerISG_hE20calc_bson_array_sizeERKSK_EUlmRSH_E_ET0_T_SU_ST_T1_(ptr %i.n, ptr %i.p, i64 noundef 0, ptr nonnull %i.a), !inline_history !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, 5                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %i.s, ptr %3, align 4
  %i.t = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.t, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %5 = call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %5, ptr %3, align 4, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit: ; preds = %bb.a, %.lr.ph.i.i.i
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %3, i64 noundef 4), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.y = load ptr, ptr %2, align 8, !tbaa !186    ; 2 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %.not20 = icmp eq ptr %i.y, %i.z
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !147 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef zeroext 0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %.sroa.012.021 = phi ptr [ %i.y, %.lr.ph ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.af = icmp ult i64 %.022, 10
  br i1 %i.af, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.029.i.i = phi i32 [ %i.an, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.am, %bb.h ], [ %.022, %bb.b ] ; 5 uses
  %i.ag = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ah = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ak = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.am = udiv i64 %.02328.i.i, 10000
  %i.an = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ao = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ao, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i = phi i32 [ %i.al, %bb.g ], [ %i.ah, %bb.c ], [ %i.aj, %bb.e ], [ 1, %bb.b ], [ %i.an, %bb.h ]
  %i.ap = zext i32 %.022.i.i to i64
  store ptr %i.aa, ptr %4, align 8, !tbaa !110, !alias.scope !803
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ap, i8 noundef signext 0)
  %i.aq = load ptr, ptr %4, align 8, !tbaa !114, !alias.scope !803 ; 4 uses
  %i.ar = icmp ugt i64 %.022, 99
  br i1 %i.ar, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.as = load i64, ptr %i.ab, align 8, !tbaa !113, !alias.scope !803
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ax, %.lr.ph.i4.i ], [ %.022, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bh, %.lr.ph.i4.i ], [ %i.au, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = urem i64 %.020.i.i, 100
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !90, !noalias !803
  %i.bb = zext i32 %.01819.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !90
  %i.bd = load i8, ptr %i.ay, align 2, !tbaa !90, !noalias !803
  %i.be = add i32 %.01819.i.i, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bf
  store i8 %i.bd, ptr %i.bg, align 1, !tbaa !90
  %i.bh = add i32 %.01819.i.i, -2
  %i.bi = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bi, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %.022, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.ax, %.lr.ph.i4.i ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !90, !noalias !803
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !90
  %i.bp = load i8, ptr %i.bl, align 2, !tbaa !90, !noalias !803
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bq = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.br = or disjoint i8 %i.bq, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.br, %bb.j ], [ %i.bp, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.aq, align 1, !tbaa !90
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE18write_bson_elementERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.021)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.bs = add i64 %.022, 1
  %i.bt = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aa
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.z
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aa
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE17write_bson_binaryERKSB_RKNS0_27byte_container_with_subtypeISE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(33) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.80", align 1    ; 4 uses
  %4 = alloca %"struct.std::array", align 4       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 5), !inline_history !11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !113
  %i.i = add i64 %i.h, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.i), !inline_history !11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.o = load ptr, ptr %2, align 8, !tbaa !99
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = trunc i64 %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 %i.s, ptr %4, align 4
  %i.t = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.t, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = lshr i64 %i.r, 16
  %i.v = trunc i64 %i.u to i8
  %i.w = lshr i64 %i.r, 8
  %i.x = trunc i64 %i.w to i8
  %i.y = lshr i64 %i.r, 24
  %i.z = trunc i64 %i.y to i8
  %i.aa = trunc i64 %i.r to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.z, ptr %4, align 4, !tbaa !90
  store i8 %i.aa, ptr %.012.i.i.i, align 1, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.v, ptr %i.ab, align 1, !tbaa !90
  store i8 %i.x, ptr %.0.i.i.i, align 2, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit: ; preds = %bb.a, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %4, i64 noundef 4), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !216, !range !84, !noundef !85
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i8
  br label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, %bb.b
  %i.am = phi i8 [ %i.al, %bb.b ], [ 0, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 %i.am, ptr %3, align 1
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %3, i64 noundef 1), !inline_history !804
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.as, i64 noundef %i.aw)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE18write_bson_integerERKSB_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.81", align 8    ; 5 uses
  %4 = alloca %"struct.std::array", align 4       ; 8 uses
  %i.a = add i64 %2, -2147483648
  %or.cond = icmp ult i64 %i.a, -4294967296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 16), !inline_history !11
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !114
  %i.i = load i64, ptr %i.f, align 8, !tbaa !113
  %i.j = add i64 %i.i, 1
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, i64 noundef %i.j), !inline_history !11
  %i.n = trunc nsw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 %i.n, ptr %4, align 4
  %i.o = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.o, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.p = lshr i64 %2, 16
  %i.q = trunc i64 %i.p to i8
  %i.r = lshr i64 %2, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %2, 24
  %i.u = trunc i64 %i.t to i8
  %i.v = trunc i64 %2 to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.u, ptr %4, align 4, !tbaa !90
  store i8 %i.v, ptr %.012.i.i.i, align 1, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.q, ptr %i.w, align 1, !tbaa !90
  store i8 %i.s, ptr %.0.i.i.i, align 2, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %4, i64 noundef 4), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 18), !inline_history !11
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !147 ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !114
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !113
  %i.ae = add i64 %i.ad, 1
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ac, i64 noundef %i.ae), !inline_history !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %2, ptr %3, align 8
  %i.ai = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i7.not = icmp eq i8 %i.ai, 0
  br i1 %.not.i7.not, label %.lr.ph.i.i.i8, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit

.lr.ph.i.i.i8:                                    ; preds = %bb.c
  %5 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %5, ptr %3, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit: ; preds = %bb.c, %.lr.ph.i.i.i8
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !147 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %3, i64 noundef 8), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE19write_bson_unsignedERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.81", align 8    ; 5 uses
  %4 = alloca %"struct.std::array.81", align 8    ; 5 uses
  %5 = alloca %"struct.std::array", align 4       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not = icmp ugt i64 %i.b, 2147483647
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext 16), !inline_history !11
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !113
  %i.k = add i64 %i.j, 1
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, i64 noundef %i.k), !inline_history !11
  %i.o = load i64, ptr %i.a, align 8, !tbaa !90   ; 5 uses
  %i.p = trunc i64 %i.o to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 %i.p, ptr %5, align 4
  %i.q = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.r = lshr i64 %i.o, 16
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %i.o, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = lshr i64 %i.o, 24
  %i.w = trunc i64 %i.v to i8
  %i.x = trunc i64 %i.o to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.w, ptr %5, align 4, !tbaa !90
  store i8 %i.x, ptr %.012.i.i.i, align 1, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.s, ptr %i.y, align 1, !tbaa !90
  store i8 %i.u, ptr %.0.i.i.i, align 2, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %5, i64 noundef 4), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not9 = icmp slt i64 %i.b, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef zeroext 18), !inline_history !11
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !114
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.al = add i64 %i.ak, 1
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i64 noundef %i.al), !inline_history !11
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 %i.ap, ptr %4, align 8
  %i.aq = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i10.not = icmp eq i8 %i.aq, 0
  br i1 %.not.i10.not, label %.lr.ph.i.i.i11, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit

.lr.ph.i.i.i11:                                   ; preds = %bb.d
  %6 = tail call i64 @llvm.bswap.i64(i64 %i.ap)
  store i64 %6, ptr %4, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit: ; preds = %bb.d, %.lr.ph.i.i.i11
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %4, i64 noundef 8), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef zeroext 17), !inline_history !11
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !114
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.ay = add i64 %i.ax, 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.aw, i64 noundef %i.ay), !inline_history !11
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %i.bc, ptr %3, align 8
  %i.bd = load i8, ptr %0, align 8, !tbaa !206, !range !84, !noundef !85
  %.not.i14.not = icmp eq i8 %i.bd, 0
  br i1 %.not.i14.not, label %.lr.ph.i.i.i15, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b.exit

.lr.ph.i.i.i15:                                   ; preds = %bb.e
  %7 = tail call i64 @llvm.bswap.i64(i64 %i.bc)
  store i64 %7, ptr %3, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b.exit: ; preds = %bb.e, %.lr.ph.i.i.i15
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !147 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %3, i64 noundef 8), !inline_history !805
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail10type_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %0, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29, !inline_history !203
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #29, !inline_history !203
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !806
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !136  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #29, !inline_history !806
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29, !inline_history !807
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !90
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #29
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEE15write_characterEh(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221, !nonnull !85, !align !198 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.d, align 1, !tbaa !90
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !119
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !99   ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 7 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775807
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #34
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.n = add i64 %.sroa.speculated.i.i.i, %i.l    ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 9223372036854775807)
  %i.q = select i1 %i.o, i64 9223372036854775807, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  store i8 %1, ptr %i.s, align 1, !tbaa !90
  %i.t = icmp sgt i64 %i.l, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #31
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !99
  store ptr %i.u, ptr %i.c, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.v, ptr %i.e, align 8, !tbaa !118
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEE16write_charactersEPKhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221, !nonnull !85, !align !198 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150
end_hunk_1
begin_hunk_2_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_bsonIRS9_EESD_OT_bb:bb.a
  store i8 9, ptr %0, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ENS0_6detail7value_tE.exit, %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !197  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.n) #31
  br label %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit

_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.o = load i8, ptr %4, align 8, !tbaa !89
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext %i.o) #32
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.f, !inline_history !105

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #30, !inline_history !105
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt5arrayISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELm12EED2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %i.s) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.r, %bb.g ]
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !197  ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i9, label %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit10, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #31
  br label %_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit10

_ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEEED2Ev.exit10: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE10write_bsonERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !107
  %cond = icmp eq i8 %i.b, 1
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_objectERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.f = tail call noundef nonnull ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  store ptr %i.f, ptr %i.a, align 8, !tbaa !150
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA61_KcPS9_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(61) @.str.101, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %i.e, i32 noundef 317, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr %i.e, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #34
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !114    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn13, %bb.g ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn12

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !128
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !28
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !90
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_objectERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.207", align 4   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.not7.i = icmp eq ptr %i.b, %i.c
  br i1 %.not7.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i9.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.04.08.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 64
  %i.f = tail call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e), !inline_history !1083
  %i.g = add i64 %i.f, %.0.i9.i                   ; 2 uses
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.04.08.i) #35, !inline_history !1084 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_cE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !30

_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_cE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i: ; preds = %.lr.ph.i
  %i.i = trunc i64 %i.g to i32
  %i.j = add i32 %i.i, 5
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit: ; preds = %bb.a, %_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_cE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i
  %.0.i.lcssa.i = phi i32 [ 5, %bb.a ], [ %i.j, %_ZSt10accumulateISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEEmZNSA_6detail13binary_writerISH_cE21calc_bson_object_sizeERKSC_IS7_SH_St4lessIS7_ESaISI_EEEUlmRKSI_E_ET0_T_SX_SW_T1_.exit.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i32 %.0.i.lcssa.i, ptr %2, align 4
  %i.k = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i7.not = icmp eq i8 %i.k, 0
  br i1 %.not.i7.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit
  %3 = tail call i32 @llvm.bswap.i32(i32 %.0.i.lcssa.i)
  store i32 %3, ptr %2, align 4, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %2, i64 noundef 4), !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %.not11 = icmp eq ptr %i.q, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !134  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 0)
  ret void

.lr.ph:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.w, %.lr.ph ], [ %i.q, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 64
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE18write_bson_elementERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  %i.w = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.08.012) #35 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE18write_bson_elementERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.207", align 4   ; 5 uses
  %4 = alloca %"struct.std::array.277", align 8   ; 5 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !107
  switch i8 %i.a, label %bb.k [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 8, label %bb.d
    i8 4, label %bb.e
    i8 7, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 3, label %bb.i
    i8 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext 3), !inline_history !1085
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !113
  %i.l = add i64 %i.k, 1
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.l), !inline_history !1085
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_objectERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c), !inline_history !1086
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE16write_bson_arrayERKSB_RKS5_ISF_SaISF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_binaryERKSB_RKNS0_27byte_container_with_subtypeISE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(33) %i.s)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i8, ptr %i.t, align 8, !tbaa !90, !range !84, !noundef !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !134  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 8), !inline_history !1087
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !134  ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !113
  %i.ad = add i64 %i.ac, 1
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa, i64 noundef %i.ad), !inline_history !1087
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !134 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext %i.u), !inline_history !1088
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !90 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext 1), !inline_history !1089
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !134 ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !114
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !113
  %i.au = add i64 %i.at, 1
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ar, i64 noundef %i.au), !inline_history !1089
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store double %i.al, ptr %4, align 8
  %i.ay = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i.not.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.not.i, label %.lr.ph.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_doubleERKSB_d.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %5 = bitcast double %i.al to i64
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  store i64 %6, ptr %4, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_doubleERKSB_d.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_doubleERKSB_d.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !134 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull %4, i64 noundef 8), !inline_history !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !90
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE18write_bson_integerERKSB_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE19write_bson_unsignedERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !90 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !134 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i8 noundef signext 2), !inline_history !1091
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !134 ; 2 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !114
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !113
  %i.bp = add i64 %i.bo, 1
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef %i.bm, i64 noundef %i.bp), !inline_history !1091
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add i32 %i.bv, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %i.bw, ptr %3, align 4
  %i.bx = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i.not.i19 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.not.i19, label %.lr.ph.i.i.i.i20, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_stringERKSB_SI_.exit

.lr.ph.i.i.i.i20:                                 ; preds = %bb.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  store i32 %7, ptr %3, align 4, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_stringERKSB_SI_.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_stringERKSB_SI_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i20
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !134 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !76
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %3, i64 noundef 4), !inline_history !1092
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !134 ; 2 uses
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !114
  %i.ce = load i64, ptr %i.bt, align 8, !tbaa !113
  %i.cf = add i64 %i.ce, 1
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cd, i64 noundef %i.cf), !inline_history !1093
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !134 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !76
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i8 noundef signext 10), !inline_history !1094
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !134 ; 2 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !113
  %i.cr = add i64 %i.cq, 1
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !76
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.co, i64 noundef %i.cr), !inline_history !1094
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_stringERKSB_SI_.exit, %bb.h, %bb.g, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_doubleERKSB_d.exit, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE27calc_bson_entry_header_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 9 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !107
  switch i8 %i.b, label %bb.t [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 8, label %bb.n
    i8 4, label %bb.o
    i8 7, label %bb.p
    i8 5, label %bb.q
    i8 6, label %bb.r
    i8 3, label %bb.s
    i8 0, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !183  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not3142 = icmp eq ptr %i.f, %i.g
  br i1 %.not3142, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.b, %.lr.ph45
  %.0.i.i44 = phi i64 [ %i.k, %.lr.ph45 ], [ 0, %bb.b ]
  %.sroa.022.043 = phi ptr [ %i.l, %.lr.ph45 ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.022.043, i64 64
  %i.j = tail call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i), !inline_history !1095
  %i.k = add i64 %i.j, %.0.i.i44                  ; 2 uses
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.022.043) #35 ; 2 uses
  %.not31 = icmp eq ptr %i.l, %i.g
  br i1 %.not31, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit, label %.lr.ph45, !llvm.loop !30

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE21calc_bson_object_sizeERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEE.exit: ; preds = %.lr.ph45, %bb.b
  %.0.i.i.lcssa = phi i64 [ 0, %bb.b ], [ %i.k, %.lr.ph45 ]
  %i.m = add i64 %i.a, 5
  %i.n = add i64 %i.m, %.0.i.i.lcssa
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !186  ; 2 uses
  %.not38 = icmp eq ptr %i.q, %i.s
  br i1 %.not38, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEmZNS3_6detail13binary_writerISG_cE20calc_bson_array_sizeERKSK_EUlmRSH_E_ET0_T_SU_ST_T1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.i41 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.027.040 = phi ptr [ %i.q, %.lr.ph ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.03039 = phi i64 [ 0, %.lr.ph ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.v = add i64 %.03039, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.w = icmp ult i64 %.03039, 10
  br i1 %i.w, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.j
  %.029.i.i = phi i32 [ %i.ae, %bb.j ], [ 1, %bb.d ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ad, %bb.j ], [ %.03039, %bb.d ] ; 5 uses
  %i.x = icmp ult i64 %.02328.i.i, 100
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.y = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ad = udiv i64 %.02328.i.i, 10000
  %i.ae = add i32 %.029.i.i, 4                    ; 2 uses
  %i.af = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.af, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.d
  %.022.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.y, %bb.e ], [ %i.aa, %bb.g ], [ 1, %bb.d ], [ %i.ae, %bb.j ]
  %i.ag = zext i32 %.022.i.i to i64
  store ptr %i.t, ptr %2, align 8, !tbaa !110, !alias.scope !1099
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ag, i8 noundef signext 0)
  %i.ah = load ptr, ptr %2, align 8, !tbaa !114, !alias.scope !1099 ; 4 uses
  %i.ai = icmp ugt i64 %.03039, 99
  br i1 %i.ai, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !113, !alias.scope !1099
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %i.ak, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ao, %.lr.ph.i4.i ], [ %.03039, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ay, %.lr.ph.i4.i ], [ %i.al, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.am = urem i64 %.020.i.i, 100
  %i.an = shl nuw nsw i64 %i.am, 1
  %i.ao = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.an ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !90, !noalias !1099
  %i.as = zext i32 %.01819.i.i to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !90
  %i.au = load i8, ptr %i.ap, align 2, !tbaa !90, !noalias !1099
  %i.av = add i32 %.01819.i.i, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !90
  %i.ay = add i32 %.01819.i.i, -2
  %i.az = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.az, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %.03039, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.ao, %.lr.ph.i4.i ] ; 3 uses
  %i.ba = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bb = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !90, !noalias !1099
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !90
  %i.bg = load i8, ptr %i.bc, align 2, !tbaa !90, !noalias !1099
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bh = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bi = or disjoint i8 %i.bh, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.k, %bb.l
  %storemerge.i.i = phi i8 [ %i.bi, %bb.l ], [ %i.bg, %bb.k ]
  store i8 %storemerge.i.i, ptr %i.ah, align 1, !tbaa !90
  %i.bj = invoke noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.027.040)
end_hunk_2
begin_hunk_3_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE27calc_bson_entry_header_sizeERKSB_RKSF_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.l) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0, label %bb.g, label %bb.h

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread
  %.pn.pn20.ph = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn.pn20 = phi { ptr, i32 } [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %.pn.pn20.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn.pn19 = phi { ptr, i32 } [ %.pn.pn20, %bb.g ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  resume { ptr, i32 } %.pn.pn19

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !113
  %i.q = add i64 %i.p, 2
  ret i64 %i.q

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEmZNS3_6detail13binary_writerISG_cE20calc_bson_array_sizeERKSK_EUlmRSH_E_ET0_T_SU_ST_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %.017 = phi i64 [ %2, %.lr.ph ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ]
  %.sroa.06.016 = phi ptr [ %0, %.lr.ph ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = load i64, ptr %3, align 8, !tbaa !151    ; 6 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %3, align 8, !tbaa !151
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.e = icmp ult i64 %i.c, 10
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.029.i.i = phi i32 [ %i.m, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.l, %bb.h ], [ %i.c, %bb.b ] ; 5 uses
  %i.f = icmp ult i64 %.02328.i.i, 100
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = udiv i64 %.02328.i.i, 10000
  %i.m = add i32 %.029.i.i, 4                     ; 2 uses
  %i.n = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i = phi i32 [ %i.k, %bb.g ], [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ 1, %bb.b ], [ %i.m, %bb.h ]
  %i.o = zext i32 %.022.i.i to i64
  store ptr %i.a, ptr %4, align 8, !tbaa !110, !alias.scope !1103
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.o, i8 noundef signext 0)
  %i.p = load ptr, ptr %4, align 8, !tbaa !114, !alias.scope !1103 ; 4 uses
  %i.q = icmp ugt i64 %i.c, 99
  br i1 %i.q, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !113, !alias.scope !1103
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.w, %.lr.ph.i4.i ], [ %i.c, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ag, %.lr.ph.i4.i ], [ %i.t, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.u = urem i64 %.020.i.i, 100
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !90, !noalias !1103
  %i.aa = zext i32 %.01819.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !90
  %i.ac = load i8, ptr %i.x, align 2, !tbaa !90, !noalias !1103
  %i.ad = add i32 %.01819.i.i, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !90
  %i.ag = add i32 %.01819.i.i, -2
  %i.ah = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.c, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.w, %.lr.ph.i4.i ] ; 3 uses
  %i.ai = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !90, !noalias !1103
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !90
  %i.ao = load i8, ptr %i.ak, align 2, !tbaa !90, !noalias !1103
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ap = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.aq = or disjoint i8 %i.ap, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.aq, %bb.j ], [ %i.ao, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.p, align 1, !tbaa !90
  %i.ar = invoke noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE22calc_bson_element_sizeERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.016)
          to label %_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit unwind label %bb.k, !inline_history !1102

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.as

_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.av = add i64 %i.ar, %.017                    ; 2 uses
  %i.aw = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.a
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit
  call void @_ZdlPv(ptr noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE20calc_bson_array_sizeERKS5_ISF_SaISF_EEENKUlmRKSF_E_clEmSM_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ay, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !32

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, %bb.a
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE16write_bson_arrayERKSB_RKS5_ISF_SaISF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.207", align 4   ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 4), !inline_history !33
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !113
  %i.j = add i64 %i.i, 1
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.g, i64 noundef %i.j), !inline_history !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !tbaa !151
  %i.n = load ptr, ptr %2, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.q = call noundef i64 @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEES6_ISG_SaISG_EEEEmZNS3_6detail13binary_writerISG_cE20calc_bson_array_sizeERKSK_EUlmRSH_E_ET0_T_SU_ST_T1_(ptr %i.n, ptr %i.p, i64 noundef 0, ptr nonnull %i.a), !inline_history !1104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, 5                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %i.s, ptr %3, align 4
  %i.t = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.t, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %5 = call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %5, ptr %3, align 4, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit: ; preds = %bb.a, %.lr.ph.i.i.i
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %3, i64 noundef 4), !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.y = load ptr, ptr %2, align 8, !tbaa !186    ; 2 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %.not20 = icmp eq ptr %i.y, %i.z
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext 0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %.sroa.012.021 = phi ptr [ %i.y, %.lr.ph ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.af = icmp ult i64 %.022, 10
  br i1 %i.af, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.029.i.i = phi i32 [ %i.an, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.am, %bb.h ], [ %.022, %bb.b ] ; 5 uses
  %i.ag = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ah = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ak = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.am = udiv i64 %.02328.i.i, 10000
  %i.an = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ao = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ao, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.022.i.i = phi i32 [ %i.al, %bb.g ], [ %i.ah, %bb.c ], [ %i.aj, %bb.e ], [ 1, %bb.b ], [ %i.an, %bb.h ]
  %i.ap = zext i32 %.022.i.i to i64
  store ptr %i.aa, ptr %4, align 8, !tbaa !110, !alias.scope !1107
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ap, i8 noundef signext 0)
  %i.aq = load ptr, ptr %4, align 8, !tbaa !114, !alias.scope !1107 ; 4 uses
  %i.ar = icmp ugt i64 %.022, 99
  br i1 %i.ar, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.as = load i64, ptr %i.ab, align 8, !tbaa !113, !alias.scope !1107
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ax, %.lr.ph.i4.i ], [ %.022, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bh, %.lr.ph.i4.i ], [ %i.au, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.av = urem i64 %.020.i.i, 100
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !90, !noalias !1107
  %i.bb = zext i32 %.01819.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !90
  %i.bd = load i8, ptr %i.ay, align 2, !tbaa !90, !noalias !1107
  %i.be = add i32 %.01819.i.i, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bf
  store i8 %i.bd, ptr %i.bg, align 1, !tbaa !90
  %i.bh = add i32 %.01819.i.i, -2
  %i.bi = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bi, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !9

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %.022, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.ax, %.lr.ph.i4.i ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bk = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !90, !noalias !1107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !90
  %i.bp = load i8, ptr %i.bl, align 2, !tbaa !90, !noalias !1107
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bq = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.br = or disjoint i8 %i.bq, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.br, %bb.j ], [ %i.bp, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.aq, align 1, !tbaa !90
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE18write_bson_elementERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.021)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.bs = add i64 %.022, 1
  %i.bt = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.aa
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bv, %i.z
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aa
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %i.bw
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE17write_bson_binaryERKSB_RKNS0_27byte_container_with_subtypeISE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(33) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.276", align 1   ; 4 uses
  %4 = alloca %"struct.std::array.207", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext 5), !inline_history !33
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !113
  %i.i = add i64 %i.h, 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.i), !inline_history !33
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.o = load ptr, ptr %2, align 8, !tbaa !99
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = trunc i64 %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 %i.s, ptr %4, align 4
  %i.t = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.t, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = lshr i64 %i.r, 16
  %i.v = trunc i64 %i.u to i8
  %i.w = lshr i64 %i.r, 8
  %i.x = trunc i64 %i.w to i8
  %i.y = lshr i64 %i.r, 24
  %i.z = trunc i64 %i.y to i8
  %i.aa = trunc i64 %i.r to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.z, ptr %4, align 4, !tbaa !90
  store i8 %i.aa, ptr %.012.i.i.i, align 1, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.v, ptr %i.ab, align 1, !tbaa !90
  store i8 %i.x, ptr %.0.i.i.i, align 2, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit: ; preds = %bb.a, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %4, i64 noundef 4), !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !216, !range !84, !noundef !85
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i8
  br label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit, %bb.b
  %i.am = phi i8 [ %i.al, %bb.b ], [ 0, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 %i.am, ptr %3, align 1
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %3, i64 noundef 1), !inline_history !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !134 ; 2 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !99    ; 2 uses
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.as, i64 noundef %i.aw)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE18write_bson_integerERKSB_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.277", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.207", align 4   ; 8 uses
  %i.a = add i64 %2, -2147483648
  %or.cond = icmp ult i64 %i.a, -4294967296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 16), !inline_history !33
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !114
  %i.i = load i64, ptr %i.f, align 8, !tbaa !113
  %i.j = add i64 %i.i, 1
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, i64 noundef %i.j), !inline_history !33
  %i.n = trunc nsw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 %i.n, ptr %4, align 4
  %i.o = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.o, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.p = lshr i64 %2, 16
  %i.q = trunc i64 %i.p to i8
  %i.r = lshr i64 %2, 8
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %2, 24
  %i.u = trunc i64 %i.t to i8
  %i.v = trunc i64 %2 to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.u, ptr %4, align 4, !tbaa !90
  store i8 %i.v, ptr %.012.i.i.i, align 1, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.q, ptr %i.w, align 1, !tbaa !90
  store i8 %i.s, ptr %.0.i.i.i, align 2, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !134  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %4, i64 noundef 4), !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef signext 18), !inline_history !33
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !114
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !113
  %i.ae = add i64 %i.ad, 1
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ac, i64 noundef %i.ae), !inline_history !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %2, ptr %3, align 8
  %i.ai = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i7.not = icmp eq i8 %i.ai, 0
  br i1 %.not.i7.not, label %.lr.ph.i.i.i8, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit

.lr.ph.i.i.i8:                                    ; preds = %bb.c
  %5 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %5, ptr %3, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit: ; preds = %bb.c, %.lr.ph.i.i.i8
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !134 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %3, i64 noundef 8), !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE19write_bson_unsignedERKSB_RKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.277", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.277", align 8   ; 5 uses
  %5 = alloca %"struct.std::array.207", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not = icmp ugt i64 %i.b, 2147483647
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 16), !inline_history !33
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !113
  %i.k = add i64 %i.j, 1
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h, i64 noundef %i.k), !inline_history !33
  %i.o = load i64, ptr %i.a, align 8, !tbaa !90   ; 5 uses
  %i.p = trunc i64 %i.o to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 %i.p, ptr %5, align 4
  %i.q = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.not, label %.lr.ph.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.r = lshr i64 %i.o, 16
  %i.s = trunc i64 %i.r to i8
  %i.t = lshr i64 %i.o, 8
  %i.u = trunc i64 %i.t to i8
  %i.v = lshr i64 %i.o, 24
  %i.w = trunc i64 %i.v to i8
  %i.x = trunc i64 %i.o to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.w, ptr %5, align 4, !tbaa !90
  store i8 %i.x, ptr %.012.i.i.i, align 1, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.s, ptr %i.y, align 1, !tbaa !90
  store i8 %i.u, ptr %.0.i.i.i, align 2, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %5, i64 noundef 4), !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not9 = icmp slt i64 %i.b, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext 18), !inline_history !33
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !114
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.al = add i64 %i.ak, 1
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj, i64 noundef %i.al), !inline_history !33
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 %i.ap, ptr %4, align 8
  %i.aq = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i10.not = icmp eq i8 %i.aq, 0
  br i1 %.not.i10.not, label %.lr.ph.i.i.i11, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit

.lr.ph.i.i.i11:                                   ; preds = %bb.d
  %6 = tail call i64 @llvm.bswap.i64(i64 %i.ap)
  store i64 %6, ptr %4, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit: ; preds = %bb.d, %.lr.ph.i.i.i11
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %4, i64 noundef 8), !inline_history !34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext 17), !inline_history !33
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !114
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.ay = add i64 %i.ax, 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.aw, i64 noundef %i.ay), !inline_history !33
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %i.bc, ptr %3, align 8
  %i.bd = load i8, ptr %0, align 8, !tbaa !334, !range !84, !noundef !85
  %.not.i14.not = icmp eq i8 %i.bd, 0
  br i1 %.not.i14.not, label %.lr.ph.i.i.i15, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberImEEvT_b.exit

.lr.ph.i.i.i15:                                   ; preds = %bb.e
  %7 = tail call i64 @llvm.bswap.i64(i64 %i.bc)
  store i64 %7, ptr %3, align 8, !tbaa !90
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberImEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberImEEvT_b.exit: ; preds = %bb.e, %.lr.ph.i.i.i15
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !134 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %3, i64 noundef 8), !inline_history !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIlEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberImEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIiEEvT_b.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEEC2EOSM_NS1_14input_format_tE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %3 = alloca %"struct.std::pair.284", align 8    ; 8 uses
  %4 = alloca %"struct.std::pair.284", align 8    ; 8 uses
  %5 = alloca %"struct.std::pair.284", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.284", align 8    ; 8 uses
  %7 = alloca %"struct.std::pair.284", align 8    ; 8 uses
  %8 = alloca %"struct.std::pair.284", align 8    ; 8 uses
  %9 = alloca %"struct.std::pair.284", align 8    ; 8 uses
  %10 = alloca %"struct.std::pair.284", align 8   ; 8 uses
  %11 = alloca %"struct.std::pair.284", align 8   ; 8 uses
  %12 = alloca %"struct.std::pair.284", align 8   ; 8 uses
  %13 = alloca %"struct.std::pair.284", align 8   ; 8 uses
  %14 = alloca %"struct.std::pair.284", align 8   ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !234
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.a, align 8, !tbaa !345
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8, !tbaa !346
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.c, align 8, !tbaa !347
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %2, ptr %i.d, align 4, !tbaa !348
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !349
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> <i32 70, i32 72, i32 78, i32 83>, ptr %i.f, align 8, !tbaa !136, !alias.scope !1112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> <i32 84, i32 90, i32 91, i32 123>, ptr %i.g, align 8, !tbaa !136, !alias.scope !1112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 66, ptr %3, align 8, !tbaa !351
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !110
  store i32 1702132066, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.k, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 67, ptr %4, align 8, !tbaa !351
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !110
  store i32 1918986339, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 4, ptr %i.n, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.o, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 68, ptr %5, align 8, !tbaa !351
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.80, i64 6, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 6, ptr %i.r, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i8 0, ptr %i.s, align 2, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store i32 73, ptr %6, align 8, !tbaa !351
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.116, i64 5, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 5, ptr %i.v, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.w, align 1, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 76, ptr %7, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.y, ptr noundef nonnull align 1 dereferenceable(5) @.str.117, i64 5, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 5, ptr %i.z, align 8, !tbaa !113
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.aa, align 1, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 77, ptr %8, align 8, !tbaa !351
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ac, ptr noundef nonnull align 1 dereferenceable(6) @.str.118, i64 6, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 6, ptr %i.ad, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i8 0, ptr %i.ae, align 2, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store i32 85, ptr %9, align 8, !tbaa !351
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ag, ptr noundef nonnull align 1 dereferenceable(5) @.str.119, i64 5, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 5, ptr %i.ah, align 8, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 29
  store i8 0, ptr %i.ai, align 1, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i32 100, ptr %10, align 8, !tbaa !351
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ak, ptr noundef nonnull align 1 dereferenceable(6) @.str.120, i64 6, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 6, ptr %i.al, align 8, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 30
  store i8 0, ptr %i.am, align 2, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i32 105, ptr %11, align 8, !tbaa !351
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !110
  store i32 947154537, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 4, ptr %i.ap, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i8 0, ptr %i.aq, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i32 108, ptr %12, align 8, !tbaa !351
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.as, ptr noundef nonnull align 1 dereferenceable(5) @.str.122, i64 5, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 5, ptr %i.at, align 8, !tbaa !113
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.au, align 1, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i32 109, ptr %13, align 8, !tbaa !351
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aw, ptr noundef nonnull align 1 dereferenceable(6) @.str.123, i64 6, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 6, ptr %i.ax, align 8, !tbaa !113
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.ay, align 2, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i32 117, ptr %14, align 8, !tbaa !351
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ba, ptr noundef nonnull align 1 dereferenceable(6) @.str.124, i64 6, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 6, ptr %i.bb, align 8, !tbaa !113
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 30
  store i8 0, ptr %i.bc, align 2, !tbaa !90
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN8nlohmann16json_abi_v3_12_06detail10make_arrayISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJSA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_EEESt5arrayIT_XsZT0_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.283") align 8 %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14)
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !114 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ba
  br i1 %i.bf, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  call void @_ZdlPv(ptr noundef %i.be) #31
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %._crit_edge.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !114 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aw
  br i1 %i.bh, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bg) #31
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !114 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46
  call void @_ZdlPv(ptr noundef %i.bi) #31
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit49

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit49: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !114 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ao
  br i1 %i.bl, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_unit_bson.cpp:bb.a
  %i.ak = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull @.str.12)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.al = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.ak)
          to label %__cxx_global_var_init.11.exit unwind label %bb.y ; 0 uses

bb.x:                                             ; preds = %__cxx_global_var_init.9.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #29
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.i4 = phi { ptr, i32 } [ %i.an, %bb.y ], [ %i.am, %bb.x ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

__cxx_global_var_init.11.exit:                    ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %6) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store i32 0, ptr @_ZL19DOCTEST_ANON_VAR_58, align 4, !tbaa !136
  %i.aq = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL19DOCTEST_ANON_VAR_58) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.ar = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @_ZL20DOCTEST_ANON_FUNC_59v, ptr noundef nonnull @.str.5, i32 noundef 839, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @.str.14)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.at = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.as)
          to label %__cxx_global_var_init.13.exit unwind label %bb.ad ; 0 uses

bb.ac:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #29
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i5 = phi { ptr, i32 } [ %i.av, %bb.ad ], [ %i.au, %bb.ac ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

__cxx_global_var_init.13.exit:                    ; preds = %bb.ab
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aw) #29
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ax) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %4) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  store i32 0, ptr @_ZL19DOCTEST_ANON_VAR_60, align 4, !tbaa !136
  %i.ay = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL19DOCTEST_ANON_VAR_60) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.az = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @_ZL20DOCTEST_ANON_FUNC_61v, ptr noundef nonnull @.str.5, i32 noundef 857, ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %__cxx_global_var_init.13.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.16)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.bb = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.ba)
          to label %__cxx_global_var_init.15.exit unwind label %bb.ai ; 0 uses

bb.ah:                                            ; preds = %__cxx_global_var_init.13.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.i6 = phi { ptr, i32 } [ %i.bd, %bb.ai ], [ %i.bc, %bb.ah ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

__cxx_global_var_init.15.exit:                    ; preds = %bb.ag
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.be) #29
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %2) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  store i32 0, ptr @_ZL19DOCTEST_ANON_VAR_62, align 4, !tbaa !136
  %i.bg = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL19DOCTEST_ANON_VAR_62) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.bh = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZL20DOCTEST_ANON_FUNC_90v, ptr noundef nonnull @.str.5, i32 noundef 1211, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %__cxx_global_var_init.15.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @.str.18)
          to label %bb.al unwind label %bb.an     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store i8 1, ptr %i.bj, align 8, !tbaa !1693
  %i.bk = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.bi)
          to label %__cxx_global_var_init.17.exit unwind label %bb.an ; 0 uses

bb.am:                                            ; preds = %__cxx_global_var_init.15.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #29
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.pn.i = phi { ptr, i32 } [ %i.bm, %bb.an ], [ %i.bl, %bb.am ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %common.resume

__cxx_global_var_init.17.exit:                    ; preds = %bb.al
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #29
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  store i32 0, ptr @_ZL19DOCTEST_ANON_VAR_91, align 4, !tbaa !136
  %i.bp = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL19DOCTEST_ANON_VAR_91) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind memory(none) }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { "function-inline-cost-multiplier"="2" }
attributes #33 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #34 = { noreturn }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}
!llvm.errno.tbaa = !{!74}

!0 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !202}
!3 = distinct !{!3, !202}
!4 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{null, null}
!6 = distinct !{!6, !202}
!7 = distinct !{null}
!8 = distinct !{!8, !202}
!9 = distinct !{!9, !202}
!10 = distinct !{!10, !202}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{!13, !202}
!14 = distinct !{!14, !202}
!15 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!16 = distinct !{null, null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{!19, !202}
!20 = distinct !{null}
!21 = distinct !{!21, !202}
!22 = distinct !{!22, !202}
!23 = distinct !{!23, !202}
!24 = distinct !{!24, !202}
!25 = distinct !{!25, !202}
!26 = distinct !{!26, !202}
!27 = distinct !{!27, !202}
!28 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{!29, !202}
!30 = distinct !{!30, !202}
!31 = distinct !{null}
!32 = distinct !{!32, !202}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{!36, !202}
!37 = distinct !{null}
!38 = distinct !{!38, !202}
!39 = distinct !{!39, !202}
!40 = distinct !{!40, !202}
!41 = distinct !{!41, !202}
!42 = distinct !{!42, !202}
!43 = distinct !{!43, !202}
!44 = distinct !{!44, !202}
!45 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE3getEv, null, null}
!46 = distinct !{null, null}
!47 = distinct !{null}
!48 = distinct !{null}
!49 = distinct !{null, null}
!50 = distinct !{null}
!51 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!52 = distinct !{null}
!53 = distinct !{!53, !202}
!54 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!55 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!56 = distinct !{!56, !202}
!57 = distinct !{null}
!58 = distinct !{!58, !202}
!59 = distinct !{null}
!60 = distinct !{!60, !202}
!61 = distinct !{!61, !202}
!62 = distinct !{!62, !202}
!63 = distinct !{!63, !202}
!64 = distinct !{!64, !202}
!65 = distinct !{!65, !202}
!66 = !{i32 8, !"PIC Level", i32 2}
!67 = !{i32 7, !"PIE Level", i32 2}
!68 = !{i32 7, !"uwtable", i32 2}
!69 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!70 = !{!"Simple C++ TBAA"}
!71 = !{!"omnipotent char", !70, i64 0}
!72 = !{!"int", !71, i64 0}
!73 = !{!"__libc_errno", !72, i64 0}
!74 = !{!73, !72, i64 0}
!75 = !{!"vtable pointer", !70, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"_ZTSN7doctest10assertType4EnumE", !71, i64 0}
!78 = !{!"_ZTSN7doctest6detail20ExpressionDecomposerE", !77, i64 0}
!79 = !{!78, !77, i64 0}
!80 = !{!"_ZTSN7doctest13IContextScopeE"}
!81 = !{!"bool", !71, i64 0}
!82 = !{!"_ZTSN7doctest6detail16ContextScopeBaseE", !80, i64 0, !81, i64 8}
!83 = !{!82, !81, i64 8}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{ptr @"_ZN7doctest6detail12ContextScopeIZN5utilsL19DOCTEST_ANON_FUNC_2EvE3$_0ED2Ev"}
!87 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !71, i64 0}
!88 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !87, i64 0, !71, i64 8}
!89 = !{!88, !87, i64 0}
!90 = !{!71, !71, i64 0}
!91 = !{!"any pointer", !71, i64 0}
!92 = !{!"p1 _ZTSSo", !91, i64 0}
!93 = !{!"_ZTSN7doctest6StringE", !71, i64 0}
!94 = !{!"p1 _ZTSN7doctest6detail8TestCaseE", !91, i64 0}
!95 = !{!"_ZTSN7doctest14ContextOptionsE", !92, i64 0, !93, i64 8, !94, i64 32, !93, i64 40, !93, i64 64, !72, i64 88, !72, i64 92, !72, i64 96, !72, i64 100, !72, i64 104, !81, i64 108, !81, i64 109, !81, i64 110, !81, i64 111, !81, i64 112, !81, i64 113, !81, i64 114, !81, i64 115, !81, i64 116, !81, i64 117, !81, i64 118, !81, i64 119, !81, i64 120, !81, i64 121, !81, i64 122, !81, i64 123, !81, i64 124, !81, i64 125, !81, i64 126, !81, i64 127, !81, i64 128, !81, i64 129, !81, i64 130, !81, i64 131, !81, i64 132, !81, i64 133, !81, i64 134}
!96 = !{!95, !81, i64 114}
!97 = !{!"p1 omnipotent char", !91, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!98, !97, i64 0}
!100 = !{!"p1 _ZTSN7doctest12TestCaseDataE", !91, i64 0}
!101 = !{!"_ZTSN7doctest8ContainsE", !93, i64 0}
!102 = !{!"_ZTSN7doctest10AssertData14StringContainsE", !101, i64 0, !81, i64 24}
!103 = !{!"_ZTSN7doctest10AssertDataE", !100, i64 0, !77, i64 8, !97, i64 16, !72, i64 24, !97, i64 32, !81, i64 40, !81, i64 41, !93, i64 48, !93, i64 72, !81, i64 96, !97, i64 104, !102, i64 112}
!104 = !{!103, !81, i64 96}
!105 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!106 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !88, i64 0}
!107 = !{!106, !87, i64 0}
!108 = !{!"p1 int", !91, i64 0}
!109 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !97, i64 0}
!110 = !{!109, !97, i64 0}
!111 = !{!"long", !71, i64 0}
!112 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !109, i64 0, !111, i64 8, !71, i64 16}
!113 = !{!112, !111, i64 8}
!114 = !{!112, !97, i64 0}
!115 = !{!"p1 _ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !91, i64 0}
!116 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail8json_refINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEE", !106, i64 0, !115, i64 16}
!117 = !{!116, !115, i64 16}
!118 = !{!98, !97, i64 16}
!119 = !{!98, !97, i64 8}
!120 = !{!87, !87, i64 0}
!121 = !{i64 0, i64 1, !120, i64 8, i64 8, !90}
!122 = !{!"_ZTSN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEE", !106, i64 0, !77, i64 16}
!123 = !{!122, !77, i64 16}
!124 = !{!"_ZTSNSt12_Vector_baseIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESaISE_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!125 = !{!124, !115, i64 0}
!126 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !72, i64 8, !72, i64 12}
!127 = !{!126, !72, i64 8}
!128 = !{!126, !72, i64 12}
!129 = !{!92, !92, i64 0}
!130 = !{!"p1 _ZTSN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEE", !91, i64 0}
!131 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0}
!132 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !131, i64 0}
!133 = !{!"_ZTSSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EE", !130, i64 0, !132, i64 8}
!134 = !{!133, !130, i64 0}
!135 = !{!132, !131, i64 0}
!136 = !{!72, !72, i64 0}
!137 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!138 = !{!"p1 _ZTSNSt6locale5_ImplE", !91, i64 0}
!139 = !{!"_ZTSSt6locale", !138, i64 0}
!140 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48, !139, i64 56}
!141 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !91, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !91, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"p1 _ZTSN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEE", !91, i64 0}
!146 = !{!"_ZTSSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EE", !145, i64 0, !132, i64 8}
!147 = !{!146, !145, i64 0}
!148 = !{!"_ZTSN12_GLOBAL__N_112SaxCountdownE", !72, i64 0}
!149 = !{!148, !72, i64 0}
!150 = !{!97, !97, i64 0}
!151 = !{!111, !111, i64 0}
!152 = !{!"p1 long", !91, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_61vE3$_0ED2Ev"}
!155 = !{!108, !108, i64 0}
!156 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_61vE3$_1ED2Ev"}
!157 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_61vE3$_2ED2Ev"}
end_hunk_4
