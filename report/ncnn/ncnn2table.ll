Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2table?download=true
inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm:bb.a
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !41
  invoke void @__cxa_rethrow() #38
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
  tail call void @__clang_call_terminate(ptr %i.q) #40
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !24
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  store ptr %i.w, ptr %3, align 8, !tbaa !20
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !42
  store ptr %3, ptr %i.x, align 8, !tbaa !20
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  store ptr %i.z, ptr %3, align 8, !tbaa !20
  store ptr %3, ptr %i.y, align 8, !tbaa !10
  %i.aa = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !24
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %i.ah = icmp eq i8 %i.ag, 42
  %.idx.i.i.i.i.i.i.i.i = zext i1 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #20
  %i.ak = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #40
  unreachable

_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit.i: ; preds = %bb.k
  %i.an = urem i64 %i.ak, %i.ac
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.an
  store ptr %3, ptr %i.ao, align 8, !tbaa !42
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit.i, %bb.j
  %i.ap = phi ptr [ %.pre.i, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit.i ], [ %i.t, %bb.j ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !42
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit: ; preds = %bb.i, %bb.m
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !31
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.f, align 8, !tbaa !31
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #40
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_find_before_node_trIS0_EEPNS7_15_Hash_node_baseEmRKT_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit
  %.015 = phi ptr [ %.0, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit ], [ %i.c, %.preheader ] ; 3 uses
  %.0 = load ptr, ptr %.015, align 8, !tbaa !20   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.f = load ptr, ptr %2, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 42
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit: ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1, !tbaa !38
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22: ; preds = %bb.c, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit
  %i.s = load ptr, ptr %.0, align 8, !tbaa !20    ; 2 uses
  %.not18 = icmp eq ptr %i.s, null
  br i1 %.not18, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.d, align 8, !tbaa !24
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = icmp eq i8 %i.y, 42
  %.idx.i.i.i.i.i.i.i = zext i1 %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #20
  %i.ac = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.aa, i64 noundef %i.ab, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #40
  unreachable

_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit: ; preds = %bb.d
  %i.af = urem i64 %i.ac, %i.u
  %.not19 = icmp eq i64 %i.af, %1
  br i1 %.not19, label %bb.b, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, !llvm.loop !43

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread: ; preds = %bb.b, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.015, %bb.b ], [ null, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22 ], [ %.015, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_equals_trIS1_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit ]
  ret ptr %.1
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !27
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10type_indexN3npy7dtype_tEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10type_indexN3npy7dtype_tEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #39 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10type_indexN3npy7dtype_tEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10type_indexN3npy7dtype_tEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.i
  %.031 = phi i64 [ %.1, %bb.i ], [ 0, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.i ], [ %i.h, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #20
  %i.r = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb0EEEm.exit unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb0EEEm.exit: ; preds = %.lr.ph
  %i.u = urem i64 %i.r, %1                        ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.u ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 2 uses
  %.not27 = icmp eq ptr %i.w, null
  br i1 %.not27, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb0EEEm.exit
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !10
  store ptr %i.x, ptr %.02530, align 8, !tbaa !20
  store ptr %.02530, ptr %i.g, align 8, !tbaa !10
  store ptr %i.g, ptr %i.v, align 8, !tbaa !42
  %i.y = load ptr, ptr %.02530, align 8, !tbaa !20
  %.not28 = icmp eq ptr %i.y, null
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.z, align 8, !tbaa !42
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS6_Lb0EEEm.exit
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !20
  store ptr %i.aa, ptr %.02530, align 8, !tbaa !20
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !42
  store ptr %.02530, ptr %i.ab, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.1 = phi i64 [ %.031, %bb.h ], [ %i.u, %bb.g ], [ %i.u, %bb.f ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.i, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.ac) #37
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.af, align 8, !tbaa !24
  store ptr %.0.i, ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !20 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i) #37
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !21

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef %i.h) #37
  br label %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8QuantNetC2Ev(ptr noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn3NetC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV8QuantNet, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = invoke noundef nonnull align 1 ptr @_ZN4ncnn3Net13mutable_blobsEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.a, ptr %i.b, align 8, !tbaa !47
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4ncnn3Net14mutable_layersEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.c, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, i8 0, i64 120, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.j, i8 0, i64 408, i1 false)
  %i.v = invoke noundef i32 @_ZN4ncnn13get_cpu_countEv()
          to label %bb.d unwind label %bb.f

end_hunk_0
begin_hunk_1_@_ZN3npy7pyparse10parse_dictENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.cj
  %.pn = phi { ptr, i32 } [ %i.lo, %bb.cj ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.lp, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.cb, %bb.ca
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %i.kf, %bb.cb ], [ %lpad.phi, %bb.ca ] ; 2 uses
  %i.ls = load ptr, ptr %12, align 8, !tbaa !138  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.di
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef %i.ls) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.bh
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ib, %bb.bh ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn.pn, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.lu = load ptr, ptr %11, align 8, !tbaa !138  ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.dg
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  call void @_ZdlPv(ptr noundef %i.lu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit171, %.loopexit.split-lp172, %.body, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %.pn44.pn159, %bb.aq ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %.pn42, %_ZNSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit93 ], [ %.pn40, %.body ], [ %lpad.loopexit173, %.loopexit171 ], [ %lpad.loopexit.split-lp174, %.loopexit.split-lp172 ]
  call void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.co

bb.cn:                                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, %bb.a
  ret void

bb.co:                                            ; preds = %bb.cm, %bb.aa, %bb.z, %bb.w, %bb.v
  %.pn44.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn.pn, %bb.cm ], [ %i.co, %bb.w ], [ %i.cr, %bb.aa ], [ %i.cq, %bb.z ], [ %i.cn, %bb.v ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #20
  resume { ptr, i32 } %.pn44.pn.pn.pn.pn

bb.cp:                                            ; preds = %bb.an, %bb.y
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy7pyparse9parse_strERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !138    ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38
  %i.d = icmp eq i8 %i.c, 39
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !151  ; 4 uses
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38
  %i.j = icmp eq i8 %i.i, 39
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i64 noundef 1, i64 noundef 0) #38, !noalias !463
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = add i64 %i.f, -2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !420, !alias.scope !463
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add i64 %i.f, -1
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.o) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !463
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !354, !noalias !463
  %i.p = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.p, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !138, !alias.scope !463
  %i.r = load i64, ptr %i.a, align 8, !tbaa !354, !noalias !463
  store i64 %i.r, ptr %i.m, align 8, !tbaa !38, !alias.scope !463
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.s = phi ptr [ %i.q, %.noexc10.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !38
  store i8 %i.t, ptr %i.s, align 1, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.n, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.u = load i64, ptr %i.a, align 8, !tbaa !354, !noalias !463 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !151, !alias.scope !463
  %i.w = load ptr, ptr %0, align 8, !tbaa !138, !alias.scope !463
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !463
  ret void

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull @.str.56)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.y) #20
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3npy11parse_descrENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef align 8 %0) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %i.e = icmp ult i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.57)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #20
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !138    ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !420, !alias.scope !466
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  %i.n = add i64 %i.d, -2                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !466
  store i64 %i.n, ptr %i.b, align 8, !tbaa !354, !noalias !466
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !138, !alias.scope !466
  %i.q = load i64, ptr %i.b, align 8, !tbaa !354, !noalias !466
  store i64 %i.q, ptr %i.l, align 8, !tbaa !38, !alias.scope !466
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %cond = icmp eq i64 %i.n, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.m, align 1, !tbaa !38
  store i8 %i.r, ptr %i.l, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.s = phi ptr [ %i.p, %._crit_edge.i.i.i.thread ], [ %i.l, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.m, i64 %i.n, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.f, %bb.e
  %i.t = load i64, ptr %i.b, align 8, !tbaa !354, !noalias !466 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !151, !alias.scope !466
  %i.v = load ptr, ptr %1, align 8, !tbaa !138, !alias.scope !466
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !466
  switch i8 %i.i, label %bb.g [
    i8 124, label %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 62, label %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 60, label %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  ]

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.x = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.58)
          to label %.invoke unwind label %bb.i

bb.h:                                             ; preds = %.invoke
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.x) #20
  br label %.body

_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  switch i8 %i.k, label %bb.j [
    i8 117, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 105, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 102, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
    i8 99, label %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  ]

bb.j:                                             ; preds = %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %i.aa = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.59)
          to label %.invoke unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aa) #20
  br label %.body

_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread: ; preds = %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread, %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread, %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread, %_ZN3npy8in_arrayIcLm3EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !138   ; 6 uses
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !151 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ashr i64 %i.ad, 2                       ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %i.ai = and i64 %i.ad, -4
  %scevgep.i = getelementptr i8, ptr %i.ac, i64 %i.ai
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.preheader.i
  %.058.i.i.i.i.i = phi i64 [ %i.az, %bb.o ], [ %i.ag, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.038.057.i.i.i.i.i = phi ptr [ %i.ay, %bb.o ], [ %i.ac, %.lr.ph.i.i.i.i.preheader.i ] ; 9 uses
  %i.aj = load i8, ptr %.sroa.038.057.i.i.i.i.i, align 1, !tbaa !38
  %i.ak = sext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -58
  %isdigit.i = icmp ult i32 %i.al, -10
  br i1 %isdigit.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !38
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -58
  %isdigit3.i = icmp ult i32 %i.ap, -10
  br i1 %isdigit3.i, label %.loopexit.loopexit.split.loop.exit41, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !38
  %i.as = sext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -58
  %isdigit4.i = icmp ult i32 %i.at, -10
  br i1 %isdigit4.i, label %.loopexit.loopexit.split.loop.exit39.a, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !38
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -58
  %isdigit5.i = icmp ult i32 %i.ax, -10
  br i1 %isdigit5.i, label %.loopexit.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 4
  %i.az = add nsw i64 %.058.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.058.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !469

._crit_edge.i.i.i.i.i:                            ; preds = %bb.o, %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread
  %.sroa.038.0.lcssa.i.i.i.i.i = phi ptr [ %i.ac, %_ZN3npy8in_arrayIcLm4EEEbT_RKSt5arrayIS1_XT0_EE.exit.thread ], [ %scevgep.i, %bb.o ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.038.0.lcssa.i.i.i.i.i to i64
  %i.bb = sub i64 %i.af, %.pre-phi.i.i.i.i.i
  switch i64 %i.bb, label %.thread [
    i64 3, label %bb.p
    i64 2, label %bb.r
    i64 1, label %bb.t
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bc = load i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, align 1, !tbaa !38
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -58
  %isdigit6.i = icmp ult i32 %i.be, -10
  br i1 %isdigit6.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i
  %.sroa.038.1.i.i.i.i.i = phi ptr [ %i.bf, %bb.q ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.bg = load i8, ptr %.sroa.038.1.i.i.i.i.i, align 1, !tbaa !38
  %i.bh = sext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -58
  %isdigit7.i = icmp ult i32 %i.bi, -10
  br i1 %isdigit7.i, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i, i64 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i
  %.sroa.038.2.i.i.i.i.i = phi ptr [ %i.bj, %bb.s ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bk = load i8, ptr %.sroa.038.2.i.i.i.i.i, align 1, !tbaa !38
  %i.bl = sext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -58
  %isdigit8.i = icmp ult i32 %i.bm, -10
  br i1 %isdigit8.i, label %.loopexit, label %.thread

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 3
  br label %.loopexit

.loopexit.loopexit.split.loop.exit39.a:           ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit41:             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit39.a, %.loopexit.loopexit.split.loop.exit41, %bb.t, %bb.r, %bb.p
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i, %bb.r ], [ %.sroa.038.2.i.i.i.i.i, %bb.t ], [ %.sroa.038.0.lcssa.i.i.i.i.i, %bb.p ], [ %i.bp, %.loopexit.loopexit.split.loop.exit41 ], [ %i.bn, %.loopexit.loopexit.split.loop.exit ], [ %i.bo, %.loopexit.loopexit.split.loop.exit39.a ], [ %.sroa.038.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bq = icmp eq ptr %i.ae, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br i1 %i.bq, label %.thread, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull @.str.60)
          to label %.invoke unwind label %bb.v

.invoke:                                          ; preds = %bb.g, %bb.u, %bb.j
  %i.bs = phi ptr [ %i.aa, %bb.j ], [ %i.br, %bb.u ], [ %i.x, %bb.g ]
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.br) #20
  br label %.body

.thread:                                          ; preds = %bb.t, %._crit_edge.i.i.i.i.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bu = tail call ptr @__errno_location() #44   ; 6 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !154 ; 2 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !154
  %i.bw = call noundef i64 @__isoc23_strtoul(ptr noundef %i.ac, ptr noundef nonnull %i.a, i32 noundef 10)
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !431
  %i.by = icmp eq ptr %i.bx, %i.ac
  br i1 %i.by, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.thread
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.66) #38
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %.critedge.i.i, %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load i32, ptr %i.bu, align 4, !tbaa !154
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.z, label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.y
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !154
  br label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.body

bb.aa:                                            ; preds = %.thread
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !154
  switch i32 %i.cc, label %bb.ad [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.ac
  ]

.critedge.i.i:                                    ; preds = %bb.aa
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.66) #38
          to label %bb.ab unwind label %bb.y

bb.ab:                                            ; preds = %.critedge.i.i
  unreachable

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !154
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cd = load ptr, ptr %1, align 8, !tbaa !138   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.l
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.cd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.sroa.36.0.insert.ext = shl i64 %i.bw, 32
  %.sroa.2.0.insert.ext = zext nneg i8 %i.k to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.36.0.insert.ext, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i8 %i.i to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.body:                                            ; preds = %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %bb.v, %bb.k, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.y, %bb.h ], [ %i.bt, %bb.v ], [ %i.ab, %bb.k ], [ %i.bz, %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ]
  %i.cf = load ptr, ptr %1, align 8, !tbaa !138   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.l
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.cf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.d
  %.pn10 = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy7pyparse11parse_tupleENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.66") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN3npy7pyparse4trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !138    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %2, align 8, !tbaa !138    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !151  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  switch i64 %i.j, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.f, align 1, !tbaa !38
  store i8 %i.l, ptr %i.c, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.m = load i64, ptr %i.i, align 8, !tbaa !151  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !151
  %i.o = load ptr, ptr %1, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !38
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %1, align 8, !tbaa !138
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !38
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !38
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !38
  store ptr %i.f, ptr %1, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !38
  store <2 x i64> %i.w, ptr %i.v, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %2, align 8, !tbaa !138
  store i64 %i.t, ptr %i.g, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %2, align 8, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.c, %bb.g ], [ %i.g, %bb.h ], [ %i.f, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !151
  store i8 0, ptr %i.x, align 1, !tbaa !38
  %i.z = load ptr, ptr %2, align 8, !tbaa !138    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.z) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ac = load ptr, ptr %1, align 8, !tbaa !138   ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38
  %i.ae = icmp eq i8 %i.ad, 40
  br i1 %i.ae, label %bb.i, label %bb.w

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !427
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #20 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.q) #37
  invoke void @__cxa_rethrow() #38
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #40
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #26

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.07.014 = load ptr, ptr %i.c, align 8, !tbaa !20 ; 2 uses
  %.not15 = icmp eq ptr %.sroa.07.014, null
  br i1 %.not15, label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread12
  %.sroa.07.016 = phi ptr [ %.sroa.07.014, %.lr.ph ], [ %.sroa.07.0, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread12 ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.016, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = icmp eq ptr %i.f, %i.j
  br i1 %i.k, label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.l, 42
  br i1 %.not.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread12, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit: ; preds = %bb.d
  %i.m = load i8, ptr %i.j, align 1, !tbaa !38
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i.i.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %i.o) #20
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread12

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread12: ; preds = %bb.d, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit
  %.sroa.07.0 = load ptr, ptr %.sroa.07.016, align 8, !tbaa !20 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, null
  br i1 %.not, label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %bb.c, !llvm.loop !530

bb.e:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !38
  %i.v = icmp eq i8 %i.u, 42
  %.idx.i.i.i.i.i6 = zext i1 %i.v to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i.i6 ; 2 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #20
  %i.y = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.w, i64 noundef %i.x, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS3_.exit unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #40
  unreachable

_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS3_.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = urem i64 %i.y, %i.ac
  %i.ae = tail call noundef ptr @_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS2_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.y) ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS3_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  br label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit

_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS2_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread12, %bb.c, %bb.b, %bb.g, %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS3_.exit
  %.sroa.07.1 = phi ptr [ null, %_ZNKSt8__detail15_Hash_code_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE12_M_hash_codeERS3_.exit ], [ %i.af, %bb.g ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread12 ], [ %.sroa.07.016, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_key_equalsERS3_RKNS_16_Hash_node_valueIS6_Lb0EEE.exit ], [ %.sroa.07.016, %bb.c ]
  ret ptr %.sroa.07.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS2_m(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit
  %.015 = phi ptr [ %.0, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit ], [ %i.c, %.preheader ] ; 3 uses
  %.0 = load ptr, ptr %.015, align 8, !tbaa !20   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.f = load ptr, ptr %2, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 42
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit: ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1, !tbaa !38
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22: ; preds = %bb.c, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit
  %i.s = load ptr, ptr %.0, align 8, !tbaa !20    ; 2 uses
  %.not18 = icmp eq ptr %i.s, null
  br i1 %.not18, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.d, align 8, !tbaa !24
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = icmp eq i8 %i.y, 42
  %.idx.i.i.i.i.i.i.i = zext i1 %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #20
  %i.ac = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.aa, i64 noundef %i.ab, i64 noundef 3339675911)
          to label %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #40
  unreachable

_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit: ; preds = %bb.d
  %i.af = urem i64 %i.ac, %i.u
  %.not19 = icmp eq i64 %i.af, %1
  br i1 %.not19, label %bb.b, label %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread, !llvm.loop !531

_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread: ; preds = %bb.b, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.015, %bb.b ], [ null, %_ZNKSt10_HashtableISt10type_indexSt4pairIKS0_N3npy7dtype_tEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS7_16_Hash_node_valueIS5_Lb0EEE.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit.thread22 ], [ %.015, %_ZNKSt8__detail15_Hashtable_baseISt10type_indexSt4pairIKS1_N3npy7dtype_tEENS_10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb0EEE.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !350  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !354    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !436

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !350
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !354
  store i64 %i.s, ptr %i.d, align 8, !tbaa !354
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !350
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !436

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !354
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !354
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !354
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !354
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !532

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !354
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !533

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !354
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !354
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !354
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !535

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !350
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !436

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !350
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !354
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !354
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !350
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
end_hunk_2
