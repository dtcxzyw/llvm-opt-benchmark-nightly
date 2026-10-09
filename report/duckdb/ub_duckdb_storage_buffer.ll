Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_buffer?download=true
inline.NumInlined: 2020
inline.NumDeleted: 1034
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !144
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph, !llvm.loop !510

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !161 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !510

_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !158  ; 2 uses
  %i.p = urem i64 %i.e, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !157   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.p
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !163
  br label %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit

bb.d:                                             ; preds = %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !144    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !158  ; 4 uses
  %i.t = urem i64 %i.q, %i.s                      ; 5 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !157    ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !163  ; 7 uses
  %.not.i24 = icmp eq ptr %i.w, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !161  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !144
  %i.aa = icmp eq i64 %i.q, %i.z
  br i1 %i.aa, label %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t ; 2 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not18.i2656 = icmp eq ptr %i.ac, null
  br i1 %.not18.i2656, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.ad = icmp eq i64 %i.q, %i.ag
  br i1 %i.ad, label %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !16

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ae, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %.020.i, align 8, !tbaa !161 ; 4 uses
  %.not18.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !144 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.s
  %.not19.i = icmp eq i64 %i.ah, %i.t
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !16

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !16

_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit
  %i.ai = phi i64 [ %i.o, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.s, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %.pre40, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.u, %bb.f ] ; 3 uses
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.ae, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.p, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.t, %bb.f ] ; 3 uses
  %i.al = icmp eq ptr %.020, %i.aj
  %i.am = load ptr, ptr %.119, align 8, !tbaa !161 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.am, null           ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.h
  %i.ao = phi i64 [ %i.s, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ai, %bb.h ]
  %i.ap = phi ptr [ %i.w, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.aj, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.u, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ak, %bb.h ]
  %.0205870 = phi ptr [ %i.w, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1196068 = phi ptr [ %i.x, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176167 = phi i64 [ %i.t, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.017, %bb.h ]
  %i.ar = phi ptr [ %i.ab, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.an, %bb.h ]
  %i.as = phi ptr [ %i.ac, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !144
  %i.av = urem i64 %i.au, %i.ao                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.av, %.0176167
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.av
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !163
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.j, %bb.h
  %i.ax = phi ptr [ %i.w, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ap, %bb.j ], [ %i.aj, %bb.h ]
  %.0205871 = phi ptr [ %i.w, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.0205870, %bb.j ], [ %.020, %bb.h ]
  %.1196069 = phi ptr [ %i.x, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.1196068, %bb.j ], [ %.119, %bb.h ]
  %i.ay = phi ptr [ %i.ab, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ar, %bb.j ], [ %i.an, %bb.h ]
  %i.az = phi ptr [ null, %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.as, %bb.j ], [ null, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !160
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.ay, align 8, !tbaa !163
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i

bb.m:                                             ; preds = %_ZNKSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !144
  %i.be = urem i64 %i.bd, %i.ai                   ; 2 uses
  %.not17.i = icmp eq i64 %i.be, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.be
  store ptr %.020, ptr %i.bf, align 8, !tbaa !163
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i

_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i
  %.11959 = phi ptr [ %.119, %bb.o ], [ %.119, %bb.n ], [ %.119, %bb.m ], [ %.1196069, %bb.l ], [ %.1196068, %bb.i ] ; 3 uses
  %.02057 = phi ptr [ %.020, %bb.o ], [ %.020, %bb.n ], [ %.020, %bb.m ], [ %.0205871, %bb.l ], [ %.0205870, %bb.i ]
  %i.bg = load ptr, ptr %.11959, align 8, !tbaa !161
  store ptr %i.bg, ptr %.02057, align 8, !tbaa !161
  %i.bh = getelementptr inbounds nuw i8, ptr %.11959, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !111 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS8_15_Hash_node_baseEPNS8_10_Hash_nodeIS6_Lb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 3 uses
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !33 ; 2 uses
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bn = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bl, %bb.q ], [ %i.bn, %bb.r ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.s, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS8_15_Hash_node_baseEPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #30, !inline_history !511
  br label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS8_15_Hash_node_baseEPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS8_15_Hash_node_baseEPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEEm.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.s
  tail call void @_ZdlPv(ptr noundef nonnull %.11959) #33
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !162
  %i.bt = add i64 %i.bs, -1
  store i64 %i.bt, ptr %i.a, align 8, !tbaa !162
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS8_15_Hash_node_baseEPNS8_10_Hash_nodeIS6_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNS8_15_Hash_node_baseEPNS8_10_Hash_nodeIS6_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN17duckdb_moodycamel7details9thread_idEvE1x)
  %i.c = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -49064778989728563         ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -4265267296055464877       ; 2 uses
  %i.j = lshr i64 %i.i, 33
  %i.k = xor i64 %i.j, %i.i                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 7 uses
  %.not155 = icmp eq ptr %i.m, null
  br i1 %.not155, label %.thread135, label %.preheader147

.preheader147:                                    ; preds = %bb.a, %bb.g
  %.093156 = phi ptr [ %i.aj, %bb.g ], [ %i.m, %bb.a ] ; 4 uses
  %i.n = load i64, ptr %.093156, align 8, !tbaa !229
  %i.o = add i64 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.093156, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !230
  br label %bb.b

bb.b:                                             ; preds = %.preheader147, %bb.f
  %.086 = phi i64 [ %i.ah, %bb.f ], [ %i.k, %.preheader147 ]
  %i.r = and i64 %i.o, %.086                      ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load atomic i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.c
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !225  ; 3 uses
  %.not109 = icmp eq ptr %.093156, %i.m
  br i1 %.not109, label %.thread138, label %.preheader146

.preheader146:                                    ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.pre163 = load i64, ptr %i.m, align 8, !tbaa !229
  %.pre165 = load ptr, ptr %i.x, align 8, !tbaa !230
  br label %bb.d

bb.d:                                             ; preds = %.preheader146, %bb.e
  %1 = phi ptr [ %2, %bb.e ], [ %.pre165, %.preheader146 ] ; 2 uses
  %.187.a = phi i64 [ %3, %bb.e ], [ %.pre163, %.preheader146 ] ; 2 uses
  %.187 = phi i64 [ %i.af, %bb.e ], [ %i.k, %.preheader146 ]
  %i.y = add i64 %.187.a, -1
  %i.z = and i64 %i.y, %.187                      ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.z ; 2 uses
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit116, label %bb.e

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit116: ; preds = %bb.d
  %i.ad = cmpxchg ptr %i.aa, i64 0, i64 %i.c monotonic monotonic, align 8
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %.pre = load i64, ptr %i.m, align 8, !tbaa !229
  %.pre164 = load ptr, ptr %i.x, align 8, !tbaa !230 ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit116
  %2 = phi ptr [ %1, %bb.d ], [ %.pre164, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit116 ]
  %3 = phi i64 [ %.187.a, %bb.d ], [ %.pre, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit116 ]
  %i.af = add i64 %i.z, 1
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.ag = icmp eq i64 %i.t, 0
  %i.ah = add i64 %i.r, 1
  br i1 %i.ag, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.093156, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !231 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.thread135, label %.preheader147, !llvm.loop !512

bb.h:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit116
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.pre164, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.w, ptr %i.al, align 8, !tbaa !225
  br label %.thread138

.thread135:                                       ; preds = %bb.g, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.w, %.thread135
  %.094 = phi ptr [ %i.m, %.thread135 ], [ %i.cz, %bb.w ] ; 3 uses
  %i.aq = load i64, ptr %.094, align 8, !tbaa !229
  %i.ar = lshr i64 %i.aq, 1
  %.not110 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not110, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.at = load atomic ptr, ptr %i.l acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !229 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not111 = icmp ult i64 %i.ao, %i.av
  br i1 %.not111, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.k, %.preheader
  %.085.in = phi i64 [ %.085, %.preheader ], [ %i.au, %bb.k ] ; 3 uses
  %.085 = shl i64 %.085.in, 1                     ; 6 uses
  %i.aw = and i64 %.085.in, 9223372036854775807
  %.not112 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not112, label %bb.l, label %.preheader, !llvm.loop !513

bb.l:                                             ; preds = %.preheader
  %i.ax = shl i64 %.085.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #35 ; 7 uses
  %.not114 = icmp eq ptr %i.az, null
  br i1 %.not114, label %.thread140, label %bb.m

.thread140:                                       ; preds = %bb.l
  %i.ba = atomicrmw sub ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread138

bb.m:                                             ; preds = %bb.l
  store i64 %.085, ptr %i.az, align 8, !tbaa !229
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 0, %i.bc
  %i.be = and i64 %i.bd, 7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 6 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !230
  %.not113157 = icmp eq i64 %.085, 0
  br i1 %.not113157, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %xtraiter = and i64 %.085, 2                    ; 2 uses
  %i.bh = icmp ult i64 %.085, 4
  br i1 %i.bh, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.085, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.084158 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !230
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.084158 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr null, ptr %i.bk, align 8, !tbaa !225
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !230
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.084158 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr null, ptr %i.bo, align 8, !tbaa !225
  store atomic i64 0, ptr %i.bn monotonic, align 8
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !230
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.084158 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr null, ptr %i.bs, align 8, !tbaa !225
  store atomic i64 0, ptr %i.br monotonic, align 8
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !230
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.084158 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store ptr null, ptr %i.bw, align 8, !tbaa !225
  store atomic i64 0, ptr %i.bv monotonic, align 8
  %i.bx = add nuw i64 %.084158, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !514

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.084158.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod182 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.084158.epil = phi i64 [ %i.cb, %.lr.ph.epil ], [ %.084158.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !230
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %.084158.epil ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !225
  store atomic i64 0, ptr %i.bz monotonic, align 8
  %i.cb = add nuw i64 %.084158.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !515

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.cc, align 8, !tbaa !231
  store atomic ptr %i.az, ptr %i.l release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %._crit_edge
  %.296.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.k ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.j, %bb.i
  %.296 = phi ptr [ %.094, %bb.j ], [ %.094, %bb.i ], [ %.296.ph, %.sink.split ] ; 4 uses
  %i.cd = load i64, ptr %.296, align 8, !tbaa !229 ; 2 uses
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = lshr i64 %i.cd, 2
  %i.cg = add nuw i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.ao, %i.cg
  br i1 %i.ch, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ci = call noundef ptr @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEbRb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = atomicrmw sub ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !294, !range !151, !noundef !67
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cn = atomicrmw sub ptr %i.am, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %.296, i64 8 ; 2 uses
  %.pre167 = load i64, ptr %.296, align 8, !tbaa !229
  %.pre169 = load ptr, ptr %i.co, align 8, !tbaa !230
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %4 = phi ptr [ %.pre169, %bb.s ], [ %5, %bb.u ] ; 2 uses
  %.0.a = phi i64 [ %.pre167, %bb.s ], [ %6, %bb.u ] ; 2 uses
  %.0 = phi i64 [ %i.k, %bb.s ], [ %i.cy, %bb.u ]
  %i.cp = add i64 %.0.a, -1
  %i.cq = and i64 %i.cp, %.0                      ; 3 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.cq ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr monotonic, align 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, label %bb.u

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %bb.t
  %i.cu = cmpxchg ptr %i.cr, i64 0, i64 %i.c monotonic monotonic, align 8
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  %.pre166 = load i64, ptr %.296, align 8, !tbaa !229
  %.pre168 = load ptr, ptr %i.co, align 8, !tbaa !230 ; 2 uses
  br i1 %i.cv, label %.thread143, label %bb.u

.thread143:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.pre168, i64 %i.cq
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.ci, ptr %i.cx, align 8, !tbaa !225
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %5 = phi ptr [ %4, %bb.t ], [ %.pre168, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ]
  %6 = phi i64 [ %.0.a, %bb.t ], [ %.pre166, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ]
  %i.cy = add i64 %i.cq, 1
  br label %bb.t

bb.v:                                             ; preds = %.thread143, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.thread138

bb.w:                                             ; preds = %bb.n
  %i.cz = load atomic ptr, ptr %i.l acquire, align 8
  br label %bb.i, !llvm.loop !516

.thread138:                                       ; preds = %bb.h, %bb.c, %.thread140, %bb.v
  %.9 = phi ptr [ %i.w, %bb.h ], [ %i.ci, %bb.v ], [ null, %.thread140 ], [ %i.w, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNS4_14AllocationModeE0ES2_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !295
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.k = call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNS4_14AllocationModeE0EEEbRPNS5_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !296  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !242  ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !244  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i ], [ %i.w, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 816 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i, !llvm.loop !23

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 824 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %i.ak = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %i.al = icmp eq i32 %i.ak, -2147483647
  br i1 %i.al, label %bb.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.am, %bb.i ], [ %i.ap, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.an = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.ao = extractvalue { ptr, i1 } %i.an, 1
  br i1 %i.ao, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = extractvalue { ptr, i1 } %i.an, 0
  %i.aq = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i, !llvm.loop !24

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %i.as = atomicrmw sub ptr %i.x, i32 2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE8FreeListINS4_5BlockEE28add_knowing_refcount_is_zeroEPS6_.exit.i.i.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.at = call noalias noundef dereferenceable_or_null(840) ptr @malloc(i64 noundef 840) #35 ; 7 uses
  %.not.i9.i = icmp eq ptr %i.at, null
  br i1 %.not.i9.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 768
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 816
  store i32 0, ptr %i.av, align 4, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 824
  store ptr null, ptr %i.aw, align 8, !tbaa !222
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 832
  store i8 0, ptr %i.ax, align 8, !tbaa !243
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 833
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ay, align 1, !tbaa !246
  br label %.thread

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit: ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.az = getelementptr inbounds nuw [840 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.az, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit ], [ %i.at, %bb.l ], [ %.025.i.i.i, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i20, i64 776
  store atomic i64 0, ptr %i.ba monotonic, align 8
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store atomic ptr %.0.i20, ptr %i.bc monotonic, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.bd, align 8, !tbaa !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.m

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, -1
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !302
  %i.bk = add i64 %i.bj, -1
  %i.bl = and i64 %i.bk, %i.bi
  store atomic i64 %i.bl, ptr %i.bg monotonic, align 8
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !298
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store atomic ptr null, ptr %i.bn monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bo = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.e ; 2 uses
  %i.bq = load <2 x ptr>, ptr %1, align 8, !tbaa !45
  store <2 x ptr> %i.bq, ptr %i.bp, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !195
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !195
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge

.critedge:                                        ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %bb.m
  %.3 = phi i1 [ true, %bb.m ], [ false, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS4_14AllocationModeE0EEEPNS4_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
end_hunk_0
