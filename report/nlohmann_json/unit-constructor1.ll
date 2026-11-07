Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-constructor1?download=true
inline.NumInlined: 8566
inline.NumDeleted: 3050
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 326
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev:bb.a
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !69
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #30, !inline_history !71
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE16_M_allocate_nodeIJRKSJ_EEEPSK_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 7 uses
  store ptr null, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !58
  %i.e = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.g, ptr %i.a, align 8, !tbaa !142
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e, !inline_history !20 ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !70
  %i.j = load i64, ptr %i.a, align 8, !tbaa !142
  store i64 %i.j, ptr %i.d, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !40
  store i8 %i.l, ptr %i.k, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !60
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE9constructISJ_JRKSJ_EEEvRSL_PT_DpOT0_.exit unwind label %bb.d, !inline_history !20

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.t) #30, !inline_history !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE9constructISJ_JRKSJ_EEEvRSL_PT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.d ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #26 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.b) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS6_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !261
  %i.c = icmp eq i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS6_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISI_Lb1EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS6_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISI_Lb1EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS6_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISI_Lb1EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !70
  %i.k = load ptr, ptr %1, align 8, !tbaa !70
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr %i.j, i64 %i.e)
  %i.l = icmp eq i32 %bcmp.i.i.i, 0
  br label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS6_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISI_Lb1EEE.exit

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS6_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISI_Lb1EEE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.l, %bb.d ], [ true, %bb.c ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !234

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !268
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !234

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !91
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %._crit_edge.thread, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.n
  %.05271 = phi ptr [ %.05668.lcssa, %bb.n ], [ null, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 3 uses
  %.05370 = phi i64 [ %.lcssa, %bb.n ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05469 = phi i64 [ %.155, %bb.n ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05668 = phi ptr [ %.lcssa100, %bb.n ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 4 uses
  %i.i = load ptr, ptr %.05668, align 8, !tbaa !87 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05668, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !261
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %.not62 = icmp ne ptr %.05271, null
  %i.m = icmp eq i64 %.05370, %i.l
  %or.cond = and i1 %.not62, %i.m                 ; 2 uses
  br i1 %or.cond, label %._crit_edge.a, label %bb.f

bb.e:                                             ; preds = %._crit_edge.a
  %i.n = load ptr, ptr %7, align 8, !tbaa !87     ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %3 = load i64, ptr %2, align 8, !tbaa !261
  %4 = urem i64 %3, %1                            ; 3 uses
  %5 = icmp eq i64 %6, %4
  br i1 %5, label %._crit_edge.a, label %bb.f, !llvm.loop !1275

bb.f:                                             ; preds = %bb.e, %.lr.ph.a
  %.05271.lcssa = phi ptr [ %.05271, %.lr.ph.a ], [ %.05668109, %bb.e ] ; 2 uses
  %.05370.lcssa = phi i64 [ %.05370, %.lr.ph.a ], [ %6, %bb.e ]
  %.05668.lcssa = phi ptr [ %.05668, %.lr.ph.a ], [ %7, %bb.e ] ; 7 uses
  %.lcssa100 = phi ptr [ %i.i, %.lr.ph.a ], [ %i.n, %bb.e ] ; 2 uses
  %.lcssa = phi i64 [ %i.l, %.lr.ph.a ], [ %4, %bb.e ] ; 4 uses
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %.05271.lcssa, align 8, !tbaa !87 ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !261
  %i.r = urem i64 %i.q, %1                        ; 2 uses
  %.not64 = icmp eq i64 %i.r, %.05370.lcssa
  br i1 %.not64, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.r
  store ptr %.05271.lcssa, ptr %i.s, align 8, !tbaa !259
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.f
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.lcssa ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !259  ; 2 uses
  %.not65 = icmp eq ptr %i.u, null
  br i1 %.not65, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !91
  store ptr %i.v, ptr %.05668.lcssa, align 8, !tbaa !87
  store ptr %.05668.lcssa, ptr %i.g, align 8, !tbaa !91
  store ptr %i.g, ptr %i.t, align 8, !tbaa !259
  %i.w = load ptr, ptr %.05668.lcssa, align 8, !tbaa !87
  %.not66 = icmp eq ptr %i.w, null
  br i1 %.not66, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.05469
  store ptr %.05668.lcssa, ptr %i.x, align 8, !tbaa !259
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !87
  store ptr %i.y, ptr %.05668.lcssa, align 8, !tbaa !87
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !259
  store ptr %.05668.lcssa, ptr %i.z, align 8, !tbaa !87
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.155 = phi i64 [ %.lcssa, %bb.k ], [ %.05469, %bb.m ], [ %.lcssa, %bb.l ]
  %.not = icmp eq ptr %.lcssa100, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.a, !llvm.loop !1275

._crit_edge.a:                                    ; preds = %.lr.ph.a, %bb.e
  %6 = phi i64 [ %4, %bb.e ], [ %i.l, %.lr.ph.a ] ; 3 uses
  %7 = phi ptr [ %i.n, %bb.e ], [ %i.i, %.lr.ph.a ] ; 5 uses
  %.05668109 = phi ptr [ %7, %bb.e ], [ %.05668, %.lr.ph.a ] ; 6 uses
  %.05271108 = phi ptr [ %.05668109, %bb.e ], [ %.05271, %.lr.ph.a ] ; 2 uses
  %8 = load ptr, ptr %.05271108, align 8, !tbaa !87
  store ptr %8, ptr %.05668109, align 8, !tbaa !87
  store ptr %.05668109, ptr %.05271108, align 8, !tbaa !87
  %.not88 = icmp eq ptr %7, null
  br i1 %.not88, label %bb.o, label %bb.e, !llvm.loop !1275

bb.o:                                             ; preds = %._crit_edge.a
  %i.aa = load ptr, ptr %.05668109, align 8, !tbaa !87 ; 2 uses
  %.not60 = icmp eq ptr %i.aa, null
  br i1 %.not60, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !261
  %i.ad = urem i64 %i.ac, %1                      ; 2 uses
  %.not61 = icmp eq i64 %i.ad, %6
  br i1 %.not61, label %._crit_edge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ad
  store ptr %.05668109, ptr %i.ae, align 8, !tbaa !259
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.n, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.p, %bb.q, %bb.o
  %i.af = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread
  tail call void @_ZdlPv(ptr noundef %i.af) #30
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge.thread, %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.ai, align 8, !tbaa !93
  store ptr %.0.i, ptr %0, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !87 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  %i.f = load i8, ptr %i.d, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef zeroext %i.f) #27
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i unwind label %bb.b, !inline_history !69

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28, !inline_history !69
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #30, !inline_history !71
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit.i.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i) #30
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS8_blmdSaNSB_14adl_serializerESE_IhSaIhEEvEEELb1EEEEE18_M_deallocate_nodeEPSK_.exit.i.i, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef %i.q) #30
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.c, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEA2_cTnNSt9enable_ifIXntsr3std7is_sameIT0_NT_8string_tEEE5valueEiE4typeELi0EEEvRSM_RKSL_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !42
  tail call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext %i.c)
  store i8 3, ptr %0, align 8, !tbaa !42
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !58
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.f, ptr %i.a, align 8, !tbaa !142
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA2_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.d, align 8, !tbaa !70
  %i.i = load i64, ptr %i.a, align 8, !tbaa !142
  store i64 %i.i, ptr %i.e, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA2_KcEEEPT_DpOT0_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA2_KcEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 dereferenceable(2) %1, i64 %i.f, i1 false)
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA2_KcEEEPT_DpOT0_.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA2_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5.i: ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.d) #30
  resume { ptr, i32 } %i.l

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA2_KcEEEPT_DpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !142  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !60
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %i.d, ptr %i.b, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEN9__gnu_cxx5__ops12_Iter_negateIZNSG_C1ESt16initializer_listISH_EbNS2_7value_tEEUlRSI_E_EEET_ST_ST_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = ashr i64 %i.d, 2                         ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.062 = phi i64 [ %i.bs, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.02961 = phi ptr [ %i.br, %bb.e ], [ %0, %bb.a ] ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr %.02961, ptr %i.h ; 3 uses
  %i.i = load i8, ptr %..i.i.i.i, align 8, !tbaa !42
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %..i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !98
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.r, 32
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixEm(ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i, i64 noundef 0)
  %i.u = load i8, ptr %i.t, align 8, !tbaa !42
  %.not56 = icmp eq i8 %i.u, 3
  br i1 %.not56, label %bb.b, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit.thread

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.02961, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02961, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.x, null
  %..i.i.i.i31 = select i1 %.not.i.i.i.i30, ptr %i.v, ptr %i.x ; 3 uses
  %i.y = load i8, ptr %..i.i.i.i31, align 8, !tbaa !42
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %..i.i.i.i31, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp eq i64 %i.ah, 32
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit33, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit33: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i32
end_hunk_0
