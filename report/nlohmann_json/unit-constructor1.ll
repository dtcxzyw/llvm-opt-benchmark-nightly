Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-constructor1?download=true
inline.NumInlined: 8566
inline.NumDeleted: 3050
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 326
begin_hunk_0_@_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKSE_SU_NSG_10_AllocNodeISaINSG_10_Hash_nodeISE_Lb1EEEEEEEESt4pairINSG_14_Node_iteratorISE_Lb1ELb1EEEbEOT_OT0_RKT1_:bb.a
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEESK_NS_10_AllocNodeISaINS_10_Hash_nodeISI_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSQ_.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #26 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.k

common.resume:                                    ; preds = %bb.j, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEESK_NS_10_AllocNodeISaINS_10_Hash_nodeISI_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSQ_.exit: ; preds = %.critedge
  store ptr %0, ptr %4, align 8, !tbaa !1470
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.y, ptr %i.ag, align 8, !tbaa !283
  %i.ah = invoke ptr @_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i, i64 noundef %i.f, ptr noundef nonnull %i.y, i64 noundef 1)
          to label %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.m

_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEESK_NS_10_AllocNodeISaINS_10_Hash_nodeISI_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSQ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit

bb.m:                                             ; preds = %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS5_14adl_serializerES8_IhSaIhEEvEESK_NS_10_AllocNodeISaINS_10_Hash_nodeISI_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSQ_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume

.loopexit:                                        ; preds = %bb.d, %_ZNKSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trISE_EEPNSG_10_Hash_nodeISE_Lb1EEEmRKT_m.exit, %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.1 = phi ptr [ %i.ah, %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.x, %_ZNKSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trISE_EEPNSG_10_Hash_nodeISE_Lb1EEEmRKT_m.exit ], [ %.sroa.023.0, %bb.d ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %_ZNKSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trISE_EEPNSG_10_Hash_nodeISE_Lb1EEEmRKT_m.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !280
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #26 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !267
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !152
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.t, align 8, !tbaa !261
  %i.u = load ptr, ptr %0, align 8, !tbaa !151    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !259  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  store ptr %i.x, ptr %3, align 8, !tbaa !87
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !259
  store ptr %3, ptr %i.y, align 8, !tbaa !87
  br label %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNSG_10_Hash_nodeISE_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !150
  store ptr %i.aa, ptr %3, align 8, !tbaa !87
  store ptr %3, ptr %i.z, align 8, !tbaa !150
  %i.ab = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !261
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !259
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !259
  br label %_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNSG_10_Hash_nodeISE_Lb1EEE.exit

_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNSG_10_Hash_nodeISE_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !280
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !280
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEvEESE_SaISE_ENSt8__detail9_IdentityESt8equal_toISE_ESt4hashISE_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i8, ptr %i.c, align 8, !tbaa !39
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e) #27
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEELb1EEEEE18_M_deallocate_nodeEPSH_.exit unwind label %bb.c, !inline_history !44

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !44
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEELb1EEEEE18_M_deallocate_nodeEPSH_.exit: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #30
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEELb1EEEEE18_M_deallocate_nodeEPSH_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iteration_proxy_value", align 8 ; 22 uses
  %2 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iteration_proxy_value", align 8 ; 17 uses
  %3 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 10 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 8 uses
  %i.f = load i8, ptr %0, align 8, !tbaa !42      ; 2 uses
  %i.g = zext i8 %i.f to i64                      ; 27 uses
  switch i8 %i.f, label %.loopexit [
    i8 0, label %bb.b
    i8 9, label %bb.b
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
    i8 3, label %bb.q
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
    i8 8, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = shl nuw nsw i64 %i.g, 6
  %i.i = add nuw nsw i64 %i.h, 2654435769
  %i.j = lshr i64 %i.g, 2
  %i.k = add nuw nsw i64 %i.i, %i.j
  %i.l = xor i64 %i.k, %i.g
  br label %.loopexit

_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  %5 = shl nuw nsw i64 %i.g, 6
  %6 = lshr i64 %i.g, 2
  %i.q = add nuw nsw i64 %5, 2654435769
  %i.r = add nuw nsw i64 %i.q, %6
  %i.s = add i64 %i.r, %i.p
  %i.t = xor i64 %i.s, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487)
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !51, !noalias !1488
  store ptr %0, ptr %1, align 8, !tbaa !147, !alias.scope !1487
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.v, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !74, !alias.scope !1487
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !147, !alias.scope !1487
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !142, !alias.scope !1487
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !1487
  store ptr %i.y, ptr %i.x, align 8, !tbaa !58, !alias.scope !1487
  store i8 48, ptr %i.y, align 8, !tbaa !40, !alias.scope !1487
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 1, ptr %i.z, align 8, !tbaa !60, !alias.scope !1487
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.aa, align 1, !tbaa !40, !alias.scope !1487
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !58, !alias.scope !1487
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.ad, align 8, !tbaa !60, !alias.scope !1487
  store i8 0, ptr %i.ac, align 8, !tbaa !40, !alias.scope !1487
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %0, ptr %2, align 8, !tbaa !147, !alias.scope !1489
  %.sroa.2.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ae, ptr %.sroa.2.0..sroa_idx.i64, align 8, !tbaa !74, !alias.scope !1489
  %.sroa.4.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %.sroa.4.0..sroa_idx.i65, align 8, !tbaa !147, !alias.scope !1489
  %.sroa.5.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx.i66, align 8, !tbaa !142, !alias.scope !1489
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !alias.scope !1489
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !58, !alias.scope !1489
  store i8 48, ptr %i.ah, align 8, !tbaa !40, !alias.scope !1489
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 1, ptr %i.ai, align 8, !tbaa !60, !alias.scope !1489
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 65
  store i8 0, ptr %i.aj, align 1, !tbaa !40, !alias.scope !1489
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !58, !alias.scope !1489
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.am, align 8, !tbaa !60, !alias.scope !1489
  store i8 0, ptr %i.al, align 8, !tbaa !40, !alias.scope !1489
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit, %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit
  %.053 = phi i64 [ %i.t, %_ZNK8nlohmann16json_abi_v3_12_06detail15iteration_proxyINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3endEv.exit ], [ %i.bw, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit ] ; 4 uses
  %i.ao = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !70 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.al
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ah
  br i1 %i.as, label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ar) #30
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ac
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !70  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.y
  br i1 %i.aw, label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68
  call void @_ZdlPv(ptr noundef %i.av) #30
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %1, align 8, !tbaa !1491
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !42
  switch i8 %i.ay, label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit [
    i8 2, label %bb.g
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.az = load i64, ptr %i.w, align 8, !tbaa !1492 ; 2 uses
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !1493
  %.not.i = icmp eq i64 %i.az, %i.ba
  br i1 %.not.i, label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13int_to_stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %i.az)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  %i.bb = load i64, ptr %i.w, align 8, !tbaa !1492
  store i64 %i.bb, ptr %i.an, align 8, !tbaa !1493
  br label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit

bb.i:                                             ; preds = %bb.f
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEE3keyEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit unwind label %bb.n

_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit: ; preds = %.noexc, %bb.g, %bb.i, %bb.f
  %.0.i73 = phi ptr [ %i.bc, %bb.i ], [ %i.x, %bb.g ], [ %i.x, %.noexc ], [ %i.ab, %bb.f ] ; 2 uses
  %i.bd = load ptr, ptr %.0.i73, align 8, !tbaa !70
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i73, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !60
  %i.bg = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.bd, i64 noundef %i.bf, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #28
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE3keyEv.exit
  %i.bj = shl i64 %.053, 6
  %i.bk = lshr i64 %.053, 2
  %i.bl = add i64 %i.bj, 2654435769
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = add i64 %i.bm, %i.bg
  %i.bo = xor i64 %i.bn, %.053                    ; 3 uses
  %i.bp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit unwind label %bb.n

_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit: ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.bq = invoke noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit
  %i.br = shl i64 %i.bo, 6
  %i.bs = lshr i64 %i.bo, 2
  %i.bt = add i64 %i.br, 2654435769
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = add i64 %i.bu, %i.bq
  %i.bw = xor i64 %i.bv, %i.bo
  %i.bx = load ptr, ptr %1, align 8, !tbaa !166
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !42
  switch i8 %i.by, label %bb.m [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i
    i8 2, label %bb.l
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i: ; preds = %bb.k
  %.promoted11.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !168
  %i.bz = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i.i) #31
  store ptr %i.bz, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !168
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ca = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !169
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !169
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

bb.m:                                             ; preds = %bb.k
  %i.cc = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !167
  %i.cd = add nsw i64 %i.cc, 1
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !167
  br label %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i, %bb.l, %bb.m
  %i.ce = load i64, ptr %i.w, align 8, !tbaa !1492
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.w, align 8, !tbaa !1492
  br label %bb.c

bb.n:                                             ; preds = %bb.h, %bb.i, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit, %bb.c, %_ZNK8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEE5valueEv.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.cg

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !40 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !99 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !98 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 4
  %7 = shl nuw nsw i64 %i.g, 6
  %8 = lshr i64 %i.g, 2
  %i.cq = add nuw nsw i64 %7, 2654435769
  %i.cr = add nuw nsw i64 %i.cq, %8
  %i.cs = add nsw i64 %i.cr, %i.cp
  %i.ct = xor i64 %i.cs, %i.g                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %0, ptr %3, align 8, !tbaa !166, !alias.scope !1494
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 0, ptr %i.cu, align 8
  store i64 -9223372036854775808, ptr %i.cv, align 8, !tbaa !167, !alias.scope !1494
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.cl, ptr %i.cw, align 8, !tbaa !147, !alias.scope !1494
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %0, ptr %4, align 8, !tbaa !166, !alias.scope !1495
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.cx, align 8
  store i64 -9223372036854775808, ptr %i.cy, align 8, !tbaa !167, !alias.scope !1495
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ck, ptr %i.cz, align 8, !tbaa !147, !alias.scope !1495
  %i.da = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.da, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %.057.lcssa = phi i64 [ %i.ct, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ], [ %i.di, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

.lr.ph98:                                         ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit
  %.05797 = phi i64 [ %i.di, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ], [ %i.ct, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ] ; 3 uses
  %i.db = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.dc = call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.db)
  %i.dd = shl i64 %.05797, 6
  %i.de = lshr i64 %.05797, 2
  %i.df = add i64 %i.dd, 2654435769
  %i.dg = add i64 %i.df, %i.de
  %i.dh = add i64 %i.dg, %i.dc
  %i.di = xor i64 %i.dh, %.05797                  ; 2 uses
  %i.dj = load ptr, ptr %3, align 8, !tbaa !166
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !42
  switch i8 %i.dk, label %bb.p [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.o
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %.lr.ph98
  %.promoted11.i.i = load ptr, ptr %i.cu, align 8, !tbaa !168
  %i.dl = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #31
  store ptr %i.dl, ptr %i.cu, align 8, !tbaa !168
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.o:                                             ; preds = %.lr.ph98
  %i.dm = load ptr, ptr %i.cw, align 8, !tbaa !169
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dn, ptr %i.cw, align 8, !tbaa !169
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.p:                                             ; preds = %.lr.ph98
  %i.do = load i64, ptr %i.cv, align 8, !tbaa !167
  %i.dp = add nsw i64 %i.do, 1
  store i64 %i.dp, ptr %i.cv, align 8, !tbaa !167
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.o, %bb.p
  %i.dq = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.dq, label %._crit_edge, label %.lr.ph98

bb.q:                                             ; preds = %bb.a
  %i.dr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKS9_KSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !70
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !60
  %i.dv = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ds, i64 noundef %i.du, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #28
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78: ; preds = %bb.q
  %9 = shl nuw nsw i64 %i.g, 6
  %10 = lshr i64 %i.g, 2
  %i.dy = add nuw nsw i64 %9, 2654435769
  %i.dz = add nuw nsw i64 %i.dy, %10
  %i.ea = add i64 %i.dz, %i.dv
  %i.eb = xor i64 %i.ea, %i.g
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i8 0, ptr %i.e, align 1, !tbaa !55
  call void @_ZNK8nlohmann16json_abi_v3_12_06detail12from_json_fnclINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEERbEEDTcl9from_jsonfp_clsr3stdE7forwardIT0_Efp0_EEERKT_OSI_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN8nlohmann16json_abi_v3_12_06detail12static_constINS1_12from_json_fnEE5valueE, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.ec = load i8, ptr %i.e, align 1, !tbaa !55, !range !134, !noundef !135
  %i.ed = zext nneg i8 %i.ec to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %11 = shl nuw nsw i64 %i.g, 6
  %12 = lshr i64 %i.g, 2
  %i.ee = add nuw nsw i64 %11, 2654435769
  %i.ef = add nuw nsw i64 %i.ee, %12
  %i.eg = add nuw nsw i64 %i.ef, %i.ed
  %i.eh = xor i64 %i.eg, %i.g
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 0, ptr %i.d, align 8, !tbaa !142
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEElTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.ei = load i64, ptr %i.d, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %13 = shl nuw nsw i64 %i.g, 6
  %14 = lshr i64 %i.g, 2
  %i.ej = add nuw nsw i64 %13, 2654435769
  %i.ek = add nuw nsw i64 %i.ej, %14
  %i.el = add i64 %i.ek, %i.ei
  %i.em = xor i64 %i.el, %i.g
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8, !tbaa !142
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEmTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.en = load i64, ptr %i.c, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %15 = shl nuw nsw i64 %i.g, 6
  %16 = lshr i64 %i.g, 2
  %i.eo = add nuw nsw i64 %15, 2654435769
  %i.ep = add nuw nsw i64 %i.eo, %16
  %i.eq = add i64 %i.ep, %i.en
  %i.er = xor i64 %i.eq, %i.g
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !63
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.es = load double, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.es, ptr %i.a, align 8, !tbaa !63
  %i.et = fcmp une double %i.es, 0.000000e+00
  br i1 %i.et, label %bb.w, label %_ZNKSt4hashIdEclEd.exit

bb.w:                                             ; preds = %bb.v
  %i.eu = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #28
  unreachable

_ZNKSt4hashIdEclEd.exit:                          ; preds = %bb.v, %bb.w
  %i.ex = phi i64 [ 0, %bb.v ], [ %i.eu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %17 = shl nuw nsw i64 %i.g, 6
  %18 = lshr i64 %i.g, 2
  %i.ey = add nuw nsw i64 %17, 2654435769
  %i.ez = add nuw nsw i64 %i.ey, %18
  %i.fa = add i64 %i.ez, %i.ex
  %i.fb = xor i64 %i.fa, %i.g
  br label %.loopexit

bb.y:                                             ; preds = %bb.a
  %i.fc = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !156
  %i.ff = load ptr, ptr %i.fc, align 8, !tbaa !155
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %19 = shl nuw nsw i64 %i.g, 6
  %20 = lshr i64 %i.g, 2
  %i.fi = add nuw nsw i64 %19, 2654435769
  %i.fj = add nuw nsw i64 %i.fi, %20
  %i.fk = add i64 %i.fj, %i.fg
  %i.fl = sub i64 %i.fk, %i.fh
  %i.fm = xor i64 %i.fl, %i.g                     ; 3 uses
  %i.fn = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !176, !range !134, !noundef !135
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = add nuw nsw i64 %i.fq, 2654435769
  %i.fs = shl i64 %i.fm, 6
  %i.ft = add i64 %i.fr, %i.fs
  %i.fu = lshr i64 %i.fm, 2
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = xor i64 %i.fv, %i.fm                    ; 3 uses
  %i.fx = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load i8, ptr %i.fy, align 8, !tbaa !176, !range !134, !noundef !135
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = add i64 %i.gc, 2654435769
  %i.ge = select i1 %i.ga, i64 %i.gd, i64 2654435768
  %i.gf = shl i64 %i.fw, 6
  %i.gg = add i64 %i.gf, %i.ge
  %i.gh = lshr i64 %i.fw, 2
  %i.gi = add i64 %i.gg, %i.gh
  %i.gj = xor i64 %i.gi, %i.fw                    ; 5 uses
  %i.gk = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !153 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !153 ; 3 uses
  %.not94 = icmp eq ptr %i.gl, %i.gn
  br i1 %.not94, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.go = ptrtoaddr ptr %i.gn to i64              ; 2 uses
  %i.gp = ptrtoaddr ptr %i.gl to i64              ; 2 uses
  %i.gq = sub i64 %i.go, %i.gp
  %xtraiter = and i64 %i.gq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.gr = load i8, ptr %i.gl, align 1, !tbaa !40
  %i.gs = zext i8 %i.gr to i64
  %i.gt = shl i64 %i.gj, 6
  %i.gu = lshr i64 %i.gj, 2
  %i.gv = add i64 %i.gt, 2654435769
  %i.gw = add i64 %i.gv, %i.gu
  %i.gx = add i64 %i.gw, %i.gs
  %i.gy = xor i64 %i.gx, %i.gj                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa118.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.gy, %.lr.ph.prol ]
  %.05296.unr = phi i64 [ %i.gj, %.lr.ph.preheader ], [ %i.gy, %.lr.ph.prol ]
  %.sroa.080.095.unr = phi ptr [ %i.gl, %.lr.ph.preheader ], [ %i.gz, %.lr.ph.prol ]
  %i.ha = add i64 %i.go, -1
  %i.hb = icmp eq i64 %i.ha, %i.gp
  br i1 %i.hb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05296 = phi i64 [ %i.hs, %.lr.ph ], [ %.05296.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.080.095 = phi ptr [ %i.ht, %.lr.ph ], [ %.sroa.080.095.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.hc = load i8, ptr %.sroa.080.095, align 1, !tbaa !40
  %i.hd = zext i8 %i.hc to i64
  %i.he = shl i64 %.05296, 6
  %i.hf = lshr i64 %.05296, 2
  %i.hg = add i64 %i.he, 2654435769
  %i.hh = add i64 %i.hg, %i.hf
  %i.hi = add i64 %i.hh, %i.hd
  %i.hj = xor i64 %i.hi, %.05296                  ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !40
  %i.hm = zext i8 %i.hl to i64
  %i.hn = shl i64 %i.hj, 6
  %i.ho = lshr i64 %i.hj, 2
  %i.hp = add i64 %i.hn, 2654435769
  %i.hq = add i64 %i.hp, %i.ho
  %i.hr = add i64 %i.hq, %i.hm
  %i.hs = xor i64 %i.hr, %i.hj                    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.080.095, i64 2 ; 2 uses
  %.not.1 = icmp eq ptr %i.ht, %i.gn
  br i1 %.not.1, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.y, %bb.a, %_ZNKSt4hashIdEclEd.exit, %bb.u, %bb.t, %bb.s, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78, %._crit_edge, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72, %bb.b
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ], [ %.053, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72 ], [ %.057.lcssa, %._crit_edge ], [ %i.eb, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 ], [ %i.eh, %bb.s ], [ %i.em, %bb.t ], [ %i.er, %bb.u ], [ %i.fb, %_ZNKSt4hashIdEclEd.exit ], [ %i.gj, %bb.y ], [ %.lcssa118.unr, %.lr.ph.prol.loopexit ], [ %i.hs, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !42
  %i.c = icmp eq i8 %i.b, 8
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 32) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = tail call noundef nonnull ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  store ptr %i.e, ptr %i.a, align 8, !tbaa !153
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA29_KcPS9_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(29) @.str.313, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %i.d, i32 noundef 302, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.d, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  ret ptr %i.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13int_to_stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
end_hunk_0
