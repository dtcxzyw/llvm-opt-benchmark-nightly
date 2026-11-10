Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/periodic_task_scheduler?download=true
inline.NumInlined: 1148
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E:bb.a

declare void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

declare void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.015 = load ptr, ptr %i.c, align 8, !tbaa !103 ; 3 uses
  %i.d = icmp eq ptr %.sroa.06.015, null
  br i1 %i.d, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %.fr22 = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp eq i64 %.fr22, 0
  %i.h = load ptr, ptr %1, align 8
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10.us
  %.sroa.06.016.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10.us ], [ %.sroa.06.015, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.016.us, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.016.us, align 8, !tbaa !103 ; 2 uses
  %i.l = icmp eq ptr %.sroa.06.0.us, null
  br i1 %i.l, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !193

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10
  %.sroa.06.016 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10 ], [ %.sroa.06.015, %.lr.ph ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = icmp eq i64 %.fr22, %i.n
  br i1 %i.o, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.q, i64 %.fr22)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.016, align 8, !tbaa !103 ; 2 uses
  %i.s = icmp eq ptr %.sroa.06.0, null
  br i1 %i.s, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !193

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !48
  %i.w = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.t, i64 noundef %i.v, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !106 ; 3 uses
  %i.ab = urem i64 %i.w, %i.aa                    ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !105
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !110 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !103 ; 3 uses
  %i.ag = load i64, ptr %i.u, align 8
  %.fr22.i.i = freeze i64 %i.ag                   ; 3 uses
  %i.ah = icmp eq i64 %.fr22.i.i, 0
  %i.ai = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !112 ; 2 uses
  br i1 %i.ah, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.aj = phi i64 [ %i.aq, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.ao, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !48
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.ao = load ptr, ptr %.0.us.i.i, align 8, !tbaa !103 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !112 ; 2 uses
  %i.ar = urem i64 %i.aq, %i.aa
  %.not19.us.i.i = icmp eq i64 %i.ar, %i.ab
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !2

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.as = phi i64 [ %i.bc, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ba, %bb.i ], [ %i.af, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = icmp eq i64 %i.w, %i.as
  br i1 %i.au, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !48
  %i.ax = icmp eq i64 %.fr22.i.i, %i.aw
  br i1 %i.ax, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !45
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.ay, i64 %.fr22.i.i)
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ba = load ptr, ptr %.0.i.i, align 8, !tbaa !103 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !112 ; 2 uses
  %i.bd = urem i64 %i.bc, %i.aa
  %.not19.i.i = icmp eq i64 %i.bd, %i.ab
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !2

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.016.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76)) local_unnamed_addr #0

declare void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

declare void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb5Timer3RunEv(ptr noundef nonnull align 8 dereferenceable(256) %0) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %1 = alloca %"class.std::function", align 8     ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !96, !range !94, !noundef !95
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !64   ; 12 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !64   ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.l)
          to label %.backedge unwind label %bb.d

.backedge:                                        ; preds = %bb.c, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit
  %i.p = load i8, ptr %i.c, align 8, !tbaa !96, !range !94, !noundef !95
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !57   ; 5 uses
  store ptr %i.s, ptr %i.a, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load i8, ptr %i.t, align 8, !tbaa !61, !range !94, !noundef !95
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 2 uses
  store ptr %i.s, ptr %i.aa, align 8, !tbaa !57
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ac, %i.x                     ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 3 uses
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = lshr i64 %i.af, 1
  %i.ah = icmp sgt i64 %i.ae, 2
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.ai = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aj = add i64 %i.ai, 2                        ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aj
  %i.al = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.al
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !102
  %i.at = icmp ugt i64 %i.aq, %i.as
  %spec.select.i.i.i.i = select i1 %i.at, i64 %i.al, i64 %i.aj ; 4 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.m, i64 %spec.select.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.034.i.i.i.i
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !57
  %i.ax = icmp slt i64 %spec.select.i.i.i.i, %i.ag
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.g ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ay = and i64 %i.ad, 8
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ba = add nsw i64 %i.ae, -2
  %i.bb = ashr exact i64 %i.ba, 1
  %i.bc = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bb
  br i1 %i.bc, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.bd = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.be = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.be, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.k ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0920.i.i910.i.i.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !102
  %i.bo = icmp ugt i64 %i.bn, %i.bj
  br i1 %i.bo, label %bb.k, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.019.i.i.i.i.i
  store ptr %i.bl, ptr %i.bp, align 8, !tbaa !57
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i, label %bb.j, !llvm.loop !4

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.019.i.i.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ab, ptr %i.bq, align 8, !tbaa !57
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i, %bb.f
  %i.br = phi ptr [ %.pre, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i ], [ %i.s, %bb.f ]
  %i.bs = getelementptr inbounds i8, ptr %i.n, i64 -8
  store ptr %i.bs, ptr %i.g, align 8, !tbaa !113
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l, %bb.am, %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.n:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !102
  %i.by = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %.not = icmp ugt i64 %i.bx, %i.cc
  br i1 %.not, label %bb.am, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = invoke noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i32 noundef 2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ch = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !51
  store <2 x ptr> %i.ch, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %.body unwind label %bb.u      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #24
  unreachable

_ZNSt8functionIFvvEEC2ERKS1_.exit:                ; preds = %bb.r, %bb.p
  store i8 1, ptr %i.k, align 1, !tbaa !93
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit:     ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !50
  %.not.i.i10 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i10, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit
  invoke void @_ZSt25__throw_bad_function_callv() #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_ZN7rocksdb17InstrumentedMutex6UnlockEv.exit
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !114
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !194

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.w
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  store i8 0, ptr %i.k, align 1, !tbaa !93
  invoke void @_ZN7rocksdb4port7CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(76) %i.l)
          to label %_ZN7rocksdb19InstrumentedCondVar9SignalAllEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb19InstrumentedCondVar9SignalAllEv.exit: ; preds = %bb.x
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !64  ; 11 uses
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !64  ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp sgt i64 %i.ct, 8
  br i1 %i.cu, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %_ZN7rocksdb19InstrumentedCondVar9SignalAllEv.exit
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 -8 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !57 ; 2 uses
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !57
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !57
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cy, %i.cs                    ; 2 uses
  %i.da = ashr exact i64 %i.cz, 3                 ; 3 uses
  %i.db = add nsw i64 %i.da, -1
  %i.dc = lshr i64 %i.db, 1
  %i.dd = icmp sgt i64 %i.da, 2
  br i1 %i.dd, label %.lr.ph.i.i.i.i25, label %._crit_edge.i.i.i.i13

.lr.ph.i.i.i.i25:                                 ; preds = %bb.y, %.lr.ph.i.i.i.i25
  %.034.i.i.i.i26 = phi i64 [ %spec.select.i.i.i.i27, %.lr.ph.i.i.i.i25 ], [ 0, %bb.y ] ; 2 uses
  %i.de = shl i64 %.034.i.i.i.i26, 1              ; 2 uses
  %i.df = add i64 %i.de, 2                        ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df
  %i.dh = or disjoint i64 %i.de, 1                ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.dh
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !57
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !102
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !102
  %i.dp = icmp ugt i64 %i.dm, %i.do
  %spec.select.i.i.i.i27 = select i1 %i.dp, i64 %i.dh, i64 %i.df ; 4 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %spec.select.i.i.i.i27
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !57
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.034.i.i.i.i26
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !57
  %i.dt = icmp slt i64 %spec.select.i.i.i.i27, %i.dc
  br i1 %i.dt, label %.lr.ph.i.i.i.i25, label %._crit_edge.i.i.i.i13, !llvm.loop !3

._crit_edge.i.i.i.i13:                            ; preds = %.lr.ph.i.i.i.i25, %bb.y
  %.0.lcssa.i.i.i.i14 = phi i64 [ 0, %bb.y ], [ %spec.select.i.i.i.i27, %.lr.ph.i.i.i.i25 ] ; 5 uses
  %i.du = and i64 %i.cz, 8
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i.i.i13
  %i.dw = add nsw i64 %i.da, -2
  %i.dx = ashr exact i64 %i.dw, 1
  %i.dy = icmp eq i64 %.0.lcssa.i.i.i.i14, %i.dx
  br i1 %i.dy, label %.thread.i.i.i24, label %bb.aa

.thread.i.i.i24:                                  ; preds = %bb.z
  %i.dz = shl nuw nsw i64 %.0.lcssa.i.i.i.i14, 1
  %i.ea = or disjoint i64 %i.dz, 1                ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !57
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.0.lcssa.i.i.i.i14
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.i.i16

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i13
  %.not.i.i.i15 = icmp eq i64 %.0.lcssa.i.i.i.i14, 0
  br i1 %.not.i.i.i15, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i21, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.aa, %.thread.i.i.i24
  %.1.i8.i.i.i17 = phi i64 [ %i.ea, %.thread.i.i.i24 ], [ %.0.lcssa.i.i.i.i14, %bb.aa ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !102
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i16
  %.019.i.i.i.i.i18 = phi i64 [ %.1.i8.i.i.i17, %.lr.ph.i.i.i.i.i16 ], [ %.0920.i.i910.i.i.i20, %bb.ac ] ; 3 uses
  %.0920.in.i.i.i.i.i19 = add nsw i64 %.019.i.i.i.i.i18, -1
  %.0920.i.i910.i.i.i20 = lshr i64 %.0920.in.i.i.i.i.i19, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.0920.i.i910.i.i.i20
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !57 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !102
  %i.ek = icmp ugt i64 %i.ej, %i.ef
  br i1 %i.ek, label %bb.ac, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i21

bb.ac:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.019.i.i.i.i.i18
  store ptr %i.eh, ptr %i.el, align 8, !tbaa !57
  %.not11.i.i.i23 = icmp eq i64 %.0920.i.i910.i.i.i20, 0
  br i1 %.not11.i.i.i23, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i21, label %bb.ab, !llvm.loop !4

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i21: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.lcssa.i.i.i.i.i22 = phi i64 [ 0, %bb.aa ], [ %.019.i.i.i.i.i18, %bb.ab ], [ 0, %bb.ac ]
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.0.lcssa.i.i.i.i.i22
  store ptr %i.cw, ptr %i.em, align 8, !tbaa !57
  br label %bb.ad

bb.ad:                                            ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i21, %_ZN7rocksdb19InstrumentedCondVar9SignalAllEv.exit
  %i.en = getelementptr inbounds i8, ptr %i.cq, i64 -8
  store ptr %i.en, ptr %i.g, align 8, !tbaa !113
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !61, !range !94, !noundef !95
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.et = load i64, ptr %i.es, align 8, !tbaa !115
  %.not5 = icmp eq i64 %i.et, 0
  br i1 %.not5, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !98
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 152
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = invoke noundef i64 %i.ex(ptr noundef nonnull align 8 dereferenceable(32) %i.eu)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !115
  %i.fc = add i64 %i.fb, %i.ey
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !102
  invoke void @_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE4pushERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.x, %bb.w, %_ZNSt8functionIFvvEEC2ERKS1_.exit, %bb.ag, %bb.af, %_ZNKSt8functionIFvvEEclEv.exit, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %.not.i = icmp eq ptr %i.fe, null
  br i1 %.not.i, label %.body, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ff = invoke noundef zeroext i1 %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %.body unwind label %bb.ai     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #24
  unreachable

bb.aj:                                            ; preds = %bb.ae, %bb.ad
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.fj = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.fi)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit30: ; preds = %bb.aj, %bb.ag
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %.not.i31 = icmp eq ptr %i.fk, null
  br i1 %.not.i31, label %_ZNSt14_Function_baseD2Ev.exit32, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit30
  %i.fl = invoke noundef zeroext i1 %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit32 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit32:                 ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit30, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit

.body:                                            ; preds = %bb.ah, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %lpad.loopexit.split-lp, %bb.ah ], [ %i.ci, %bb.t ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.o
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !102
  %i.fr = invoke noundef zeroext i1 @_ZN7rocksdb19InstrumentedCondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(76) %i.l, i64 noundef %i.fq)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit unwind label %bb.m ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5eraseERSI_.exit: ; preds = %bb.l, %_ZNSt14_Function_baseD2Ev.exit32, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.backedge

bb.an:                                            ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ap

._crit_edge:                                      ; preds = %.backedge, %bb.a
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #24
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %._crit_edge
  ret void

bb.ap:                                            ; preds = %bb.an, %bb.d
  %.pn8 = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn.pn, %bb.an ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit33 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #24
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit33:    ; preds = %bb.ap
  resume { ptr, i32 } %.pn8
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN7rocksdb5TimerEFvvEPS4_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN7rocksdb5TimerEFvvEPS4_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !104
  %.unpack.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !46 ; 3 uses
  %.elt2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.unpack3.i.i.i.i = load i64, ptr %.elt2.i.i.i.i, align 8, !tbaa !46
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack3.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !95
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN7rocksdb5TimerEFvvEPS3_EEEclEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i to ptr
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN7rocksdb5TimerEFvvEPS3_EEEclEv.exit

_ZNSt6thread8_InvokerISt5tupleIJMN7rocksdb5TimerEFvvEPS3_EEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(256) %i.d), !inline_history !195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE4pushERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !57
  store ptr %i.e, ptr %i.b, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !113
  %.pre = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !117    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #25
  unreachable

_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !57
  store ptr %i.t, ptr %i.s, align 8, !tbaa !57
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !117
  store ptr %i.v, ptr %i.a, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !116
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.aa = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.aj = icmp sgt i64 %i.ah, 1
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.0920.i56.i, %bb.h ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i56.i = lshr i64 %.0920.in.i.i, 1        ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0920.i56.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !102
  %i.aq = icmp ugt i64 %i.ap, %i.al
  br i1 %i.aq, label %bb.h, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.019.i.i
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !57
  %.not.i3 = icmp eq i64 %.0920.i56.i, 0
  br i1 %.not.i3, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit, label %bb.g, !llvm.loop !4

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit: ; preds = %bb.g, %bb.h, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backERKS3_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ai, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backERKS3_.exit ], [ 0, %bb.h ], [ %.019.i.i, %bb.g ]
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.0.lcssa.i.i
  store ptr %i.ad, ptr %i.as, align 8, !tbaa !57
  ret void
}

declare noundef zeroext i1 @_ZN7rocksdb19InstrumentedCondVar9TimedWaitEm(ptr noundef nonnull align 8 dereferenceable(76), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48
  %.fr20.i = freeze i64 %i.f                      ; 3 uses
  %i.g = icmp eq i64 %.fr20.i, 0
  %i.h = load ptr, ptr %1, align 8
  br i1 %i.g, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i, !llvm.loop !196

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i: ; preds = %.preheader.split.us.i, %bb.c
  %.017.us19.i = phi ptr [ %i.o, %bb.c ], [ %i.d, %.preheader.split.us.i ] ; 2 uses
  %i.o = load ptr, ptr %.017.us19.i, align 8, !tbaa !103 ; 4 uses
  %.not14.us.i = icmp eq ptr %i.o, null
  br i1 %.not14.us.i, label %.critedge, label %bb.c, !llvm.loop !196

.preheader.split.i:                               ; preds = %.preheader.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i
  %.017.i = phi ptr [ %i.v, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i ], [ %i.d, %.preheader.i ] ; 5 uses
  %.01116.i = phi ptr [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i ], [ %i.c, %.preheader.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = icmp eq i64 %.fr20.i, %i.q
  br i1 %i.r, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.i: ; preds = %.preheader.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.t, i64 %.fr20.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.i, %.preheader.split.i
  %i.v = load ptr, ptr %.017.i, align 8, !tbaa !103 ; 2 uses
  %.not14.i = icmp eq ptr %i.v, null
  br i1 %.not14.i, label %.critedge, label %.preheader.split.i, !llvm.loop !196

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.i, %bb.c, %.preheader.split.us.i
  %i.w = phi ptr [ %i.o, %bb.c ], [ %i.d, %.preheader.split.us.i ], [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %.017.us19.i, %bb.c ], [ %i.c, %.preheader.split.us.i ], [ %.01116.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !106  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !112
  %i.ab = urem i64 %i.aa, %i.y                    ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ab
  %.pre49 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !110
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !48
  %i.af = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ac, i64 noundef %i.ae, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #24
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !106 ; 5 uses
  %i.ak = urem i64 %i.af, %i.aj                   ; 5 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !105   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !110 ; 6 uses
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !103 ; 3 uses
  %i.ap = load i64, ptr %i.ad, align 8
  %.fr22.i = freeze i64 %i.ap                     ; 3 uses
  %i.aq = icmp eq i64 %.fr22.i, 0
  %i.ar = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !tbaa !112 ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f, %bb.h
  %i.as = phi i64 [ %i.az, %bb.h ], [ %.pre26.i, %bb.f ]
  %.015.us.i = phi ptr [ %.0.us.i, %bb.h ], [ %i.an, %bb.f ]
  %.0.us.i = phi ptr [ %i.ax, %bb.h ], [ %i.ao, %bb.f ] ; 4 uses
  %i.at = icmp eq i64 %i.af, %i.as
  br i1 %i.at, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i

bb.g:                                             ; preds = %.split.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !48
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i: ; preds = %bb.g, %.split.us.i
  %i.ax = load ptr, ptr %.0.us.i, align 8, !tbaa !103 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.ax, null
  br i1 %.not18.us.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !112 ; 2 uses
  %i.ba = urem i64 %i.az, %i.aj
  %.not19.us.i = icmp eq i64 %i.ba, %i.ak
  br i1 %.not19.us.i, label %.split.us.i, label %.critedge, !llvm.loop !2

.split.i:                                         ; preds = %bb.f, %bb.j
  %i.bb = phi i64 [ %i.bl, %bb.j ], [ %.pre26.i, %bb.f ]
  %.015.i = phi ptr [ %.0.i, %bb.j ], [ %i.an, %bb.f ]
  %.0.i = phi ptr [ %i.bj, %bb.j ], [ %i.ao, %bb.f ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bd = icmp eq i64 %i.af, %i.bb
  br i1 %i.bd, label %bb.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i

bb.i:                                             ; preds = %.split.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !48
  %i.bg = icmp eq i64 %.fr22.i, %i.bf
  br i1 %i.bg, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i: ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !45
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ar, ptr %i.bh, i64 %.fr22.i)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i, %bb.i, %.split.i
  %i.bj = load ptr, ptr %.0.i, align 8, !tbaa !103 ; 3 uses
  %.not18.i = icmp eq ptr %i.bj, null
  br i1 %.not18.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !112 ; 2 uses
  %i.bm = urem i64 %i.bl, %i.aj
  %.not19.i = icmp eq i64 %i.bm, %i.ak
  br i1 %.not19.i, label %.split.i, label %.critedge, !llvm.loop !2

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i, %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit
  %i.bn = phi i64 [ %i.y, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.aj, %bb.g ], [ %i.aj, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre49, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.an, %bb.g ], [ %i.an, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ] ; 3 uses
  %i.bp = phi ptr [ %.pre, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.al, %bb.g ], [ %i.al, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ] ; 3 uses
  %.020 = phi ptr [ %.1.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.015.us.i, %bb.g ], [ %.015.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ] ; 3 uses
  %.119 = phi ptr [ %i.w, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.0.us.i, %bb.g ], [ %.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ] ; 3 uses
  %.017 = phi i64 [ %i.ab, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.ak, %bb.g ], [ %i.ak, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.017
  %i.br = icmp eq ptr %.020, %i.bo
  %i.bs = load ptr, ptr %.119, align 8, !tbaa !103 ; 4 uses
  %.not18.i26 = icmp eq ptr %i.bs, null           ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !112
  %i.bv = urem i64 %i.bu, %i.bn                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bv, %.017
  br i1 %.not9.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bv
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !110
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bo
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  store ptr null, ptr %i.bq, align 8, !tbaa !110
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit

bb.p:                                             ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !112
  %i.cb = urem i64 %i.ca, %i.bn                   ; 2 uses
  %.not17.i = icmp eq i64 %i.cb, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cb
  store ptr %.020, ptr %i.cc, align 8, !tbaa !110
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit: ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r
  %i.cd = load ptr, ptr %.119, align 8, !tbaa !103
  store ptr %i.cd, ptr %.020, align 8, !tbaa !103
  tail call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE18_M_deallocate_nodeEPSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %.119)
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !109
  %i.cf = add i64 %i.ce, -1
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i, %bb.h, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i ], [ 0, %bb.b ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE18_M_deallocate_nodeEPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS2_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !46
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(81) %i.c, ptr noundef nonnull align 8 dereferenceable(81) %i.c, i32 noundef 3)
          to label %_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit.i.i.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #24
  unreachable

_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit.i.i.i: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 88) #26
  br label %_ZNSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit.i.i.i, %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !46
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEEEvPT_.exit

_ZSt10destroy_atISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEEEvPT_.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(81) %i.a, ptr noundef nonnull align 8 dereferenceable(81) %i.a, i32 noundef 3)
          to label %_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN7rocksdb5Timer12FunctionInfoEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #10

declare void @_ZN7rocksdb4port7CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !45     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !197

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !46
  store i8 %i.v, ptr %i.t, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !46
  store i8 %i.w, ptr %i.m, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !48
  %i.x = load ptr, ptr %0, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !46
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !52

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %cond32 = icmp eq i64 %1, 1
  br i1 %cond32, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46
  store i8 %i.u, ptr %i.s, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.v = icmp ne ptr %3, null
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr %3, align 1, !tbaa !46
  store i8 %i.y, ptr %i.x, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !45    ; 3 uses
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !46
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !45
  store i64 %.0, ptr %i.h, align 8, !tbaa !46
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN7rocksdb5Timer12FunctionInfoEJSt8functionIFvvEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !47
  %i.c = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !52

.noexc6.i:                                        ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc6 unwind label %bb.i

.noexc6:                                          ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
          to label %.noexc7 unwind label %bb.i    ; 2 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.j, ptr %5, align 8, !tbaa !45
  store i64 %i.e, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc7, %bb.a
  %i.k = phi ptr [ %i.j, %.noexc7 ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !46
  store i8 %i.l, ptr %i.k, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !46
  %i.o = load i32, ptr %3, align 4, !tbaa !100
  %i.p = load i64, ptr %4, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.a, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114
  store ptr %i.s, ptr %i.q, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !198
  store ptr %i.u, ptr %i.v, align 8, !tbaa !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !47
  %i.y = load ptr, ptr %5, align 8, !tbaa !45     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !48  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i
  store ptr %i.y, ptr %i.w, align 8, !tbaa !45
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !46
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !46
  %.pre = load i64, ptr %i.m, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ae = phi i64 [ %i.aa, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.af = sext i32 %i.o to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.p, ptr %i.ai, align 8, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 1, ptr %i.aj, align 8, !tbaa !61
  store ptr %i.a, ptr %0, align 8, !tbaa !57
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #26
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE4pushEOS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !57
  store ptr %i.e, ptr %i.b, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !113
  %.pre = load ptr, ptr %0, align 8, !tbaa !64
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !117    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #25
  unreachable

_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !57
  store ptr %i.t, ptr %i.s, align 8, !tbaa !57
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !117
  store ptr %i.v, ptr %i.a, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !116
  br label %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.aa = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.aj = icmp sgt i64 %i.ah, 1
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backEOS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.0920.i56.i, %bb.h ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i56.i = lshr i64 %.0920.in.i.i, 1        ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0920.i56.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !102
  %i.aq = icmp ugt i64 %i.ap, %i.al
  br i1 %i.aq, label %bb.h, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.019.i.i
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !57
  %.not.i = icmp eq i64 %.0920.i56.i, 0
  br i1 %.not.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit, label %bb.g, !llvm.loop !4

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS3_12RunTimeOrderEEvT_SC_T0_.exit: ; preds = %bb.g, %bb.h, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backEOS3_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ai, %_ZNSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.h ], [ %.019.i.i, %bb.g ]
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.0.lcssa.i.i
  store ptr %i.ad, ptr %i.as, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8__detail12_Insert_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEESaISG_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS8_JSF_EEES7_INS_14_Node_iteratorISG_Lb0ELb1EEEbENS_20_Node_const_iteratorISG_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::unique_ptr<rocksdb::Timer::FunctionInfo>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::unique_ptr<rocksdb::Timer::FunctionInfo>>>, std::__detail::_Select1st, std::equal_to<std::__cxx11::basic_string<char>>, std::hash<std::__cxx11::basic_string<char>>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %5 = alloca %"class.std::tuple.88", align 8     ; 4 uses
  %6 = alloca %"class.std::tuple.91", align 8     ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.a, i64 noundef %i.c, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !106  ; 3 uses
  %i.i = urem i64 %i.d, %i.h                      ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !105
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103  ; 3 uses
  %i.n = load i64, ptr %i.b, align 8
  %.fr22.i.i = freeze i64 %i.n                    ; 3 uses
  %i.o = icmp eq i64 %.fr22.i.i, 0
  %i.p = load ptr, ptr %2, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !112 ; 2 uses
  br i1 %i.o, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.c, %bb.e
  %i.q = phi i64 [ %i.x, %bb.e ], [ %.pre26.i.i, %bb.c ]
  %.0.us.i.i = phi ptr [ %i.v, %bb.e ], [ %i.m, %bb.c ] ; 3 uses
  %i.r = icmp eq i64 %i.d, %i.q
  br i1 %i.r, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i

bb.d:                                             ; preds = %.split.us.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !48
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.d, %.split.us.i.i
  %i.v = load ptr, ptr %.0.us.i.i, align 8, !tbaa !103 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !112  ; 2 uses
  %i.y = urem i64 %i.x, %i.h
  %.not19.us.i.i = icmp eq i64 %i.y, %i.i
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !2

.split.i.i:                                       ; preds = %bb.c, %bb.g
  %i.z = phi i64 [ %i.aj, %bb.g ], [ %.pre26.i.i, %bb.c ]
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.m, %bb.c ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ab = icmp eq i64 %i.d, %i.z
  br i1 %i.ab, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i

bb.f:                                             ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.ae = icmp eq i64 %.fr22.i.i, %i.ad
  br i1 %i.ae, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i: ; preds = %bb.f
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !45
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.af, i64 %.fr22.i.i)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i, %bb.f, %.split.i.i
  %i.ah = load ptr, ptr %.0.i.i, align 8, !tbaa !103 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.ak = urem i64 %i.aj, %i.h
  %.not19.i.i = icmp eq i64 %i.ak, %i.i
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i.i, %bb.e, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %2, ptr %5, align 8, !tbaa !120, !alias.scope !203
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %3, ptr %6, align 8, !tbaa !122, !alias.scope !204
  store ptr %0, ptr %4, align 8, !tbaa !126
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESP_IJOSG_EEEEEPSI_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.an = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSH_10_Hash_nodeISF_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.i, i64 noundef %i.d, ptr noundef %i.am, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.h

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit

bb.h:                                             ; preds = %.critedge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.ao

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i, %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.022.0 = phi ptr [ %i.an, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.0.us.i.i, %bb.d ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.i.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.022.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSH_10_Hash_nodeISF_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !205
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !205
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !106
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %2, ptr %i.t, align 8, !tbaa !112
  %i.u = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !103
  store ptr %i.x, ptr %3, align 8, !tbaa !103
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !110
  store ptr %3, ptr %i.y, align 8, !tbaa !103
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSH_10_Hash_nodeISF_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118
  store ptr %i.aa, ptr %3, align 8, !tbaa !103
  store ptr %3, ptr %i.z, align 8, !tbaa !118
  %i.ab = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !112
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !110
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !110
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSH_10_Hash_nodeISF_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSH_10_Hash_nodeISF_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !109
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !109
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !126
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE18_M_deallocate_nodeEPSI_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS9_EESP_IJOSG_EEEEEPSI_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22 ; 7 uses
  store ptr null, ptr %i.a, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !120
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !47
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !52

.noexc6.i.i.i.i:                                  ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
          to label %.noexc12 unwind label %bb.g   ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.n, ptr %i.b, align 8, !tbaa !45
  store i64 %i.i, ptr %i.f, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc12, %bb.a
  %i.o = phi ptr [ %i.n, %.noexc12 ], [ %i.f, %bb.a ] ; 3 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = load i8, ptr %i.g, align 1, !tbaa !46
  store i8 %i.p, ptr %i.o, align 1, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.q = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.s, align 1, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.u = load i64, ptr %i.q, align 8, !tbaa !57
  store i64 %i.u, ptr %i.t, align 8, !tbaa !57
  store ptr null, ptr %i.q, align 8, !tbaa !57
  ret ptr %i.a

bb.g:                                             ; preds = %.noexc.i.i.i.i, %.noexc6.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26
  invoke void @__cxa_rethrow() #25
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.y

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #24
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !207
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !118
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !103 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !112
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !110  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !118
  store ptr %i.o, ptr %.02530, align 8, !tbaa !103
  store ptr %.02530, ptr %i.g, align 8, !tbaa !118
  store ptr %i.g, ptr %i.m, align 8, !tbaa !110
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !103
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !110
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !103
  store ptr %i.r, ptr %.02530, align 8, !tbaa !103
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !110
  store ptr %.02530, ptr %i.s, align 8, !tbaa !103
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !106
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #26
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !106
  store ptr %.0.i, ptr %0, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb5Timer17CancelAllWithLockEv(ptr noundef nonnull align 8 dereferenceable(256) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i64, ptr %i.c, align 8, !tbaa !109
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %.sroa.06.09 = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.l = icmp eq ptr %.sroa.06.09, null
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !93, !range !94, !noundef !95
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.lr.ph.i, label %_ZN7rocksdb5Timer30WaitForTaskCompleteIfNecessaryEv.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  tail call void @_ZN7rocksdb19InstrumentedCondVar4WaitEv(ptr noundef nonnull align 8 dereferenceable(76) %i.p)
  %i.q = load i8, ptr %i.m, align 1, !tbaa !93, !range !94, !noundef !95
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZN7rocksdb5Timer30WaitForTaskCompleteIfNecessaryEv.exit, !llvm.loop !1

_ZN7rocksdb5Timer30WaitForTaskCompleteIfNecessaryEv.exit: ; preds = %bb.d, %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64   ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64   ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.k, label %.lr.ph11

.lr.ph11:                                         ; preds = %_ZN7rocksdb5Timer30WaitForTaskCompleteIfNecessaryEv.exit
  %i.x = ptrtoint ptr %i.t to i64                 ; 2 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.06.010 = phi ptr [ %.sroa.06.0, %.lr.ph ], [ %.sroa.06.09, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store i8 0, ptr %i.aa, align 8, !tbaa !61
  %.sroa.06.0 = load ptr, ptr %.sroa.06.010, align 8, !tbaa !103 ; 2 uses
  %i.ab = icmp eq ptr %.sroa.06.0, null
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph11, %_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE3popEv.exit
  %i.ac = phi ptr [ %i.v, %.lr.ph11 ], [ %i.by, %_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE3popEv.exit ] ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.x
  %i.af = icmp sgt i64 %i.ae, 8
  br i1 %i.af, label %bb.f, label %_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE3popEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !57
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !57
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.aj, %i.x                     ; 2 uses
  %i.al = ashr exact i64 %i.ak, 3                 ; 3 uses
  %i.am = add nsw i64 %i.al, -1
  %i.an = lshr i64 %i.am, 1
  %i.ao = icmp sgt i64 %i.al, 2
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ap = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.as
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !102
  %i.ba = icmp ugt i64 %i.ax, %i.az
  %spec.select.i.i.i.i = select i1 %i.ba, i64 %i.as, i64 %i.aq ; 4 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.t, i64 %spec.select.i.i.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.034.i.i.i.i
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !57
  %i.be = icmp slt i64 %spec.select.i.i.i.i, %i.an
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bf = and i64 %i.ak, 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = add nsw i64 %i.al, -2
  %i.bi = ashr exact i64 %i.bh, 1
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bi
  br i1 %i.bj, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bk = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bl = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0.lcssa.i.i.i.i
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !57
  br label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.thread.i.i.i
  %.1.i8.i.i.i = phi i64 [ %i.bl, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.h ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i910.i.i.i, %bb.j ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i910.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0920.i.i910.i.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !102
  %i.bv = icmp ugt i64 %i.bu, %i.bq
  br i1 %i.bv, label %bb.j, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.019.i.i.i.i.i
  store ptr %i.bs, ptr %i.bw, align 8, !tbaa !57
  %.not11.i.i.i = icmp eq i64 %.0920.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i, label %bb.i, !llvm.loop !4

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %bb.i ], [ 0, %bb.j ]
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ah, ptr %i.bx, align 8, !tbaa !57
  br label %_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE3popEv.exit

_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE3popEv.exit: ; preds = %bb.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb5Timer12FunctionInfoESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_12RunTimeOrderEEEEvT_SF_SF_RT0_.exit.i.i
  %i.by = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 3 uses
  %i.bz = icmp eq ptr %i.t, %i.by
  br i1 %i.bz, label %._crit_edge12, label %bb.e, !llvm.loop !208

._crit_edge12:                                    ; preds = %_ZNSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE3popEv.exit
  store ptr %i.by, ptr %i.u, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge12, %_ZN7rocksdb5Timer30WaitForTaskCompleteIfNecessaryEv.exit
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !118 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.noexc.i.i
  %.06.i.i.i = phi ptr [ %i.cb, %.noexc.i.i ], [ %i.ca, %bb.k ] ; 2 uses
  %i.cb = load ptr, ptr %.06.i.i.i, align 8, !tbaa !103 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEE18_M_deallocate_nodeEPSI_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull %.06.i.i.i)
          to label %.noexc.i.i unwind label %bb.l

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i5 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i5, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !209

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #24
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5clearEv.exit: ; preds = %.noexc.i.i, %bb.k
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !106
  %i.ch = shl i64 %i.cg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %i.ch, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE5clearEv.exit
  ret void
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN7rocksdb4port7CondVarC1EPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %2, align 8, !tbaa !129
  store i8 %i.b, ptr %i.a, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !47
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.c

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !52

.noexc6.i.i.i:                                    ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.c
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc7 unwind label %bb.f    ; 2 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.m, ptr %i.c, align 8, !tbaa !45
  store i64 %i.h, ptr %i.e, align 8, !tbaa !46
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc7, %bb.a
  %i.n = phi ptr [ %i.m, %.noexc7 ], [ %i.e, %bb.a ] ; 3 uses
  switch i64 %i.h, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.h
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !46
  store i8 %i.o, ptr %i.n, align 1, !tbaa !46
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc6.i.i.i, %.noexc.i.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #26
  invoke void @__cxa_rethrow() #25
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.h, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.u, align 1, !tbaa !46
  ret void

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #24
  unreachable

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJOS5_EEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<rocksdb::PeriodicTaskType, std::pair<const rocksdb::PeriodicTaskType, rocksdb::PeriodicTaskScheduler::TaskInfo>, std::_Select1st<std::pair<const rocksdb::PeriodicTaskType, rocksdb::PeriodicTaskScheduler::TaskInfo>>, std::less<rocksdb::PeriodicTaskType>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !210
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !51
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %4, align 8, !tbaa !55
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.g = load i8, ptr %i.d, align 1, !tbaa !27
  store i8 %i.g, ptr %i.b, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 5 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.j, ptr %i.h, align 8, !tbaa !45
  %i.q = load i64, ptr %i.k, align 8, !tbaa !46
  store i64 %i.q, ptr %i.i, align 8, !tbaa !46
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.r = phi i64 [ %i.n, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.r, ptr %i.u, align 8, !tbaa !48
  store ptr %i.k, ptr %i.f, align 8, !tbaa !45
  store i64 0, ptr %i.t, align 8, !tbaa !48
  store i8 0, ptr %i.k, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53
  store i64 %i.x, ptr %i.v, align 8, !tbaa !53
  store ptr %i.a, ptr %i.s, align 8, !tbaa !133
  %i.y = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 4 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.z, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.ac
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = load i8, ptr %i.b, align 8, !tbaa !27
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.ag = icmp ult i8 %i.ae, %i.af
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ah = phi i1 [ %i.ag, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !24
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !45  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.i
  br i1 %i.an, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !46
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #26
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i

_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #26
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.z, %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %.sroa.0.011
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 1, !tbaa !27
  %i.i = load i8, ptr %2, align 1, !tbaa !27
  %i.j = icmp ult i8 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !25 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i8, ptr %2, align 1, !tbaa !27      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27    ; 2 uses
  %i.o = icmp ult i8 %i.l, %i.n                   ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !212

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #21 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i8, ptr %.phi.trans.insert80, align 1, !tbaa !27
  %.pre82 = load i8, ptr %2, align 1, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i8 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i8 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i8 %i.u, %i.t                   ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i8, ptr %2, align 1, !tbaa !27      ; 8 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !27    ; 2 uses
  %i.z = icmp ult i8 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #21 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ag = icmp ult i8 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !107
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i8, ptr %i.al, align 1, !tbaa !27  ; 2 uses
  %i.an = icmp ult i8 %i.x, %i.am                 ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !25 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !212

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #21 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i8, ptr %.phi.trans.insert78, align 1, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i8 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i8 %i.aq, %i.x                 ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i8 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !27
  %i.az = icmp ult i8 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !107
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !27  ; 2 uses
  %i.bg = icmp ult i8 %i.x, %i.bf                 ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !25 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !212

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #21 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i8 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i8 %i.bl, %i.x                 ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !46
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit

_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #26
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_periodic_task_scheduler.cc() #16 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [5 x %"struct.std::pair.9"], align 8 ; 28 uses
  %1 = alloca %"struct.std::less", align 1        ; 4 uses
  %2 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %3 = alloca [5 x %"struct.std::pair"], align 8  ; 4 uses
  %4 = alloca %"struct.std::less", align 1        ; 3 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = load i8, ptr @_ZN7rocksdb23kDefaultToAdaptiveMutexE, align 1, !tbaa !213, !range !94, !noundef !95
  %i.b = trunc nuw i8 %i.a to i1
  tail call void @_ZN7rocksdb4port5MutexC1Eb(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7rocksdbL11timer_mutexE, i1 noundef zeroext %i.b)
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7rocksdb4port5MutexD1Ev, ptr nonnull @_ZN7rocksdbL11timer_mutexE, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) @constinit, i64 80, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt3mapIN7rocksdb16PeriodicTaskTypeEmSt4lessIS1_ESaISt4pairIKS1_mEEEC2ESt16initializer_listIS6_ERKS3_RKS7_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdbL21kDefaultPeriodSecondsE, ptr nonnull %3, i64 5, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIN7rocksdb16PeriodicTaskTypeEmSt4lessIS1_ESaISt4pairIKS1_mEEED2Ev, ptr nonnull @_ZN7rocksdbL21kDefaultPeriodSecondsE, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store i8 0, ptr %0, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %i.g, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.h, align 1, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.i, align 8, !tbaa !129
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @.str.3, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 6, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 70
  store i8 0, ptr %i.m, align 2, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 2, ptr %i.n, align 8, !tbaa !129
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 1 dereferenceable(14) @.str.4, i64 14, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 14, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 118
  store i8 0, ptr %i.r, align 2, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 3, ptr %i.s, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.u, ptr noundef nonnull align 1 dereferenceable(15) @.str.5, i64 15, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 15, ptr %i.v, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 0, ptr %i.w, align 1, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 4, ptr %i.x, align 8, !tbaa !129
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !47
  %i.aa = invoke noalias noundef nonnull dereferenceable(19) ptr @_Znwm(i64 noundef 19) #22
          to label %.noexc52.i unwind label %.preheader.i ; 3 uses

.noexc52.i:                                       ; preds = %bb.a
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !45
  store i64 18, ptr %i.z, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.aa, ptr noundef nonnull align 1 dereferenceable(18) @.str.6, i64 18, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 18, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 18
  store i8 0, ptr %i.ac, align 1, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt3mapIN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEEC2ESt16initializer_listISC_ERKS9_RKSD_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdbL22kPeriodicTaskTypeNamesB5cxx11E, ptr nonnull %0, i64 5, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.af = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !45  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !46
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !45  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.p
  br i1 %i.am, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i
  %i.an = load i64, ptr %i.p, align 8, !tbaa !46
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !46
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !45  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.f
  br i1 %i.au, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.3.i
  %i.av = load i64, ptr %i.f, align 8, !tbaa !46
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #26
  br label %__cxx_global_var_init.2.exit

.preheader.i:                                     ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !45  ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.u
  br i1 %i.az, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i

bb.c:                                             ; preds = %.noexc52.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !45  ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.z
  br i1 %i.bc, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i: ; preds = %bb.c
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !46
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.i
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !45  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.u
  br i1 %i.bg, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.1.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.i
  %i.bh = load i64, ptr %i.u, align 8, !tbaa !46
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.1.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.1.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.1.i
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !45  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.p
  br i1 %i.bk, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.2.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.1.i
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !46
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.2.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.2.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.2.i
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !45  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.k
  br i1 %i.bo, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.3.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.2.i
  %i.bp = load i64, ptr %i.k, align 8, !tbaa !46
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.3.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.3.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit55.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.3.i
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !45  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.f
  br i1 %i.bs, label %.thread.i, label %.thread.i.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i: ; preds = %.preheader.i
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bu) #26
  br label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit58.i

_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit58.i: ; preds = %.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i
  %i.bv = load ptr, ptr %i.o, align 8, !tbaa !45  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.p
  br i1 %i.bw, label %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit58.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.1.i: ; preds = %_ZNSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit58.i
  %i.bx = load i64, ptr %i.p, align 8, !tbaa !46
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #26
end_hunk_0
begin_hunk_1_@llvm.umax.i64
attributes #27 = { cold }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = distinct !{!4, !28}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 4}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!17 = !{!"_ZTSSt18_Rb_tree_node_base", !14, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!18 = !{!"long", !10, i64 0}
!19 = !{!"_ZTSSt15_Rb_tree_header", !17, i64 0, !18, i64 32}
!20 = !{!19, !14, i64 0}
!21 = !{!19, !16, i64 8}
!22 = !{!19, !16, i64 16}
!23 = !{!19, !16, i64 24}
!24 = !{!19, !18, i64 32}
!25 = !{!16, !16, i64 0}
!26 = !{!"_ZTSN7rocksdb16PeriodicTaskTypeE", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!18, !18, i64 0}
!30 = !{!"p1 omnipotent char", !15, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !18, i64 8, !10, i64 16}
!33 = !{!"_ZTSN7rocksdb21PeriodicTaskScheduler8TaskInfoE", !32, i64 0, !18, i64 32}
!34 = !{!"_ZTSSt4pairIKN7rocksdb16PeriodicTaskTypeENS0_21PeriodicTaskScheduler8TaskInfoEE", !26, i64 0, !33, i64 8}
!35 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !30, i64 0}
!36 = !{!35, !30, i64 0}
!37 = !{!"_ZTSSt4lessIN7rocksdb16PeriodicTaskTypeEE"}
!38 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN7rocksdb16PeriodicTaskTypeEEE", !37, i64 0}
!39 = !{!"_ZTSNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !38, i64 0, !19, i64 8}
!40 = !{!"_ZTSSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE", !39, i64 0}
!41 = !{!"_ZTSSt3mapIN7rocksdb16PeriodicTaskTypeENS0_21PeriodicTaskScheduler8TaskInfoESt4lessIS1_ESaISt4pairIKS1_S3_EEE", !40, i64 0}
!42 = !{!"p1 _ZTSN7rocksdb5TimerE", !15, i64 0}
!43 = !{!"_ZTSN7rocksdb21PeriodicTaskSchedulerE", !41, i64 0, !42, i64 48}
!44 = !{!43, !42, i64 48}
!45 = !{!32, !30, i64 0}
!46 = !{!10, !10, i64 0}
!47 = !{!31, !30, i64 0}
!48 = !{!32, !18, i64 8}
!49 = !{!"_ZTSSt14_Function_base", !10, i64 0, !15, i64 16}
!50 = !{!49, !15, i64 16}
!51 = !{!15, !15, i64 0}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = !{!33, !18, i64 32}
!54 = !{!"p1 _ZTSN7rocksdb21PeriodicTaskScheduler8TaskInfoE", !15, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTSN7rocksdb5Timer12FunctionInfoE", !15, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"_ZTSSt8functionIFvvEE", !49, i64 0, !15, i64 24}
!59 = !{!"bool", !10, i64 0}
!60 = !{!"_ZTSN7rocksdb5Timer12FunctionInfoE", !58, i64 0, !32, i64 32, !18, i64 64, !18, i64 72, !59, i64 80}
!61 = !{!60, !59, i64 80}
!62 = !{!"any p2 pointer", !15, i64 0}
!63 = !{!"p2 _ZTSN7rocksdb5Timer12FunctionInfoE", !62, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 _ZTSN7rocksdb11SystemClockE", !15, i64 0}
!66 = !{!"_ZTSN7rocksdb4port5MutexE", !10, i64 0}
!67 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !15, i64 0}
!68 = !{!"_ZTSN7rocksdb17InstrumentedMutexE", !66, i64 0, !67, i64 40, !65, i64 48, !11, i64 56}
!69 = !{!"p1 _ZTSN7rocksdb4port5MutexE", !15, i64 0}
!70 = !{!"_ZTSN7rocksdb4port7CondVarE", !10, i64 0, !69, i64 48}
!71 = !{!"_ZTSN7rocksdb19InstrumentedCondVarE", !70, i64 0, !67, i64 56, !65, i64 64, !11, i64 72}
!72 = !{!"p1 _ZTSSt6thread", !15, i64 0}
!73 = !{!"_ZTSSt10_Head_baseILm0EPSt6threadLb0EE", !72, i64 0}
!74 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6threadSt14default_deleteIS0_EEE", !73, i64 0}
!75 = !{!"_ZTSSt5tupleIJPSt6threadSt14default_deleteIS0_EEE", !74, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_implISt6threadSt14default_deleteIS0_EE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_dataISt6threadSt14default_deleteIS0_ELb1ELb1EE", !76, i64 0}
!78 = !{!"_ZTSSt10unique_ptrISt6threadSt14default_deleteIS0_EE", !77, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb5Timer12FunctionInfoESaIS3_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb5Timer12FunctionInfoESaIS3_EE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIPN7rocksdb5Timer12FunctionInfoESaIS3_EE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIPN7rocksdb5Timer12FunctionInfoESaIS3_EE", !81, i64 0}
!83 = !{!"_ZTSN7rocksdb5Timer12RunTimeOrderE"}
!84 = !{!"_ZTSSt14priority_queueIPN7rocksdb5Timer12FunctionInfoESt6vectorIS3_SaIS3_EENS1_12RunTimeOrderEE", !82, i64 0, !83, i64 24}
!85 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !62, i64 0}
!86 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!87 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !86, i64 0}
!88 = !{!"float", !10, i64 0}
!89 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !88, i64 0, !18, i64 8}
!90 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE", !85, i64 0, !18, i64 8, !87, i64 16, !18, i64 24, !89, i64 32, !86, i64 48}
!91 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS9_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SC_EEE", !90, i64 0}
!92 = !{!"_ZTSN7rocksdb5TimerE", !65, i64 0, !68, i64 8, !71, i64 72, !78, i64 152, !59, i64 160, !59, i64 161, !84, i64 168, !91, i64 200}
!93 = !{!92, !59, i64 161}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!92, !59, i64 160}
!97 = !{!"vtable pointer", !9, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!72, !72, i64 0}
!100 = !{!11, !11, i64 0}
!101 = !{!92, !65, i64 0}
!102 = !{!60, !18, i64 64}
!103 = !{!87, !86, i64 0}
!104 = !{!42, !42, i64 0}
!105 = !{!90, !85, i64 0}
!106 = !{!90, !18, i64 8}
!107 = !{!17, !16, i64 24}
!108 = !{!17, !16, i64 16}
!109 = !{!90, !18, i64 24}
!110 = !{!86, !86, i64 0}
!111 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !18, i64 0}
!112 = !{!111, !18, i64 0}
!113 = !{!79, !63, i64 8}
!114 = !{!58, !15, i64 24}
!115 = !{!60, !18, i64 72}
!116 = !{!79, !63, i64 16}
!117 = !{!79, !63, i64 0}
!118 = !{!90, !86, i64 16}
!119 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"p1 _ZTSSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS2_EE", !15, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISD_EEELb1EEEEEE", !15, i64 0}
!124 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISC_EEELb1EEE", !15, i64 0}
!125 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !123, i64 0, !124, i64 8}
!126 = !{!125, !123, i64 0}
!127 = !{!125, !124, i64 8}
!128 = !{!"_ZTSSt4pairIKN7rocksdb16PeriodicTaskTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !26, i64 0, !32, i64 8}
!129 = !{!128, !26, i64 0}
!130 = !{!"p1 _ZTSSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE", !15, i64 0}
!131 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN7rocksdb16PeriodicTaskTypeENS1_21PeriodicTaskScheduler8TaskInfoEEE", !15, i64 0}
!132 = !{!"_ZTSNSt8_Rb_treeIN7rocksdb16PeriodicTaskTypeESt4pairIKS1_NS0_21PeriodicTaskScheduler8TaskInfoEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeE", !130, i64 0, !131, i64 8}
!133 = !{!132, !131, i64 8}
!134 = distinct !{!134, !28}
!135 = distinct !{!135, !28}
!136 = distinct !{!136, !28}
!137 = distinct !{!137, !28}
!138 = distinct !{!138, !28}
!139 = distinct !{!139, i1 true, !"_ZN7rocksdb6Status2OKEv"}
!140 = distinct !{!140, !139, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!141 = distinct !{!141, !28}
!142 = distinct !{!142, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!143 = distinct !{!143, !142, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!144 = distinct !{!144, !28}
!145 = distinct !{!145, !28}
!146 = distinct !{!146, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!147 = distinct !{!147, !146, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZSt16forward_as_tupleIJRKN7rocksdb16PeriodicTaskTypeEEESt5tupleIJDpOT_EES7_"}
!149 = distinct !{!149, !148, !"_ZSt16forward_as_tupleIJRKN7rocksdb16PeriodicTaskTypeEEESt5tupleIJDpOT_EES7_: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZSt16forward_as_tupleIJN7rocksdb21PeriodicTaskScheduler8TaskInfoEEESt5tupleIJDpOT_EES6_"}
!151 = distinct !{!151, !150, !"_ZSt16forward_as_tupleIJN7rocksdb21PeriodicTaskScheduler8TaskInfoEEESt5tupleIJDpOT_EES6_: argument 0"}
!152 = distinct !{!152, i1 true, !"_ZN7rocksdb6Status2OKEv"}
!153 = distinct !{!153, !152, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!154 = !{!"_ZTSN7rocksdb5SliceE", !30, i64 0, !18, i64 8}
!155 = !{!154, !30, i64 0}
!156 = !{!154, !18, i64 8}
!157 = !{!34, !18, i64 40}
!158 = !{!140}
!159 = !{!143}
!160 = !{!147}
!161 = !{!149}
!162 = !{!151}
!163 = !{!153}
!164 = distinct !{!164, i1 true, !"_ZSt11make_uniqueISt6threadJMN7rocksdb5TimerEFvvEPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!165 = distinct !{!165, !164, !"_ZSt11make_uniqueISt6threadJMN7rocksdb5TimerEFvvEPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!166 = distinct !{null, null, null, null}
!167 = !{!165}
!168 = !{!"_ZTSNSt6thread2idE", !18, i64 0}
!169 = !{!168, !18, i64 0}
!170 = !{!"_ZTSSt10_Head_baseILm1EPN7rocksdb5TimerELb0EE", !42, i64 0}
!171 = !{!170, !42, i64 0}
!172 = !{!"_ZTSSt10_Head_baseILm0EMN7rocksdb5TimerEFvvELb0EE", !10, i64 0}
!173 = !{!172, !10, i64 0}
!174 = !{!"p1 _ZTSNSt6thread6_StateE", !15, i64 0}
!175 = !{!174, !174, i64 0}
!176 = distinct !{!176, i1 true, !"_ZN7rocksdb6Status2OKEv"}
!177 = distinct !{!177, !176, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!178 = !{!177}
!179 = !{!"branch_weights", i32 1, i32 1048575}
!180 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!181 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !180, i64 0}
!182 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0, !181, i64 8}
!183 = !{!182, !65, i64 0}
!184 = !{i64 8}
!185 = !{!68, !67, i64 40}
!186 = !{!68, !65, i64 48}
!187 = !{!68, !11, i64 56}
!188 = !{!71, !11, i64 72}
!189 = !{!73, !72, i64 0}
!190 = !{!89, !88, i64 0}
!191 = distinct !{!191, !28}
!192 = distinct !{!192, !28}
!193 = distinct !{!193, !28}
!194 = distinct !{null}
!195 = distinct !{null, null, null, null}
!196 = distinct !{!196, !28}
!197 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!198 = !{i64 0, i64 16, !46}
!199 = distinct !{!199, i1 true, !"_ZSt16forward_as_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EESB_"}
!200 = distinct !{!200, !199, !"_ZSt16forward_as_tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EESB_: argument 0"}
!201 = distinct !{!201, i1 true, !"_ZSt16forward_as_tupleIJSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS3_EEEESt5tupleIJDpOT_EESA_"}
!202 = distinct !{!202, !201, !"_ZSt16forward_as_tupleIJSt10unique_ptrIN7rocksdb5Timer12FunctionInfoESt14default_deleteIS3_EEEESt5tupleIJDpOT_EESA_: argument 0"}
!203 = !{!200}
!204 = !{!202}
!205 = !{!89, !18, i64 8}
!206 = distinct !{!206, !28}
!207 = !{!90, !86, i64 48}
!208 = distinct !{!208, !28}
!209 = distinct !{!209, !28}
!210 = !{!130, !130, i64 0}
!211 = !{!34, !26, i64 0}
!212 = distinct !{!212, !28}
!213 = !{!59, !59, i64 0}
!214 = !{i64 0, i64 80, !46}
end_hunk_1
