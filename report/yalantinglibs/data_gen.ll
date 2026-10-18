Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKj:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !286 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !279
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #50
  br label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.ad

bb.ac:                                            ; preds = %.invoke, %bb.ab, %bb.v, %bb.s, %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.ac
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.ac ], [ %i.bq, %bb.aa ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %common.resume

bb.ad:                                            ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog8record_tD2Ev.exit, %_ZN7easylog6loggerILm0EE8instanceEv.exit, %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cf = call { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_RKSt17basic_string_viewIcS5_EEEES0_INSA_14_Node_iteratorIS8_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjSt8functionIFS0_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS8_ERSt10shared_ptrINS3_14context_info_tINS3_8protocol17coro_rpc_protocolEEEESt7variantIJNSG_20struct_pack_protocolEEEEEESaISQ_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSS_18_Mod_range_hashingENSS_20_Default_ranged_hashENSS_20_Prime_rehash_policyENSS_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRS1_ZNSG_6routerISH_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvS15_EUlSD_SK_SN_E_EEES0_INSS_14_Node_iteratorISQ_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOS1B_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<unsigned int, std::pair<const unsigned int, std::function<std::pair<coro_rpc::err_code, std::__cxx11::basic_string<char>> (std::basic_string_view<char>, std::shared_ptr<coro_rpc::context_info_t<coro_rpc::protocol::coro_rpc_protocol>> &, std::variant<coro_rpc::protocol::struct_pack_protocol>)>>, std::allocator<std::pair<const unsigned int, std::function<std::pair<coro_rpc::err_code, std::__cxx11::basic_string<char>> (std::basic_string_view<char>, std::shared_ptr<coro_rpc::context_info_t<coro_rpc::protocol::coro_rpc_protocol>> &, std::variant<coro_rpc::protocol::struct_pack_protocol>)>>>, std::__detail::_Select1st, std::equal_to<unsigned int>, std::hash<unsigned int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !1018
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #51 ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !707
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %1, align 4, !tbaa !280    ; 6 uses
  store i32 %i.d, ptr %i.c, align 8, !tbaa !1021
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSB_SI_SL_E_E9_M_invokeERKSt9_Any_dataOSB_SI_OSL_, ptr %i.g, align 8, !tbaa !1022
  store ptr @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSB_SI_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr %i.f, align 8, !tbaa !623
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1023
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1024
  %.not.not = icmp eq i64 %i.i, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = zext i32 %i.d to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !614  ; 2 uses
  %i.m = urem i64 %i.j, %i.l                      ; 5 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !613
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !902  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %.critedge28, label %bb.f

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
  br i1 %i.u, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt8functionIFS2_IN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcSA_ERSt10shared_ptrINS5_14context_info_tINS5_8protocol17coro_rpc_protocolEEEESt7variantIJNSI_20struct_pack_protocolEEEEEELb0EEEEE18_M_deallocate_nodeEPST_.exit.i, label %bb.c, !llvm.loop !6831

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
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSB_SI_SL_E_E9_M_invokeERKSt9_Any_dataOSB_SI_OSL_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.676") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) #10 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::variant.681", align 2  ; 4 uses
  %6 = alloca %class.anon.2250, align 8           ; 6 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !411, !noalias !6838
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !460, !noalias !6838
  %.sroa.0.0.copyload.i.i = load i16, ptr %4, align 1, !noalias !6838
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !6838
  store i16 %.sroa.0.0.copyload.i.i, ptr %5, align 2, !noalias !6839
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !6839
  store i64 %.sroa.01.0.copyload.i.i, ptr %6, align 8, !tbaa !411, !noalias !6839
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !460, !noalias !6839
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !1027, !noalias !6839
  call void @_ZSt13__invoke_implISt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZZNS1_8protocol6routerINSA_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjENKUlSt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tISC_EEESt7variantIJNSA_20struct_pack_protocolEEEE_clESM_SR_SU_EUlTyRKT_E_JRST_EESW_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind writable sret(%"struct.std::pair.676") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(2) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !6839
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !6838
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSB_SI_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS_14context_info_tIS2_EEESt7variantIJNS0_20struct_pack_protocolEEEE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !376
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implISt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZZNS1_8protocol6routerINSA_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjENKUlSt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tISC_EEESt7variantIJNSA_20struct_pack_protocolEEEE_clESM_SR_SU_EUlTyRKT_E_JRST_EESW_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.676") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.struct_pack::detail::memory_reader", align 8 ; 5 uses
  %4 = alloca %"class.struct_pack::detail::unpacker", align 8 ; 4 uses
  %5 = alloca %"class.std::tuple.2253", align 8   ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6846)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !411, !noalias !6846
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !460, !noalias !6846 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6847)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !6848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i64 88, i1 false), !alias.scope !6849, !noalias !6848
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !6848
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i
  store ptr %.sroa.2.0.copyload.i, ptr %3, align 8, !tbaa !1032, !noalias !6848
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !1033, !noalias !6848
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !6848
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !1035, !noalias !6848
  %i.d = call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt5tupleIJiiiiiiiiiiddddddEEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(88) %5), !noalias !6848
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !6848
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !6848
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, ptr noundef nonnull align 1 dereferenceable(15) @.str.99, i64 15, i1 false)
  %.sroa.416.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 0, ptr %.sroa.416.16..sroa_idx.i.i, align 1, !alias.scope !6848
  br label %_ZZZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjENKUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS_14context_info_tIS2_EEESt7variantIJNS0_20struct_pack_protocolEEEE_clB5cxx11ESE_SJ_SM_ENUlTyRKT_E_clISL_EEDaSQ_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load double, ptr %i.g, align 8, !tbaa !473, !noalias !6848
  %10 = load double, ptr %i.h, align 8, !tbaa !473, !noalias !6848
  %11 = load double, ptr %i.i, align 8, !tbaa !473, !noalias !6848
  %i.k = load double, ptr %i.j, align 8, !tbaa !473, !noalias !6848
  %i.l = load double, ptr %8, align 8, !tbaa !473, !noalias !6848
  %i.m = load double, ptr %5, align 8, !tbaa !473, !noalias !6848
  %12 = load <4 x i32>, ptr %6, align 8, !tbaa !280, !noalias !6848
  %13 = sitofp <4 x i32> %12 to <4 x double>      ; 4 uses
  %14 = load <4 x i32>, ptr %7, align 8, !tbaa !280, !noalias !6848
  %15 = sitofp <4 x i32> %14 to <4 x double>      ; 4 uses
  %16 = load <2 x i32>, ptr %i.f, align 8, !tbaa !280, !noalias !6848
  %i.n = sitofp <2 x i32> %16 to <2 x double>     ; 2 uses
  %17 = fadd double %i.l, %i.m
  %18 = fadd double %i.k, %17
  %19 = fadd double %11, %18
  %20 = fadd double %10, %19
  %21 = fadd double %9, %20
  %22 = extractelement <2 x double> %i.n, i64 0
  %23 = fadd double %21, %22
  %24 = extractelement <2 x double> %i.n, i64 1
  %25 = fadd double %23, %24
  %i.o = extractelement <4 x double> %15, i64 0
  %i.p = fadd double %25, %i.o
  %i.q = extractelement <4 x double> %15, i64 1
  %i.r = fadd double %i.p, %i.q
  %26 = extractelement <4 x double> %15, i64 2
  %i.s = fadd double %i.r, %26
  %i.t = extractelement <4 x double> %15, i64 3
  %i.u = fadd double %i.s, %i.t
  %27 = extractelement <4 x double> %13, i64 0
  %i.v = fadd double %i.u, %27
  %i.w = extractelement <4 x double> %13, i64 1
  %i.x = fadd double %i.v, %i.w
  %i.y = extractelement <4 x double> %13, i64 2
  %i.z = fadd double %i.x, %i.y
  %28 = extractelement <4 x double> %13, i64 3
  %29 = fadd double %i.z, %28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 -1471916520, ptr %i.aa, align 8, !alias.scope !6848
  %.sroa.4.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store double %29, ptr %.sroa.4.16..sroa_idx.i.i, align 4, !alias.scope !6848
  %.sroa.5.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %.sroa.5.16..sroa_idx.i.i, align 4, !alias.scope !6848
  br label %_ZZZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjENKUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS_14context_info_tIS2_EEESt7variantIJNS0_20struct_pack_protocolEEEE_clB5cxx11ESE_SJ_SM_ENUlTyRKT_E_clISL_EEDaSQ_.exit

_ZZZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_Z13many_argumentIJiiiiiiiiiiddddddEEDaDpT_EEEEvRKjENKUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS_14context_info_tIS2_EEESt7variantIJNS0_20struct_pack_protocolEEEE_clB5cxx11ESE_SJ_SM_ENUlTyRKT_E_clISL_EEDaSQ_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i
  %.sink13.i.i = phi i16 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %.sink12.i.i = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %.sink.i.i = phi i64 [ 12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ], [ 15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  store i16 %.sink13.i.i, ptr %0, align 8, !tbaa !288, !alias.scope !6848
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink12.i.i, ptr %i.ab, align 8, !tbaa !289, !alias.scope !6848
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.i, ptr %i.ac, align 8, !tbaa !290, !alias.scope !6848
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !6848
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt5tupleIJiiiiiiiiiiddddddEEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.struct_pack::err_code", align 4 ; 5 uses
  %3 = alloca %class.anon.2291, align 8           ; 5 uses
  %4 = alloca %"struct.struct_pack::err_code", align 4 ; 5 uses
  %5 = alloca %class.anon.2289, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1037, !nonnull !366, !align !367 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1033 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1032 ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.b, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !687

bb.b:                                             ; preds = %bb.a
  %.0.copyload43 = load i32, ptr %i.e, align 1    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !1032
  %.mask.i = and i32 %.0.copyload43, -2
  %.not.i = icmp eq i32 %.mask.i, 569664706
  br i1 %.not.i, label %bb.c, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !687

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %.0.copyload43, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.d, !prof !687

.thread:                                          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !1038
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.d, %i.j
  br i1 %.not, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, label %bb.e, !prof !291

bb.e:                                             ; preds = %bb.d
  %.0.copyload = load i8, ptr %i.j, align 1       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !1032
  %i.o = and i8 %.0.copyload, 3
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.f, %i.p
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !687

bb.g:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.f, %i.s
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !687

bb.h:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.f, %i.v
  %i.x = icmp ugt i64 %i.w, 7
  br i1 %i.x, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !687

default.unreachable:                              ; preds = %bb.e
  unreachable

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split: ; preds = %bb.h, %bb.g, %bb.f
  %.sink92 = phi i64 [ 9, %bb.g ], [ 7, %bb.f ], [ 13, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink92 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !1032
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, %bb.e
  %i.z = phi ptr [ %i.n, %bb.e ], [ %i.y, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split ] ; 4 uses
  %i.aa = and i8 %.0.copyload, 4
  %.not8.i = icmp eq i8 %i.aa, 0
  br i1 %.not8.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.f, %i.ab
  %i.ad = icmp ult i64 %i.ac, 19
  br i1 %i.ad, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, label %bb.j, !prof !291

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 19
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !1032
  %i.af = load i128, ptr %i.z, align 1
  %i.ag = xor i128 %i.af, 24019931782633847439897176735700025853
  %i.ah = getelementptr i8, ptr %i.z, i64 3
  %i.ai = load i128, ptr %i.ah, align 1
  %i.aj = xor i128 %i.ai, 1324402213998748208348684013680001281
  %i.ak = or i128 %i.ag, %i.aj
  %i.al = icmp ne i128 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not4.i = icmp eq i32 %i.am, 0
  br i1 %.not4.i, label %bb.k, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !687

bb.k:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i, %bb.j
  %i.an = lshr i8 %.0.copyload, 3
  %i.ao = and i8 %i.an, 3                         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ao, ptr %i.ap, align 8, !tbaa !1038
  %i.aq = icmp eq i8 %i.ao, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 0, ptr %4, align 4, !tbaa !6851
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %0, ptr %5, align 8, !tbaa !2088
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.ar, align 8, !tbaa !6852
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZSt13__invoke_implIvZN11struct_pack6detail8unpackerINS1_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt5tupleIJiiiiiiiiiiddddddEEEENS0_8err_codeERT3_EUlDpOT_E_JRiSF_SF_SF_SF_SF_SF_SF_SF_SF_RdSG_SG_SG_SG_SG_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.sroa.0.0.copyload.i = load i32, ptr %4, align 4, !tbaa !2089
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store i32 0, ptr %2, align 4, !tbaa !6851
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !2091
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.bh, align 8, !tbaa !6852
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZSt13__invoke_implIvZN11struct_pack6detail8unpackerINS1_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt5tupleIJiiiiiiiiiiddddddEEEENS0_8err_codeERT3_EUlDpOT_E_JRiSF_SF_SF_SF_SF_SF_SF_SF_SF_RdSG_SG_SG_SG_SG_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(88) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.sroa.0.0.copyload.i18 = load i32, ptr %2, align 4, !tbaa !2089
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread: ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.f, %bb.g, %bb.h, %bb.d, %bb.a, %bb.b
  %.sroa.011.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %.sroa.0.0.copyload.i, %bb.l ], [ 1, %bb.d ], [ 1, %bb.a ], [ %.sroa.0.0.copyload.i18, %bb.m ], [ 3, %bb.j ], [ 1, %bb.i ]
  ret i32 %.sroa.011.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvZN11struct_pack6detail8unpackerINS1_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt5tupleIJiiiiiiiiiiddddddEEEENS0_8err_codeERT3_EUlDpOT_E_JRiSF_SF_SF_SF_SF_SF_SF_SF_SF_RdSG_SG_SG_SG_SG_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2088
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1037, !nonnull !366, !align !367 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1033
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1032 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8coro_rpc15coro_rpc_client4callITnDaXadL_Z20coroutine_async_echoSt17basic_string_viewIcSt11char_traitsIcEEEEJRA5_KcEEEN12async_simple4coro4LazyIN2tl8expectedIDTcl15get_return_typeIXT_EEEENS_9rpc_errorEEEEENS_16request_config_tEDpOT0_.resume:resume.entry
  %.not.i.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i60, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.hl, align 8, !tbaa !310
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store i32 0, ptr %i.hp, align 4, !tbaa !311
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !263
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #36, !inline_history !170
  %i.ht = load ptr, ptr %i.hk, align 8, !tbaa !263
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #36, !inline_history !170
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.hw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i.i.i.i.i.i.i.i61 = icmp eq i8 %i.hw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i61, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from.186

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from.186: ; preds = %bb.ba
  %i.hx = add nsw i32 %i.ho, -1
  store i32 %i.hx, ptr %i.hl, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from.: ; preds = %bb.ba
  %i.hy = atomicrmw volatile add ptr %i.hl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from.186
  %.0.i.i.i.i.i.i.i.i.i.i.i.i63 = phi i32 [ %i.ho, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from.186 ], [ %i.hy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62.from. ]
  %i.hz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i63, 1
  br i1 %i.hz, label %bb.bb, label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i, !prof !291

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #36
  br label %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i

_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i: ; preds = %bb.au, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i62, %bb.az, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i64, %bb.as
  %i.ia = load ptr, ptr %.reload.addr207, align 8, !tbaa !286 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41.sink.split

bb.bc:                                            ; preds = %bb.ar
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !286 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41.sink.split: ; preds = %bb.bc, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i
  %.sink50.in = phi ptr [ %i.ib, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i ], [ %i.if, %bb.bc ]
  %.sink = phi ptr [ %i.ia, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i ], [ %i.ie, %bb.bc ]
  %.sink50 = load i64, ptr %.sink50.in, align 8, !tbaa !279
  %i.ih = add i64 %.sink50, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ih) #50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i41.sink.split, %bb.bc, %_ZN7coro_io20heterogeneous_bufferD2Ev.exit.i.i.i, %_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit35
  store ptr null, ptr %0, align 8
  store i8 3, ptr %index.addr, align 8
  %.sroa.0.0.copyload.i.i4 = load ptr, ptr %.reload.addr213, align 8, !tbaa !376 ; 2 uses
  %i.ii = load ptr, ptr %.sroa.0.0.copyload.i.i4, align 8
  musttail call void %i.ii(ptr nonnull %.sroa.0.0.copyload.i.i4)
  ret void

bb.bd:                                            ; preds = %_ZN12async_simple4coro6detail8LazyBaseINS0_4LazyIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS6_9rpc_errorEEEEELb0EED2Ev.exit35
  %i.ij = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 3, ptr %index.addr, align 8
  resume { ptr, i32 } %i.ij

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN8coro_rpc15coro_rpc_client4callITnDaXadL_Z20coroutine_async_echoSt17basic_string_viewIcSt11char_traitsIcEEEEJRA5_KcEEEN12async_simple4coro4LazyIN2tl8expectedIDTcl15get_return_typeIXT_EEEENS_9rpc_errorEEEEENS_16request_config_tEDpOT0_.destroy(ptr noundef nonnull align 8 dereferenceable(376) %0) #48 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr210 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 368
  %index = load i8, ptr %index.addr, align 8
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit
    i8 2, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit
    i8 3, label %AfterCoroSuspend
  ], !prof !4269

_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr208 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.a = load ptr, ptr %.reload.addr208, align 8, !tbaa !3273 ; 3 uses
  %.not.i24 = icmp eq ptr %i.a, null
  br i1 %.not.i24, label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %i.a)
          to label %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit unwind label %bb.b, !inline_history !179

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #49
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit: ; preds = %bb.a, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EE12ValueAwaiter12await_resumeEv.exit, %resume.entry
  %i.f = load ptr, ptr %.reload.addr210, align 8, !tbaa !4267 ; 3 uses
  %.not.i27 = icmp eq ptr %i.f, null
  br i1 %.not.i27, label %AfterCoroSuspend, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.f)
          to label %AfterCoroSuspend unwind label %bb.d, !inline_history !243

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #49
  unreachable

AfterCoroSuspend:                                 ; preds = %resume.entry, %bb.c, %_ZN12async_simple4coro6detail8LazyBaseIN2tl8expectedIN8coro_rpc24async_rpc_result_value_tISt17basic_string_viewIcSt11char_traitsIcEEEENS5_9rpc_errorEEELb0EED2Ev.exit, %resume.entry
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i8, ptr %i.k, align 8, !tbaa !440
  switch i8 %i.m, label %bb.i [
    i8 -1, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit
    i8 0, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit
    i8 1, label %bb.e
    i8 2, label %bb.g
  ], !prof !306

bb.e:                                             ; preds = %AfterCoroSuspend
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i8, ptr %i.n, align 8, !tbaa !442, !range !414, !noundef !366
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !286  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !279
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #50
  br label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit

bb.g:                                             ; preds = %AfterCoroSuspend
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !702
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(49) %i.l) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit

bb.i:                                             ; preds = %AfterCoroSuspend
  unreachable

_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit: ; preds = %AfterCoroSuspend, %AfterCoroSuspend, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.h, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.0.copyload.i = load ptr, ptr %i.x, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 376)
          to label %CoroEnd unwind label %bb.j

bb.j:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #49
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIN2tl8expectedISt17basic_string_viewIcSt11char_traitsIcEEN8coro_rpc9rpc_errorEEEED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umax.v2i16(<2 x i16>, <2 x i16>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umax.v2i32(<2 x i32>, <2 x i32>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #28

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind memory(none) }
attributes #33 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { coro_only_destroy_when_complete mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind }
attributes #37 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn }
attributes #41 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #46 = { coro_only_destroy_when_complete inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { coro_only_destroy_when_complete inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { coro_only_destroy_when_complete mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { noreturn nounwind }
attributes #50 = { builtin nounwind }
attributes #51 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #52 = { noreturn }
attributes #53 = { nounwind allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #54 = { cold }
attributes #55 = { nounwind willreturn memory(none) }
attributes #56 = { nounwind allocsize(1) }
attributes #57 = { allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #58 = { cold nounwind }
attributes #59 = { nounwind allocsize(0) }
attributes #60 = { "function-inline-cost-multiplier"="2" }
attributes #61 = { nounwind willreturn memory(read) }
attributes #62 = { cold noreturn nounwind }
attributes #63 = { coro_elide_safe nounwind }
attributes #64 = { coro_elide_safe }

!llvm.module.flags = !{!250, !251, !252}
!llvm.ident = !{!253}
!llvm.errno.tbaa = !{!258}

!0 = distinct !{!0, !275}
!1 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZN7coro_io11ib_socket_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !275}
!4 = distinct !{!4, !275}
!5 = distinct !{!5, !275}
!6 = distinct !{null}
!7 = distinct !{ptr @_ZNSt14__basic_futureIvED2Ev, ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{!8, !275}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{!16, !275}
!17 = distinct !{null}
!18 = distinct !{ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!19 = distinct !{null}
!20 = distinct !{!20, !275}
!21 = distinct !{ptr @_ZN4asio17execution_contextD2Ev, null, null, null}
!22 = distinct !{!22, !275}
!23 = distinct !{!23, !275}
!24 = distinct !{!24, !275}
!25 = distinct !{!25, !275}
!26 = distinct !{!26, !275}
!27 = distinct !{ptr @_ZNSt12__shared_ptrIN8coro_rpc15coro_connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!28 = distinct !{ptr @_ZNSt12__shared_ptrIN8coro_rpc15coro_rpc_client9control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{null}
!30 = distinct !{!30, !275}
!31 = distinct !{!31, !275}
!32 = distinct !{ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!33 = distinct !{null, null}
!34 = distinct !{null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !275}
!37 = distinct !{null}
!38 = distinct !{!38, !275}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{!43, !275}
!44 = distinct !{ptr @_ZZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEENUlRKT_E_D2Ev, ptr @_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!45 = distinct !{ptr @_ZZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEENUlRKT_E0_D2Ev, ptr @_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = distinct !{ptr @_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!47 = distinct !{!47, !275}
!48 = distinct !{!48, !275}
!49 = distinct !{null}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{!52, !275}
!53 = distinct !{null, null, null}
!54 = distinct !{ptr @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E_St10error_codeED2Ev, ptr @_ZZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEENUlRKT_E_D2Ev, ptr @_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!55 = distinct !{ptr @_ZN4asio6detail7binder1IZN7coro_io15ExecutorWrapperINS_10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEEUlRKT_E0_St10error_codeED2Ev, ptr @_ZZN7coro_io15ExecutorWrapperIN4asio10io_context19basic_executor_typeISaIvELm0EEEE8scheduleESt8functionIFvvEENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEmPN12async_simple4SlotEENUlRKT_E0_D2Ev, ptr @_ZNSt12__shared_ptrISt4pairIN4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS1_11wait_traitsIS5_EENS1_15any_io_executorEEESt6atomicIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!56 = distinct !{!56, !275}
!57 = distinct !{!57, !275}
!58 = distinct !{null, null, null, null, ptr @_ZN8coro_rpc12context_baseIiNS_8protocol17coro_rpc_protocolEED2Ev, ptr @_ZNSt12__shared_ptrIN8coro_rpc14context_info_tINS0_8protocol17coro_rpc_protocolEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!59 = distinct !{ptr @_ZN8coro_rpc12context_baseIiNS_8protocol17coro_rpc_protocolEED2Ev, ptr @_ZNSt12__shared_ptrIN8coro_rpc14context_info_tINS0_8protocol17coro_rpc_protocolEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!60 = distinct !{ptr @_ZNSt12__shared_ptrIN8coro_rpc14context_info_tINS0_8protocol17coro_rpc_protocolEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!61 = distinct !{null}
!62 = distinct !{ptr @_ZNSt12__shared_ptrISt6atomicIiELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!63 = distinct !{null, null, null}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{null}
!67 = distinct !{null, null, null}
!68 = distinct !{!68, !275}
!69 = distinct !{!69, !275}
!70 = distinct !{null}
!71 = distinct !{ptr @_ZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENUlRKSt10error_codeE_D2Ev, ptr @_ZNSt12__shared_ptrIN8coro_rpc15coro_connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!72 = distinct !{ptr @_ZN4asio6detail7binder1IZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEEUlRKSt10error_codeE_S8_ED2Ev, ptr @_ZZN8coro_rpc15coro_connection11reset_timerEmSt17basic_string_viewIcSt11char_traitsIcEEENUlRKSt10error_codeE_D2Ev, ptr @_ZNSt12__shared_ptrIN8coro_rpc15coro_connectionELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!73 = distinct !{ptr @_ZZN7coro_io11ib_socket_t5closeEvENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!74 = distinct !{ptr @_ZNSt12__shared_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!75 = distinct !{ptr @_ZN4asio6detail7binder0IZN7coro_io11ib_socket_t5closeEvEUlvE_ED2Ev, ptr @_ZZN7coro_io11ib_socket_t5closeEvENUlvE_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!76 = distinct !{ptr @_ZZN7coro_io6detail24ib_socket_shared_state_t5closeEbENUlOT_E_D2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!77 = distinct !{ptr @_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!78 = distinct !{null}
!79 = distinct !{null}
!80 = distinct !{null, null, null, null, null, null, null, null, null}
!81 = distinct !{!81, !275}
!82 = distinct !{null, null, null}
!83 = distinct !{null}
!84 = distinct !{null, null, null}
!85 = distinct !{ptr @_ZN14memory_owner_tD2Ev, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!86 = distinct !{null, null, null}
!87 = distinct !{null}
!88 = distinct !{!88, !275}
!89 = distinct !{ptr @_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!90 = distinct !{ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!91 = distinct !{!91, !275}
!92 = distinct !{!92, !275}
!93 = distinct !{!93, !275}
!94 = distinct !{!94, !275}
!95 = distinct !{!95, !275}
!96 = distinct !{!96, !275}
!97 = distinct !{null}
!98 = distinct !{null}
!99 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!100 = distinct !{ptr @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!101 = distinct !{null}
!102 = distinct !{null}
!103 = distinct !{!103, !275}
!104 = distinct !{!104, !275}
!105 = distinct !{!105, !275, !1831}
!106 = distinct !{!106, !275}
!107 = distinct !{!107, !275}
!108 = distinct !{!108, !275}
!109 = distinct !{!109, !275}
!110 = distinct !{!110, !275}
!111 = distinct !{!111, !275}
!112 = distinct !{!112, !275}
!113 = distinct !{!113, !275}
!114 = distinct !{!114, !275}
!115 = distinct !{!115, !275}
!116 = distinct !{null, null, null, null, null}
!117 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7coro_io6detail24ib_socket_shared_state_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!118 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7coro_io11ib_device_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!119 = distinct !{ptr @_ZN7coro_io16ib_buffer_pool_t8config_tD2Ev, ptr @_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_t23ib_buffer_mem_control_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!120 = distinct !{null, null, null}
!121 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
end_hunk_1
