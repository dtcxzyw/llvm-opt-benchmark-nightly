inline.NumInlined: 37317
inline.NumDeleted: 10738
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE4findERS9_:bb.a
  %.sroa.019.029.us.i = phi ptr [ %.sroa.019.0.us.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i ], [ %.sroa.019.027.i, %.lr.ph.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.029.us.i, i64 8
  %.val11.us.i = load i64, ptr %i.i, align 1
  %.not.i.i.i.i.i.us.i = icmp eq i64 %.val9.fr.i, %.val11.us.i
  br i1 %.not.i.i.i.i.i.us.i, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.j = getelementptr i8, ptr %.sroa.019.029.us.i, i64 16
  %.val12.us.i = load i64, ptr %i.j, align 1
  %i.k = icmp eq i64 %.val10.i, %.val12.us.i
  br i1 %i.k, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i: ; preds = %bb.c, %.lr.ph.split.us.i
  %.sroa.019.0.us.i = load ptr, ptr %.sroa.019.029.us.i, align 8, !tbaa !119 ; 2 uses
  %.not.us.i = icmp eq ptr %.sroa.019.0.us.i, null
  br i1 %.not.us.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %.lr.ph.split.us.i, !llvm.loop !141

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i
  %.sroa.019.029.i = phi ptr [ %.sroa.019.0.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ %.sroa.019.027.i, %.lr.ph.i ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.019.029.i, i64 8
  %.val11.i = load i64, ptr %i.l, align 1
  %.not.i.i.i.i.i.i = icmp eq i64 %.val9.fr.i, %.val11.i
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.m = getelementptr i8, ptr %.sroa.019.029.i, i64 16
  %.val12.i = load i64, ptr %i.m, align 1         ; 2 uses
  %i.n = icmp eq i64 %.val10.i, %.val12.i
  br i1 %i.n, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = inttoptr i64 %.val12.i to ptr
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.o, i64 %i.h)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i: ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.019.0.i = load ptr, ptr %.sroa.019.029.i, align 8, !tbaa !119 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.019.0.i, null
  br i1 %.not.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %.lr.ph.split.i, !llvm.loop !141

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13.i = load i64, ptr %i.q, align 8, !tbaa !121 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.r, align 8, !tbaa !85 ; 3 uses
  %i.s = urem i64 %.val13.i, %.val14.i            ; 3 uses
  %.val15.i = load ptr, ptr %0, align 8, !tbaa !77
  %.val17.i = load i64, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val18.i = load i64, ptr %i.t, align 8         ; 3 uses
  %.0.val2.fr.i.i.i = freeze i64 %.val17.i        ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val15.i, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !119  ; 3 uses
  %i.x = and i64 %.0.val2.fr.i.i.i, 4294967295
  %i.y = trunc i64 %.0.val2.fr.i.i.i to i32
  %i.z = inttoptr i64 %.val18.i to ptr
  %i.aa = icmp ult i32 %i.y, 13
  %.phi.trans.insert12.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.val7.i.us.pre.i.i.i = load i64, ptr %.phi.trans.insert12.i.i.i, align 8, !tbaa !123 ; 2 uses
  br i1 %i.aa, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.g, %bb.k
  %.val7.i.us.i.i.i = phi i64 [ %.val23.us.i.i.i, %bb.k ], [ %.val7.i.us.pre.i.i.i, %bb.g ]
  %.0.us.i.i.i = phi ptr [ %i.af, %bb.k ], [ %i.w, %bb.g ] ; 4 uses
  %i.ab = icmp eq i64 %.val13.i, %.val7.i.us.i.i.i
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.split.us.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 8
  %.val5.i.us.i.i.i = load i64, ptr %i.ac, align 1
  %.not.i.i.i.i.i.i.us.i.i.i = icmp eq i64 %.0.val2.fr.i.i.i, %.val5.i.us.i.i.i
  br i1 %.not.i.i.i.i.i.i.us.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %.val6.i.us.i.i.i = load i64, ptr %i.ad, align 1
  %i.ae = icmp eq i64 %.val18.i, %.val6.i.us.i.i.i
  br i1 %i.ae, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.split.us.i.i.i
  %i.af = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !119 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not18.us.i.i.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %.val23.us.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !123 ; 2 uses
  %i.ah = urem i64 %.val23.us.i.i.i, %.val14.i
  %.not19.us.i.i.i = icmp eq i64 %i.ah, %i.s
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, !llvm.loop !125

.split.i.i.i:                                     ; preds = %bb.g, %bb.p
  %.val7.i.i.i.i = phi i64 [ %.val23.i.i.i, %bb.p ], [ %.val7.i.us.pre.i.i.i, %bb.g ]
  %.0.i.i.i = phi ptr [ %i.ao, %bb.p ], [ %i.w, %bb.g ] ; 5 uses
  %i.ai = icmp eq i64 %.val13.i, %.val7.i.i.i.i
  br i1 %i.ai, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.split.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %.val5.i.i.i.i = load i64, ptr %i.aj, align 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0.val2.fr.i.i.i, %.val5.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %.val6.i.i.i.i = load i64, ptr %i.ak, align 1   ; 2 uses
  %i.al = icmp eq i64 %.val18.i, %.val6.i.i.i.i
  br i1 %i.al, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = inttoptr i64 %.val6.i.i.i.i to ptr
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.z, ptr %i.am, i64 %i.x)
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %.split.i.i.i
  %i.ao = load ptr, ptr %.0.i.i.i, align 8, !tbaa !119 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.i.i.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %i.ao, i64 40
  %.val23.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !123 ; 2 uses
  %i.aq = urem i64 %.val23.i.i.i, %.val14.i
  %.not19.i.i.i = icmp eq i64 %i.aq, %i.s
  br i1 %.not19.i.i.i, label %.split.i.i.i, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit, !llvm.loop !125

_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.i, %bb.j, %bb.k, %bb.d, %bb.e, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %bb.c, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i, %bb.b, %bb.f
  %.sroa.019.1.i = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i ], [ null, %bb.k ], [ %.sroa.019.029.i, %bb.e ], [ %.sroa.019.029.us.i, %bb.c ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ %.sroa.019.029.i, %bb.d ], [ null, %bb.j ], [ %.0.us.i.i.i, %bb.i ], [ null, %bb.o ], [ %.0.i.i.i, %bb.m ], [ null, %bb.p ], [ %.0.i.i.i, %bb.n ]
  ret ptr %.sroa.019.1.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_123InternalApproxTopKState20InsertOrReplaceEntryERKNS0_16ApproxTopKStringERNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i = alloca [12 x i8], align 4          ; 7 uses
  %.sroa.038 = alloca %"struct.duckdb::(anonymous namespace)::ApproxTopKString", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val26 = load ptr, ptr %i.a, align 8, !tbaa !116 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val27 = load ptr, ptr %i.b, align 8, !tbaa !117 ; 6 uses
  %i.c = ptrtoint ptr %.val27 to i64              ; 2 uses
  %i.d = ptrtoint ptr %.val26 to i64              ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i64, ptr %i.g, align 8, !tbaa !142
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE9push_backEOS4_.exit

bb.b:                                             ; preds = %bb.a
  %.val29 = load ptr, ptr %0, align 8, !tbaa !181
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %.val29, i64 %i.f ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.f, ptr %i.k, align 8, !tbaa !126
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !661
  %.not.i.i = icmp eq ptr %.val27, %i.n
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.l, ptr %.val27, align 8
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !117
  %.val31.pre = load ptr, ptr %i.a, align 8, !tbaa !116
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.e, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.r = icmp eq ptr %.val27, %.val26             ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.r, i64 1, i64 %i.f
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.f ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.f
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.e
  store i64 %i.l, ptr %i.y, align 8
  br i1 %i.r, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = ptrtoaddr ptr %i.x to i64
  %4 = add i64 %i.c, -8
  %5 = sub i64 %4, %i.d                           ; 2 uses
  %i.aa = lshr i64 %5, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 72
  %i.ac = sub i64 %i.d, %i.z
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %.val26, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep140 = getelementptr i8, ptr %.val26, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep140, align 8
  %wide.load141 = load <2 x i64>, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !668
  store <2 x i64> %wide.load141, ptr %i.ai, align 8, !alias.scope !668
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader161

.lr.ph.i.i.i.i.i.i.i.preheader161:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %.val26, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader161, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader161 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader161 ] ; 2 uses
  %.09.val.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8
  store i64 %.09.val.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !alias.scope !668
  %i.ak = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %.val27
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !672

_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i28.i.i.i = icmp eq ptr %.val26, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.val26) #34
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !116
  store ptr %i.am, ptr %i.b, align 8, !tbaa !117
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.an, ptr %i.m, align 8, !tbaa !661
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %.val32 = phi ptr [ %i.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.p, %bb.c ], [ %.val27, %bb.a ]
  %.val31 = phi ptr [ %i.x, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.val31.pre, %bb.c ], [ %.val26, %bb.a ] ; 2 uses
  %i.ao = ptrtoint ptr %.val32 to i64
  %i.ap = ptrtoint ptr %.val31 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr i8, ptr %.val31, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %.val28 = load ptr, ptr %i.as, align 8, !tbaa !89 ; 17 uses
  %i.at = load i64, ptr %.val28, align 8, !tbaa !92 ; 3 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE5eraseERS9_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12_GLOBAL__N_115ApproxTopKValueEESaIS4_EE9push_backEOS4_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !667 ; 2 uses
  %i.az = and i64 %i.ay, %i.aw
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !130 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !59
  %i.bd = add i64 %i.bc, %3                       ; 2 uses
  %.not22 = icmp ult i64 %i.bd, %i.at
  br i1 %.not22, label %_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE5eraseERS9_.exit.thread40, label %bb.h

_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE5eraseERS9_.exit.thread40: ; preds = %bb.g
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !59
  br label %_ZN6duckdb12_GLOBAL__N_123InternalApproxTopKState14IncrementCountERNS0_15ApproxTopKValueEm.exit

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.val28, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val28, i64 32 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !673
  %i.bh = and i64 %i.bg, %i.ay
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bh
  store i64 %i.at, ptr %i.bi, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.val.i.i.i34 = load i64, ptr %i.bk, align 8, !tbaa !118
  %i.bl = icmp eq i64 %.val.i.i.i34, 0
  br i1 %i.bl, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %.val30.i.i.i = load i64, ptr %i.be, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %.val31.i.i.i = load i64, ptr %i.bm, align 8    ; 3 uses
  %.0.val1.fr.i.i.i.i = freeze i64 %.val30.i.i.i  ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i35, label %_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE5eraseERS9_.exit.thread, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.i
  %i.bp = and i64 %.0.val1.fr.i.i.i.i, 4294967295
  %i.bq = trunc i64 %.0.val1.fr.i.i.i.i to i32
  %i.br = inttoptr i64 %.val31.i.i.i to ptr
  %i.bs = icmp ult i32 %i.bq, 13
  br i1 %i.bs, label %.preheader.split.us.i.i.i.i, label %.preheader.split.i.i.i.i

.preheader.split.us.i.i.i.i:                      ; preds = %.preheader.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i.i.i.i
  %.04.us.i.i.i.i = phi ptr [ %.0.val.us.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i.i.i.i ], [ %i.bo, %.preheader.i.i.i.i ] ; 5 uses
  %.0113.us.i.i.i.i = phi ptr [ %.04.us.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i.i.i.i ], [ %i.bn, %.preheader.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.04.us.i.i.i.i, i64 8
  %.val16.us.i.i.i.i = load i64, ptr %i.bt, align 1
  %.not.i.i.i.i.i.us.i.i.i.i = icmp eq i64 %.0.val1.fr.i.i.i.i, %.val16.us.i.i.i.i
  br i1 %.not.i.i.i.i.i.us.i.i.i.i, label %bb.j, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i.i.i.i

bb.j:                                             ; preds = %.preheader.split.us.i.i.i.i
  %i.bu = getelementptr i8, ptr %.04.us.i.i.i.i, i64 16
  %.val17.us.i.i.i.i = load i64, ptr %i.bu, align 1
  %i.bv = icmp eq i64 %.val31.i.i.i, %.val17.us.i.i.i.i
  br i1 %i.bv, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS4_.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i.i.i.i: ; preds = %bb.j, %.preheader.split.us.i.i.i.i
  %.0.val.us.i.i.i.i = load ptr, ptr %.04.us.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %.not14.us.i.i.i.i = icmp eq ptr %.0.val.us.i.i.i.i, null
  br i1 %.not14.us.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE5eraseERS9_.exit.thread, label %.preheader.split.us.i.i.i.i, !llvm.loop !674

.preheader.split.i.i.i.i:                         ; preds = %.preheader.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.0.val.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i ], [ %i.bo, %.preheader.i.i.i.i ] ; 6 uses
  %.0113.i.i.i.i = phi ptr [ %.04.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i ], [ %i.bn, %.preheader.i.i.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.val16.i.i.i.i = load i64, ptr %i.bw, align 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0.val1.fr.i.i.i.i, %.val16.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.k, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i

bb.k:                                             ; preds = %.preheader.split.i.i.i.i
  %i.bx = getelementptr i8, ptr %.04.i.i.i.i, i64 16
  %.val17.i.i.i.i = load i64, ptr %i.bx, align 1  ; 2 uses
  %i.by = icmp eq i64 %.val31.i.i.i, %.val17.i.i.i.i
  br i1 %i.by, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS4_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = inttoptr i64 %.val17.i.i.i.i to ptr
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.br, ptr %i.bz, i64 %i.bp)
  %i.ca = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ca, label %_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS4_.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS3_St17reference_wrapperINS2_15ApproxTopKValueEEENS_10_Select1stENS2_18ApproxTopKEqualityENS2_14ApproxTopKHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS5_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i: ; preds = %bb.l, %.preheader.split.i.i.i.i
  %.0.val.i.i.i.i = load ptr, ptr %.04.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not14.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE5eraseERS9_.exit.thread, label %.preheader.split.i.i.i.i, !llvm.loop !674

_ZNSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS4_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cb = phi ptr [ %.04.us.i.i.i.i, %bb.j ], [ %.04.i.i.i.i, %bb.k ], [ %.04.i.i.i.i, %bb.l ] ; 2 uses
  %.1.i.i.i.i = phi ptr [ %.0113.us.i.i.i.i, %bb.j ], [ %.0113.i.i.i.i, %bb.k ], [ %.0113.i.i.i.i, %bb.l ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24.i.i.i = load i64, ptr %i.cc, align 8, !tbaa !85 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 40
  %.val25.i.i.i = load i64, ptr %i.cd, align 8, !tbaa !123
  %i.ce = urem i64 %.val25.i.i.i, %.val24.i.i.i   ; 2 uses
  %.pre.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %i.ce
  %.pre58.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !122
  br label %_ZNKSt10_HashtableIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt4pairIKS2_St17reference_wrapperINS1_15ApproxTopKValueEEESaIS8_ENSt8__detail10_Select1stENS1_18ApproxTopKEqualityENS1_14ApproxTopKHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i

bb.m:                                             ; preds = %bb.h
  %.val22.i.i.i = load i64, ptr %i.bf, align 8, !tbaa !121 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val23.i.i.i = load i64, ptr %i.cf, align 8, !tbaa !85 ; 6 uses
  %i.cg = urem i64 %.val22.i.i.i, %.val23.i.i.i   ; 6 uses
  %.val26.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !77 ; 4 uses
  %.val28.i.i.i = load i64, ptr %i.be, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.val28, i64 24
  %.val29.i.i.i = load i64, ptr %i.ch, align 8    ; 3 uses
  %.0.val2.fr.i.i.i.i = freeze i64 %.val28.i.i.i  ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val26.i.i.i, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !122 ; 7 uses
  %.not.i32.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i32.i.i.i, label %_ZNSt13unordered_mapIN6duckdb12_GLOBAL__N_116ApproxTopKStringESt17reference_wrapperINS1_15ApproxTopKValueEENS1_14ApproxTopKHashENS1_18ApproxTopKEqualityESaISt4pairIKS2_S5_EEE5eraseERS9_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZSt13__introselectIPalN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_:bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 3
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph65

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.f = icmp eq i64 %i.k, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph65, !llvm.loop !951

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.031.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.01729.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..017, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @_ZSt13__heap_selectIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %.031.lcssa, ptr noundef nonnull %i.g, ptr noundef %.01729.lcssa)
  %i.h = load i8, ptr %.031.lcssa, align 1, !tbaa !14
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %.031.lcssa, align 1, !tbaa !14
  store i8 %i.h, ptr %1, align 1, !tbaa !14
  br label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit

.lr.ph65:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0172964 = phi ptr [ %..017, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0163063 = phi i64 [ %i.k, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.03162 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0163063, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.03162, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03162, i64 1 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0172964, i64 -1 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !tbaa !14    ; 5 uses
  %i.q = load i8, ptr %i.m, align 1, !tbaa !14    ; 5 uses
  %i.r = icmp slt i8 %i.p, %i.q
  %i.s = load i8, ptr %i.o, align 1, !tbaa !14    ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph65
  %i.t = icmp slt i8 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i8, ptr %.03162, align 1, !tbaa !14
  store i8 %i.q, ptr %.03162, align 1, !tbaa !14
  store i8 %i.u, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i8 %i.p, %i.s
  %i.w = load i8, ptr %.03162, align 1, !tbaa !14 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 %i.s, ptr %.03162, align 1, !tbaa !14
  store i8 %i.w, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i8 %i.p, ptr %.03162, align 1, !tbaa !14
  store i8 %i.w, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph65
  %i.x = icmp slt i8 %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %.03162, align 1, !tbaa !14
  store i8 %i.p, ptr %.03162, align 1, !tbaa !14
  store i8 %i.y, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i8 %i.q, %i.s
  %i.aa = load i8, ptr %.03162, align 1, !tbaa !14 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 %i.s, ptr %.03162, align 1, !tbaa !14
  store i8 %i.aa, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i8 %i.q, ptr %.03162, align 1, !tbaa !14
  store i8 %i.aa, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0172964, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.ab = load i8, ptr %.03162, align 1, !tbaa !14 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load i8, ptr %.1.i.i, align 1, !tbaa !14 ; 2 uses
  %i.ad = icmp slt i8 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !952

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -1 ; 5 uses
  %i.af = load i8, ptr %.114.i.i, align 1, !tbaa !14 ; 2 uses
  %i.ag = icmp slt i8 %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !953

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i8 %i.af, ptr %.1.i.i, align 1, !tbaa !14
  store i8 %i.ac, ptr %.114.i.i, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !954

_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0172964 ; 4 uses
  %.0. = select i1 %.not, ptr %.03162, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..017 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 3
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !951

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ] ; 8 uses
  %.lcssa25 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.017.lcssa
  br i1 %i.am, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 3 uses
  %.not17.i = icmp eq ptr %.016.i, %.017.lcssa
  br i1 %.not17.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i
  %.019.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.016.i, %.preheader.i ] ; 6 uses
  %.pn18.i = phi ptr [ %.019.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %.preheader.i ] ; 3 uses
  %i.an = load i8, ptr %.019.i, align 1, !tbaa !14 ; 4 uses
  %i.ao = load i8, ptr %.0.lcssa, align 1, !tbaa !14 ; 2 uses
  %i.ap = icmp slt i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.aq = ptrtoint ptr %.019.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa25                ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.p, label %bb.q, !prof !233

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.r, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 1
  store i8 %i.ao, ptr %i.au, align 1, !tbaa !14
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.av = load i8, ptr %.pn18.i, align 1, !tbaa !14 ; 2 uses
  %i.aw = icmp slt i8 %i.an, %i.av
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.ax = phi i8 [ %i.ay, %.lr.ph.i.i ], [ %i.av, %bb.s ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn18.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.019.i, %bb.s ]
  store i8 %i.ax, ptr %.0912.i.i, align 1, !tbaa !14
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -1 ; 2 uses
  %i.ay = load i8, ptr %.0.i.i22, align 1, !tbaa !14 ; 2 uses
  %i.az = icmp slt i8 %i.an, %i.ay
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, !llvm.loop !955

_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.019.i, %bb.s ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i8 %i.an, ptr %.sink.i, align 1, !tbaa !14
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !956

_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = ptrtoaddr ptr %2 to i64                    ; 6 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = add nsw i64 %i.d, -1
  %i.f = sdiv i64 %i.e, 2
  %i.g = icmp sgt i64 %i.d, 2
  %i.h = and i64 %i.d, 1
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = add i64 %i.d, -2                         ; 3 uses
  %i.k = ashr exact i64 %i.j, 1                   ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.k
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i8, ptr %.011.us, align 1, !tbaa !14 ; 3 uses
  %i.p = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %i.q = icmp slt i8 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i8 %i.p, ptr %.011.us, align 1, !tbaa !14
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.t, align 1, !tbaa !14
  %i.x = load i8, ptr %i.v, align 1, !tbaa !14
  %i.y = icmp slt i8 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.us
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %.029.i.i.us
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !14
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.f
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !957

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i8, ptr %i.m, align 1, !tbaa !14
  store i8 %i.ae, ptr %i.n, align 1, !tbaa !14
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.l, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i67.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i67.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i67.i.us
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14  ; 2 uses
  %i.ah = icmp slt i8 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %.01317.i.i.i.us
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !14
  %.not8.i.us = icmp eq i64 %.018.i.i67.i.us, 0
  br i1 %.not8.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !958

_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.013.lcssa.i.i.i.us
  store i8 %i.o, ptr %i.aj, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 1 ; 2 uses
  %exitcond33.not = icmp eq ptr %i.ak, %2
  br i1 %exitcond33.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !959

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.al = icmp eq i64 %spec.select.i.i.us, %i.k
  %or.cond = select i1 %i.i, i1 %i.al, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i8, ptr %0, align 1, !tbaa !14     ; 2 uses
  %i.an = sub i64 %3, %i.b
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.prol.loopexit, label %.lr.ph.split.split.prol

.lr.ph.split.split.prol:                          ; preds = %.lr.ph.split.split.preheader, %bb.e
  %i.ao = phi i8 [ %i.ar, %bb.e ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011.prol = phi ptr [ %i.as, %bb.e ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.split.split.preheader ]
  %i.ap = load i8, ptr %.011.prol, align 1, !tbaa !14 ; 3 uses
  %i.aq = icmp slt i8 %i.ap, %i.ao
  br i1 %i.aq, label %._crit_edge.i.i.prol, label %bb.e

._crit_edge.i.i.prol:                             ; preds = %.lr.ph.split.split.prol
  store i8 %i.ao, ptr %.011.prol, align 1, !tbaa !14
  store i8 %i.ap, ptr %0, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.prol, %.lr.ph.split.split.prol
  %i.ar = phi i8 [ %i.ao, %.lr.ph.split.split.prol ], [ %i.ap, %._crit_edge.i.i.prol ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.011.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.prol.loopexit, label %.lr.ph.split.split.prol, !llvm.loop !960

.lr.ph.split.split.prol.loopexit:                 ; preds = %bb.e, %.lr.ph.split.split.preheader
  %.unr = phi i8 [ %.pre, %.lr.ph.split.split.preheader ], [ %i.ar, %bb.e ]
  %.011.unr = phi ptr [ %1, %.lr.ph.split.split.preheader ], [ %i.as, %bb.e ]
  %i.at = sub i64 %i.b, %3
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.av = icmp eq i64 %i.j, 0
  br i1 %i.av, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %i.aw = sub i64 %3, %i.b
  %xtraiter64 = and i64 %i.aw, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %i.ax = load i8, ptr %1, align 1, !tbaa !14     ; 3 uses
  %i.ay = load i8, ptr %0, align 1, !tbaa !14     ; 2 uses
  %i.az = icmp slt i8 %i.ax, %i.ay
  br i1 %i.az, label %._crit_edge.i.i.us13.us.prol, label %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa

._crit_edge.i.i.us13.us.prol:                     ; preds = %.lr.ph.split.split.us.split.us.prol
  store i8 %i.ay, ptr %1, align 1, !tbaa !14
  %i.ba = load i8, ptr %i.am, align 1, !tbaa !14  ; 2 uses
  store i8 %i.ba, ptr %0, align 1, !tbaa !14
  %i.bb = icmp sge i8 %i.ba, %i.ax
  %spec.select.prol = zext i1 %i.bb to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.prol
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !14
  br label %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa

.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.us13.us.prol, %.lr.ph.split.split.us.split.us.prol
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.split.split.us.split.us.prol.loopexit

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa, %.lr.ph.split.split.us.split.us.preheader
  %.011.us12.us.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.us.preheader ], [ %i.bd, %.lr.ph.split.split.us.split.us.prol.loopexit.unr-lcssa ]
  %i.be = add i64 %3, -1
  %i.bf = icmp eq i64 %i.be, %i.b
  br i1 %i.bf, label %._crit_edge, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre34 = load i8, ptr %0, align 1, !tbaa !14   ; 2 uses
  %i.bg = sub i64 %3, %i.b
  %xtraiter60 = and i64 %i.bg, 3                  ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol

.lr.ph.split.split.us.split.prol:                 ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.bh = phi i8 [ %i.bk, %bb.f ], [ %.pre34, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12.prol = phi ptr [ %i.bl, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %prol.iter62 = phi i64 [ %prol.iter62.next, %bb.f ], [ 0, %.lr.ph.split.split.us.split.preheader ]
  %i.bi = load i8, ptr %.011.us12.prol, align 1, !tbaa !14 ; 3 uses
  %i.bj = icmp slt i8 %i.bi, %i.bh
  br i1 %i.bj, label %._crit_edge.i.i.us13.prol, label %bb.f

._crit_edge.i.i.us13.prol:                        ; preds = %.lr.ph.split.split.us.split.prol
  store i8 %i.bh, ptr %.011.us12.prol, align 1, !tbaa !14
  store i8 %i.bi, ptr %0, align 1, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13.prol, %.lr.ph.split.split.us.split.prol
  %i.bk = phi i8 [ %i.bi, %._crit_edge.i.i.us13.prol ], [ %i.bh, %.lr.ph.split.split.us.split.prol ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.us12.prol, i64 1 ; 2 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol, !llvm.loop !961

.lr.ph.split.split.us.split.prol.loopexit:        ; preds = %bb.f, %.lr.ph.split.split.us.split.preheader
end_hunk_1
begin_hunk_2_@_ZN6duckdb19ColumnDataScanStateD2Ev:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !50
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !2204
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !2204
  br label %_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.i, label %_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit, !prof !54

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30
  br label %_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EED2Ev.exit: ; preds = %_ZN6duckdb20ChunkManagementStateD2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIfEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2205 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2206 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !2207
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImfESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIfED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !2209
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIfED2Ev.exit

_ZN6duckdb19WindowQuantileStateIfED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIfED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIfNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1984
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !2210 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIfEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !2210

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !2210
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1984 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !1984
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIfEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIfEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIfEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIfEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIfEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIfEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIfEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2213, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2215, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2216, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2218

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !2219

_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIfE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIfEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIfEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !2213, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIfEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !2215, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2040
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIfE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIfE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2065
  br label %_ZN6duckdb14QuantileCursorIfE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !2063, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_2
begin_hunk_3_@_ZN6duckdb19WindowQuantileStateIfE10UpdateSkipERNS_14QuantileCursorIfEERKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEERNS_16QuantileIncludedIfEE:bb.a
  br i1 %i.fw, label %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE5resetEPS8_.exit.i18, label %_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit21

_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE5resetEPS8_.exit.i18: ; preds = %bb.ah
  %i.fx = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31, !noalias !2247 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfEN6duckdb8SkipLessIS3_EEEE, i64 16), ptr %i.fx, align 8, !tbaa !51, !noalias !2247
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  store ptr null, ptr %i.fz, align 8, !tbaa !2242, !noalias !2247
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, i8 0, i64 40, i1 false), !noalias !2247
  store i64 -3819351491825719833, ptr %i.ga, align 8, !tbaa !2243, !noalias !2247
  store ptr %i.fx, ptr %i.k, align 8, !tbaa !2206
  br label %_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit21

_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit21: ; preds = %_ZN6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EE5resetEPS8_.exit.i18, %bb.ah
  %i.gb = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImfENS_8SkipLessIS5_EEEESt14default_deleteIS8_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr %i.gb, ptr %15, align 8, !tbaa !2206
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %1, ptr %i.gc, align 8, !tbaa !1984
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %3, ptr %i.gd, align 8, !tbaa !2250
  call void @_ZN6duckdb17AggregateExecutor15IntersectFramesINS_19WindowQuantileStateIfE15SkipListUpdaterEEEvRKNS_6vectorINS_11FrameBoundsELb1ESaIS6_EEESA_RT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit, %_ZN6duckdb19WindowQuantileStateIfE11GetSkipListEb.exit21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2217   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2217 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2252 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !2208   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.a, align 8, !tbaa !59
  store i64 %i.i, ptr %i.b, align 8, !tbaa !59
  %.not.i.i.not = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.not, label %bb.b, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_112ReuseIndexesEPmRKNS_6vectorINS_11FrameBoundsELb1ESaIS3_EEES7_(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::FrameBounds", align 8 ; 6 uses
  %.val.val = load ptr, ptr %2, align 8, !tbaa !2217 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val.val31 = load ptr, ptr %i.d, align 8, !tbaa !2217 ; 3 uses
  %.not4.i = icmp eq ptr %.val.val, %.val.val31
  br i1 %.not4.i, label %._crit_edge.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.val.val3192 = ptrtoaddr ptr %.val.val31 to i64
  %.val.val93 = ptrtoaddr ptr %.val.val to i64
  %i.e = add i64 %.val.val3192, -16
  %i.f = sub i64 %i.e, %.val.val93                ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 48
  br i1 %min.iters.check, label %.lr.ph.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693948      ; 3 uses
  %i.i = shl i64 %n.vec, 4
  %i.j = getelementptr i8, ptr %.val.val, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi94 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.k = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.val.val, i64 %i.k
  %i.l = getelementptr i8, ptr %.val.val, i64 %i.k
  %next.gep95 = getelementptr i8, ptr %i.l, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec96 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec97 = load <4 x i64>, ptr %next.gep95, align 8, !tbaa !59 ; 2 uses
  %strided.vec98 = shufflevector <4 x i64> %wide.vec97, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec99 = shufflevector <4 x i64> %wide.vec97, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.m = add <2 x i64> %strided.vec96, %vec.phi
  %i.n = add <2 x i64> %strided.vec99, %vec.phi94
  %i.o = sub <2 x i64> %i.m, %strided.vec         ; 2 uses
  %i.p = sub <2 x i64> %i.n, %strided.vec98       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !2253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.r = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit, label %.lr.ph.i.preheader115

.lr.ph.i.preheader115:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.06.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.01.05.i.ph = phi ptr [ %.val.val, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader115, %.lr.ph.i
  %.06.i = phi i64 [ %i.w, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader115 ]
  %.sroa.01.05.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader115 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1993
  %i.u = load i64, ptr %.sroa.01.05.i, align 8, !tbaa !1995
  %i.v = add i64 %i.t, %.06.i
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %.val.val31
  br i1 %.not.i, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit, label %.lr.ph.i, !llvm.loop !2254

_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit:   ; preds = %.lr.ph.i, %middle.block
  %.lcssa91 = phi i64 [ %i.r, %middle.block ], [ %i.w, %.lr.ph.i ] ; 5 uses
  %.not61 = icmp eq i64 %.lcssa91, 0
  br i1 %.not61, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet4SizeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2252 ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !2208  ; 3 uses
  %.not6.i = icmp eq ptr %i.z, %i.aa
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 3 uses
  br i1 %.not6.i, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel, label %.lr.ph.split

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel: ; preds = %.lr.ph
  %exitcond68.peel.not = icmp eq i64 %.lcssa91, 1
  br i1 %exitcond68.peel.not, label %._crit_edge.thread, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.peel
  %i.af = add i64 %.lcssa91, -1                   ; 2 uses
  %i.ag = add i64 %.lcssa91, -2
  %xtraiter = and i64 %i.af, 7                    ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 7
  br i1 %i.ah, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.epil.preheader, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader
  %unroll_iter = and i64 %i.af, -8
  br label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us

_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us: ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new
  %.02948.us = phi i64 [ 1, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new ], [ %i.ai, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us.preheader.new ], [ %niter.next.7, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us ]
  %i.ai = add nuw i64 %.02948.us, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.loopexit.unr-lcssa, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread.us, !llvm.loop !2255

._crit_edge:                                      ; preds = %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.j

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread
  %.02849 = phi i64 [ %i.bd, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread ], [ 0, %.lr.ph ] ; 4 uses
  %.02948 = phi i64 [ %i.be, %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02948
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59 ; 3 uses
  %.not30 = icmp eq i64 %.02849, %.02948
  br i1 %.not30, label %.lr.ph.i33.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02849
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !59
  br label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %bb.b, %.lr.ph.split
  br label %.lr.ph.i33

bb.c:                                             ; preds = %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit
  %i.am = add nuw i64 %.0123.i, 1                 ; 2 uses
  %exitcond66.not = icmp eq i64 %i.am, %i.ae
  br i1 %exitcond66.not, label %_ZNK6duckdb12_GLOBAL__N_18FrameSet8ContainsEm.exit.thread, label %.lr.ph.i33, !llvm.loop !2257

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader, %bb.c
  %.0123.i = phi i64 [ %i.am, %bb.c ], [ 0, %.lr.ph.i33.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.0123.i, ptr %i.b, align 8, !tbaa !59
  store i64 %i.ae, ptr %i.c, align 8, !tbaa !59
  %exitcond.not = icmp eq i64 %.0123.i, %i.ae
  br i1 %exitcond.not, label %.noexc.i, label %_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit, !prof !54

.noexc.i:                                         ; preds = %.lr.ph.i33
  %i.an = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ap, ptr %3, align 8, !tbaa !22
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ap, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.d ], [ true, %.noexc ] ; 2 uses
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ao
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.av) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.an) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.f ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm.exit: ; preds = %.lr.ph.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0123.i ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1995
  %.not.i34 = icmp ule i64 %i.ay, %i.ak
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
end_hunk_3
begin_hunk_4_@_ZSt11nth_elementIPmN6duckdb15QuantileCompareINS1_16QuantileComposedINS1_12_GLOBAL__N_111MadAccessorIfffEENS1_16QuantileIndirectIfEEEEEEEvT_SB_SB_T0_:bb.a
  %i.ff = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 %.0.val.i22.i, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0.lcssa.i)
  br i1 %i.ff, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %.lr.ph.i21.i
  %i.fg = load i64, ptr %.021.i.i, align 8, !tbaa !59
  %i.fh = ptrtoint ptr %.021.i.i to i64
  %i.fi = sub i64 %i.fh, %.lcssa31.i              ; 3 uses
  %i.fj = ashr exact i64 %i.fi, 3                 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, 1
  br i1 %i.fk, label %bb.ac, label %bb.ad, !prof !233

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 16
  %i.fm = sub nsw i64 0, %i.fj
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fn, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa.i, i64 %i.fi, i1 false)
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fo = icmp eq i64 %i.fi, 8
  br i1 %i.fo, label %bb.ae, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.fp = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  %i.fq = load i64, ptr %.0.lcssa.i, align 8, !tbaa !59
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !59
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.ae, %bb.ad, %bb.ac
  store i64 %i.fg, ptr %.0.lcssa.i, align 8, !tbaa !59
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i21.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.fr = load i64, ptr %.021.i.i, align 8, !tbaa !59 ; 3 uses
  %i.fs = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 %i.fr, ptr noundef nonnull readonly align 8 dereferenceable(8) %.pn20.i.i)
  br i1 %i.fs, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.i
  %.013.i.i23.i = phi ptr [ %.0.i.i24.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.af ] ; 4 uses
  %.0912.i.i.i = phi ptr [ %.013.i.i23.i, %.lr.ph.i.i.i ], [ %.021.i.i, %bb.af ]
  %i.ft = load i64, ptr %.013.i.i23.i, align 8, !tbaa !59
  store i64 %i.ft, ptr %.0912.i.i.i, align 8, !tbaa !59
  %.0.i.i24.i = getelementptr inbounds i8, ptr %.013.i.i23.i, i64 -8 ; 2 uses
  %i.fu = call fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 %i.fr, ptr noundef nonnull readonly align 8 dereferenceable(8) %.0.i.i24.i)
  br i1 %i.fu, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i, !llvm.loop !2329

_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.af
  %.09.lcssa.i.i.i = phi ptr [ %.021.i.i, %bb.af ], [ %.013.i.i23.i, %.lr.ph.i.i.i ]
  store i64 %i.fr, ptr %.09.lcssa.i.i.i, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i.i
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, %.017.lcssa.i
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_T0_.exit.i, label %.lr.ph.i21.i, !llvm.loop !2330

_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_T0_.exit.i: ; preds = %bb.ag, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_T1_.exit

_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_T1_.exit: ; preds = %_ZSt13__heap_selectIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_.exit.i, %_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_T0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_ZSt13__introselectIPmlN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_16QuantileComposedINS4_12_GLOBAL__N_111MadAccessorIfffEENS4_16QuantileIndirectIfEEEEEEEEEvT_SF_SF_T0_T1_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK6duckdb15QuantileCompareINS_16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEEEclERKmSA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.c = load ptr, ptr %0, align 8, !tbaa !2331, !nonnull !235, !align !683 ; 2 uses
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !2035
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val6 = load ptr, ptr %i.d, align 8, !tbaa !2037
  %.val6.val = load ptr, ptr %.val6, align 8, !tbaa !2038 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val6.val, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2040
  %i.g = icmp ult i64 %.0.val, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val6.val, i64 104 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ule i64 %i.i, %.0.val
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %.val6.val, align 8, !tbaa !2063, !nonnull !235, !align !683
  %i.m = getelementptr inbounds nuw i8, ptr %.val6.val, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.val, i64 152 ; 3 uses
  %i.o = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 noundef %.0.val, ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.n) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %.val6.val, i64 224
  store ptr %i.r, ptr %i.s, align 8, !tbaa !2064
  %i.t = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.val6.val, i64 232
  store ptr %i.u, ptr %i.v, align 8, !tbaa !2065
  %.pre.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !2066
  br label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit

_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit: ; preds = %bb.a, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.x = sub i64 %.0.val, %i.w
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.val, i64 224
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2064
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !1313
  %.val.i = load ptr, ptr %.val5, align 8, !tbaa !2067
  %.val.val.i = load float, ptr %.val.i, align 4, !tbaa !1313
  %i.ad = fsub float %i.ac, %.val.val.i
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.ad)
  store float %i.ae, ptr %i.a, align 4, !tbaa !1313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2333, !nonnull !235, !align !683 ; 2 uses
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !2035
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val3 = load ptr, ptr %i.ah, align 8, !tbaa !2037
  %.val4 = load i64, ptr %1, align 8, !tbaa !59   ; 4 uses
  %.val3.val = load ptr, ptr %.val3, align 8, !tbaa !2038 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3.val, i64 112
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !2040
  %i.ak = icmp ult i64 %.val4, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.val3.val, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ule i64 %i.am, %.val4
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit
  %i.ap = load ptr, ptr %.val3.val, align 8, !tbaa !2063, !nonnull !235, !align !683
  %i.aq = getelementptr inbounds nuw i8, ptr %.val3.val, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3.val, i64 152 ; 3 uses
  %i.as = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ap, i64 noundef %.val4, ptr noundef nonnull align 8 dereferenceable(144) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ar) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %.val3.val, i64 224
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !2064
  %i.ax = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %.val3.val, i64 232
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !2065
  %.pre.i.i.i.i8 = load i64, ptr %i.al, align 8, !tbaa !2066
  br label %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11

_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11: ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit, %bb.c
  %i.ba = phi i64 [ %.pre.i.i.i.i8, %bb.c ], [ %i.am, %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit ]
  %i.bb = sub i64 %.val4, %i.ba
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3.val, i64 224
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2064
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !1313
  %.val.i9 = load ptr, ptr %.val, align 8, !tbaa !2067
  %.val.val.i10 = load float, ptr %.val.i9, align 4, !tbaa !1313
  %i.bh = fsub float %i.bg, %.val.val.i10
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh)
  store float %i.bi, ptr %i.b, align 4, !tbaa !1313
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !2334, !range !234, !noundef !235
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11
  %i.bm = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK6duckdb16QuantileComposedINS_12_GLOBAL__N_111MadAccessorIfffEENS_16QuantileIndirectIfEEEclERKm.exit11
  %i.bn = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bo = phi i1 [ %i.bm, %bb.d ], [ %i.bn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %i.bo
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2252 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !2208   ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2335
  %i.i = load ptr, ptr %0, align 8, !tbaa !2208   ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %2 = ptrtoaddr ptr %i.c to i64
  %3 = ptrtoaddr ptr %i.b to i64
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE11_M_allocateEm.exit.i, !prof !54

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %3, -16
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #34
  br label %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !2208
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !2335
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2252
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 16
  br i1 %i.y, label %bb.h, label %bb.i, !prof !233

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 16
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !206
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.x, 16
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !233

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp eq i64 %i.x, 16
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !206
  br label %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ac = load ptr, ptr %1, align 8, !tbaa !2208
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !2252 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2208
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !2252 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !206
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2336

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN6duckdb11FrameBoundsES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb11FrameBoundsESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !2208
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !2252
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11FrameBoundsESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16QuantileSortTreeC2ERNS_18AggregateInputDataERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %4 = alloca %"struct.duckdb::ColumnDataScanState", align 8 ; 17 uses
  %5 = alloca %"class.duckdb::DataChunk", align 8 ; 13 uses
  %6 = alloca %"class.duckdb::vector.15", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %10 = alloca %"class.duckdb::BoundOrderModifier", align 8 ; 12 uses
  %11 = alloca %"struct.duckdb::BoundOrderByNode", align 8 ; 11 uses
  %12 = alloca %"class.duckdb::unique_ptr.106", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::vector.15", align 8 ; 9 uses
  %14 = alloca %"class.duckdb::unique_ptr.596", align 8 ; 7 uses
  %15 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  store ptr null, ptr %0, align 8, !tbaa !2337
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2264 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2339, !nonnull !235, !align !683 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !2202
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 1, ptr %i.g, align 8, !tbaa !2203
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !130  ; 4 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds i8, ptr null, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.t, ptr %i.u, align 8, !tbaa !207
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = icmp ugt i64 %i.r, 9223372036854775800
  br i1 %i.v, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !54

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31
          to label %.noexc88 unwind label %bb.ah  ; 5 uses

.noexc88:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.w, ptr %6, align 8, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !129
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !207
  %i.aa = icmp samesign ugt i64 %i.r, 8
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !831

bb.d:                                             ; preds = %.noexc88
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc88
  %i.ab = icmp eq i64 %i.r, 8
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !59
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread
  %i.ad = phi ptr [ %i.y, %bb.d ], [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.t, %.thread ]
  %i.ae = phi ptr [ %i.x, %bb.d ], [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %i.s, %.thread ]
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !129
  invoke void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_6vectorImLb1ESaImEEENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull %6, i8 noundef zeroext 1)
          to label %bb.h unwind label %bb.ai

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.i
end_hunk_4
begin_hunk_5_@_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_T2_:bb.a
  store double %i.bh, ptr %i.b, align 8, !tbaa !776
  %i.bi = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.bi, label %bb.e, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.bj = load double, ptr %i.bd, align 8, !tbaa !776
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.us
  store double %i.bj, ptr %i.bk, align 8, !tbaa !776
  %i.bl = icmp samesign ugt i64 %.01823.i.us, %1
  br i1 %i.bl, label %.lr.ph.i.us, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2561

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.01317.i = phi i64 [ %.01823.i, %bb.f ], [ %.128, %.lr.ph.i.preheader ] ; 3 uses
  %.018.in.i = add nsw i64 %.01317.i, -1
  %.01823.i = lshr i64 %.018.in.i, 1              ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01823.i ; 2 uses
  %.val.i = load double, ptr %i.bm, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val4.i.i.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !2446
  %.val4.val.i.i.i = load double, ptr %.val4.i.i.i, align 8, !tbaa !776
  %i.bn = fsub double %.val.i, %.val4.val.i.i.i
  %i.bo = call noundef double @llvm.fabs.f64(double %i.bn)
  store double %i.bo, ptr %i.a, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.val.i.i.i = load ptr, ptr %.sroa.4.0.copyload, align 8, !tbaa !2446
  %.val.val.i.i.i = load double, ptr %.val.i.i.i, align 8, !tbaa !776
  %i.bp = fsub double %3, %.val.val.i.i.i
  %i.bq = call noundef double @llvm.fabs.f64(double %i.bp)
  store double %i.bq, ptr %i.b, align 8, !tbaa !776
  %i.br = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.br, label %bb.f, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bs = load double, ptr %i.bm, align 8, !tbaa !776
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i
  store double %i.bs, ptr %i.bt, align 8, !tbaa !776
  %i.bu = icmp samesign ugt i64 %.01823.i, %1
  br i1 %i.bu, label %.lr.ph.i, label %_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit, !llvm.loop !2561

_ZSt11__push_heapIPdldN9__gnu_cxx5__ops14_Iter_comp_valIN6duckdb15QuantileCompareINS4_12_GLOBAL__N_111MadAccessorIdddEEEEEEEvT_T0_SC_T1_RT2_.exit: ; preds = %bb.f, %.lr.ph.i, %bb.e, %.lr.ph.i.us, %bb.d
  %.013.lcssa.i = phi i64 [ %.128, %bb.d ], [ %.01823.i.us, %bb.e ], [ %.01317.i.us, %.lr.ph.i.us ], [ %.01317.i, %.lr.ph.i ], [ %.01823.i, %bb.f ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i
  store double %3, ptr %i.bv, align 8, !tbaa !776
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIdEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2562 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2563 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !2564
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImdESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImdEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIdED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !2565
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIdED2Ev.exit

_ZN6duckdb19WindowQuantileStateIdED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIdED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIdNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2403
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !2566 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIdEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !2566

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !2566
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2403 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2403
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIdEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIdEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIdEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIdEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIdEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIdEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIdEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2569, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2571, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2572, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2573

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !2574

_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIdE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIdEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIdEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !2569, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIdEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !2571, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2440
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIdE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIdE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2444
  br label %_ZN6duckdb14QuantileCursorIdE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !2442, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_5
begin_hunk_6_@_ZN6duckdb9Exception25ConstructMessageRecursiveIsJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !11
  store ptr %i.k, ptr %i.h, align 8, !tbaa !22
  store i64 0, ptr %i.s, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !639
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !639
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIsEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2831 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2832 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !2833
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImsESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImsEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIsED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !2834
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIsED2Ev.exit

_ZN6duckdb19WindowQuantileStateIsED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIsED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIsNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2667
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !2835 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIsEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !2835

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !2835
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2667 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2667
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIsEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIsEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIsEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIsEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIsEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIsEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIsEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !2838, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2840, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !2841, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2843

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !2844

_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIsE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIsEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIsEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !2838, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIsEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !2840, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !2845
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIsE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIsE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2846
  br label %_ZN6duckdb14QuantileCursorIsE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !2847, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_6
begin_hunk_7_@_ZN6duckdb9Exception25ConstructMessageRecursiveIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !11
  store ptr %i.k, ptr %i.h, align 8, !tbaa !22
  store i64 0, ptr %i.s, align 8, !tbaa !11
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !639
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !639
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIiEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3104 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3105 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3106
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImiEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIiED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3107
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIiED2Ev.exit

_ZN6duckdb19WindowQuantileStateIiED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIiED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIiNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2940
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3108 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIiEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3108

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3108
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !2940 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !2940
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIiEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIiEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIiEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIiEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIiEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIiEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3111, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3113, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3114, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3116

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3117

_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIiE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIiEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIiEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3111, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIiEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3113, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3118
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIiE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIiE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3119
  br label %_ZN6duckdb14QuantileCursorIiE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3120, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_7
begin_hunk_8_@_ZN6duckdb19OutOfRangeExceptionC2IJRlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.i) #34
  br label %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3370
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3370
  invoke void @_ZN6duckdb19OutOfRangeExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIlEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3373 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3374 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3375
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImlESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImlEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIlED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3376
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIlED2Ev.exit

_ZN6duckdb19WindowQuantileStateIlED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIlED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIlNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3213
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3377 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIlEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3377

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3377
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !3213 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !3213
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIlEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIlEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIlEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIlEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIlEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIlEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIlEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3380, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3382, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3383, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3385

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3386

_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIlE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIlEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIlEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3380, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIlEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3382, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3387
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIlE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIlE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3388
  br label %_ZN6duckdb14QuantileCursorIlE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3389, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_8
begin_hunk_9_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !11
  store ptr %i.i, ptr %i.f, align 8, !tbaa !22
  store i64 0, ptr %i.q, align 8, !tbaa !11
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !639
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !639
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !22 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_9hugeint_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3643 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3644 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3645
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb9hugeint_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb9hugeint_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3646
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_9hugeint_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_9hugeint_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3482
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3647 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_9hugeint_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3647

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3647
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !3482 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !3482
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_9hugeint_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_9hugeint_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_9hugeint_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_9hugeint_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_9hugeint_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_9hugeint_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_9hugeint_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3650, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3652, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3653, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3655

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3656

_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3650, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_9hugeint_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3652, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3657
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_9hugeint_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_9hugeint_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3658
  br label %_ZN6duckdb14QuantileCursorINS_9hugeint_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3659, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_9
begin_hunk_10_@_ZN6duckdbL17CastExceptionTextINS_10interval_tES1_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @_ZdlPv(ptr noundef %i.dw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 2 uses
  %i.dy = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.b
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  call void @_ZdlPv(ptr noundef %i.dy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.r
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.de, %bb.r ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ]
  %i.ea = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  call void @_ZdlPv(ptr noundef %i.ea) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb15ConvertToString9OperationINS_10interval_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, i64) local_unnamed_addr #2

declare noundef i64 @_ZNK6duckdb11timestamp_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { i64, i64 } @_ZN6duckdb8Interval9FromMicroEl(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_6date_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3933 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3934 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !3935
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb6date_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb6date_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !3936
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_6date_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_6date_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3754
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !3937 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_6date_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !3937

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !3937
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !3754 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !3754
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_6date_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_6date_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_6date_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_6date_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_6date_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_6date_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_6date_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3940, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3942, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !3943, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !3944

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !3945

_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_6date_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !3940, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_6date_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !3942, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !3793
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_6date_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_6date_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3798
  br label %_ZN6duckdb14QuantileCursorINS_6date_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !3796, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_10
begin_hunk_11_@_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_11timestamp_tENS_10interval_tES3_EEEclERKS3_S8_:bb.a
  %i.af = icmp sge i64 %i.r, %i.z
  %i.ag = icmp sgt i64 %i.n, %i.v
  %spec.select.i.i.i.i = select i1 %i.af, i1 %i.ag, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

bb.f:                                             ; preds = %bb.a
  %i.ah = sdiv i64 %i.i, 86400000000              ; 2 uses
  %.neg.i.i.i.i.i4 = mul nsw i64 %i.ah, -86400000000
  %i.ai = add i64 %.neg.i.i.i.i.i4, %i.i
  %i.aj = ashr i64 %i.h, 32
  %i.ak = add nsw i64 %i.ah, %i.aj                ; 2 uses
  %i.al = sdiv i64 %i.ak, 30                      ; 2 uses
  %.neg16.i.i.i.i.i5 = mul nsw i64 %i.al, -30
  %i.am = add nsw i64 %.neg16.i.i.i.i.i5, %i.ak   ; 2 uses
  %sext = shl i64 %i.h, 32
  %i.an = ashr exact i64 %sext, 32
  %i.ao = add nsw i64 %i.al, %i.an                ; 2 uses
  %i.ap = sdiv i64 %i.d, 86400000000              ; 2 uses
  %.neg.i8.i.i.i.i6 = mul nsw i64 %i.ap, -86400000000
  %i.aq = add i64 %.neg.i8.i.i.i.i6, %i.d
  %i.ar = ashr i64 %i.c, 32
  %i.as = add nsw i64 %i.ap, %i.ar                ; 2 uses
  %i.at = sdiv i64 %i.as, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i7 = mul nsw i64 %i.at, -30
  %i.au = add nsw i64 %.neg16.i9.i.i.i.i7, %i.as  ; 2 uses
  %sext26 = shl i64 %i.c, 32
  %i.av = ashr exact i64 %sext26, 32
  %i.aw = add nsw i64 %i.at, %i.av                ; 2 uses
  %i.ax = icmp sgt i64 %i.ao, %i.aw
  br i1 %i.ax, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp slt i64 %i.ao, %i.aw
  br i1 %i.ay, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = icmp sgt i64 %i.am, %i.au
  br i1 %i.az, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp sge i64 %i.am, %i.au
  %i.bb = icmp sgt i64 %i.ai, %i.aq
  %spec.select.i.i.i.i8 = select i1 %i.ba, i1 %i.bb, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bc = phi i1 [ true, %bb.d ], [ %spec.select.i.i.i.i, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ %spec.select.i.i.i.i8, %bb.i ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ]
  ret i1 %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_11timestamp_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4202 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4203 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !4204
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb11timestamp_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb11timestamp_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !4205
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_11timestamp_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_11timestamp_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4039
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !4206 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_11timestamp_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !4206

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !4206
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !4039 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !4039
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_11timestamp_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_11timestamp_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_11timestamp_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_11timestamp_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_11timestamp_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_11timestamp_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_11timestamp_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4209, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4211, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !4212, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !4213

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !4214

_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !4209, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_11timestamp_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !4211, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !4076
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_11timestamp_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_11timestamp_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !4080
  br label %_ZN6duckdb14QuantileCursorINS_11timestamp_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !4078, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_11
begin_hunk_12_@_ZNK6duckdb15QuantileCompareINS_12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES3_EEEclERKS3_S8_:bb.a
  %i.az = icmp sge i64 %i.al, %i.at
  %i.ba = icmp sgt i64 %i.ah, %i.ap
  %spec.select.i.i.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

bb.p:                                             ; preds = %_ZNK6duckdb12_GLOBAL__N_111MadAccessorINS_7dtime_tENS_10interval_tES2_EclERKS2_.exit12
  %i.bb = sdiv i64 %i.ac, 86400000000             ; 2 uses
  %.neg.i.i.i.i.i13 = mul nsw i64 %i.bb, -86400000000
  %i.bc = add i64 %.neg.i.i.i.i.i13, %i.ac
  %i.bd = ashr i64 %i.ab, 32
  %i.be = add nsw i64 %i.bb, %i.bd                ; 2 uses
  %i.bf = sdiv i64 %i.be, 30                      ; 2 uses
  %.neg16.i.i.i.i.i14 = mul nsw i64 %i.bf, -30
  %i.bg = add nsw i64 %.neg16.i.i.i.i.i14, %i.be  ; 2 uses
  %sext = shl i64 %i.ab, 32
  %i.bh = ashr exact i64 %sext, 32
  %i.bi = add nsw i64 %i.bf, %i.bh                ; 2 uses
  %i.bj = sdiv i64 %i.o, 86400000000              ; 2 uses
  %.neg.i8.i.i.i.i15 = mul nsw i64 %i.bj, -86400000000
  %i.bk = add i64 %.neg.i8.i.i.i.i15, %i.o
  %i.bl = ashr i64 %i.n, 32
  %i.bm = add nsw i64 %i.bj, %i.bl                ; 2 uses
  %i.bn = sdiv i64 %i.bm, 30                      ; 2 uses
  %.neg16.i9.i.i.i.i16 = mul nsw i64 %i.bn, -30
  %i.bo = add nsw i64 %.neg16.i9.i.i.i.i16, %i.bm ; 2 uses
  %sext16 = shl i64 %i.n, 32
  %i.bp = ashr exact i64 %sext16, 32
  %i.bq = add nsw i64 %i.bn, %i.bp                ; 2 uses
  %i.br = icmp sgt i64 %i.bi, %i.bq
  br i1 %i.br, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = icmp slt i64 %i.bi, %i.bq
  br i1 %i.bs, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = icmp sgt i64 %i.bg, %i.bo
  br i1 %i.bt, label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = icmp sge i64 %i.bg, %i.bo
  %i.bv = icmp sgt i64 %i.bc, %i.bk
  %spec.select.i.i.i.i17 = select i1 %i.bu, i1 %i.bv, i1 false
  br label %_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb8LessThan9OperationINS_10interval_tEEEbRKT_S5_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.bw = phi i1 [ true, %bb.n ], [ %spec.select.i.i.i.i, %bb.o ], [ true, %bb.l ], [ false, %bb.m ], [ %spec.select.i.i.i.i17, %bb.s ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.r ]
  ret i1 %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_7dtime_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4467 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !4468 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !4469
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb7dtime_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb7dtime_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !4470
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_7dtime_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_7dtime_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4308
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !4471 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_7dtime_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !4471

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !4471
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !4308 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !4308
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_7dtime_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_7dtime_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_7dtime_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_7dtime_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_7dtime_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_7dtime_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_7dtime_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4474, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4476, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !4477, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !4479

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !4480

_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_7dtime_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !4474, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_7dtime_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !4476, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !4481
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_7dtime_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_7dtime_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !4482
  br label %_ZN6duckdb14QuantileCursorINS_7dtime_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !4483, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_12
begin_hunk_13_@_ZSt13__introselectIPalN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_T0_T1_:bb.a
  %i.j = phi i64 [ %i.az, %bb.b ], [ %i.c, %.lr.ph ]
  %i.k = add nsw i64 %.0163557, -1                ; 2 uses
  %.sroa.023.sroa.2.0.copyload = load i8, ptr %.sroa.023.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.l = lshr i64 %i.j, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.03656, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03656, i64 1 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0173458, i64 -1 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !tbaa !14    ; 8 uses
  %i.q = load i8, ptr %i.m, align 1, !tbaa !14    ; 8 uses
  %i.r = trunc nuw i8 %.sroa.023.sroa.2.0.copyload to i1 ; 7 uses
  %i.s = icmp sgt i8 %i.p, %i.q
  %i.t = icmp sgt i8 %i.q, %i.p
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t
  %i.v = load i8, ptr %i.o, align 1, !tbaa !14    ; 10 uses
  br i1 %i.u, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph59
  %i.w = icmp sgt i8 %i.q, %i.v
  %i.x = icmp sgt i8 %i.v, %i.q
  %i.y = select i1 %i.r, i1 %i.w, i1 %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %.03656, align 1, !tbaa !14
  store i8 %i.q, ptr %.03656, align 1, !tbaa !14
  store i8 %i.z, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp sgt i8 %i.p, %i.v
  %i.ab = icmp sgt i8 %i.v, %i.p
  %i.ac = select i1 %i.r, i1 %i.aa, i1 %i.ab
  %i.ad = load i8, ptr %.03656, align 1, !tbaa !14 ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 %i.v, ptr %.03656, align 1, !tbaa !14
  store i8 %i.ad, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.03656, align 1, !tbaa !14
  store i8 %i.ad, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph59
  %i.ae = icmp sgt i8 %i.p, %i.v
  %i.af = icmp sgt i8 %i.v, %i.p
  %i.ag = select i1 %i.r, i1 %i.ae, i1 %i.af
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i8, ptr %.03656, align 1, !tbaa !14
  store i8 %i.p, ptr %.03656, align 1, !tbaa !14
  store i8 %i.ah, ptr %i.n, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp sgt i8 %i.q, %i.v
  %i.aj = icmp sgt i8 %i.v, %i.q
  %i.ak = select i1 %i.r, i1 %i.ai, i1 %i.aj
  %i.al = load i8, ptr %.03656, align 1, !tbaa !14 ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 %i.v, ptr %.03656, align 1, !tbaa !14
  store i8 %i.al, ptr %i.o, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i8 %i.q, ptr %.03656, align 1, !tbaa !14
  store i8 %i.al, ptr %i.m, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.o
  %.013.i.i = phi ptr [ %.114.i.i, %bb.o ], [ %.0173458, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.n, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.am = load i8, ptr %.03656, align 1, !tbaa !14 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i ], [ %i.ar, %bb.m ] ; 7 uses
  %i.an = load i8, ptr %.1.i.i, align 1, !tbaa !14 ; 3 uses
  %i.ao = icmp sgt i8 %i.an, %i.am
  %i.ap = icmp sgt i8 %i.am, %i.an
  %i.aq = select i1 %i.r, i1 %i.ao, i1 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  br i1 %i.aq, label %bb.m, label %.preheader.i.i, !llvm.loop !8421

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.m ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -1 ; 5 uses
  %i.as = load i8, ptr %.114.i.i, align 1, !tbaa !14 ; 3 uses
  %i.at = icmp sgt i8 %i.am, %i.as
  %i.au = icmp sgt i8 %i.as, %i.am
  %i.av = select i1 %i.r, i1 %i.at, i1 %i.au
  br i1 %i.av, label %.preheader.i.i, label %bb.n, !llvm.loop !8422

bb.n:                                             ; preds = %.preheader.i.i
  %i.aw = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.aw, label %bb.o, label %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit

bb.o:                                             ; preds = %bb.n
  store i8 %i.as, ptr %.1.i.i, align 1, !tbaa !14
  store i8 %i.an, ptr %.114.i.i, align 1, !tbaa !14
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !8423

_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit: ; preds = %bb.n
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..017 = select i1 %.not, ptr %.1.i.i, ptr %.0173458 ; 4 uses
  %.0. = select i1 %.not, ptr %.03656, ptr %.1.i.i ; 4 uses
  %i.ax = ptrtoint ptr %..017 to i64
  %i.ay = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 3
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !8420

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit, %bb.a
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %..017, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.ay, %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEET_SA_SA_T0_.exit ]
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.2.0.copyload = load i8, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !247
  %i.bb = icmp eq ptr %.0.lcssa, %.017.lcssa
  br i1 %i.bb, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.019.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 3 uses
  %.not20.i = icmp eq ptr %.019.i, %.017.lcssa
  br i1 %.not20.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.bc = trunc nuw i8 %.sroa.0.sroa.2.0.copyload to i1 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i
  %.022.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.019.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn21.i = phi ptr [ %.022.i, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ], [ %.0.lcssa, %.lr.ph.i.preheader ] ; 3 uses
  %i.bd = load i8, ptr %.022.i, align 1, !tbaa !14 ; 7 uses
  %i.be = load i8, ptr %.0.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.bf = icmp sgt i8 %i.bd, %i.be
  %i.bg = icmp sgt i8 %i.be, %i.bd
  %i.bh = select i1 %i.bc, i1 %i.bf, i1 %i.bg
  br i1 %i.bh, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.bi = ptrtoint ptr %.022.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa30                ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, 1
  br i1 %i.bk, label %bb.q, label %bb.r, !prof !233

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.019.i, ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bl = icmp eq i64 %i.bj, 1
  br i1 %i.bl, label %bb.s, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 1
  store i8 %i.be, ptr %i.bm, align 1, !tbaa !14
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.bn = load i8, ptr %.pn21.i, align 1, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i8 %i.bd, %i.bn
  %i.bp = icmp sgt i8 %i.bn, %i.bd
  %i.bq = select i1 %i.bc, i1 %i.bo, i1 %i.bp
  br i1 %i.bq, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.br = phi i8 [ %i.bs, %.lr.ph.i.i ], [ %i.bn, %bb.t ]
  %.013.i.i21 = phi ptr [ %.0.i.i22, %.lr.ph.i.i ], [ %.pn21.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i21, %.lr.ph.i.i ], [ %.022.i, %bb.t ]
  store i8 %i.br, ptr %.0912.i.i, align 1, !tbaa !14
  %.0.i.i22 = getelementptr inbounds i8, ptr %.013.i.i21, i64 -1 ; 2 uses
  %i.bs = load i8, ptr %.0.i.i22, align 1, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i8 %i.bd, %i.bs
  %i.bu = icmp sgt i8 %i.bs, %i.bd
  %i.bv = select i1 %i.bc, i1 %i.bt, i1 %i.bu
  br i1 %i.bv, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, !llvm.loop !8424

_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.sink.i = phi ptr [ %.0.lcssa, %bb.s ], [ %.0.lcssa, %bb.q ], [ %.0.lcssa, %bb.r ], [ %.022.i, %bb.t ], [ %.013.i.i21, %.lr.ph.i.i ]
  store i8 %i.bd, ptr %.sink.i, align 1, !tbaa !14
  %.0.i = getelementptr inbounds nuw i8, ptr %.022.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.017.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !8425

_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_T0_.exit: ; preds = %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, %.preheader.i, %._crit_edge, %._crit_edge60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1894") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64                    ; 4 uses
  call void @_ZSt11__make_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !8426, !range !234, !noundef !235
  %i.d = trunc nuw i8 %i.c to i1                  ; 11 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = add nsw i64 %i.g, -1
  %i.i = sdiv i64 %i.h, 2
  %i.j = icmp sgt i64 %i.g, 2
  %i.k = and i64 %i.g, 1
  %i.l = icmp eq i64 %i.k, 0                      ; 2 uses
  %i.m = add i64 %i.g, -2                         ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.o = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.n
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.at, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.r = load i8, ptr %.011.us, align 1, !tbaa !14 ; 5 uses
  %i.s = load i8, ptr %0, align 1, !tbaa !14      ; 3 uses
  %i.t = icmp sgt i8 %i.r, %i.s
  %i.u = icmp sgt i8 %i.s, %i.r
  %i.v = select i1 %i.d, i1 %i.t, i1 %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i8 %i.s, ptr %.011.us, align 1, !tbaa !14
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.w = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  %i.z = getelementptr i8, ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !14   ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !14  ; 2 uses
  %i.ad = icmp sgt i8 %i.ab, %i.ac
  %i.ae = icmp sgt i8 %i.ac, %i.ab
  %i.af = select i1 %i.d, i1 %i.ad, i1 %i.ae
  %i.ag = or disjoint i64 %i.w, 1
  %spec.select.i.i.us = select i1 %i.af, i64 %i.ag, i64 %i.x ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.us
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %.029.i.i.us
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !14
  %i.ak = icmp slt i64 %spec.select.i.i.us, %i.i
  br i1 %i.ak, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !8429

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.al = load i8, ptr %i.p, align 1, !tbaa !14
  store i8 %i.al, ptr %i.q, align 1, !tbaa !14
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.o, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i1011.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1011.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i1011.i.us
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14  ; 3 uses
  %i.ao = icmp sgt i8 %i.an, %i.r
  %i.ap = icmp sgt i8 %i.r, %i.an
  %i.aq = select i1 %i.d, i1 %i.ao, i1 %i.ap
  br i1 %i.aq, label %bb.c, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %.01317.i.i.i.us
  store i8 %i.an, ptr %i.ar, align 1, !tbaa !14
  %.not12.i.us = icmp eq i64 %.018.i.i1011.i.us, 0
  br i1 %.not12.i.us, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !8430

_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.as = getelementptr inbounds i8, ptr %0, i64 %.013.lcssa.i.i.i.us
  store i8 %i.r, ptr %i.as, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_comp_iterIN6duckdb15QuantileCompareINS4_14QuantileDirectIaEEEEEEEvT_SA_SA_RT0_.exit.us, %.lr.ph.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %.011.us, i64 1 ; 2 uses
  %exitcond33.not = icmp eq ptr %i.at, %2
  br i1 %exitcond33.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !8431

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.au = icmp eq i64 %spec.select.i.i.us, %i.n
  %or.cond = select i1 %i.l, i1 %i.au, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  br i1 %i.l, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i8, ptr %0, align 1, !tbaa !14     ; 5 uses
  %i.aw = sub i64 %4, %i.e
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.prol.loopexit, label %.lr.ph.split.split.prol

.lr.ph.split.split.prol:                          ; preds = %.lr.ph.split.split.preheader
  %i.ax = load i8, ptr %1, align 1, !tbaa !14     ; 4 uses
  %i.ay = icmp sgt i8 %i.ax, %.pre
  %i.az = icmp sgt i8 %.pre, %i.ax
  %i.ba = select i1 %i.d, i1 %i.ay, i1 %i.az
  br i1 %i.ba, label %._crit_edge.i.i.prol, label %.lr.ph.split.split.prol.loopexit.unr-lcssa

._crit_edge.i.i.prol:                             ; preds = %.lr.ph.split.split.prol
  store i8 %.pre, ptr %1, align 1, !tbaa !14
  store i8 %i.ax, ptr %0, align 1, !tbaa !14
  br label %.lr.ph.split.split.prol.loopexit.unr-lcssa

.lr.ph.split.split.prol.loopexit.unr-lcssa:       ; preds = %._crit_edge.i.i.prol, %.lr.ph.split.split.prol
  %i.bb = phi i8 [ %.pre, %.lr.ph.split.split.prol ], [ %i.ax, %._crit_edge.i.i.prol ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.split.split.prol.loopexit

.lr.ph.split.split.prol.loopexit:                 ; preds = %.lr.ph.split.split.prol.loopexit.unr-lcssa, %.lr.ph.split.split.preheader
  %.unr = phi i8 [ %.pre, %.lr.ph.split.split.preheader ], [ %i.bb, %.lr.ph.split.split.prol.loopexit.unr-lcssa ]
  %.011.unr = phi ptr [ %1, %.lr.ph.split.split.preheader ], [ %i.bc, %.lr.ph.split.split.prol.loopexit.unr-lcssa ]
  %i.bd = add i64 %4, -1
  %i.be = icmp eq i64 %i.bd, %i.e
  br i1 %i.be, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bf = icmp eq i64 %i.m, 0
  br i1 %i.bf, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre34 = load i8, ptr %0, align 1, !tbaa !14   ; 5 uses
  %i.bg = sub i64 %4, %i.e
  %xtraiter49 = and i64 %i.bg, 1
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol

.lr.ph.split.split.us.split.prol:                 ; preds = %.lr.ph.split.split.us.split.preheader
  %i.bh = load i8, ptr %1, align 1, !tbaa !14     ; 4 uses
  %i.bi = icmp sgt i8 %i.bh, %.pre34
  %i.bj = icmp sgt i8 %.pre34, %i.bh
  %i.bk = select i1 %i.d, i1 %i.bi, i1 %i.bj
  br i1 %i.bk, label %._crit_edge.i.i.us13.prol, label %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa

._crit_edge.i.i.us13.prol:                        ; preds = %.lr.ph.split.split.us.split.prol
  store i8 %.pre34, ptr %1, align 1, !tbaa !14
  store i8 %i.bh, ptr %0, align 1, !tbaa !14
  br label %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa

.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.us13.prol, %.lr.ph.split.split.us.split.prol
  %i.bl = phi i8 [ %i.bh, %._crit_edge.i.i.us13.prol ], [ %.pre34, %.lr.ph.split.split.us.split.prol ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.lr.ph.split.split.us.split.prol.loopexit

.lr.ph.split.split.us.split.prol.loopexit:        ; preds = %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa, %.lr.ph.split.split.us.split.preheader
  %.unr51 = phi i8 [ %.pre34, %.lr.ph.split.split.us.split.preheader ], [ %i.bl, %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa ]
  %.011.us12.unr = phi ptr [ %1, %.lr.ph.split.split.us.split.preheader ], [ %i.bm, %.lr.ph.split.split.us.split.prol.loopexit.unr-lcssa ]
  %i.bn = add i64 %4, -1
  %i.bo = icmp eq i64 %i.bn, %i.e
  br i1 %i.bo, label %._crit_edge, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.bz, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.bp = load i8, ptr %.011.us12.us, align 1, !tbaa !14 ; 5 uses
  %i.bq = load i8, ptr %0, align 1, !tbaa !14     ; 3 uses
  %i.br = icmp sgt i8 %i.bp, %i.bq
  %i.bs = icmp sgt i8 %i.bq, %i.bp
  %i.bt = select i1 %i.d, i1 %i.br, i1 %i.bs
  br i1 %i.bt, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i8 %i.bq, ptr %.011.us12.us, align 1, !tbaa !14
  %i.bu = load i8, ptr %i.av, align 1, !tbaa !14  ; 3 uses
  store i8 %i.bu, ptr %0, align 1, !tbaa !14
  %i.bv = icmp sle i8 %i.bu, %i.bp
  %i.bw = icmp sle i8 %i.bp, %i.bu
  %i.bx = select i1 %i.d, i1 %i.bv, i1 %i.bw
  %spec.select = zext i1 %i.bx to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select
  store i8 %i.bp, ptr %i.by, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 1 ; 2 uses
  %exitcond31.not = icmp eq ptr %i.bz, %2
end_hunk_13
begin_hunk_14_@_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEENS_23QuantileScalarOperationILb1ES3_EEEEvRNS_6VectorERNS_18AggregateInputDataEm:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit
  %.06 = phi i64 [ %i.l, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8368 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8355 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.g) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8357 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIaEEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  br label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8375 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #34
  br label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit

_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateIaNS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateIaEESt14default_deleteIS2_EED2Ev.exit.i.i, %bb.c
  %i.l = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8438
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateIaEEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8439 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8442 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !8444
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEEEclEPS8_.exit.i.i, %_ZNSt6vectorISt4pairImaESaIS1_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImaEN6duckdb8SkipLessIS4_EEEESt14default_deleteIS8_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateIaED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !8445
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateIaED2Ev.exit

_ZN6duckdb19WindowQuantileStateIaED2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateIaED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateIaNS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8355
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !8446 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorIaEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !8446

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !8446
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8355 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8355
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorIaEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorIaEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorIaEEEclEPS2_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorIaEESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeIaEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8449, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit:  ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8451, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8452, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !8454

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !8455

_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedIaE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedIaEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dn, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit
  %.255 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.do, %_ZN6duckdb16QuantileIncludedIaEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !8449, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedIaEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !8451, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8456
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorIaE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorIaE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !8457
  br label %_ZN6duckdb14QuantileCursorIaE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !8458, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_14
begin_hunk_15_@_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEENS_23QuantileScalarOperationILb1ES4_EEEEvRNS_6VectorERNS_18AggregateInputDataEm:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit
  %.06 = phi i64 [ %i.l, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8698 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8685 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.g) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8687 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_10interval_tEEEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  br label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8705 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #34
  br label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit

_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEEEEEvRT_RNS_18AggregateInputDataE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, %bb.c
  %i.l = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8738
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_10interval_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8739 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8742 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !8744
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb10interval_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb10interval_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !8745
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_10interval_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_10interval_tENS_20QuantileStandardTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8685
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !8746 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_10interval_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !8746

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !8746
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8685 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8685
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_10interval_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_10interval_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_10interval_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_10interval_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_10interval_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8749, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8751, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8752, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !8754

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !8755

_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_10interval_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !8749, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_10interval_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !8751, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8756
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_10interval_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_10interval_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !8757
  br label %_ZN6duckdb14QuantileCursorINS_10interval_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !8758, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_15
begin_hunk_16_@_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRNS_6VectorERNS_18AggregateInputDataEm:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit
  %.06 = phi i64 [ %i.l, %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8856 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8843 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.g) #30
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8845 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_8string_tEEEEclEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j)
  br label %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8896 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #34
  br label %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit

_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19WindowQuantileStateINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit.i.i, %bb.c
  %i.l = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8920
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN6duckdb19WindowQuantileStateINS0_8string_tEEEEclEPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8921 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8924 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.g) #30, !inline_history !8926
  br label %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i

_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEEEclEPS9_.exit.i.i, %_ZNSt6vectorISt4pairImN6duckdb8string_tEESaIS3_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2208 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  br label %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN18duckdb_skiplistlib9skip_list8HeadNodeISt4pairImN6duckdb8string_tEENS4_8SkipLessIS6_EEEESt14default_deleteIS9_EED2Ev.exit.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !1991   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i3.i, label %_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2078 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(240) %i.n) #30, !inline_history !8927
  br label %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15WindowIndexTreeEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit

_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11FrameBoundsESaIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN6duckdb16QuantileSortTreeEEclEPS1_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %1) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb19WindowQuantileStateINS_8string_tEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(241) ptr @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE23GetOrCreateWindowCursorERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8843
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #31, !noalias !8928 ; 3 uses
  invoke void @_ZN6duckdb14QuantileCursorINS_8string_tEEC2ERKNS_20WindowPartitionInputE(ptr noundef nonnull align 8 dereferenceable(241) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !8928

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34, !noalias !8928
  resume { ptr, i32 } %i.d

_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !8843 ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8843
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #34
  br label %_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14QuantileCursorINS0_8string_tEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_14QuantileCursorINS_8string_tEEEJRKNS_20WindowPartitionInputEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb14QuantileCursorINS0_8string_tEEEEclEPS3_.exit.i.i.i.i.i, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(241) ptr @_ZNK6duckdb10unique_ptrINS_14QuantileCursorINS_8string_tEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17QuantileOperation9FrameSizeINS_8string_tEEEmRNS_16QuantileIncludedIT_EERKNS_6vectorINS_11FrameBoundsELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8931, !nonnull !235, !align !683
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit, label %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread

_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8933, !nonnull !235, !align !683
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8934, !range !234, !noundef !235
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !2217   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2217 ; 3 uses
  %.not4461 = icmp eq ptr %i.m, %i.o
  br i1 %.not4461, label %.loopexit, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.b
  %7 = ptrtoaddr ptr %i.o to i64
  %8 = ptrtoaddr ptr %i.m to i64
  %i.p = add i64 %7, -16
  %i.q = sub i64 %i.p, %8                         ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 48
  br i1 %min.iters.check, label %.lr.ph65.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.preheader
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.v = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v
  %i.w = getelementptr i8, ptr %i.m, i64 %i.v
  %next.gep96 = getelementptr i8, ptr %i.w, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !59 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec97 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec98 = load <4 x i64>, ptr %next.gep96, align 8, !tbaa !59 ; 2 uses
  %strided.vec99 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec100 = shufflevector <4 x i64> %wide.vec98, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.x = add <2 x i64> %strided.vec97, %vec.phi
  %i.y = add <2 x i64> %strided.vec100, %vec.phi95
  %i.z = sub <2 x i64> %i.x, %strided.vec         ; 2 uses
  %i.aa = sub <2 x i64> %i.y, %strided.vec99      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !8936

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aa, %i.z
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block
  %.063.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %i.ac, %middle.block ]
  %.sroa.039.062.ph = phi ptr [ %i.m, %.lr.ph65.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %.063 = phi i64 [ %i.ah, %.lr.ph65 ], [ %.063.ph, %.lr.ph65.preheader101 ]
  %.sroa.039.062 = phi ptr [ %i.ai, %.lr.ph65 ], [ %.sroa.039.062.ph, %.lr.ph65.preheader101 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1993
  %i.af = load i64, ptr %.sroa.039.062, align 8, !tbaa !1995
  %i.ag = add i64 %i.ae, %.063
  %i.ah = sub i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.039.062, i64 16 ; 2 uses
  %.not44 = icmp eq ptr %i.ai, %i.o
  br i1 %.not44, label %.loopexit, label %.lr.ph65, !llvm.loop !8937

_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread: ; preds = %bb.a, %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit
  %i.aj = load ptr, ptr %1, align 8, !tbaa !2217  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2217 ; 2 uses
  %.not56 = icmp eq ptr %i.aj, %i.al
  br i1 %.not56, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZN6duckdb16QuantileIncludedINS_8string_tEE8AllValidEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %.158 = phi i64 [ 0, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.057 = phi ptr [ %i.aj, %.lr.ph59 ], [ %i.ar, %._crit_edge ] ; 3 uses
  %i.an = load i64, ptr %.sroa.035.057, align 8, !tbaa !1995 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1993
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit, %bb.c
  %.2.lcssa = phi i64 [ %.158, %bb.c ], [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.035.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.al
  br i1 %.not, label %.loopexit, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit
  %.255 = phi i64 [ %i.dm, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit ], [ %.158, %bb.c ]
  %storemerge54 = phi i64 [ %i.dn, %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit ], [ %i.an, %bb.c ] ; 7 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !8931, !nonnull !235, !align !683
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph
  %i.au = lshr i64 %storemerge54, 6
  %i.av = and i64 %storemerge54, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN6duckdb16QuantileIncludedINS_8string_tEEclERKm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !8933, !nonnull !235, !align !683 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8938
  %i.bd = icmp ult i64 %storemerge54, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ule i64 %i.bf, %storemerge54
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %._ZN6duckdb14QuantileCursorINS_8string_tEE4SeekEm.exit_crit_edge.i.i, label %bb.d

._ZN6duckdb14QuantileCursorINS_8string_tEE4SeekEm.exit_crit_edge.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !8939
  br label %_ZN6duckdb14QuantileCursorINS_8string_tEE4SeekEm.exit.i.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !8940, !nonnull !235, !align !683
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 152 ; 2 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, i64 noundef %storemerge54, ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull align 8 dereferenceable(72) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2220 ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !2221 ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.b, align 8, !tbaa !59
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i22.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i.i22.not, label %.noexc.i31, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm.exit29, !prof !54

.noexc.i31:                                       ; preds = %bb.d
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bu, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 55, ptr %i.a, align 8, !tbaa !59
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ; 3 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.bv, ptr %2, align 8, !tbaa !22
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bv, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc32
  invoke void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23: ; preds = %.noexc.i31
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc32
  %.0.i.i.i26 = phi i1 [ false, %bb.e ], [ true, %.noexc32 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.cb) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i.i26, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21
  %.sink = phi ptr [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i23 ]
  call void @__cxa_free_exception(ptr %.sink) #30
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

end_hunk_16
