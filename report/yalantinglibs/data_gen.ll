Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_ZNSG_6routerISH_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvS15_EUlSD_SK_SN_E_EEES0_INSS_14_Node_iteratorISQ_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.033.0.in = phi ptr [ %i.q, %bb.b ], [ %.sroa.033.0, %bb.d ]
  %.sroa.033.0 = load ptr, ptr %.sroa.033.0.in, align 8, !tbaa !707 ; 4 uses
  %i.r = icmp eq ptr %.sroa.033.0, null
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !280
  %i.u = icmp eq i32 %i.d, %i.t
  br i1 %i.u, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i, label %bb.c, !llvm.loop !6578

bb.e:                                             ; preds = %bb.c
  %i.v = zext i32 %i.d to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !614
  %i.y = urem i64 %i.v, %i.x
  br label %.critedge28

bb.f:                                             ; preds = %.thread
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !707  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !280
  %i.ac = icmp eq i32 %i.d, %i.ab
  br i1 %i.ac, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %i.d, %i.ag
  br i1 %i.ad, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i, label %.lr.ph.i.i, !llvm.loop !56

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.f ]
  %i.ae = load ptr, ptr %.020.i.i, align 8, !tbaa !707 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !280 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.l
  %.not19.i.i = icmp eq i64 %i.ai, %i.m
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !56

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge28, !llvm.loop !56

.critedge28:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.aj = phi i64 [ %i.y, %bb.e ], [ %i.m, %.thread ], [ %i.m, %..loopexit_crit_edge21.i.i ], [ %i.m, %.lr.ph.i.i ]
  %i.ak = phi i64 [ %i.v, %bb.e ], [ %i.j, %.thread ], [ %i.j, %..loopexit_crit_edge21.i.i ], [ %i.j, %.lr.ph.i.i ]
  %i.al = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSS_10_Hash_nodeISQ_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge28
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.am

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.037.0.ph = phi ptr [ %.sroa.033.0, %bb.d ], [ %i.z, %bb.f ], [ %i.ae, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #50
  br label %_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i
  %.sroa.4.045 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.037.044 = phi ptr [ %.sroa.037.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i ], [ %i.al, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.037.044, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.045, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSB_SI_SL_E_E9_M_invokeERKSt9_Any_dataOSB_SI_OSL_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.676") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) #10 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !411, !noalias !6583
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !460, !noalias !6583
  tail call void @_ZN8coro_rpc8internal7executeINS_8protocol17coro_rpc_protocolENS2_20struct_pack_protocolETnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEvEESt4pairINS_8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSD_ERSt10shared_ptrINS_14context_info_tIT_EEEPT2_(ptr dead_on_unwind writable sret(%"struct.std::pair.676") align 8 %0, i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSB_SI_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS_14context_info_tIS2_EEESt7variantIJNS0_20struct_pack_protocolEEEE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !376
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc8internal7executeINS_8protocol17coro_rpc_protocolENS2_20struct_pack_protocolETnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEvEESt4pairINS_8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSD_ERSt10shared_ptrINS_14context_info_tIT_EEEPT2_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.676") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %6 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %7 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %8 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %9 = alloca %"class.std::tuple.2040", align 8   ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !6598
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  store ptr %2, ptr %7, align 8, !tbaa !1032
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.c, align 8, !tbaa !1035
  %i.d = invoke i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorIiSaIiEEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %2, ptr %5, align 8, !tbaa !1032
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !1035
  %i.g = invoke i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt5tupleIJSt6vectorIiSaIiEEEEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.not.i11 = icmp eq i32 %i.g, 0
  br i1 %.not.i11, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  store i16 4, ptr %0, align 8, !tbaa !288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.i, ptr noundef nonnull align 1 dereferenceable(15) @.str.99, i64 15, i1 false)
  %.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 0, ptr %.sroa.4.16..sroa_idx, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.j, align 8, !tbaa !290
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.m = load ptr, ptr %9, align 8, !tbaa !447, !noalias !6599 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !449, !noalias !6599
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !448, !noalias !6599 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !6599
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !289, !alias.scope !6600
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.s, align 8, !tbaa !290, !alias.scope !6600
  store i8 0, ptr %i.r, align 8, !tbaa !279, !alias.scope !6600
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 8 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 6 uses
  %i.x = icmp ult i64 %i.w, 256                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %bb.h, !prof !687

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ult i64 %i.w, 65536
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.v, 2
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ult i64 %i.w, 4294967296
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = add nuw nsw i64 %i.v, 4
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ac = add i64 %i.v, 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.g
  %.sroa.1228.1.i = phi i8 [ 0, %bb.g ], [ 8, %bb.i ], [ 16, %bb.k ], [ 24, %bb.l ] ; 2 uses
  %storemerge.i.in.i = phi i64 [ %i.v, %bb.g ], [ %i.z, %bb.i ], [ %i.ab, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = add i64 %storemerge.i.in.i, 5           ; 6 uses
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.af = icmp slt i64 %i.ad, 0
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #52
          to label %.noexc27 unwind label %bb.u

.noexc27:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %.0.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 30) ; 2 uses
  %i.ag = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !291

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #52
          to label %.noexc28 unwind label %bb.u

.noexc28:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.n
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #51
          to label %.noexc unwind label %bb.u     ; 3 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.ai, align 1, !tbaa !279
  store ptr %i.ai, ptr %10, align 8, !tbaa !286
  store i64 %.0.i, ptr %i.r, align 8, !tbaa !279
  br label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i

_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.aj = phi ptr [ %i.ai, %.noexc ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !290
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  store i8 0, ptr %i.ak, align 1, !tbaa !279
  %i.al = load ptr, ptr %10, align 8, !tbaa !286
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.am, align 1, !tbaa !279
  %i.an = load ptr, ptr %10, align 8, !tbaa !286  ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i
  store i32 662474000, ptr %i.an, align 1
  %i.ap = lshr exact i64 %i.v, 2
  %.0.extract.trunc.i.i.i = trunc i64 %i.ap to i8
  store i8 %.0.extract.trunc.i.i.i, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  br label %bb.v

bb.q:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i
  store i32 662474001, ptr %i.an, align 1
  store i8 %.sroa.1228.1.i, ptr %i.ao, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 5 ; 4 uses
  %i.as = lshr exact i8 %.sroa.1228.1.i, 3
  switch i8 %i.as, label %default.unreachable.i.i.i [
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %.0.extract.trunc6.i.i.i = trunc i64 %i.w to i16
  store i16 %.0.extract.trunc6.i.i.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %.0.extract.trunc.i5.i.i = trunc i64 %i.w to i32
  store i32 %.0.extract.trunc.i5.i.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i.i

bb.t:                                             ; preds = %bb.q
  store i64 %i.w, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i.i

default.unreachable.i.i.i:                        ; preds = %bb.q
  unreachable

_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sink8.i.i.i = phi i64 [ 8, %bb.t ], [ 4, %bb.s ], [ 2, %bb.r ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink8.i.i.i
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !286, !alias.scope !6600 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %.body13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.ax = load i64, ptr %i.r, align 8, !tbaa !279, !alias.scope !6600
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #50
  br label %.body13

bb.v:                                             ; preds = %bb.p, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i.i
  %.sink.i = phi ptr [ %i.aq, %bb.p ], [ %i.at, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i.i ]
  %i.az = icmp ult i64 %i.v, 9223372036854775807
  call void @llvm.assume(i1 %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink.i, ptr align 1 %i.m, i64 %i.v, i1 false)
  store i16 0, ptr %0, align 8, !tbaa !288
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !289
  %i.bc = load ptr, ptr %10, align 8, !tbaa !286  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.r
  br i1 %i.bd, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

bb.w:                                             ; preds = %bb.v
  %i.be = load i64, ptr %i.s, align 8, !tbaa !290 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.v
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !286
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !279
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !279
  %.pre = load i64, ptr %i.s, align 8, !tbaa !290
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.bi = phi i64 [ %i.be, %bb.w ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bk = ptrtoint ptr %i.q to i64
  %i.bl = sub i64 %i.bk, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.bl) #50
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.body13:                                          ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %.not.i.i.i20 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i20, label %.body, label %bb.y

bb.y:                                             ; preds = %.body13
  %i.bm = ptrtoint ptr %i.q to i64
  %i.bn = sub i64 %i.bm, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.bn) #50
  br label %.body

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load ptr, ptr %9, align 8, !tbaa !447   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !448
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #50
  br label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  ret void

.body:                                            ; preds = %.body13, %bb.y, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.au, %bb.y ], [ %i.au, %.body13 ]
  %i.bu = load ptr, ptr %9, align 8, !tbaa !447   ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i22, label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit23, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !448
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #50
  br label %_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit23

_ZNSt10_Head_baseILm0ESt6vectorIiSaIiEELb0EED2Ev.exit23: ; preds = %.body, %bb.aa
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_ZNSG_6routerISH_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS1B_EEEEEEvS15_EUlSD_SK_SN_E_EEES0_INSS_14_Node_iteratorISQ_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.033.0.in = phi ptr [ %i.q, %bb.b ], [ %.sroa.033.0, %bb.d ]
  %.sroa.033.0 = load ptr, ptr %.sroa.033.0.in, align 8, !tbaa !707 ; 4 uses
  %i.r = icmp eq ptr %.sroa.033.0, null
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !280
  %i.u = icmp eq i32 %i.d, %i.t
  br i1 %i.u, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i, label %bb.c, !llvm.loop !6657

bb.e:                                             ; preds = %bb.c
  %i.v = zext i32 %i.d to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !614
  %i.y = urem i64 %i.v, %i.x
  br label %.critedge28

bb.f:                                             ; preds = %.thread
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !707  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !280
  %i.ac = icmp eq i32 %i.d, %i.ab
  br i1 %i.ac, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %i.d, %i.ag
  br i1 %i.ad, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i, label %.lr.ph.i.i, !llvm.loop !56

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.f ]
  %i.ae = load ptr, ptr %.020.i.i, align 8, !tbaa !707 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !280 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = urem i64 %i.ah, %i.l
  %.not19.i.i = icmp eq i64 %i.ai, %i.m
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !56

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge28, !llvm.loop !56

.critedge28:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.aj = phi i64 [ %i.y, %bb.e ], [ %i.m, %.thread ], [ %i.m, %..loopexit_crit_edge21.i.i ], [ %i.m, %.lr.ph.i.i ]
  %i.ak = phi i64 [ %i.v, %bb.e ], [ %i.j, %.thread ], [ %i.j, %..loopexit_crit_edge21.i.i ], [ %i.j, %.lr.ph.i.i ]
  %i.al = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSS_10_Hash_nodeISQ_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge28
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.am

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.037.0.ph = phi ptr [ %.sroa.033.0, %bb.d ], [ %i.z, %bb.f ], [ %i.ae, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #50
  br label %_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i
  %.sroa.4.045 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.037.044 = phi ptr [ %.sroa.037.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i ], [ %i.al, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.037.044, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.045, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaISS_EEEEEEvRKjEUlSB_SI_SL_E_E9_M_invokeERKSt9_Any_dataOSB_SI_OSL_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.676") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) #10 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !411, !noalias !6662
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !460, !noalias !6662
  tail call void @_ZN8coro_rpc8internal7executeINS_8protocol17coro_rpc_protocolENS2_20struct_pack_protocolETnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS6_EEEEvEESt4pairINS_8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSE_ERSt10shared_ptrINS_14context_info_tIT_EEEPT2_(ptr dead_on_unwind writable sret(%"struct.std::pair.676") align 8 %0, i64 %.sroa.01.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaISS_EEEEEEvRKjEUlSB_SI_SL_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS9_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS9_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS9_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS9_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS7_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS_14context_info_tIS2_EEESt7variantIJNS0_20struct_pack_protocolEEEE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !376
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS9_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS9_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS9_EEEEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc8internal7executeINS_8protocol17coro_rpc_protocolENS2_20struct_pack_protocolETnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS6_EEEEvEESt4pairINS_8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSE_ERSt10shared_ptrINS_14context_info_tIT_EEEPT2_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.676") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %6 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %7 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %8 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %9 = alloca %"class.std::tuple.2077", align 8   ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !alias.scope !6677
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  store ptr %2, ptr %7, align 8, !tbaa !1032
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.c, align 8, !tbaa !1035
  %i.d = invoke i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorI4rectSaIS6_EEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %2, ptr %5, align 8, !tbaa !1032
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !1033
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !1035
  %i.g = invoke i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt5tupleIJSt6vectorI4rectSaIS7_EEEEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.not.i11 = icmp eq i32 %i.g, 0
  br i1 %.not.i11, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  store i16 4, ptr %0, align 8, !tbaa !288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.i, ptr noundef nonnull align 1 dereferenceable(15) @.str.99, i64 15, i1 false)
  %.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 0, ptr %.sroa.4.16..sroa_idx, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %i.j, align 8, !tbaa !290
  br label %_ZNSt6vectorI4rectSaIS0_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.b, %bb.d
  %i.m = load ptr, ptr %9, align 8, !tbaa !470, !noalias !6678 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !474, !noalias !6678
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !471, !noalias !6678 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !6678
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !289, !alias.scope !6679
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.s, align 8, !tbaa !290, !alias.scope !6679
  store i8 0, ptr %i.r, align 8, !tbaa !279, !alias.scope !6679
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 8 uses
  %i.w = ashr exact i64 %i.v, 5                   ; 6 uses
  %i.x = icmp ult i64 %i.w, 256                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %bb.h, !prof !687

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ult i64 %i.w, 65536
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.v, 2
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ult i64 %i.w, 4294967296
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = add nuw nsw i64 %i.v, 4
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ac = add i64 %i.v, 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.g
  %.sroa.1228.1.i = phi i8 [ 0, %bb.g ], [ 8, %bb.i ], [ 16, %bb.k ], [ 24, %bb.l ] ; 2 uses
  %storemerge.i.in.i = phi i64 [ %i.v, %bb.g ], [ %i.z, %bb.i ], [ %i.ab, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = add i64 %storemerge.i.in.i, 5           ; 6 uses
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.af = icmp slt i64 %i.ad, 0
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #52
          to label %.noexc27 unwind label %bb.u

.noexc27:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %.0.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 30) ; 2 uses
  %i.ag = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !291

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #52
          to label %.noexc28 unwind label %bb.u

.noexc28:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.n
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #51
          to label %.noexc unwind label %bb.u     ; 3 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.ai, align 1, !tbaa !279
  store ptr %i.ai, ptr %10, align 8, !tbaa !286
  store i64 %.0.i, ptr %i.r, align 8, !tbaa !279
  br label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i

_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.aj = phi ptr [ %i.ai, %.noexc ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !290
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  store i8 0, ptr %i.ak, align 1, !tbaa !279
  %i.al = load ptr, ptr %10, align 8, !tbaa !286
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.am, align 1, !tbaa !279
  %i.an = load ptr, ptr %10, align 8, !tbaa !286  ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i
  store i32 1136828682, ptr %i.an, align 1
  %i.ap = lshr exact i64 %i.v, 5
  %.0.extract.trunc.i.i.i = trunc i64 %i.ap to i8
  store i8 %.0.extract.trunc.i.i.i, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 5
  br label %bb.v

bb.q:                                             ; preds = %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i
  store i32 1136828683, ptr %i.an, align 1
  store i8 %.sroa.1228.1.i, ptr %i.ao, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 5 ; 4 uses
  %i.as = lshr exact i8 %.sroa.1228.1.i, 3
  switch i8 %i.as, label %default.unreachable.i.i.i [
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %.0.extract.trunc6.i.i.i = trunc i64 %i.w to i16
  store i16 %.0.extract.trunc6.i.i.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %.0.extract.trunc.i5.i.i = trunc i64 %i.w to i32
  store i32 %.0.extract.trunc.i5.i.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i.i

bb.t:                                             ; preds = %bb.q
  store i64 %i.w, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i.i

default.unreachable.i.i.i:                        ; preds = %bb.q
  unreachable

_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %.sink8.i.i.i = phi i64 [ 8, %bb.t ], [ 4, %bb.s ], [ 2, %bb.r ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink8.i.i.i
  br label %bb.v

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.o, %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !286, !alias.scope !6679 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %.body13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.ax = load i64, ptr %i.r, align 8, !tbaa !279, !alias.scope !6679
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #50
  br label %.body13

bb.v:                                             ; preds = %bb.p, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i.i
  %.sink.i = phi ptr [ %i.aq, %bb.p ], [ %i.at, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i.i ]
  %i.az = icmp ult i64 %i.v, 9223372036854775807
  call void @llvm.assume(i1 %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink.i, ptr align 1 %i.m, i64 %i.v, i1 false)
  store i16 0, ptr %0, align 8, !tbaa !288
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !289
  %i.bc = load ptr, ptr %10, align 8, !tbaa !286  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.r
  br i1 %i.bd, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

bb.w:                                             ; preds = %bb.v
  %i.be = load i64, ptr %i.s, align 8, !tbaa !290 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.v
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !286
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !279
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !279
  %.pre = load i64, ptr %i.s, align 8, !tbaa !290
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.bi = phi i64 [ %i.be, %bb.w ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !290
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI4rectSaIS0_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bk = ptrtoint ptr %i.q to i64
  %i.bl = sub i64 %i.bk, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.bl) #50
  br label %_ZNSt6vectorI4rectSaIS0_EED2Ev.exit

.body13:                                          ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %.not.i.i.i20 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i20, label %.body, label %bb.y

bb.y:                                             ; preds = %.body13
  %i.bm = ptrtoint ptr %i.q to i64
  %i.bn = sub i64 %i.bm, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.bn) #50
  br label %.body

_ZNSt6vectorI4rectSaIS0_EED2Ev.exit:              ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load ptr, ptr %9, align 8, !tbaa !470   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt6vectorI4rectSaIS1_EELb0EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI4rectSaIS0_EED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !471
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #50
  br label %_ZNSt10_Head_baseILm0ESt6vectorI4rectSaIS1_EELb0EED2Ev.exit

_ZNSt10_Head_baseILm0ESt6vectorI4rectSaIS1_EELb0EED2Ev.exit: ; preds = %_ZNSt6vectorI4rectSaIS0_EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  ret void

.body:                                            ; preds = %.body13, %bb.y, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.au, %bb.y ], [ %i.au, %.body13 ]
  %i.bu = load ptr, ptr %9, align 8, !tbaa !470   ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i22, label %_ZNSt10_Head_baseILm0ESt6vectorI4rectSaIS1_EELb0EED2Ev.exit23, label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !471
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #50
  br label %_ZNSt10_Head_baseILm0ESt6vectorI4rectSaIS1_EELb0EED2Ev.exit23

_ZNSt10_Head_baseILm0ESt6vectorI4rectSaIS1_EELb0EED2Ev.exit23: ; preds = %.body, %bb.aa
end_hunk_1
begin_hunk_2_@_ZN8coro_rpc15coro_rpc_client14prepare_bufferITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEEJS4_EEES2_ISt4byteSaIS5_EERjmDpOT0_:bb.a
  %i.el = add nsw i64 %i.ej, 13                   ; 3 uses
  %i.em = load ptr, ptr %i.dv, align 8, !tbaa !286 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.eb
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i102
  %i.eo = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.eo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i102
  %i.ep = load i64, ptr %i.eb, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108
  %i.eq = phi i64 [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108 ]
  %.not.i.i.i105 = icmp ugt i64 %i.el, %i.eq
  br i1 %.not.i.i.i105, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.er, ptr noundef nonnull align 1 dereferenceable(13) @.str.329, i64 13, i1 false)
  br label %bb.bb

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 noundef %i.ej, i64 noundef 0, ptr noundef nonnull @.str.329, i64 noundef 13)
          to label %bb.bb unwind label %bb.bj

bb.bb:                                            ; preds = %bb.az, %bb.ba
  store i64 %i.el, ptr %i.dw, align 8, !tbaa !290
  %i.es = load ptr, ptr %i.dv, align 8, !tbaa !286
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.el
  store i8 0, ptr %i.et, align 1, !tbaa !279
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ev = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsImEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.bd, label %_ZN7easylog6loggerILm0EE8instanceEv.exit115, !prof !281

bb.bd:                                            ; preds = %bb.bc
  %i.ey = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i112 = icmp eq i32 %i.ey, 0
  br i1 %.not.i112, label %_ZN7easylog6loggerILm0EE8instanceEv.exit115, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ez = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit115

bb.bg:                                            ; preds = %bb.be
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body113

_ZN7easylog6loggerILm0EE8instanceEv.exit115:      ; preds = %bb.bf, %bb.bd, %bb.bc
  %i.fb = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !414, !noundef !366
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117, label %bb.bh, !prof !291

bb.bh:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit115
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %i.ev)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117 unwind label %bb.bj

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit115, %bb.bh
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !286 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.eb
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117
  %i.ff = load i64, ptr %i.eb, align 8, !tbaa !279
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !286 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZN7easylog8record_tD2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !279
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #50
  br label %_ZN7easylog8record_tD2Ev.exit123

_ZN7easylog8record_tD2Ev.exit123:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.bl

bb.bi:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit89.thread
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %.invoke153, %bb.bh, %bb.ba, %bb.ax, %bb.bb
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.bg, %bb.bj
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.fo, %bb.bj ], [ %i.fa, %bb.bg ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #36
  br label %bb.bk

bb.bk:                                            ; preds = %.body113, %bb.bi
  %.pn36 = phi { ptr, i32 } [ %eh.lpad-body114, %.body113 ], [ %i.fn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

.thread:                                          ; preds = %bb.ak
  %i.fp = load i32, ptr %2, align 4, !tbaa !280
  %i.fq = trunc nuw i64 %i.cy to i32
  store i8 21, ptr %i.cu, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.fp, ptr %.sroa.6130.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 1721298805, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 %i.fq, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 %i.a, ptr %.sroa.9.0..sroa_idx, align 1
  %i.fr = load <2 x ptr>, ptr %5, align 16, !tbaa !376
  store <2 x ptr> %i.fr, ptr %0, align 8, !tbaa !376
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !3300
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !3300
  br label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit

bb.bl:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit82, %_ZN7easylog8record_tD2Ev.exit123, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.pr = load ptr, ptr %5, align 16, !tbaa !3299  ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fw = load ptr, ptr %i.fv, align 16, !tbaa !3300
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %.pr to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fz) #50
  br label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit

_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit:            ; preds = %.thread, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

.body:                                            ; preds = %bb.aj, %bb.bk, %bb.e, %bb.k, %bb.ap, %bb.au, %bb.f
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.f, %bb.e ], [ %i.de, %bb.ap ], [ %.pn.pn, %bb.aj ], [ %i.dm, %bb.au ], [ %i.o, %bb.k ], [ %.pn36, %bb.bk ]
  %i.ga = load ptr, ptr %5, align 16, !tbaa !3299 ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit126, label %bb.bn

bb.bn:                                            ; preds = %.body
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !3300
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #50
  br label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit126

_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit126:         ; preds = %.body, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %.pn36.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11struct_pack24serialize_to_with_offsetILm0ETkNS_6detail18struct_pack_bufferESt6vectorISt4byteSaIS3_EEJS2_IiSaIiEEEEEvRT0_mDpRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449, !noalias !10292
  %i.c = load ptr, ptr %2, align 8, !tbaa !447, !noalias !10292
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %i.h = icmp ult i64 %i.g, 256                   ; 2 uses
  br i1 %i.h, label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIiSaIiEEEEENS_21serialize_buffer_sizeEDpRKT0_.exit, label %bb.b, !prof !687

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 65536
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %i.f, 2
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIiSaIiEEEEENS_21serialize_buffer_sizeEDpRKT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.g, 4294967296
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i64 %i.f, 4
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIiSaIiEEEEENS_21serialize_buffer_sizeEDpRKT0_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = add i64 %i.f, 8
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIiSaIiEEEEENS_21serialize_buffer_sizeEDpRKT0_.exit

_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIiSaIiEEEEENS_21serialize_buffer_sizeEDpRKT0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.sroa.1229.1 = phi i8 [ 0, %bb.a ], [ 8, %bb.c ], [ 16, %bb.e ], [ 24, %bb.f ] ; 2 uses
  %storemerge.i.in = phi i64 [ %i.f, %bb.a ], [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3298
  %i.p = load ptr, ptr %0, align 8, !tbaa !3299   ; 5 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = add i64 %1, 5
  %i.u = add i64 %i.t, %storemerge.i.in
  %i.v = add i64 %i.u, %i.s                       ; 5 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIiSaIiEEEEENS_21serialize_buffer_sizeEDpRKT0_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.172) #52
  unreachable

bb.h:                                             ; preds = %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorIiSaIiEEEEENS_21serialize_buffer_sizeEDpRKT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2051
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.r                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.v
  br i1 %i.ab, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i, label %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #51 ; 4 uses
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.aa) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !2052
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !2051
  br label %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit

_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i
  %i.af = phi ptr [ %i.p, %bb.h ], [ %i.ac, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !2053
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.s
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %1 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  br i1 %i.h, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit
  store i32 662474000, ptr %i.ai, align 1
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.al = load ptr, ptr %2, align 8, !tbaa !447
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 2
  %.0.extract.trunc.i.i = trunc i64 %i.ap to i8
  store i8 %.0.extract.trunc.i.i, ptr %i.aj, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  br label %_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tENS0_13memory_writerEJSt6vectorIiSaIiEEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_.exit

bb.l:                                             ; preds = %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit
  store i32 662474001, ptr %i.ai, align 1
  store i8 %.sroa.1229.1, ptr %i.aj, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 5 ; 4 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.at = load ptr, ptr %2, align 8, !tbaa !447
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2                 ; 3 uses
  %i.ay = lshr exact i8 %.sroa.1229.1, 3
  switch i8 %i.ay, label %default.unreachable.i.i [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %.0.extract.trunc6.i.i = trunc i64 %i.ax to i16
  store i16 %.0.extract.trunc6.i.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i

bb.n:                                             ; preds = %bb.l
  %.0.extract.trunc.i5.i = trunc i64 %i.ax to i32
  store i32 %.0.extract.trunc.i5.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i

bb.o:                                             ; preds = %bb.l
  store i64 %i.ax, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i

default.unreachable.i.i:                          ; preds = %bb.l
  unreachable

_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %.sink8.i.i = phi i64 [ 8, %bb.o ], [ 4, %bb.n ], [ 2, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink8.i.i
  br label %_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tENS0_13memory_writerEJSt6vectorIiSaIiEEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_.exit

_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tENS0_13memory_writerEJSt6vectorIiSaIiEEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_.exit: ; preds = %bb.k, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i
  %.sink = phi ptr [ %i.aq, %bb.k ], [ %i.az, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorIiSaIiEELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES5_EEvRKT2_.exit.i ]
  %i.ba = load ptr, ptr %2, align 8, !tbaa !447   ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, 9223372036854775807
  tail call void @llvm.assume(i1 %i.bf)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr align 1 %i.ba, i64 %i.be, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7executeINS_6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEENS7_11ib_socket_tEJSH_EEENS9_4coro4LazyINSC_9rpc_errorEEERT0_RjNS7_9data_viewEDpOT1_EUlvE0_S3_EclINS7_21callback_awaitor_baseISB_NS7_16callback_awaitorISB_EEE15awaitor_handlerEEEvT_EUlvE_EEEEvOS12_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::binder0.5596", align 8 ; 5 uses
  %3 = alloca %"struct.asio::detail::executor_op<asio::detail::binder0<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:169:19)>, std::allocator<void>>::ptr.5597", align 8 ; 10 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !378    ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge

._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365, !nonnull !366, !align !367
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 3 uses
  %.08.i.i = load ptr, ptr %i.h, align 8, !tbaa !819 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread, label %.lr.ph.i.i

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !3613
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.010.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %.08.i.i, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.010.i.i, align 8, !tbaa !817
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.l, align 8, !tbaa !819 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %.lr.ph.i.i, !llvm.loop !43

_ZN4asio6detail9scheduler12can_dispatchEv.exit:   ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !818
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3616
  fence acquire
  invoke void @_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEENS_11ib_socket_tEJS9_EEENS1_4coro4LazyINS4_9rpc_errorEEERT0_RjNS_9data_viewEDpOT1_EUlvE0_N4asio10io_context19basic_executor_typeISaIvELm0EEEEclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEENS4_11ib_socket_tEJSE_EEENS6_4coro4LazyINS9_9rpc_errorEEERT0_RjNS4_9data_viewEDpOT1_EUlvE0_NS1_10io_context19basic_executor_typeISaIvELm0EEEEclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvT_EUlvE_EES15_EEvRS13_SL_.exit unwind label %bb.e

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z12array_1K_intSt6vectorIiSaIiEEEENS4_11ib_socket_tEJSE_EEENS6_4coro4LazyINS9_9rpc_errorEEERT0_RjNS4_9data_viewEDpOT1_EUlvE0_NS1_10io_context19basic_executor_typeISaIvELm0EEEEclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvT_EUlvE_EES15_EEvRS13_SL_.exit: ; preds = %bb.d
  fence release
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  fence release
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #36 ; 0 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !378
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !365, !nonnull !366, !align !367
end_hunk_2
begin_hunk_3_@_ZN8coro_rpc15coro_rpc_client14prepare_bufferITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS3_EEEEJS5_EEES2_ISt4byteSaIS6_EERjmDpOT0_:bb.a
  %i.el = add nsw i64 %i.ej, 13                   ; 3 uses
  %i.em = load ptr, ptr %i.dv, align 8, !tbaa !286 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.eb
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i102
  %i.eo = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.eo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i102
  %i.ep = load i64, ptr %i.eb, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108
  %i.eq = phi i64 [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i108 ]
  %.not.i.i.i105 = icmp ugt i64 %i.el, %i.eq
  br i1 %.not.i.i.i105, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.er, ptr noundef nonnull align 1 dereferenceable(13) @.str.329, i64 13, i1 false)
  br label %bb.bb

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 noundef %i.ej, i64 noundef 0, ptr noundef nonnull @.str.329, i64 noundef 13)
          to label %bb.bb unwind label %bb.bj

bb.bb:                                            ; preds = %bb.az, %bb.ba
  store i64 %i.el, ptr %i.dw, align 8, !tbaa !290
  %i.es = load ptr, ptr %i.dv, align 8, !tbaa !286
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.el
  store i8 0, ptr %i.et, align 1, !tbaa !279
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ev = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsImEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.bd, label %_ZN7easylog6loggerILm0EE8instanceEv.exit115, !prof !281

bb.bd:                                            ; preds = %bb.bc
  %i.ey = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  %.not.i112 = icmp eq i32 %i.ey, 0
  br i1 %.not.i112, label %_ZN7easylog6loggerILm0EE8instanceEv.exit115, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ez = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit115

bb.bg:                                            ; preds = %bb.be
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #36
  br label %.body113

_ZN7easylog6loggerILm0EE8instanceEv.exit115:      ; preds = %bb.bf, %bb.bd, %bb.bc
  %i.fb = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !414, !noundef !366
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117, label %bb.bh, !prof !291

bb.bh:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit115
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %i.ev)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117 unwind label %bb.bj

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit115, %bb.bh
  %i.fd = load ptr, ptr %i.dv, align 8, !tbaa !286 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.eb
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117
  %i.ff = load i64, ptr %i.eb, align 8, !tbaa !279
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !286 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZN7easylog8record_tD2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !279
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #50
  br label %_ZN7easylog8record_tD2Ev.exit123

_ZN7easylog8record_tD2Ev.exit123:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.bl

bb.bi:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit89.thread
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %.invoke153, %bb.bh, %bb.ba, %bb.ax, %bb.bb
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.bg, %bb.bj
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.fo, %bb.bj ], [ %i.fa, %bb.bg ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #36
  br label %bb.bk

bb.bk:                                            ; preds = %.body113, %bb.bi
  %.pn36 = phi { ptr, i32 } [ %eh.lpad-body114, %.body113 ], [ %i.fn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.body

.thread:                                          ; preds = %bb.ak
  %i.fp = load i32, ptr %2, align 4, !tbaa !280
  %i.fq = trunc nuw i64 %i.cy to i32
  store i8 21, ptr %i.cu, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.fp, ptr %.sroa.6130.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 1784900508, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 %i.fq, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 %i.a, ptr %.sroa.9.0..sroa_idx, align 1
  %i.fr = load <2 x ptr>, ptr %5, align 16, !tbaa !376
  store <2 x ptr> %i.fr, ptr %0, align 8, !tbaa !376
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !3300
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !3300
  br label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit

bb.bl:                                            ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit82, %_ZN7easylog8record_tD2Ev.exit123, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.pr = load ptr, ptr %5, align 16, !tbaa !3299  ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fw = load ptr, ptr %i.fv, align 16, !tbaa !3300
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %.pr to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fz) #50
  br label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit

_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit:            ; preds = %.thread, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

.body:                                            ; preds = %bb.aj, %bb.bk, %bb.e, %bb.k, %bb.ap, %bb.au, %bb.f
  %.pn36.pn.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.f, %bb.e ], [ %i.de, %bb.ap ], [ %.pn.pn, %bb.aj ], [ %i.dm, %bb.au ], [ %i.o, %bb.k ], [ %.pn36, %bb.bk ]
  %i.ga = load ptr, ptr %5, align 16, !tbaa !3299 ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit126, label %bb.bn

bb.bn:                                            ; preds = %.body
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gc = load ptr, ptr %i.gb, align 16, !tbaa !3300
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #50
  br label %_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit126

_ZNSt6vectorISt4byteSaIS0_EED2Ev.exit126:         ; preds = %.body, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %.pn36.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11struct_pack24serialize_to_with_offsetILm0ETkNS_6detail18struct_pack_bufferESt6vectorISt4byteSaIS3_EEJS2_I4rectSaIS6_EEEEEvRT0_mDpRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !474, !noalias !10547
  %i.c = load ptr, ptr %2, align 8, !tbaa !470, !noalias !10547
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = icmp ult i64 %i.g, 256                   ; 2 uses
  br i1 %i.h, label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorI4rectSaIS3_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit, label %bb.b, !prof !687

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 65536
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %i.f, 2
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorI4rectSaIS3_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.g, 4294967296
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i64 %i.f, 4
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorI4rectSaIS3_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = add i64 %i.f, 8
  br label %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorI4rectSaIS3_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit

_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorI4rectSaIS3_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.a
  %.sroa.1229.1 = phi i8 [ 0, %bb.a ], [ 8, %bb.c ], [ 16, %bb.e ], [ 24, %bb.f ] ; 2 uses
  %storemerge.i.in = phi i64 [ %i.f, %bb.a ], [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3298
  %i.p = load ptr, ptr %0, align 8, !tbaa !3299   ; 5 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = add i64 %1, 5
  %i.u = add i64 %i.t, %storemerge.i.in
  %i.v = add i64 %i.u, %i.s                       ; 5 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorI4rectSaIS3_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.172) #52
  unreachable

bb.h:                                             ; preds = %_ZN11struct_pack6detail26get_serialize_runtime_infoILm0EJSt6vectorI4rectSaIS3_EEEEENS_21serialize_buffer_sizeEDpRKT0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2051
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.r                      ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.v
  br i1 %i.ab, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i, label %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %bb.h
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #51 ; 4 uses
  %i.ad = icmp sgt i64 %i.s, 0
  br i1 %i.ad, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.aa) #50
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !2052
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !2051
  br label %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit

_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i
  %i.af = phi ptr [ %i.p, %bb.h ], [ %i.ac, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !2053
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.s
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %1 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  br i1 %i.h, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit
  store i32 1136828682, ptr %i.ai, align 1
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !474
  %i.al = load ptr, ptr %2, align 8, !tbaa !470
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = lshr exact i64 %i.ao, 5
  %.0.extract.trunc.i.i = trunc i64 %i.ap to i8
  store i8 %.0.extract.trunc.i.i, ptr %i.aj, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  br label %_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tENS0_13memory_writerEJSt6vectorI4rectSaIS4_EEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_.exit

bb.l:                                             ; preds = %_ZN11struct_pack6detail6resizeISt4byteEEvRSt6vectorIT_SaIS4_EEm.exit
  store i32 1136828683, ptr %i.ai, align 1
  store i8 %.sroa.1229.1, ptr %i.aj, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 5 ; 4 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !474
  %i.at = load ptr, ptr %2, align 8, !tbaa !470
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 3 uses
  %i.ay = lshr exact i8 %.sroa.1229.1, 3
  switch i8 %i.ay, label %default.unreachable.i.i [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %.0.extract.trunc6.i.i = trunc i64 %i.ax to i16
  store i16 %.0.extract.trunc6.i.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i

bb.n:                                             ; preds = %bb.l
  %.0.extract.trunc.i5.i = trunc i64 %i.ax to i32
  store i32 %.0.extract.trunc.i5.i, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i

bb.o:                                             ; preds = %bb.l
  store i64 %i.ax, ptr %i.ar, align 1
  br label %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i

default.unreachable.i.i:                          ; preds = %bb.l
  unreachable

_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %.sink8.i.i = phi i64 [ 8, %bb.o ], [ 4, %bb.n ], [ 2, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink8.i.i
  br label %_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tENS0_13memory_writerEJSt6vectorI4rectSaIS4_EEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_.exit

_ZN11struct_pack6detail12serialize_toILm0ETkNS_8writer_tENS0_13memory_writerEJSt6vectorI4rectSaIS4_EEEEEvRT0_RKNS_21serialize_buffer_sizeEDpRKT1_.exit: ; preds = %bb.k, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i
  %.sink = phi ptr [ %i.aq, %bb.k ], [ %i.az, %_ZN11struct_pack6detail6packerINS0_13memory_writerESt6vectorI4rectSaIS4_EELb0EE13serialize_oneILm2ELm18446744073709551615ELm0ES6_EEvRKT2_.exit.i ]
  %i.ba = load ptr, ptr %2, align 8, !tbaa !470   ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !474
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, 9223372036854775807
  tail call void @llvm.assume(i1 %i.bf)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr align 1 %i.ba, i64 %i.be, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio10io_context19basic_executor_typeISaIvELm0EE7executeINS_6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaISG_EEEENS7_11ib_socket_tEJSI_EEENS9_4coro4LazyINSC_9rpc_errorEEERT0_RjNS7_9data_viewEDpOT1_EUlvE0_S3_EclINS7_21callback_awaitor_baseISB_NS7_16callback_awaitorISB_EEE15awaitor_handlerEEEvT_EUlvE_EEEEvOS13_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.asio::detail::binder0.5972", align 8 ; 5 uses
  %3 = alloca %"struct.asio::detail::executor_op<asio::detail::binder0<(lambda at /opt-bench/work/yalantinglibs/yalantinglibs/include/ylt/coro_io/coro_io.hpp:169:19)>, std::allocator<void>>::ptr.5973", align 8 ; 10 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !378    ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge

._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !365, !nonnull !366, !align !367
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 3 uses
  %.08.i.i = load ptr, ptr %i.h, align 8, !tbaa !819 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread, label %.lr.ph.i.i

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !3705
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.010.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %.08.i.i, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.010.i.i, align 8, !tbaa !817
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.l, align 8, !tbaa !819 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %.lr.ph.i.i, !llvm.loop !43

_ZN4asio6detail9scheduler12can_dispatchEv.exit:   ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !818
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3708
  fence acquire
  invoke void @_ZZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaIS8_EEEENS_11ib_socket_tEJSA_EEENS1_4coro4LazyINS4_9rpc_errorEEERT0_RjNS_9data_viewEDpOT1_EUlvE0_N4asio10io_context19basic_executor_typeISaIvELm0EEEEclINS_21callback_awaitor_baseIS3_NS_16callback_awaitorIS3_EEE15awaitor_handlerEEEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaISD_EEEENS4_11ib_socket_tEJSF_EEENS6_4coro4LazyINS9_9rpc_errorEEERT0_RjNS4_9data_viewEDpOT1_EUlvE0_NS1_10io_context19basic_executor_typeISaIvELm0EEEEclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvT_EUlvE_EES16_EEvRS14_SM_.exit unwind label %bb.e

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail7binder0IZN7coro_io11post_helperIN12async_simple3TryIvEEZN8coro_rpc15coro_rpc_client9send_implITnDaXadL_Z13array_1K_rectSt6vectorI4rectSaISD_EEEENS4_11ib_socket_tEJSF_EEENS6_4coro4LazyINS9_9rpc_errorEEERT0_RjNS4_9data_viewEDpOT1_EUlvE0_NS1_10io_context19basic_executor_typeISaIvELm0EEEEclINS4_21callback_awaitor_baseIS8_NS4_16callback_awaitorIS8_EEE15awaitor_handlerEEEvT_EUlvE_EES16_EEvRS14_SM_.exit: ; preds = %bb.d
  fence release
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  fence release
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #36 ; 0 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !378
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !365, !nonnull !366, !align !367
end_hunk_3
