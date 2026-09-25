Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_http?download=true
inline.NumInlined: 5857
inline.NumDeleted: 2212
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS5_S5_EEESt17_Rb_tree_iteratorIS8_EDpOT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.r, ptr %i.p, align 8, !tbaa !59
  %i.y = load i64, ptr %i.s, align 8, !tbaa !112
  store i64 %i.y, ptr %i.q, align 8, !tbaa !112
  %.phi.trans.insert5.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre6.i.i = load i64, ptr %.phi.trans.insert5.i.i, align 8, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i, %bb.c
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre6.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !123
  store ptr %i.s, ptr %2, align 8, !tbaa !59
  store i64 0, ptr %i.aa, align 8, !tbaa !123
  store i8 0, ptr %i.s, align 8, !tbaa !112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.078.i = load ptr, ptr %i.ac, align 8, !tbaa !271 ; 2 uses
  %.not9.i = icmp eq ptr %.078.i, null
  br i1 %.not9.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.0710.i = phi ptr [ %.07.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.078.i, %bb.d ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0710.i, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !123 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.m) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !59
  %i.aj = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph.i
  %i.ak = sub i64 %i.m, %i.af
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.al = icmp slt i32 %.0.i.i.i.i, 0
  %.in.v.i = select i1 %i.al, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.0710.i, i64 %.in.v.i
  %.07.i = load ptr, ptr %.in.i, align 8, !tbaa !271 ; 2 uses
  %.not.i = icmp eq ptr %.07.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !573

.loopexit:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.am = icmp eq ptr %.0710.i, %i.ad
  br i1 %i.am, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %.0710.i, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !123 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.m) ; 2 uses
  %i.ap = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59
  %i.as = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.ar, i64 noundef %.sroa.speculated.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.at = sub i64 %i.m, %i.ao
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.as, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.au = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.d, %.loopexit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %.0.lcssa.i14 = phi ptr [ %.0710.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %.0710.i, %.loopexit ], [ %i.ad, %bb.d ]
  %i.av = phi i1 [ %i.au, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %.loopexit ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.av, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.lcssa.i14, ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !263
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !263
  ret ptr %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !254
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.017 = load ptr, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  %.not18 = icmp eq ptr %.sroa.06.017, null
  br i1 %.not18, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us
  %.sroa.06.019.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us ], [ %.sroa.06.017, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.019.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.019.us, align 8, !tbaa !69 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !14

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.019 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ], [ %.sroa.06.017, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !112
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !112
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !112
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !112
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.06.0 = load ptr, ptr %.sroa.06.019, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !14

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !112
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !112
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul nuw i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !112
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !112
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !112
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !112
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, %bb.d
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !71 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !132 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !132 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !16

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !123
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !112
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !112
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !16

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %bb.k, %.loopexit.i.i, %bb.j, %bb.h, %bb.g, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %bb.c, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.019, %bb.c ], [ %.sroa.06.019.us, %.lr.ph.split.us ], [ null, %bb.h ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ %.0.i.i, %bb.j ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ null, %.loopexit.i.i ], [ null, %bb.k ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %i.c = icmp eq i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !123
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  %.not6.i.i.i.i = icmp samesign eq i64 %i.e, 0
  br i1 %.not6.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.k, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.l = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !112
  %i.m = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !112
  %i.n = zext i8 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !112
  %i.q = zext i8 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !112
  %i.t = icmp eq i8 %i.p, %i.s                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp ne ptr %i.u, %i.j
  %or.cond.not = select i1 %i.t, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i ]
  ret i1 %i.w
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN14duckdb_httplib6detail16get_header_valueERKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS0_11case_ignore4hashENS8_8equal_toESaISt4pairIKS7_S7_EEERSC_PKcm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !123  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 4
  br i1 %i.e, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %i.b, -4
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr69.i.i.i = phi i32 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.z, %tailrecurse.i.i.i ]
  %.tr7.i.i.i = phi ptr [ %i.d, %tailrecurse.i.preheader.i.i.new ], [ %i.u, %tailrecurse.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.3, %tailrecurse.i.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i, i64 1
  %i.g = mul i32 %.tr69.i.i.i, 33
  %i.h = load i8, ptr %.tr7.i.i.i, align 1, !tbaa !112
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i, i64 2
  %i.l = mul nuw i32 %i.j, 33
  %i.m = load i8, ptr %i.f, align 1, !tbaa !112
  %i.n = zext i8 %i.m to i32
  %i.o = xor i32 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i, i64 3
  %i.q = mul nuw i32 %i.o, 33
  %i.r = load i8, ptr %i.k, align 1, !tbaa !112
  %i.s = zext i8 %i.r to i32
  %i.t = xor i32 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i, i64 4 ; 2 uses
  %i.v = mul nuw i32 %i.t, 33
  %i.w = and i32 %i.v, 67108863
  %i.x = load i8, ptr %i.p, align 1, !tbaa !112
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.w, %i.y                       ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, label %tailrecurse.i.i.i

_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr69.i.i.i.epil.init = phi i32 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.z, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %.tr7.i.i.i.epil.init = phi ptr [ %i.d, %tailrecurse.i.preheader.i.i ], [ %i.u, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %tailrecurse.i.i.i.epil

tailrecurse.i.i.i.epil:                           ; preds = %tailrecurse.i.i.i.epil, %tailrecurse.i.i.i.epil.preheader
  %.tr69.i.i.i.epil = phi i32 [ %i.af, %tailrecurse.i.i.i.epil ], [ %.tr69.i.i.i.epil.init, %tailrecurse.i.i.i.epil.preheader ]
  %.tr7.i.i.i.epil = phi ptr [ %i.aa, %tailrecurse.i.i.i.epil ], [ %.tr7.i.i.i.epil.init, %tailrecurse.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %tailrecurse.i.i.i.epil ], [ 0, %tailrecurse.i.i.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.epil, i64 1
  %i.ab = mul i32 %.tr69.i.i.i.epil, 33
  %i.ac = and i32 %i.ab, 67108863
  %i.ad = load i8, ptr %.tr7.i.i.i.epil, align 1, !tbaa !112
  %i.ae = zext i8 %i.ad to i32
  %i.af = xor i32 %i.ac, %i.ae                    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %tailrecurse.i.i.i.epil, !llvm.loop !574

_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %tailrecurse.i.i.i.epil, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa
  %.lcssa43 = phi i32 [ %i.z, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ], [ %i.af, %tailrecurse.i.i.i.epil ]
  switch i32 %.lcssa43, label %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i32 16923016, label %bb.b
    i32 16377058, label %bb.b
    i32 49322369, label %bb.b
    i32 48576171, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.102, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.103)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.ag) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
          to label %bb.o unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.al) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aj) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.aq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn

_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.a
  %i.at = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 8 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.03.010.i.i = load ptr, ptr %i.at, align 8, !tbaa !69 ; 2 uses
  %.not211.i.i = icmp eq ptr %.sroa.03.010.i.i, null
  br i1 %.not211.i.i, label %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !132
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE14_M_node_equalsERKNS_16_Hash_node_valueIS9_Lb1EEESO_.exit.i.i, %.lr.ph.i.i
  %.sroa.03.012.i.i = phi ptr [ %.sroa.03.010.i.i, %.lr.ph.i.i ], [ %.sroa.03.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE14_M_node_equalsERKNS_16_Hash_node_valueIS9_Lb1EEESO_.exit.i.i ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i.i, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !132
  %i.bb = icmp eq i64 %i.aw, %i.ba
  br i1 %i.bb, label %bb.j, label %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !123 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.012.i.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !123
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !59 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %.not6.i.i.i.i.i.i.i = icmp samesign eq i64 %i.bc, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE14_M_node_equalsERKNS_16_Hash_node_valueIS9_Lb1EEESO_.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.k
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.l, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.l ], [ %i.bi, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.l ], [ %i.bg, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.bj = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.bk = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.bl = zext i8 %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !112
  %i.bo = zext i8 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !112
  %i.br = icmp eq i8 %i.bn, %i.bq
  br i1 %i.br, label %bb.l, label %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE14_M_node_equalsERKNS_16_Hash_node_valueIS9_Lb1EEESO_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE14_M_node_equalsERKNS_16_Hash_node_valueIS9_Lb1EEESO_.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.03.0.i.i = load ptr, ptr %.sroa.03.012.i.i, align 8, !tbaa !69 ; 2 uses
  %.not2.i.i = icmp eq ptr %.sroa.03.0.i.i, null
  br i1 %.not2.i.i, label %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit, label %bb.i, !llvm.loop !17

_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit: ; preds = %bb.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE14_M_node_equalsERKNS_16_Hash_node_valueIS9_Lb1EEESO_.exit.i.i, %.lr.ph.i.i.i.i.i.i.i, %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %.preheader.i.i
  %.sroa.3.0.i.i = phi ptr [ null, %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.sroa.03.012.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ null, %.preheader.i.i ], [ %.sroa.03.012.i.i, %bb.j ], [ %.sroa.03.012.i.i, %bb.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE14_M_node_equalsERKNS_16_Hash_node_valueIS9_Lb1EEESO_.exit.i.i ]
  %.not1.i = icmp eq i64 %3, 0
  br i1 %.not1.i, label %_ZSt9__advanceINSt8__detail20_Node_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb0ELb1EEElEvRT_T0_St18input_iterator_tag.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit
  %xtraiter46 = and i64 %3, 7                     ; 2 uses
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02.i.prol = phi i64 [ %i.bv, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %i.bu = phi ptr [ %i.bw, %.lr.ph.i.prol ], [ %i.at, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bv = add nsw i64 %.02.i.prol, -1             ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !69 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter46
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !575

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bw, %.lr.ph.i.prol ]
  %.02.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.bv, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %i.at, %.lr.ph.i.preheader ], [ %i.bw, %.lr.ph.i.prol ]
  %i.bx = icmp ult i64 %3, 8
  br i1 %i.bx, label %_ZSt9__advanceINSt8__detail20_Node_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb0ELb1EEElEvRT_T0_St18input_iterator_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02.i = phi i64 [ %i.cg, %.lr.ph.i ], [ %.02.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.by = phi ptr [ %i.ch, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !69
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !69
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !69
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !69
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !69
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !69
  %i.cg = add nsw i64 %.02.i, -8                  ; 2 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !69 ; 2 uses
  %.not.i.7 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.7, label %_ZSt9__advanceINSt8__detail20_Node_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb0ELb1EEElEvRT_T0_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !18

_ZSt9__advanceINSt8__detail20_Node_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb0ELb1EEElEvRT_T0_St18input_iterator_tag.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZNKSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE11equal_rangeERSC_.exit ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ch, %.lr.ph.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %.sroa.3.0.i.i
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt9__advanceINSt8__detail20_Node_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb0ELb1EEElEvRT_T0_St18input_iterator_tag.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !59
  br label %bb.n

bb.n:                                             ; preds = %_ZSt9__advanceINSt8__detail20_Node_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb0ELb1EEElEvRT_T0_St18input_iterator_tag.exit, %bb.m
  %.010 = phi ptr [ %i.cj, %bb.m ], [ %2, %_ZSt9__advanceINSt8__detail20_Node_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb0ELb1EEElEvRT_T0_St18input_iterator_tag.exit ]
  ret ptr %.010

bb.o:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !123
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !59
  %i.o = load i64, ptr %i.i, align 8, !tbaa !112
  store i64 %i.o, ptr %i.g, align 8, !tbaa !112
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !123
  store ptr %i.i, ptr %i.f, align 8, !tbaa !59
  store i64 0, ptr %i.q, align 8, !tbaa !123
  store i8 0, ptr %i.i, align 8, !tbaa !112
  ret void
}

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !254
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.017 = load ptr, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  %.not18 = icmp eq ptr %.sroa.06.017, null
  br i1 %.not18, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us
  %.sroa.06.019.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us ], [ %.sroa.06.017, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.019.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.019.us, align 8, !tbaa !69 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !576

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.019 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ], [ %.sroa.06.017, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !112
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !112
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !112
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !112
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.06.0 = load ptr, ptr %.sroa.06.019, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !576

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !112
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !112
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul nuw i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !112
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !112
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !112
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !112
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, %bb.d
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !71 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !132 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !132 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !16

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !123
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !112
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !112
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !16

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %bb.k, %.loopexit.i.i, %bb.j, %bb.h, %bb.g, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %bb.c, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.019, %bb.c ], [ %.sroa.06.019.us, %.lr.ph.split.us ], [ null, %bb.h ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ %.0.i.i, %bb.j ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ null, %.loopexit.i.i ], [ null, %bb.k ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrIN14duckdb_httplib6detail10compressorESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !276    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIN14duckdb_httplib6detail10compressorESt14default_deleteIS3_ELb1EE13AssertNotNullEb.exit, !prof !113

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrIN14duckdb_httplib6detail10compressorESt14default_deleteIS3_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14duckdb_httplib8DataSinkC2Ev(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJRS7_SO_EEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJRS7_SP_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !282
  %i.j = invoke { ptr, i64 } @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_compute_hash_codeENSA_20_Node_const_iteratorIS8_Lb0ELb1EEERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJRS7_SP_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSP_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.k, i64 noundef %i.l, ptr noundef nonnull %i.a)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.g

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret ptr %i.m

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJRS7_SP_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_compute_hash_codeENSA_20_Node_const_iteratorIS8_Lb0ELb1EEERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !254
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread29

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123
  %.fr = freeze i64 %i.d                          ; 3 uses
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us
  %.sroa.018.044.us = phi ptr [ %i.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us ], [ %1, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.044.us, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !123
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us: ; preds = %.preheader.split.us
  %i.j = load ptr, ptr %.sroa.018.044.us, align 8, !tbaa !69 ; 2 uses
  %.not33.us = icmp eq ptr %i.j, null
  br i1 %.not33.us, label %.thread, label %.preheader.split.us, !llvm.loop !604

.preheader.split:                                 ; preds = %.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.018.044 = phi ptr [ %i.aa, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ], [ %1, %.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.018.044, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.preheader.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.018.044, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.e, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !112
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !112
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !112
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !112
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i.i.i.i, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.preheader.split
  %i.aa = load ptr, ptr %.sroa.018.044, align 8, !tbaa !69 ; 2 uses
  %.not33 = icmp eq ptr %i.aa, null
  br i1 %.not33, label %.thread, label %.preheader.split, !llvm.loop !604

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.046 = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 3 uses
  %.not3447 = icmp eq ptr %.sroa.0.046, %1
  br i1 %.not3447, label %.thread29, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !123
  %.fr50 = freeze i64 %i.ad                       ; 3 uses
  %.not6.i.i.i.i5 = icmp eq i64 %.fr50, 0
  br i1 %.not6.i.i.i.i5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us
  %.sroa.0.048.us = phi ptr [ %.sroa.0.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us ], [ %.sroa.0.046, %.lr.ph ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.048.us, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !123
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us: ; preds = %.lr.ph.split.us
  %.sroa.0.0.us = load ptr, ptr %.sroa.0.048.us, align 8, !tbaa !69 ; 2 uses
  %.not34.us = icmp eq ptr %.sroa.0.0.us, %1
  br i1 %.not34.us, label %.thread29, label %.lr.ph.split.us, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11
  %.sroa.0.048 = phi ptr [ %.sroa.0.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11 ], [ %.sroa.0.046, %.lr.ph ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !123
  %i.aj = icmp eq i64 %.fr50, %i.ai
  br i1 %i.aj, label %.lr.ph.i.preheader.i.i.i6, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11

.lr.ph.i.preheader.i.i.i6:                        ; preds = %.lr.ph.split
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.048, i64 8
  %i.al = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.fr50
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.d, %.lr.ph.i.preheader.i.i.i6
  %.sroa.0.08.i.i.i.i8 = phi ptr [ %i.ay, %bb.d ], [ %i.an, %.lr.ph.i.preheader.i.i.i6 ] ; 2 uses
  %.sroa.03.07.i.i.i.i9 = phi ptr [ %i.ax, %bb.d ], [ %i.al, %.lr.ph.i.preheader.i.i.i6 ] ; 2 uses
  %i.ao = load i8, ptr %.sroa.03.07.i.i.i.i9, align 1, !tbaa !112
  %i.ap = load i8, ptr %.sroa.0.08.i.i.i.i8, align 1, !tbaa !112
  %i.aq = zext i8 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !112
  %i.at = zext i8 %i.ap to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !112
  %i.aw = icmp eq i8 %i.as, %i.av
  br i1 %i.aw, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11

bb.d:                                             ; preds = %.lr.ph.i.i.i.i7
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i9, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i8, i64 1
  %.not.i.i.i.i10 = icmp eq ptr %i.ax, %i.am
  br i1 %.not.i.i.i.i10, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split, label %.lr.ph.i.i.i.i7, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11: ; preds = %.lr.ph.i.i.i.i7, %.lr.ph.split
  %.sroa.0.0 = load ptr, ptr %.sroa.0.048, align 8, !tbaa !69 ; 2 uses
  %.not34 = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not34, label %.thread29, label %.lr.ph.split, !llvm.loop !20

.thread29:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us, %.thread, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !123 ; 5 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %.thread29
  %i.bc = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %xtraiter = and i64 %i.ba, 1
  %i.bd = icmp eq i64 %i.ba, 1
  br i1 %i.bd, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %i.ba, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.bu, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.bc, %tailrecurse.i.preheader.i.i.new ], [ %i.bm, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.bf = mul i64 %.tr811.i.i.i, 33
  %i.bg = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !112
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !112
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.bn = mul nuw i64 %i.bl, 33
  %i.bo = and i64 %i.bn, 288230376151711743
  %i.bp = load i8, ptr %i.be, align 1, !tbaa !112
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !112
  %i.bt = zext i8 %i.bs to i64
  %i.bu = xor i64 %i.bo, %i.bt                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split: ; preds = %bb.c, %.preheader.split.us, %bb.d, %.lr.ph.split.us
  %.sroa.0.040.sink = phi ptr [ %.sroa.018.044.us, %.preheader.split.us ], [ %.sroa.0.048, %bb.d ], [ %.sroa.0.048.us, %.lr.ph.split.us ], [ %.sroa.018.044, %bb.c ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.040.sink, i64 72
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !132
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.bu, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.bc, %tailrecurse.i.preheader.i.i ], [ %i.bm, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ]
  %lcmp.mod90 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.bx = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.by = and i64 %i.bx, 288230376151711743
  %i.bz = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !112
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !112
  %i.cd = zext i8 %i.cc to i64
  %i.ce = xor i64 %i.by, %i.cd
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split, %.thread29
  %.sroa.026.3 = phi ptr [ %1, %.thread29 ], [ %.sroa.0.040.sink, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split ], [ %1, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ], [ %1, %tailrecurse.i.i.i.epil.preheader ]
  %.sroa.4.3 = phi i64 [ 0, %.thread29 ], [ %i.bw, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split ], [ %i.bu, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.loopexit.unr-lcssa ], [ %i.ce, %tailrecurse.i.i.i.epil.preheader ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.026.3, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.3, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSP_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !252
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !254
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_rehashEmRKm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !252
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
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %2, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !71
  %i.u = urem i64 %2, %i.t                        ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !202

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_rehashEmRKm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = tail call noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %i.v)
  br i1 %i.w, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread42.thread, label %bb.i

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread42.thread: ; preds = %bb.h
  %i.x = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.x, ptr %3, align 8, !tbaa !69
  store ptr %3, ptr %1, align 8, !tbaa !69
  br label %bb.q

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_rehashEmRKm.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !130 ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %.fr.i = freeze i64 %i.ad                       ; 3 uses
  %i.ae = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.fr.i
  %.not6.i.i.i.i.i.i = icmp eq i64 %.fr.i, 0
  %i.ag = load i64, ptr %i.d, align 8             ; 2 uses
  %.phi.trans.insert28.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.pre29.i = load i64, ptr %.phi.trans.insert28.i, align 8, !tbaa !132 ; 2 uses
  br i1 %.not6.i.i.i.i.i.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.j, %bb.m
  %i.ah = phi i64 [ %i.ao, %bb.m ], [ %.pre29.i, %bb.j ]
  %.015.us.i = phi ptr [ %.0.us.i, %bb.m ], [ %i.aa, %bb.j ]
  %.0.us.i = phi ptr [ %i.am, %bb.m ], [ %i.ab, %bb.j ] ; 4 uses
  %i.ai = icmp eq i64 %2, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split.us.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !123
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread42, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.us.i
  %i.am = load ptr, ptr %.0.us.i, align 8, !tbaa !69 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.am, null
  br i1 %.not18.us.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !132 ; 2 uses
  %i.ap = urem i64 %i.ao, %i.ag
  %.not19.us.i = icmp eq i64 %i.ap, %i.u
  br i1 %.not19.us.i, label %.split.us.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread, !llvm.loop !16

.split.i:                                         ; preds = %bb.j, %bb.p
  %i.aq = phi i64 [ %i.bk, %bb.p ], [ %.pre29.i, %bb.j ]
  %.015.i = phi ptr [ %.0.i, %bb.p ], [ %i.aa, %bb.j ]
  %.0.i = phi ptr [ %i.bi, %bb.p ], [ %i.ab, %bb.j ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.as = icmp eq i64 %2, %i.aq
  br i1 %i.as, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %.split.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !123
  %i.av = icmp eq i64 %.fr.i, %i.au
  br i1 %i.av, label %.lr.ph.i.preheader.i.i.i.i.i, label %.loopexit.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.n
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %.lr.ph.i.preheader.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.bh, %bb.o ], [ %i.aw, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.o ], [ %i.ae, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ax = load i8, ptr %.sroa.03.07.i.i.i.i.i.i, align 1, !tbaa !112
  %i.ay = load i8, ptr %.sroa.0.08.i.i.i.i.i.i, align 1, !tbaa !112
  %i.az = zext i8 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !112
  %i.bc = zext i8 %i.ay to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !112
  %i.bf = icmp eq i8 %i.bb, %i.be
  br i1 %i.bf, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread42, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %bb.n, %.split.i
  %i.bi = load ptr, ptr %.0.i, align 8, !tbaa !69 ; 3 uses
  %.not18.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS7_m.exit.thread, label %bb.p

end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2IPKS5_EET_SN_mRKSD_RKSC_RKS6_St17integral_constantIbLb1EE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !289
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !113

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !290
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !113

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc10.i unwind label %bb.g ; 2 uses

.noexc10.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc10.i, %bb.d
  %.0.i.i = phi ptr [ %i.a, %bb.d ], [ %i.m, %.noexc10.i ]
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !288
  store i64 %i.f, ptr %i.b, align 8, !tbaa !289
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %common.resume

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %0, ptr %7, align 8, !tbaa !292
  %.not7.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit, %.noexc
  %.08.i.i = phi ptr [ %i.p, %.noexc ], [ %1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit ] ; 3 uses
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !625

.loopexit:                                        ; preds = %.noexc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br label %common.resume
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, duckdb_httplib::detail::case_ignore::equal_to, duckdb_httplib::detail::case_ignore::hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !293
  %.not.not = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.023.041 = load ptr, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  %.not42 = icmp eq ptr %.sroa.023.041, null
  br i1 %.not42, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us
  %.sroa.023.043.us = phi ptr [ %.sroa.023.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.sroa.023.041, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.023.043.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.023.0.us = load ptr, ptr %.sroa.023.043.us, align 8, !tbaa !69 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.023.0.us, null
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us, !llvm.loop !626

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.023.043 = phi ptr [ %.sroa.023.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ %.sroa.023.041, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !112
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !112
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !112
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !112
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.023.0 = load ptr, ptr %.sroa.023.043, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %.sroa.023.0, null
  br i1 %.not, label %.thread, label %.lr.ph.split, !llvm.loop !626

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %.thread
  %i.ad = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !112
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !112
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul nuw i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !112
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !112
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !112
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !112
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, %.thread
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %.thread ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !289 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 4 uses
  br i1 %.not.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !288
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !132 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !132 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !627

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !123
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !112
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !112
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !627

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit: ; preds = %bb.j
  %.not18 = icmp eq ptr %.0.i.i, null
  br i1 %.not18, label %.critedge, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30

.critedge:                                        ; preds = %bb.k, %.loopexit.i.i, %bb.g, %bb.h, %bb.d, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cs = load ptr, ptr %3, align 8, !tbaa !629, !nonnull !158
  %i.ct = tail call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  store ptr %0, ptr %4, align 8, !tbaa !630
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !296
  %i.cv = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bg, i64 noundef %.tr8.lcssa.i.i.i, ptr noundef %i.ct, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.l

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30

bb.l:                                             ; preds = %.critedge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.cw

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30: ; preds = %bb.c, %.lr.ph.split.us, %bb.f, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.1 = phi ptr [ %i.cv, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.023.043.us, %.lr.ph.split.us ], [ %.0.us.i.i, %bb.f ], [ %.0.i.i, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit ], [ %.sroa.023.043, %bb.c ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %.lr.ph.split.us ], [ 0, %bb.f ], [ 0, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !252
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !289
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !293
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !252
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
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !69 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !132
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !287
  store ptr %i.o, ptr %.02530, align 8, !tbaa !69
  store ptr %.02530, ptr %i.g, align 8, !tbaa !287
  store ptr %i.g, ptr %i.m, align 8, !tbaa !130
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !69
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !130
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !69
  store ptr %i.r, ptr %.02530, align 8, !tbaa !69
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !130
  store ptr %.02530, ptr %i.s, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !631

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !288    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !289
  store ptr %.0.i, ptr %0, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !69 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i) #33
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !21

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !289
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !288    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef %i.l) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !293
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.017 = load ptr, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  %.not18 = icmp eq ptr %.sroa.06.017, null
  br i1 %.not18, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us
  %.sroa.06.019.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.sroa.06.017, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.019.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.019.us, align 8, !tbaa !69 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !632

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.019 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ %.sroa.06.017, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !112
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !112
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !112
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !112
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.06.0 = load ptr, ptr %.sroa.06.019, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !632

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !112
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !112
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul nuw i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !112
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !112
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !112
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !112
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %bb.d
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !289 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !288
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !132 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !132 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !22

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !123
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !112
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !112
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !22

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit: ; preds = %bb.k, %.loopexit.i.i, %bb.j, %bb.h, %bb.g, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %bb.c, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.019, %bb.c ], [ %.sroa.06.019.us, %.lr.ph.split.us ], [ null, %bb.h ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit ], [ %.0.i.i, %bb.j ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ null, %.loopexit.i.i ], [ null, %bb.k ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !293
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.017 = load ptr, ptr %i.c, align 8, !tbaa !69 ; 3 uses
  %.not18 = icmp eq ptr %.sroa.06.017, null
  br i1 %.not18, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !123
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us
  %.sroa.06.019.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.sroa.06.017, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.019.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.019.us, align 8, !tbaa !69 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !633

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.019 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ %.sroa.06.017, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !112
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !112
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !112
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !112
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.06.0 = load ptr, ptr %.sroa.06.019, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !633

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !123
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !112
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !112
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul nuw i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !112
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !112
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !112
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !112
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %bb.d
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !289 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !288
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !132 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !123
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !132 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !22

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !123
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !112
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !112
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !132 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !22

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit: ; preds = %bb.k, %.loopexit.i.i, %bb.j, %bb.h, %bb.g, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %bb.c, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.019, %bb.c ], [ %.sroa.06.019.us, %.lr.ph.split.us ], [ null, %bb.h ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit ], [ %.0.i.i, %bb.j ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN14duckdb_httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ null, %.loopexit.i.i ], [ null, %bb.k ]
  ret ptr %.sroa.06.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN14duckdb_httplib8FormDataD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 56
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.g) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #33
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load i64, ptr %i.n, align 8, !tbaa !71
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.q) #33
  br label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEED2Ev.exit

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv.exit.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN14duckdb_httplib10ClientImpl13write_requestERNS_6StreamERNS_7RequestEbRNS_5ErrorE:bb.a

_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i557: ; preds = %tailrecurse.i.preheader.i.i.i.i550
  %i.po = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit559 unwind label %bb.bm

_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit559: ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i557
  %.not1260 = icmp eq ptr %i.po, null             ; 2 uses
  %.pre1032 = load ptr, ptr %39, align 8, !tbaa !59 ; 2 uses
  %i.pp = icmp eq ptr %.pre1032, %i.ow
  br i1 %i.pp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i561, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i561.thread: ; preds = %tailrecurse.i.preheader.i.i.i.i550, %tailrecurse.i.preheader.i.i.i.i550
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i561: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit559
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br i1 %.not1260, label %bb.bf, label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit559
  call void @_ZdlPv(ptr noundef %.pre1032) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br i1 %.not1260, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i561.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @_ZN14duckdb_httplib32make_basic_authentication_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_b(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.410") align 8 %40, ptr noundef nonnull align 8 dereferenceable(32) %i.pq, ptr noundef nonnull align 8 dereferenceable(32) %i.op, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.am, ptr %8, align 8, !tbaa !281
  %i.pr = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36
          to label %.noexc748 unwind label %bb.bn ; 9 uses

.noexc748:                                        ; preds = %bb.bf
  store ptr null, ptr %i.pr, align 8, !tbaa !69
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 24 ; 4 uses
  store ptr %i.pt, ptr %i.ps, align 8, !tbaa !122
  %i.pu = load ptr, ptr %40, align 8, !tbaa !59   ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.bg:                                            ; preds = %.noexc748
  %i.px = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.py = load i64, ptr %i.px, align 8, !tbaa !123 ; 3 uses
  %i.pz = icmp ult i64 %i.py, 16
  call void @llvm.assume(i1 %i.pz)
  %i.qa = add nuw nsw i64 %i.py, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.pt, ptr noundef nonnull align 8 dereferenceable(1) %i.pv, i64 %i.qa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc748
  store ptr %i.pu, ptr %i.ps, align 8, !tbaa !59
  %i.qb = load i64, ptr %i.pv, align 8, !tbaa !112
  store i64 %i.qb, ptr %i.pt, align 8, !tbaa !112
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.bg
  %i.qc = phi ptr [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.pt, %bb.bg ] ; 4 uses
  %i.qd = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.py, %bb.bg ]
  %.fr50.i = freeze i64 %i.qd                     ; 9 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store i64 %.fr50.i, ptr %i.qf, align 8, !tbaa !123
  store ptr %i.pv, ptr %40, align 8, !tbaa !59
  store i64 0, ptr %i.qe, align 8, !tbaa !123
  store i8 0, ptr %i.pv, align 8, !tbaa !112
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pr, i64 40 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pr, i64 56 ; 3 uses
  store ptr %i.qi, ptr %i.qg, align 8, !tbaa !122
  %i.qj = load ptr, ptr %i.qh, align 8, !tbaa !59 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %40, i64 48 ; 6 uses
  %i.ql = icmp eq ptr %i.qj, %i.qk
  br i1 %i.ql, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %40, i64 40
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !123 ; 3 uses
  %i.qo = icmp ult i64 %i.qn, 16
  call void @llvm.assume(i1 %i.qo)
  %i.qp = add nuw nsw i64 %i.qn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qi, ptr noundef nonnull align 8 dereferenceable(1) %i.qk, i64 %i.qp, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.qj, ptr %i.qg, align 8, !tbaa !59
  %i.qq = load i64, ptr %i.qk, align 8, !tbaa !112
  store i64 %i.qq, ptr %i.qi, align 8, !tbaa !112
  %.phi.trans.insert9.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 40
  %.pre10.i.i.i = load i64, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !123
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i, %bb.bh
  %i.qr = phi i64 [ %i.qn, %bb.bh ], [ %.pre10.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i ]
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %40, i64 40
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pr, i64 48
  store i64 %i.qr, ptr %i.qu, align 8, !tbaa !123
  store ptr %i.qk, ptr %i.qh, align 8, !tbaa !59
  store i64 0, ptr %i.qt, align 8, !tbaa !123
  store i8 0, ptr %i.qk, align 8, !tbaa !112
  store ptr %i.pr, ptr %i.qs, align 8, !tbaa !282
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !254
  %.not.not.i = icmp eq i64 %i.qw, 0
  br i1 %.not.not.i, label %bb.bi, label %.thread29.i

bb.bi:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.0.046.i = load ptr, ptr %i.qx, align 8, !tbaa !69 ; 3 uses
  %.not3447.i = icmp eq ptr %.sroa.0.046.i, null
  br i1 %.not3447.i, label %.thread29.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bi
  %.not6.i.i.i.i5.i = icmp eq i64 %.fr50.i, 0
  br i1 %.not6.i.i.i.i5.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.fr50.i
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i
  %.sroa.0.048.us.i = phi ptr [ %.sroa.0.0.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i ], [ %.sroa.0.046.i, %.lr.ph.i ] ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0.048.us.i, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !123
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.0.0.us.i = load ptr, ptr %.sroa.0.048.us.i, align 8, !tbaa !69 ; 2 uses
  %.not34.us.i = icmp eq ptr %.sroa.0.0.us.i, null
  br i1 %.not34.us.i, label %.thread29.i, label %.lr.ph.split.us.i, !llvm.loop !20

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i
  %.sroa.0.048.i = phi ptr [ %.sroa.0.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i ], [ %.sroa.0.046.i, %.lr.ph.split.i.preheader ] ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i, i64 16
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !123
  %i.re = icmp eq i64 %.fr50.i, %i.rd
  br i1 %i.re, label %.lr.ph.i.preheader.i.i.i6.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i

.lr.ph.i.preheader.i.i.i6.i:                      ; preds = %.lr.ph.split.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i7.i

.lr.ph.i.i.i.i7.i:                                ; preds = %bb.bj, %.lr.ph.i.preheader.i.i.i6.i
  %.sroa.0.08.i.i.i.i8.i = phi ptr [ %i.rr, %bb.bj ], [ %i.rg, %.lr.ph.i.preheader.i.i.i6.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i9.i = phi ptr [ %i.rq, %bb.bj ], [ %i.qc, %.lr.ph.i.preheader.i.i.i6.i ] ; 2 uses
  %i.rh = load i8, ptr %.sroa.03.07.i.i.i.i9.i, align 1, !tbaa !112
  %i.ri = load i8, ptr %.sroa.0.08.i.i.i.i8.i, align 1, !tbaa !112
  %i.rj = zext i8 %i.rh to i64
  %i.rk = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !112
  %i.rm = zext i8 %i.ri to i64
  %i.rn = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !112
  %i.rp = icmp eq i8 %i.rl, %i.ro
  br i1 %i.rp, label %bb.bj, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i7.i
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i9.i, i64 1 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i8.i, i64 1
  %.not.i.i.i.i10.i = icmp eq ptr %i.rq, %i.qy
  br i1 %.not.i.i.i.i10.i, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i, label %.lr.ph.i.i.i.i7.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i: ; preds = %.lr.ph.i.i.i.i7.i, %.lr.ph.split.i
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.048.i, align 8, !tbaa !69 ; 2 uses
  %.not34.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not34.i, label %.thread29.i, label %.lr.ph.split.i, !llvm.loop !20

.thread29.i:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i, %bb.bi, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i
  %i.rs = icmp eq i64 %.fr50.i, 0
  br i1 %i.rs, label %.loopexit939, label %tailrecurse.i.i.i.i.preheader

tailrecurse.i.i.i.i.preheader:                    ; preds = %.thread29.i
  %xtraiter = and i64 %.fr50.i, 1
  %i.rt = icmp eq i64 %.fr50.i, 1
  br i1 %i.rt, label %tailrecurse.i.i.i.i.epil.preheader, label %tailrecurse.i.i.i.i.preheader.new

tailrecurse.i.i.i.i.preheader.new:                ; preds = %tailrecurse.i.i.i.i.preheader
  %unroll_iter = and i64 %.fr50.i, -2
  br label %tailrecurse.i.i.i.i

tailrecurse.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.preheader.new
  %.tr811.i.i.i.i = phi i64 [ 0, %tailrecurse.i.i.i.i.preheader.new ], [ %i.sk, %tailrecurse.i.i.i.i ]
  %.tr69.i.i.i.i = phi ptr [ %i.qc, %tailrecurse.i.i.i.i.preheader.new ], [ %i.sc, %tailrecurse.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.i.i.i.preheader.new ], [ %niter.next.1, %tailrecurse.i.i.i.i ]
  %i.ru = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i, i64 1
  %i.rv = mul i64 %.tr811.i.i.i.i, 33
  %i.rw = load i8, ptr %.tr69.i.i.i.i, align 1, !tbaa !112
  %i.rx = zext i8 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !112
  %i.sa = zext i8 %i.rz to i64
  %i.sb = xor i64 %i.rv, %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i, i64 2 ; 2 uses
  %i.sd = mul nuw i64 %i.sb, 33
  %i.se = and i64 %i.sd, 288230376151711743
  %i.sf = load i8, ptr %i.ru, align 1, !tbaa !112
  %i.sg = zext i8 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !112
  %i.sj = zext i8 %i.si to i64
  %i.sk = xor i64 %i.se, %i.sj                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit939.loopexit.unr-lcssa, label %tailrecurse.i.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i: ; preds = %bb.bj, %.lr.ph.split.us.i
  %.sroa.0.040.sink.i = phi ptr [ %.sroa.0.048.us.i, %.lr.ph.split.us.i ], [ %.sroa.0.048.i, %bb.bj ] ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0.040.sink.i, i64 72
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !132
  br label %.loopexit939

.loopexit939.loopexit.unr-lcssa:                  ; preds = %tailrecurse.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit939, label %tailrecurse.i.i.i.i.epil.preheader

tailrecurse.i.i.i.i.epil.preheader:               ; preds = %.loopexit939.loopexit.unr-lcssa, %tailrecurse.i.i.i.i.preheader
  %.tr811.i.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.i.i.i.preheader ], [ %i.sk, %.loopexit939.loopexit.unr-lcssa ]
  %.tr69.i.i.i.i.epil.init = phi ptr [ %i.qc, %tailrecurse.i.i.i.i.preheader ], [ %i.sc, %.loopexit939.loopexit.unr-lcssa ]
  %lcmp.mod1333 = trunc i64 %.fr50.i to i1
  call void @llvm.assume(i1 %lcmp.mod1333)
  %i.sn = mul i64 %.tr811.i.i.i.i.epil.init, 33
  %i.so = and i64 %i.sn, 288230376151711743
  %i.sp = load i8, ptr %.tr69.i.i.i.i.epil.init, align 1, !tbaa !112
  %i.sq = zext i8 %i.sp to i64
  %i.sr = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !112
  %i.st = zext i8 %i.ss to i64
  %i.su = xor i64 %i.so, %i.st
  br label %.loopexit939

.loopexit939:                                     ; preds = %tailrecurse.i.i.i.i.epil.preheader, %.loopexit939.loopexit.unr-lcssa, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i, %.thread29.i
  %.sroa.026.3.i = phi ptr [ null, %.thread29.i ], [ %.sroa.0.040.sink.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i ], [ null, %.loopexit939.loopexit.unr-lcssa ], [ null, %tailrecurse.i.i.i.i.epil.preheader ]
  %.sroa.4.3.i = phi i64 [ 0, %.thread29.i ], [ %i.sm, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i ], [ %i.sk, %.loopexit939.loopexit.unr-lcssa ], [ %i.su, %tailrecurse.i.i.i.i.epil.preheader ]
  %i.sv = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSP_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef %.sroa.026.3.i, i64 noundef %.sroa.4.3.i, ptr noundef nonnull %i.pr)
          to label %bb.bl unwind label %bb.bk     ; 0 uses

bb.bk:                                            ; preds = %.loopexit939
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.body749

bb.bl:                                            ; preds = %.loopexit939
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.sx = load ptr, ptr %i.qh, align 8, !tbaa !59 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.qk
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.sx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.sz = load ptr, ptr %40, align 8, !tbaa !59   ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.pv
  br i1 %i.ta, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.sz) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %bb.bo

bb.bm:                                            ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i557
  %i.tb = landingpad { ptr, i32 }
          cleanup
  %i.tc = load ptr, ptr %39, align 8, !tbaa !59   ; 2 uses
  %i.td = icmp eq ptr %i.tc, %i.ow
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.tc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i564
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %common.resume

bb.bn:                                            ; preds = %bb.bf
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %.body749

.body749:                                         ; preds = %bb.bk, %bb.bn
  %eh.lpad-body750 = phi { ptr, i32 } [ %i.te, %bb.bn ], [ %i.sw, %bb.bk ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br label %common.resume

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i561, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit562, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %bb.be
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !123
  %i.ti = icmp eq i64 %i.th, 0
  br i1 %i.ti, label %bb.ca, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !123
  %i.tm = icmp eq i64 %i.tl, 0
  br i1 %i.tm, label %bb.ca, label %.noexc.i568

.noexc.i568:                                      ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.tn = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  store ptr %i.tn, ptr %41, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  store i64 19, ptr %i.k, align 8, !tbaa !46
  %i.to = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc569 unwind label %bb.bx ; 2 uses

.noexc569:                                        ; preds = %.noexc.i568
  store ptr %i.to, ptr %41, align 8, !tbaa !59
  %i.tp = load i64, ptr %i.k, align 8, !tbaa !46  ; 3 uses
  store i64 %i.tp, ptr %i.tn, align 8, !tbaa !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.to, ptr noundef nonnull align 1 dereferenceable(19) @.str.287, i64 19, i1 false)
  %i.tq = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store i64 %i.tp, ptr %i.tq, align 8, !tbaa !123
  %i.tr = load ptr, ptr %41, align 8, !tbaa !59
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.tp
  store i8 0, ptr %i.ts, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  %i.tt = load i64, ptr %i.tq, align 8, !tbaa !123 ; 4 uses
  %i.tu = icmp eq i64 %i.tt, 0
  br i1 %i.tu, label %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i578, label %tailrecurse.i.preheader.i.i.i.i571

tailrecurse.i.preheader.i.i.i.i571:               ; preds = %.noexc569
  %i.tv = load ptr, ptr %41, align 8, !tbaa !59   ; 6 uses
  %xtraiter1334 = and i64 %i.tt, 3                ; 3 uses
  %i.tw = icmp ult i64 %i.tt, 4
  br i1 %i.tw, label %tailrecurse.i.i.i.i.i572.epil.preheader, label %tailrecurse.i.preheader.i.i.i.i571.new

tailrecurse.i.preheader.i.i.i.i571.new:           ; preds = %tailrecurse.i.preheader.i.i.i.i571
  %unroll_iter1338 = and i64 %i.tt, -4
  br label %tailrecurse.i.i.i.i.i572

tailrecurse.i.i.i.i.i572:                         ; preds = %tailrecurse.i.i.i.i.i572, %tailrecurse.i.preheader.i.i.i.i571.new
  %.tr69.i.i.i.i.i573 = phi i32 [ 0, %tailrecurse.i.preheader.i.i.i.i571.new ], [ %i.ur, %tailrecurse.i.i.i.i.i572 ]
  %.tr7.i.i.i.i.i575 = phi ptr [ %i.tv, %tailrecurse.i.preheader.i.i.i.i571.new ], [ %i.um, %tailrecurse.i.i.i.i.i572 ] ; 5 uses
  %niter1339 = phi i64 [ 0, %tailrecurse.i.preheader.i.i.i.i571.new ], [ %niter1339.next.3, %tailrecurse.i.i.i.i.i572 ]
  %i.tx = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i575, i64 1
  %i.ty = mul i32 %.tr69.i.i.i.i.i573, 33
  %i.tz = load i8, ptr %.tr7.i.i.i.i.i575, align 1, !tbaa !112
  %i.ua = zext i8 %i.tz to i32
  %i.ub = xor i32 %i.ty, %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i575, i64 2
  %i.ud = mul nuw i32 %i.ub, 33
  %i.ue = load i8, ptr %i.tx, align 1, !tbaa !112
  %i.uf = zext i8 %i.ue to i32
  %i.ug = xor i32 %i.ud, %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i575, i64 3
  %i.ui = mul nuw i32 %i.ug, 33
  %i.uj = load i8, ptr %i.uc, align 1, !tbaa !112
  %i.uk = zext i8 %i.uj to i32
  %i.ul = xor i32 %i.ui, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i575, i64 4 ; 2 uses
  %i.un = mul nuw i32 %i.ul, 33
  %i.uo = and i32 %i.un, 67108863
  %i.up = load i8, ptr %i.uh, align 1, !tbaa !112
  %i.uq = zext i8 %i.up to i32
  %i.ur = xor i32 %i.uo, %i.uq                    ; 3 uses
  %niter1339.next.3 = add nuw i64 %niter1339, 4   ; 2 uses
  %niter1339.ncmp.3 = icmp eq i64 %niter1339.next.3, %unroll_iter1338
  br i1 %niter1339.ncmp.3, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576.unr-lcssa, label %tailrecurse.i.i.i.i.i572

_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576.unr-lcssa: ; preds = %tailrecurse.i.i.i.i.i572
  %lcmp.mod1335.not = icmp eq i64 %xtraiter1334, 0
  br i1 %lcmp.mod1335.not, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576, label %tailrecurse.i.i.i.i.i572.epil.preheader

tailrecurse.i.i.i.i.i572.epil.preheader:          ; preds = %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576.unr-lcssa, %tailrecurse.i.preheader.i.i.i.i571
  %.tr69.i.i.i.i.i573.epil.init = phi i32 [ 0, %tailrecurse.i.preheader.i.i.i.i571 ], [ %i.ur, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576.unr-lcssa ]
  %.tr7.i.i.i.i.i575.epil.init = phi ptr [ %i.tv, %tailrecurse.i.preheader.i.i.i.i571 ], [ %i.um, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576.unr-lcssa ]
  %lcmp.mod1337 = icmp ne i64 %xtraiter1334, 0
  call void @llvm.assume(i1 %lcmp.mod1337)
  br label %tailrecurse.i.i.i.i.i572.epil

tailrecurse.i.i.i.i.i572.epil:                    ; preds = %tailrecurse.i.i.i.i.i572.epil, %tailrecurse.i.i.i.i.i572.epil.preheader
  %.tr69.i.i.i.i.i573.epil = phi i32 [ %i.ux, %tailrecurse.i.i.i.i.i572.epil ], [ %.tr69.i.i.i.i.i573.epil.init, %tailrecurse.i.i.i.i.i572.epil.preheader ]
  %.tr7.i.i.i.i.i575.epil = phi ptr [ %i.us, %tailrecurse.i.i.i.i.i572.epil ], [ %.tr7.i.i.i.i.i575.epil.init, %tailrecurse.i.i.i.i.i572.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %tailrecurse.i.i.i.i.i572.epil ], [ 0, %tailrecurse.i.i.i.i.i572.epil.preheader ]
  %i.us = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i575.epil, i64 1
  %i.ut = mul i32 %.tr69.i.i.i.i.i573.epil, 33
  %i.uu = and i32 %i.ut, 67108863
  %i.uv = load i8, ptr %.tr7.i.i.i.i.i575.epil, align 1, !tbaa !112
  %i.uw = zext i8 %i.uv to i32
  %i.ux = xor i32 %i.uu, %i.uw                    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1334
  br i1 %epil.iter.cmp.not, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576, label %tailrecurse.i.i.i.i.i572.epil, !llvm.loop !799

_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576: ; preds = %tailrecurse.i.i.i.i.i572.epil, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576.unr-lcssa
  %.lcssa1316 = phi i32 [ %i.ur, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576.unr-lcssa ], [ %i.ux, %tailrecurse.i.i.i.i.i572.epil ]
  switch i32 %.lcssa1316, label %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i578 [
    i32 16923016, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580
    i32 16377058, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580
    i32 49322369, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580
    i32 48576171, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580
  ]

_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i578: ; preds = %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576, %.noexc569
  %i.uy = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %.noexc579 unwind label %bb.by

.noexc579:                                        ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i578
  %i.uz = icmp ne ptr %i.uy, null
  %.pre1033 = load ptr, ptr %41, align 8, !tbaa !59
  br label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580

_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580: ; preds = %.noexc579, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576
  %i.va = phi ptr [ %.pre1033, %.noexc579 ], [ %i.tv, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ], [ %i.tv, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ], [ %i.tv, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ], [ %i.tv, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ] ; 2 uses
  %.0.i.i577 = phi i1 [ %i.uz, %.noexc579 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i576 ]
  %i.vb = icmp eq ptr %i.va, %i.tn
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580
  call void @_ZdlPv(ptr noundef %i.va) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit580, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br i1 %.0.i.i577, label %bb.ca, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @_ZN14duckdb_httplib32make_basic_authentication_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_b(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.410") align 8 %42, ptr noundef nonnull align 8 dereferenceable(32) %i.tf, ptr noundef nonnull align 8 dereferenceable(32) %i.tj, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.am, ptr %7, align 8, !tbaa !281
  %i.vc = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36
          to label %.noexc759 unwind label %bb.bz ; 9 uses

.noexc759:                                        ; preds = %bb.bq
  store ptr null, ptr %i.vc, align 8, !tbaa !69
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 24 ; 4 uses
  store ptr %i.ve, ptr %i.vd, align 8, !tbaa !122
  %i.vf = load ptr, ptr %42, align 8, !tbaa !59   ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  %i.vh = icmp eq ptr %i.vf, %i.vg
  br i1 %i.vh, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751

bb.br:                                            ; preds = %.noexc759
  %i.vi = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !123 ; 3 uses
  %i.vk = icmp ult i64 %i.vj, 16
  call void @llvm.assume(i1 %i.vk)
  %i.vl = add nuw nsw i64 %i.vj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ve, ptr noundef nonnull align 8 dereferenceable(1) %i.vg, i64 %i.vl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751: ; preds = %.noexc759
  store ptr %i.vf, ptr %i.vd, align 8, !tbaa !59
  %i.vm = load i64, ptr %i.vg, align 8, !tbaa !112
  store i64 %i.vm, ptr %i.ve, align 8, !tbaa !112
  %.phi.trans.insert.i.i.i752 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %.pre.i.i.i753 = load i64, ptr %.phi.trans.insert.i.i.i752, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i754: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751, %bb.br
  %i.vn = phi ptr [ %i.vf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751 ], [ %i.ve, %bb.br ] ; 4 uses
  %i.vo = phi i64 [ %.pre.i.i.i753, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751 ], [ %i.vj, %bb.br ]
  %.fr50.i803 = freeze i64 %i.vo                  ; 9 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  store i64 %.fr50.i803, ptr %i.vq, align 8, !tbaa !123
  store ptr %i.vg, ptr %42, align 8, !tbaa !59
  store i64 0, ptr %i.vp, align 8, !tbaa !123
  store i8 0, ptr %i.vg, align 8, !tbaa !112
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vc, i64 40 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vc, i64 56 ; 3 uses
  store ptr %i.vt, ptr %i.vr, align 8, !tbaa !122
  %i.vu = load ptr, ptr %i.vs, align 8, !tbaa !59 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %42, i64 48 ; 6 uses
  %i.vw = icmp eq ptr %i.vu, %i.vv
  br i1 %i.vw, label %bb.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i755

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i754
  %i.vx = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !123 ; 3 uses
  %i.vz = icmp ult i64 %i.vy, 16
  call void @llvm.assume(i1 %i.vz)
  %i.wa = add nuw nsw i64 %i.vy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vt, ptr noundef nonnull align 8 dereferenceable(1) %i.vv, i64 %i.wa, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i758

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i755: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i754
  store ptr %i.vu, ptr %i.vr, align 8, !tbaa !59
  %i.wb = load i64, ptr %i.vv, align 8, !tbaa !112
  store i64 %i.wb, ptr %i.vt, align 8, !tbaa !112
  %.phi.trans.insert9.i.i.i756 = getelementptr inbounds nuw i8, ptr %42, i64 40
  %.pre10.i.i.i757 = load i64, ptr %.phi.trans.insert9.i.i.i756, align 8, !tbaa !123
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i758

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i758: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i755, %bb.bs
  %i.wc = phi i64 [ %i.vy, %bb.bs ], [ %.pre10.i.i.i757, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i755 ]
  %i.wd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vc, i64 48
  store i64 %i.wc, ptr %i.wf, align 8, !tbaa !123
  store ptr %i.vv, ptr %i.vs, align 8, !tbaa !59
  store i64 0, ptr %i.we, align 8, !tbaa !123
  store i8 0, ptr %i.vv, align 8, !tbaa !112
  store ptr %i.vc, ptr %i.wd, align 8, !tbaa !282
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !254
  %.not.not.i788 = icmp eq i64 %i.wh, 0
  br i1 %.not.not.i788, label %bb.bt, label %.thread29.i789

bb.bt:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i758
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.0.046.i800 = load ptr, ptr %i.wi, align 8, !tbaa !69 ; 3 uses
  %.not3447.i801 = icmp eq ptr %.sroa.0.046.i800, null
  br i1 %.not3447.i801, label %.thread29.i789, label %.lr.ph.i802

.lr.ph.i802:                                      ; preds = %bb.bt
  %.not6.i.i.i.i5.i804 = icmp eq i64 %.fr50.i803, 0
  br i1 %.not6.i.i.i.i5.i804, label %.lr.ph.split.us.i817, label %.lr.ph.split.i805.preheader

.lr.ph.split.i805.preheader:                      ; preds = %.lr.ph.i802
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vn, i64 %.fr50.i803
  br label %.lr.ph.split.i805

.lr.ph.split.us.i817:                             ; preds = %.lr.ph.i802, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i819
  %.sroa.0.048.us.i818 = phi ptr [ %.sroa.0.0.us.i820, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i819 ], [ %.sroa.0.046.i800, %.lr.ph.i802 ] ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.sroa.0.048.us.i818, i64 16
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !123
  %i.wm = icmp eq i64 %i.wl, 0
  br i1 %i.wm, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i815, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i819

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i819: ; preds = %.lr.ph.split.us.i817
  %.sroa.0.0.us.i820 = load ptr, ptr %.sroa.0.048.us.i818, align 8, !tbaa !69 ; 2 uses
  %.not34.us.i821 = icmp eq ptr %.sroa.0.0.us.i820, null
  br i1 %.not34.us.i821, label %.thread29.i789, label %.lr.ph.split.us.i817, !llvm.loop !20

.lr.ph.split.i805:                                ; preds = %.lr.ph.split.i805.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i807
  %.sroa.0.048.i806 = phi ptr [ %.sroa.0.0.i808, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i807 ], [ %.sroa.0.046.i800, %.lr.ph.split.i805.preheader ] ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i806, i64 16
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !123
  %i.wp = icmp eq i64 %.fr50.i803, %i.wo
  br i1 %i.wp, label %.lr.ph.i.preheader.i.i.i6.i810, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i807

.lr.ph.i.preheader.i.i.i6.i810:                   ; preds = %.lr.ph.split.i805
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i806, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i7.i811

.lr.ph.i.i.i.i7.i811:                             ; preds = %bb.bu, %.lr.ph.i.preheader.i.i.i6.i810
  %.sroa.0.08.i.i.i.i8.i812 = phi ptr [ %i.xc, %bb.bu ], [ %i.wr, %.lr.ph.i.preheader.i.i.i6.i810 ] ; 2 uses
  %.sroa.03.07.i.i.i.i9.i813 = phi ptr [ %i.xb, %bb.bu ], [ %i.vn, %.lr.ph.i.preheader.i.i.i6.i810 ] ; 2 uses
  %i.ws = load i8, ptr %.sroa.03.07.i.i.i.i9.i813, align 1, !tbaa !112
  %i.wt = load i8, ptr %.sroa.0.08.i.i.i.i8.i812, align 1, !tbaa !112
  %i.wu = zext i8 %i.ws to i64
  %i.wv = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.wu
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !112
  %i.wx = zext i8 %i.wt to i64
  %i.wy = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !112
  %i.xa = icmp eq i8 %i.ww, %i.wz
  br i1 %i.xa, label %bb.bu, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i807

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i7.i811
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i9.i813, i64 1 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i8.i812, i64 1
  %.not.i.i.i.i10.i814 = icmp eq ptr %i.xb, %i.wj
  br i1 %.not.i.i.i.i10.i814, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i815, label %.lr.ph.i.i.i.i7.i811, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i807: ; preds = %.lr.ph.i.i.i.i7.i811, %.lr.ph.split.i805
  %.sroa.0.0.i808 = load ptr, ptr %.sroa.0.048.i806, align 8, !tbaa !69 ; 2 uses
  %.not34.i809 = icmp eq ptr %.sroa.0.0.i808, null
  br i1 %.not34.i809, label %.thread29.i789, label %.lr.ph.split.i805, !llvm.loop !20

.thread29.i789:                                   ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i807, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i819, %bb.bt, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i758
  %i.xd = icmp eq i64 %.fr50.i803, 0
  br i1 %i.xd, label %.loopexit936, label %tailrecurse.i.i.i.i791.preheader

tailrecurse.i.i.i.i791.preheader:                 ; preds = %.thread29.i789
  %xtraiter1340 = and i64 %.fr50.i803, 1
  %i.xe = icmp eq i64 %.fr50.i803, 1
  br i1 %i.xe, label %tailrecurse.i.i.i.i791.epil.preheader, label %tailrecurse.i.i.i.i791.preheader.new

tailrecurse.i.i.i.i791.preheader.new:             ; preds = %tailrecurse.i.i.i.i791.preheader
  %unroll_iter1345 = and i64 %.fr50.i803, -2
  br label %tailrecurse.i.i.i.i791

tailrecurse.i.i.i.i791:                           ; preds = %tailrecurse.i.i.i.i791, %tailrecurse.i.i.i.i791.preheader.new
  %.tr811.i.i.i.i792 = phi i64 [ 0, %tailrecurse.i.i.i.i791.preheader.new ], [ %i.xv, %tailrecurse.i.i.i.i791 ]
  %.tr69.i.i.i.i794 = phi ptr [ %i.vn, %tailrecurse.i.i.i.i791.preheader.new ], [ %i.xn, %tailrecurse.i.i.i.i791 ] ; 3 uses
  %niter1346 = phi i64 [ 0, %tailrecurse.i.i.i.i791.preheader.new ], [ %niter1346.next.1, %tailrecurse.i.i.i.i791 ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i794, i64 1
  %i.xg = mul i64 %.tr811.i.i.i.i792, 33
  %i.xh = load i8, ptr %.tr69.i.i.i.i794, align 1, !tbaa !112
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !112
  %i.xl = zext i8 %i.xk to i64
  %i.xm = xor i64 %i.xg, %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i794, i64 2 ; 2 uses
  %i.xo = mul nuw i64 %i.xm, 33
  %i.xp = and i64 %i.xo, 288230376151711743
  %i.xq = load i8, ptr %i.xf, align 1, !tbaa !112
  %i.xr = zext i8 %i.xq to i64
  %i.xs = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !112
  %i.xu = zext i8 %i.xt to i64
  %i.xv = xor i64 %i.xp, %i.xu                    ; 3 uses
  %niter1346.next.1 = add nuw i64 %niter1346, 2   ; 2 uses
  %niter1346.ncmp.1 = icmp eq i64 %niter1346.next.1, %unroll_iter1345
  br i1 %niter1346.ncmp.1, label %.loopexit936.loopexit.unr-lcssa, label %tailrecurse.i.i.i.i791

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i815: ; preds = %bb.bu, %.lr.ph.split.us.i817
  %.sroa.0.040.sink.i816 = phi ptr [ %.sroa.0.048.us.i818, %.lr.ph.split.us.i817 ], [ %.sroa.0.048.i806, %bb.bu ] ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.0.040.sink.i816, i64 72
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !132
  br label %.loopexit936

.loopexit936.loopexit.unr-lcssa:                  ; preds = %tailrecurse.i.i.i.i791
  %lcmp.mod1342.not = icmp eq i64 %xtraiter1340, 0
  br i1 %lcmp.mod1342.not, label %.loopexit936, label %tailrecurse.i.i.i.i791.epil.preheader

tailrecurse.i.i.i.i791.epil.preheader:            ; preds = %.loopexit936.loopexit.unr-lcssa, %tailrecurse.i.i.i.i791.preheader
  %.tr811.i.i.i.i792.epil.init = phi i64 [ 0, %tailrecurse.i.i.i.i791.preheader ], [ %i.xv, %.loopexit936.loopexit.unr-lcssa ]
  %.tr69.i.i.i.i794.epil.init = phi ptr [ %i.vn, %tailrecurse.i.i.i.i791.preheader ], [ %i.xn, %.loopexit936.loopexit.unr-lcssa ]
  %lcmp.mod1344 = trunc i64 %.fr50.i803 to i1
  call void @llvm.assume(i1 %lcmp.mod1344)
  %i.xy = mul i64 %.tr811.i.i.i.i792.epil.init, 33
  %i.xz = and i64 %i.xy, 288230376151711743
  %i.ya = load i8, ptr %.tr69.i.i.i.i794.epil.init, align 1, !tbaa !112
  %i.yb = zext i8 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !112
  %i.ye = zext i8 %i.yd to i64
  %i.yf = xor i64 %i.xz, %i.ye
  br label %.loopexit936

.loopexit936:                                     ; preds = %tailrecurse.i.i.i.i791.epil.preheader, %.loopexit936.loopexit.unr-lcssa, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i815, %.thread29.i789
  %.sroa.026.3.i795 = phi ptr [ null, %.thread29.i789 ], [ %.sroa.0.040.sink.i816, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i815 ], [ null, %.loopexit936.loopexit.unr-lcssa ], [ null, %tailrecurse.i.i.i.i791.epil.preheader ]
  %.sroa.4.3.i796 = phi i64 [ 0, %.thread29.i789 ], [ %i.xx, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i815 ], [ %i.xv, %.loopexit936.loopexit.unr-lcssa ], [ %i.yf, %tailrecurse.i.i.i.i791.epil.preheader ]
  %i.yg = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSP_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef %.sroa.026.3.i795, i64 noundef %.sroa.4.3.i796, ptr noundef nonnull %i.vc)
          to label %bb.bw unwind label %bb.bv     ; 0 uses

bb.bv:                                            ; preds = %.loopexit936
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body760

bb.bw:                                            ; preds = %.loopexit936
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.yi = load ptr, ptr %i.vs, align 8, !tbaa !59 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.vv
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i587, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i586: ; preds = %bb.bw
  call void @_ZdlPv(ptr noundef %i.yi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i587

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i587: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i586
  %i.yk = load ptr, ptr %42, align 8, !tbaa !59   ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.vg
  br i1 %i.yl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit591, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i588: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i587
  call void @_ZdlPv(ptr noundef %i.yk) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit591

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit591: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i587, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i588
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %bb.ca

bb.bx:                                            ; preds = %.noexc.i568
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

bb.by:                                            ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i578
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yo = load ptr, ptr %41, align 8, !tbaa !59   ; 2 uses
  %i.yp = icmp eq ptr %i.yo, %i.tn
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.yo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592, %bb.bx
  %.pn185 = phi { ptr, i32 } [ %i.ym, %bb.bx ], [ %i.yn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592 ], [ %i.yn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %common.resume

bb.bz:                                            ; preds = %bb.bq
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %.body760

.body760:                                         ; preds = %bb.bv, %bb.bz
  %eh.lpad-body761 = phi { ptr, i32 } [ %i.yq, %bb.bz ], [ %i.yh, %bb.bv ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br label %common.resume

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit591, %bb.bp, %bb.bo
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !123
  %i.yu = icmp eq i64 %i.yt, 0
  br i1 %i.yu, label %bb.ck, label %tailrecurse.i.preheader.i.i.i.i599

tailrecurse.i.preheader.i.i.i.i599:               ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.yv = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  store ptr %i.yv, ptr %43, align 8, !tbaa !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.yv, ptr noundef nonnull align 1 dereferenceable(13) @.str.286, i64 13, i1 false)
  %i.yw = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 13, ptr %i.yw, align 8, !tbaa !123
  %i.yx = getelementptr inbounds nuw i8, ptr %43, i64 29
  store i8 0, ptr %i.yx, align 1, !tbaa !112
  %i.yy = getelementptr inbounds nuw i8, ptr %43, i64 26
  %i.yz = getelementptr inbounds nuw i8, ptr %43, i64 27
  %i.za = load i8, ptr %i.yy, align 2, !tbaa !112
  %i.zb = zext i8 %i.za to i32
  %i.zc = xor i32 %i.zb, 13573907
  %i.zd = getelementptr inbounds nuw i8, ptr %43, i64 28
  %i.ze = mul nuw nsw i32 %i.zc, 33
  %i.zf = load i8, ptr %i.yz, align 1, !tbaa !112
  %i.zg = zext i8 %i.zf to i32
  %i.zh = xor i32 %i.ze, %i.zg
  %i.zi = mul i32 %i.zh, 33
  %i.zj = and i32 %i.zi, 67108863
  %i.zk = load i8, ptr %i.zd, align 4, !tbaa !112
  %i.zl = zext i8 %i.zk to i32
  %i.zm = xor i32 %i.zj, %i.zl
  switch i32 %i.zm, label %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i606 [
    i32 16923016, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610.thread
    i32 16377058, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610.thread
  ]

_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i606: ; preds = %tailrecurse.i.preheader.i.i.i.i599
  %i.zn = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit608 unwind label %bb.ci

_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit608: ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i606
  %.not1261 = icmp eq ptr %i.zn, null             ; 2 uses
  %.pre1034 = load ptr, ptr %43, align 8, !tbaa !59 ; 2 uses
  %i.zo = icmp eq ptr %.pre1034, %i.yv
  br i1 %i.zo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610.thread: ; preds = %tailrecurse.i.preheader.i.i.i.i599, %tailrecurse.i.preheader.i.i.i.i599
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %bb.cb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit608
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br i1 %.not1261, label %bb.cb, label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit608
  call void @_ZdlPv(ptr noundef %.pre1034) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br i1 %.not1261, label %bb.cb, label %bb.ck

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  call void @_ZN14duckdb_httplib39make_bearer_token_authentication_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.410") align 8 %44, ptr noundef nonnull align 8 dereferenceable(32) %i.yr, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.am, ptr %6, align 8, !tbaa !281
  %i.zp = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36
          to label %.noexc771 unwind label %bb.cj ; 9 uses

.noexc771:                                        ; preds = %bb.cb
  store ptr null, ptr %i.zp, align 8, !tbaa !69
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 24 ; 4 uses
  store ptr %i.zr, ptr %i.zq, align 8, !tbaa !122
  %i.zs = load ptr, ptr %44, align 8, !tbaa !59   ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 6 uses
  %i.zu = icmp eq ptr %i.zs, %i.zt
  br i1 %i.zu, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763

bb.cc:                                            ; preds = %.noexc771
  %i.zv = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !123 ; 3 uses
  %i.zx = icmp ult i64 %i.zw, 16
  call void @llvm.assume(i1 %i.zx)
  %i.zy = add nuw nsw i64 %i.zw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zr, ptr noundef nonnull align 8 dereferenceable(1) %i.zt, i64 %i.zy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i766

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763: ; preds = %.noexc771
  store ptr %i.zs, ptr %i.zq, align 8, !tbaa !59
  %i.zz = load i64, ptr %i.zt, align 8, !tbaa !112
  store i64 %i.zz, ptr %i.zr, align 8, !tbaa !112
  %.phi.trans.insert.i.i.i764 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %.pre.i.i.i765 = load i64, ptr %.phi.trans.insert.i.i.i764, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i766

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i766: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763, %bb.cc
  %i.aaa = phi ptr [ %i.zs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763 ], [ %i.zr, %bb.cc ] ; 4 uses
  %i.aab = phi i64 [ %.pre.i.i.i765, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i763 ], [ %i.zw, %bb.cc ]
  %.fr50.i838 = freeze i64 %i.aab                 ; 9 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store i64 %.fr50.i838, ptr %i.aad, align 8, !tbaa !123
  store ptr %i.zt, ptr %44, align 8, !tbaa !59
  store i64 0, ptr %i.aac, align 8, !tbaa !123
  store i8 0, ptr %i.zt, align 8, !tbaa !112
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zp, i64 40 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %44, i64 32 ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zp, i64 56 ; 3 uses
  store ptr %i.aag, ptr %i.aae, align 8, !tbaa !122
  %i.aah = load ptr, ptr %i.aaf, align 8, !tbaa !59 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %44, i64 48 ; 6 uses
  %i.aaj = icmp eq ptr %i.aah, %i.aai
  br i1 %i.aaj, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i767

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i766
  %i.aak = getelementptr inbounds nuw i8, ptr %44, i64 40
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !123 ; 3 uses
  %i.aam = icmp ult i64 %i.aal, 16
  call void @llvm.assume(i1 %i.aam)
  %i.aan = add nuw nsw i64 %i.aal, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aag, ptr noundef nonnull align 8 dereferenceable(1) %i.aai, i64 %i.aan, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i767: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i766
  store ptr %i.aah, ptr %i.aae, align 8, !tbaa !59
  %i.aao = load i64, ptr %i.aai, align 8, !tbaa !112
  store i64 %i.aao, ptr %i.aag, align 8, !tbaa !112
  %.phi.trans.insert9.i.i.i768 = getelementptr inbounds nuw i8, ptr %44, i64 40
  %.pre10.i.i.i769 = load i64, ptr %.phi.trans.insert9.i.i.i768, align 8, !tbaa !123
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i770

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i770: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i767, %bb.cd
  %i.aap = phi i64 [ %i.aal, %bb.cd ], [ %.pre10.i.i.i769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i767 ]
  %i.aaq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %44, i64 40
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zp, i64 48
  store i64 %i.aap, ptr %i.aas, align 8, !tbaa !123
  store ptr %i.aai, ptr %i.aaf, align 8, !tbaa !59
  store i64 0, ptr %i.aar, align 8, !tbaa !123
  store i8 0, ptr %i.aai, align 8, !tbaa !112
  store ptr %i.zp, ptr %i.aaq, align 8, !tbaa !282
  %i.aat = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !254
  %.not.not.i823 = icmp eq i64 %i.aau, 0
  br i1 %.not.not.i823, label %bb.ce, label %.thread29.i824

bb.ce:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i770
  %i.aav = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.0.046.i835 = load ptr, ptr %i.aav, align 8, !tbaa !69 ; 3 uses
  %.not3447.i836 = icmp eq ptr %.sroa.0.046.i835, null
  br i1 %.not3447.i836, label %.thread29.i824, label %.lr.ph.i837

.lr.ph.i837:                                      ; preds = %bb.ce
  %.not6.i.i.i.i5.i839 = icmp eq i64 %.fr50.i838, 0
  br i1 %.not6.i.i.i.i5.i839, label %.lr.ph.split.us.i852, label %.lr.ph.split.i840.preheader

.lr.ph.split.i840.preheader:                      ; preds = %.lr.ph.i837
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %.fr50.i838
  br label %.lr.ph.split.i840

.lr.ph.split.us.i852:                             ; preds = %.lr.ph.i837, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i854
  %.sroa.0.048.us.i853 = phi ptr [ %.sroa.0.0.us.i855, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i854 ], [ %.sroa.0.046.i835, %.lr.ph.i837 ] ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0.048.us.i853, i64 16
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !123
  %i.aaz = icmp eq i64 %i.aay, 0
  br i1 %i.aaz, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i850, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i854

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i854: ; preds = %.lr.ph.split.us.i852
  %.sroa.0.0.us.i855 = load ptr, ptr %.sroa.0.048.us.i853, align 8, !tbaa !69 ; 2 uses
  %.not34.us.i856 = icmp eq ptr %.sroa.0.0.us.i855, null
  br i1 %.not34.us.i856, label %.thread29.i824, label %.lr.ph.split.us.i852, !llvm.loop !20

.lr.ph.split.i840:                                ; preds = %.lr.ph.split.i840.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i842
  %.sroa.0.048.i841 = phi ptr [ %.sroa.0.0.i843, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i842 ], [ %.sroa.0.046.i835, %.lr.ph.split.i840.preheader ] ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i841, i64 16
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !123
  %i.abc = icmp eq i64 %.fr50.i838, %i.abb
  br i1 %i.abc, label %.lr.ph.i.preheader.i.i.i6.i845, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i842

.lr.ph.i.preheader.i.i.i6.i845:                   ; preds = %.lr.ph.split.i840
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i841, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i7.i846

.lr.ph.i.i.i.i7.i846:                             ; preds = %bb.cf, %.lr.ph.i.preheader.i.i.i6.i845
  %.sroa.0.08.i.i.i.i8.i847 = phi ptr [ %i.abp, %bb.cf ], [ %i.abe, %.lr.ph.i.preheader.i.i.i6.i845 ] ; 2 uses
  %.sroa.03.07.i.i.i.i9.i848 = phi ptr [ %i.abo, %bb.cf ], [ %i.aaa, %.lr.ph.i.preheader.i.i.i6.i845 ] ; 2 uses
  %i.abf = load i8, ptr %.sroa.03.07.i.i.i.i9.i848, align 1, !tbaa !112
  %i.abg = load i8, ptr %.sroa.0.08.i.i.i.i8.i847, align 1, !tbaa !112
  %i.abh = zext i8 %i.abf to i64
  %i.abi = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !112
  %i.abk = zext i8 %i.abg to i64
  %i.abl = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !112
  %i.abn = icmp eq i8 %i.abj, %i.abm
  br i1 %i.abn, label %bb.cf, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i842

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i7.i846
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i9.i848, i64 1 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i8.i847, i64 1
  %.not.i.i.i.i10.i849 = icmp eq ptr %i.abo, %i.aaw
  br i1 %.not.i.i.i.i10.i849, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i850, label %.lr.ph.i.i.i.i7.i846, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i842: ; preds = %.lr.ph.i.i.i.i7.i846, %.lr.ph.split.i840
  %.sroa.0.0.i843 = load ptr, ptr %.sroa.0.048.i841, align 8, !tbaa !69 ; 2 uses
  %.not34.i844 = icmp eq ptr %.sroa.0.0.i843, null
  br i1 %.not34.i844, label %.thread29.i824, label %.lr.ph.split.i840, !llvm.loop !20

.thread29.i824:                                   ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i842, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i854, %bb.ce, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i770
  %i.abq = icmp eq i64 %.fr50.i838, 0
  br i1 %i.abq, label %.loopexit933, label %tailrecurse.i.i.i.i826.preheader

tailrecurse.i.i.i.i826.preheader:                 ; preds = %.thread29.i824
  %xtraiter1347 = and i64 %.fr50.i838, 1
  %i.abr = icmp eq i64 %.fr50.i838, 1
  br i1 %i.abr, label %tailrecurse.i.i.i.i826.epil.preheader, label %tailrecurse.i.i.i.i826.preheader.new

tailrecurse.i.i.i.i826.preheader.new:             ; preds = %tailrecurse.i.i.i.i826.preheader
  %unroll_iter1352 = and i64 %.fr50.i838, -2
  br label %tailrecurse.i.i.i.i826

tailrecurse.i.i.i.i826:                           ; preds = %tailrecurse.i.i.i.i826, %tailrecurse.i.i.i.i826.preheader.new
  %.tr811.i.i.i.i827 = phi i64 [ 0, %tailrecurse.i.i.i.i826.preheader.new ], [ %i.aci, %tailrecurse.i.i.i.i826 ]
  %.tr69.i.i.i.i829 = phi ptr [ %i.aaa, %tailrecurse.i.i.i.i826.preheader.new ], [ %i.aca, %tailrecurse.i.i.i.i826 ] ; 3 uses
  %niter1353 = phi i64 [ 0, %tailrecurse.i.i.i.i826.preheader.new ], [ %niter1353.next.1, %tailrecurse.i.i.i.i826 ]
  %i.abs = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i829, i64 1
  %i.abt = mul i64 %.tr811.i.i.i.i827, 33
  %i.abu = load i8, ptr %.tr69.i.i.i.i829, align 1, !tbaa !112
  %i.abv = zext i8 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !112
  %i.aby = zext i8 %i.abx to i64
  %i.abz = xor i64 %i.abt, %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i829, i64 2 ; 2 uses
  %i.acb = mul nuw i64 %i.abz, 33
  %i.acc = and i64 %i.acb, 288230376151711743
  %i.acd = load i8, ptr %i.abs, align 1, !tbaa !112
  %i.ace = zext i8 %i.acd to i64
  %i.acf = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !112
  %i.ach = zext i8 %i.acg to i64
  %i.aci = xor i64 %i.acc, %i.ach                 ; 3 uses
  %niter1353.next.1 = add nuw i64 %niter1353, 2   ; 2 uses
  %niter1353.ncmp.1 = icmp eq i64 %niter1353.next.1, %unroll_iter1352
  br i1 %niter1353.ncmp.1, label %.loopexit933.loopexit.unr-lcssa, label %tailrecurse.i.i.i.i826

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i850: ; preds = %bb.cf, %.lr.ph.split.us.i852
  %.sroa.0.040.sink.i851 = phi ptr [ %.sroa.0.048.us.i853, %.lr.ph.split.us.i852 ], [ %.sroa.0.048.i841, %bb.cf ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0.040.sink.i851, i64 72
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !132
  br label %.loopexit933

.loopexit933.loopexit.unr-lcssa:                  ; preds = %tailrecurse.i.i.i.i826
  %lcmp.mod1349.not = icmp eq i64 %xtraiter1347, 0
  br i1 %lcmp.mod1349.not, label %.loopexit933, label %tailrecurse.i.i.i.i826.epil.preheader

tailrecurse.i.i.i.i826.epil.preheader:            ; preds = %.loopexit933.loopexit.unr-lcssa, %tailrecurse.i.i.i.i826.preheader
  %.tr811.i.i.i.i827.epil.init = phi i64 [ 0, %tailrecurse.i.i.i.i826.preheader ], [ %i.aci, %.loopexit933.loopexit.unr-lcssa ]
  %.tr69.i.i.i.i829.epil.init = phi ptr [ %i.aaa, %tailrecurse.i.i.i.i826.preheader ], [ %i.aca, %.loopexit933.loopexit.unr-lcssa ]
  %lcmp.mod1351 = trunc i64 %.fr50.i838 to i1
  call void @llvm.assume(i1 %lcmp.mod1351)
  %i.acl = mul i64 %.tr811.i.i.i.i827.epil.init, 33
  %i.acm = and i64 %i.acl, 288230376151711743
  %i.acn = load i8, ptr %.tr69.i.i.i.i829.epil.init, align 1, !tbaa !112
  %i.aco = zext i8 %i.acn to i64
  %i.acp = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.aco
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !112
  %i.acr = zext i8 %i.acq to i64
  %i.acs = xor i64 %i.acm, %i.acr
  br label %.loopexit933

.loopexit933:                                     ; preds = %tailrecurse.i.i.i.i826.epil.preheader, %.loopexit933.loopexit.unr-lcssa, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i850, %.thread29.i824
  %.sroa.026.3.i830 = phi ptr [ null, %.thread29.i824 ], [ %.sroa.0.040.sink.i851, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i850 ], [ null, %.loopexit933.loopexit.unr-lcssa ], [ null, %tailrecurse.i.i.i.i826.epil.preheader ]
  %.sroa.4.3.i831 = phi i64 [ 0, %.thread29.i824 ], [ %i.ack, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i850 ], [ %i.aci, %.loopexit933.loopexit.unr-lcssa ], [ %i.acs, %tailrecurse.i.i.i.i826.epil.preheader ]
  %i.act = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSP_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef %.sroa.026.3.i830, i64 noundef %.sroa.4.3.i831, ptr noundef nonnull %i.zp)
          to label %bb.ch unwind label %bb.cg     ; 0 uses

bb.cg:                                            ; preds = %.loopexit933
  %i.acu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body772

bb.ch:                                            ; preds = %.loopexit933
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.acv = load ptr, ptr %i.aaf, align 8, !tbaa !59 ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %i.aai
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i615, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i614

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i614: ; preds = %bb.ch
  call void @_ZdlPv(ptr noundef %i.acv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i615

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i615: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i614
  %i.acx = load ptr, ptr %44, align 8, !tbaa !59  ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.zt
  br i1 %i.acy, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit619, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i616: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i615
  call void @_ZdlPv(ptr noundef %i.acx) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit619

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit619: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i615, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %bb.ck

bb.ci:                                            ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i606
  %i.acz = landingpad { ptr, i32 }
          cleanup
  %i.ada = load ptr, ptr %43, align 8, !tbaa !59  ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.yv
  br i1 %i.adb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i620

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i620: ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef %i.ada) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i620
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %common.resume

bb.cj:                                            ; preds = %bb.cb
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %.body772

.body772:                                         ; preds = %bb.cg, %bb.cj
  %eh.lpad-body773 = phi { ptr, i32 } [ %i.adc, %bb.cj ], [ %i.acu, %bb.cg ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %common.resume

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i610, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit619, %bb.ca
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !123
  %i.adg = icmp eq i64 %i.adf, 0
  br i1 %i.adg, label %bb.cv, label %.noexc.i624

.noexc.i624:                                      ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.adh = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  store ptr %i.adh, ptr %45, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i64 19, ptr %i.j, align 8, !tbaa !46
  %i.adi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc625 unwind label %bb.cs ; 2 uses

.noexc625:                                        ; preds = %.noexc.i624
  store ptr %i.adi, ptr %45, align 8, !tbaa !59
  %i.adj = load i64, ptr %i.j, align 8, !tbaa !46 ; 3 uses
  store i64 %i.adj, ptr %i.adh, align 8, !tbaa !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.adi, ptr noundef nonnull align 1 dereferenceable(19) @.str.287, i64 19, i1 false)
  %i.adk = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i64 %i.adj, ptr %i.adk, align 8, !tbaa !123
  %i.adl = load ptr, ptr %45, align 8, !tbaa !59
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.adj
  store i8 0, ptr %i.adm, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  %i.adn = load i64, ptr %i.adk, align 8, !tbaa !123 ; 4 uses
  %i.ado = icmp eq i64 %i.adn, 0
  br i1 %i.ado, label %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i634, label %tailrecurse.i.preheader.i.i.i.i627

tailrecurse.i.preheader.i.i.i.i627:               ; preds = %.noexc625
  %i.adp = load ptr, ptr %45, align 8, !tbaa !59  ; 6 uses
  %xtraiter1354 = and i64 %i.adn, 3               ; 3 uses
  %i.adq = icmp ult i64 %i.adn, 4
  br i1 %i.adq, label %tailrecurse.i.i.i.i.i628.epil.preheader, label %tailrecurse.i.preheader.i.i.i.i627.new

tailrecurse.i.preheader.i.i.i.i627.new:           ; preds = %tailrecurse.i.preheader.i.i.i.i627
  %unroll_iter1359 = and i64 %i.adn, -4
  br label %tailrecurse.i.i.i.i.i628

tailrecurse.i.i.i.i.i628:                         ; preds = %tailrecurse.i.i.i.i.i628, %tailrecurse.i.preheader.i.i.i.i627.new
  %.tr69.i.i.i.i.i629 = phi i32 [ 0, %tailrecurse.i.preheader.i.i.i.i627.new ], [ %i.ael, %tailrecurse.i.i.i.i.i628 ]
  %.tr7.i.i.i.i.i631 = phi ptr [ %i.adp, %tailrecurse.i.preheader.i.i.i.i627.new ], [ %i.aeg, %tailrecurse.i.i.i.i.i628 ] ; 5 uses
  %niter1360 = phi i64 [ 0, %tailrecurse.i.preheader.i.i.i.i627.new ], [ %niter1360.next.3, %tailrecurse.i.i.i.i.i628 ]
  %i.adr = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i631, i64 1
  %i.ads = mul i32 %.tr69.i.i.i.i.i629, 33
  %i.adt = load i8, ptr %.tr7.i.i.i.i.i631, align 1, !tbaa !112
  %i.adu = zext i8 %i.adt to i32
  %i.adv = xor i32 %i.ads, %i.adu
  %i.adw = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i631, i64 2
  %i.adx = mul nuw i32 %i.adv, 33
  %i.ady = load i8, ptr %i.adr, align 1, !tbaa !112
  %i.adz = zext i8 %i.ady to i32
  %i.aea = xor i32 %i.adx, %i.adz
  %i.aeb = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i631, i64 3
  %i.aec = mul nuw i32 %i.aea, 33
  %i.aed = load i8, ptr %i.adw, align 1, !tbaa !112
  %i.aee = zext i8 %i.aed to i32
  %i.aef = xor i32 %i.aec, %i.aee
  %i.aeg = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i631, i64 4 ; 2 uses
  %i.aeh = mul nuw i32 %i.aef, 33
  %i.aei = and i32 %i.aeh, 67108863
  %i.aej = load i8, ptr %i.aeb, align 1, !tbaa !112
  %i.aek = zext i8 %i.aej to i32
  %i.ael = xor i32 %i.aei, %i.aek                 ; 3 uses
  %niter1360.next.3 = add nuw i64 %niter1360, 4   ; 2 uses
  %niter1360.ncmp.3 = icmp eq i64 %niter1360.next.3, %unroll_iter1359
  br i1 %niter1360.ncmp.3, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632.unr-lcssa, label %tailrecurse.i.i.i.i.i628

_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632.unr-lcssa: ; preds = %tailrecurse.i.i.i.i.i628
  %lcmp.mod1356.not = icmp eq i64 %xtraiter1354, 0
  br i1 %lcmp.mod1356.not, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632, label %tailrecurse.i.i.i.i.i628.epil.preheader

tailrecurse.i.i.i.i.i628.epil.preheader:          ; preds = %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632.unr-lcssa, %tailrecurse.i.preheader.i.i.i.i627
  %.tr69.i.i.i.i.i629.epil.init = phi i32 [ 0, %tailrecurse.i.preheader.i.i.i.i627 ], [ %i.ael, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632.unr-lcssa ]
  %.tr7.i.i.i.i.i631.epil.init = phi ptr [ %i.adp, %tailrecurse.i.preheader.i.i.i.i627 ], [ %i.aeg, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632.unr-lcssa ]
  %lcmp.mod1358 = icmp ne i64 %xtraiter1354, 0
  call void @llvm.assume(i1 %lcmp.mod1358)
  br label %tailrecurse.i.i.i.i.i628.epil

tailrecurse.i.i.i.i.i628.epil:                    ; preds = %tailrecurse.i.i.i.i.i628.epil, %tailrecurse.i.i.i.i.i628.epil.preheader
  %.tr69.i.i.i.i.i629.epil = phi i32 [ %i.aer, %tailrecurse.i.i.i.i.i628.epil ], [ %.tr69.i.i.i.i.i629.epil.init, %tailrecurse.i.i.i.i.i628.epil.preheader ]
  %.tr7.i.i.i.i.i631.epil = phi ptr [ %i.aem, %tailrecurse.i.i.i.i.i628.epil ], [ %.tr7.i.i.i.i.i631.epil.init, %tailrecurse.i.i.i.i.i628.epil.preheader ] ; 2 uses
  %epil.iter1355 = phi i64 [ %epil.iter1355.next, %tailrecurse.i.i.i.i.i628.epil ], [ 0, %tailrecurse.i.i.i.i.i628.epil.preheader ]
  %i.aem = getelementptr inbounds nuw i8, ptr %.tr7.i.i.i.i.i631.epil, i64 1
  %i.aen = mul i32 %.tr69.i.i.i.i.i629.epil, 33
  %i.aeo = and i32 %i.aen, 67108863
  %i.aep = load i8, ptr %.tr7.i.i.i.i.i631.epil, align 1, !tbaa !112
  %i.aeq = zext i8 %i.aep to i32
  %i.aer = xor i32 %i.aeo, %i.aeq                 ; 2 uses
  %epil.iter1355.next = add i64 %epil.iter1355, 1 ; 2 uses
  %epil.iter1355.cmp.not = icmp eq i64 %epil.iter1355.next, %xtraiter1354
  br i1 %epil.iter1355.cmp.not, label %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632, label %tailrecurse.i.i.i.i.i628.epil, !llvm.loop !800

_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632: ; preds = %tailrecurse.i.i.i.i.i628.epil, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632.unr-lcssa
  %.lcssa1305 = phi i32 [ %i.ael, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632.unr-lcssa ], [ %i.aer, %tailrecurse.i.i.i.i.i628.epil ]
  switch i32 %.lcssa1305, label %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i634 [
    i32 16923016, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636
    i32 16377058, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636
    i32 49322369, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636
    i32 48576171, label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636
  ]

_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i634: ; preds = %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632, %.noexc625
  %i.aes = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %.noexc635 unwind label %bb.ct

.noexc635:                                        ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i634
  %i.aet = icmp ne ptr %i.aes, null
  %.pre1035 = load ptr, ptr %45, align 8, !tbaa !59
  br label %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636

_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636: ; preds = %.noexc635, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632
  %i.aeu = phi ptr [ %.pre1035, %.noexc635 ], [ %i.adp, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ], [ %i.adp, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ], [ %i.adp, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ], [ %i.adp, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ] ; 2 uses
  %.0.i.i633 = phi i1 [ %i.aet, %.noexc635 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ], [ false, %_ZN14duckdb_httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i632 ]
  %i.aev = icmp eq ptr %i.aeu, %i.adh
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636
  call void @_ZdlPv(ptr noundef %i.aeu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %_ZNK14duckdb_httplib7Request10has_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit636, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br i1 %.0.i.i633, label %bb.cv, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  call void @_ZN14duckdb_httplib39make_bearer_token_authentication_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.410") align 8 %46, ptr noundef nonnull align 8 dereferenceable(32) %i.add, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.am, ptr %5, align 8, !tbaa !281
  %i.aew = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36
          to label %.noexc783 unwind label %bb.cu ; 9 uses

.noexc783:                                        ; preds = %bb.cl
  store ptr null, ptr %i.aew, align 8, !tbaa !69
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aew, i64 24 ; 4 uses
  store ptr %i.aey, ptr %i.aex, align 8, !tbaa !122
  %i.aez = load ptr, ptr %46, align 8, !tbaa !59  ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  %i.afb = icmp eq ptr %i.aez, %i.afa
  br i1 %i.afb, label %bb.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i775

bb.cm:                                            ; preds = %.noexc783
  %i.afc = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !123 ; 3 uses
  %i.afe = icmp ult i64 %i.afd, 16
  call void @llvm.assume(i1 %i.afe)
  %i.aff = add nuw nsw i64 %i.afd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aey, ptr noundef nonnull align 8 dereferenceable(1) %i.afa, i64 %i.aff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i778

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i775: ; preds = %.noexc783
  store ptr %i.aez, ptr %i.aex, align 8, !tbaa !59
  %i.afg = load i64, ptr %i.afa, align 8, !tbaa !112
  store i64 %i.afg, ptr %i.aey, align 8, !tbaa !112
  %.phi.trans.insert.i.i.i776 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %.pre.i.i.i777 = load i64, ptr %.phi.trans.insert.i.i.i776, align 8, !tbaa !123
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i778

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i778: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i775, %bb.cm
  %i.afh = phi ptr [ %i.aez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i775 ], [ %i.aey, %bb.cm ] ; 4 uses
  %i.afi = phi i64 [ %.pre.i.i.i777, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i775 ], [ %i.afd, %bb.cm ]
  %.fr50.i873 = freeze i64 %i.afi                 ; 9 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  store i64 %.fr50.i873, ptr %i.afk, align 8, !tbaa !123
  store ptr %i.afa, ptr %46, align 8, !tbaa !59
  store i64 0, ptr %i.afj, align 8, !tbaa !123
  store i8 0, ptr %i.afa, align 8, !tbaa !112
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aew, i64 40 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aew, i64 56 ; 3 uses
  store ptr %i.afn, ptr %i.afl, align 8, !tbaa !122
  %i.afo = load ptr, ptr %i.afm, align 8, !tbaa !59 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %46, i64 48 ; 6 uses
  %i.afq = icmp eq ptr %i.afo, %i.afp
  br i1 %i.afq, label %bb.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i779

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i778
  %i.afr = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.afs = load i64, ptr %i.afr, align 8, !tbaa !123 ; 3 uses
  %i.aft = icmp ult i64 %i.afs, 16
  call void @llvm.assume(i1 %i.aft)
  %i.afu = add nuw nsw i64 %i.afs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.afn, ptr noundef nonnull align 8 dereferenceable(1) %i.afp, i64 %i.afu, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i782

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i779: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i778
  store ptr %i.afo, ptr %i.afl, align 8, !tbaa !59
  %i.afv = load i64, ptr %i.afp, align 8, !tbaa !112
  store i64 %i.afv, ptr %i.afn, align 8, !tbaa !112
  %.phi.trans.insert9.i.i.i780 = getelementptr inbounds nuw i8, ptr %46, i64 40
  %.pre10.i.i.i781 = load i64, ptr %.phi.trans.insert9.i.i.i780, align 8, !tbaa !123
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i782

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i782: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i779, %bb.cn
  %i.afw = phi i64 [ %i.afs, %bb.cn ], [ %.pre10.i.i.i781, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i779 ]
  %i.afx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.afy = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aew, i64 48
  store i64 %i.afw, ptr %i.afz, align 8, !tbaa !123
  store ptr %i.afp, ptr %i.afm, align 8, !tbaa !59
  store i64 0, ptr %i.afy, align 8, !tbaa !123
  store i8 0, ptr %i.afp, align 8, !tbaa !112
  store ptr %i.aew, ptr %i.afx, align 8, !tbaa !282
  %i.aga = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !254
  %.not.not.i858 = icmp eq i64 %i.agb, 0
  br i1 %.not.not.i858, label %bb.co, label %.thread29.i859

bb.co:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i782
  %i.agc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.0.046.i870 = load ptr, ptr %i.agc, align 8, !tbaa !69 ; 3 uses
  %.not3447.i871 = icmp eq ptr %.sroa.0.046.i870, null
  br i1 %.not3447.i871, label %.thread29.i859, label %.lr.ph.i872

.lr.ph.i872:                                      ; preds = %bb.co
  %.not6.i.i.i.i5.i874 = icmp eq i64 %.fr50.i873, 0
  br i1 %.not6.i.i.i.i5.i874, label %.lr.ph.split.us.i887, label %.lr.ph.split.i875.preheader

.lr.ph.split.i875.preheader:                      ; preds = %.lr.ph.i872
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afh, i64 %.fr50.i873
  br label %.lr.ph.split.i875

.lr.ph.split.us.i887:                             ; preds = %.lr.ph.i872, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i889
  %.sroa.0.048.us.i888 = phi ptr [ %.sroa.0.0.us.i890, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i889 ], [ %.sroa.0.046.i870, %.lr.ph.i872 ] ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.0.048.us.i888, i64 16
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !123
  %i.agg = icmp eq i64 %i.agf, 0
  br i1 %i.agg, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i885, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i889

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i889: ; preds = %.lr.ph.split.us.i887
  %.sroa.0.0.us.i890 = load ptr, ptr %.sroa.0.048.us.i888, align 8, !tbaa !69 ; 2 uses
  %.not34.us.i891 = icmp eq ptr %.sroa.0.0.us.i890, null
  br i1 %.not34.us.i891, label %.thread29.i859, label %.lr.ph.split.us.i887, !llvm.loop !20

.lr.ph.split.i875:                                ; preds = %.lr.ph.split.i875.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i877
  %.sroa.0.048.i876 = phi ptr [ %.sroa.0.0.i878, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i877 ], [ %.sroa.0.046.i870, %.lr.ph.split.i875.preheader ] ; 4 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i876, i64 16
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !123
  %i.agj = icmp eq i64 %.fr50.i873, %i.agi
  br i1 %i.agj, label %.lr.ph.i.preheader.i.i.i6.i880, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i877

.lr.ph.i.preheader.i.i.i6.i880:                   ; preds = %.lr.ph.split.i875
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.0.048.i876, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i7.i881

.lr.ph.i.i.i.i7.i881:                             ; preds = %bb.cp, %.lr.ph.i.preheader.i.i.i6.i880
  %.sroa.0.08.i.i.i.i8.i882 = phi ptr [ %i.agw, %bb.cp ], [ %i.agl, %.lr.ph.i.preheader.i.i.i6.i880 ] ; 2 uses
  %.sroa.03.07.i.i.i.i9.i883 = phi ptr [ %i.agv, %bb.cp ], [ %i.afh, %.lr.ph.i.preheader.i.i.i6.i880 ] ; 2 uses
  %i.agm = load i8, ptr %.sroa.03.07.i.i.i.i9.i883, align 1, !tbaa !112
  %i.agn = load i8, ptr %.sroa.0.08.i.i.i.i8.i882, align 1, !tbaa !112
  %i.ago = zext i8 %i.agm to i64
  %i.agp = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ago
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !112
  %i.agr = zext i8 %i.agn to i64
  %i.ags = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.agr
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !112
  %i.agu = icmp eq i8 %i.agq, %i.agt
  br i1 %i.agu, label %bb.cp, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i877

bb.cp:                                            ; preds = %.lr.ph.i.i.i.i7.i881
  %i.agv = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i9.i883, i64 1 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i8.i882, i64 1
  %.not.i.i.i.i10.i884 = icmp eq ptr %i.agv, %i.agd
  br i1 %.not.i.i.i.i10.i884, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i885, label %.lr.ph.i.i.i.i7.i881, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i877: ; preds = %.lr.ph.i.i.i.i7.i881, %.lr.ph.split.i875
  %.sroa.0.0.i878 = load ptr, ptr %.sroa.0.048.i876, align 8, !tbaa !69 ; 2 uses
  %.not34.i879 = icmp eq ptr %.sroa.0.0.i878, null
  br i1 %.not34.i879, label %.thread29.i859, label %.lr.ph.split.i875, !llvm.loop !20

.thread29.i859:                                   ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.i877, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit11.us.i889, %bb.co, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS6_IS5_S5_EEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit.i782
  %i.agx = icmp eq i64 %.fr50.i873, 0
  br i1 %i.agx, label %.loopexit930, label %tailrecurse.i.i.i.i861.preheader

tailrecurse.i.i.i.i861.preheader:                 ; preds = %.thread29.i859
  %xtraiter1361 = and i64 %.fr50.i873, 1
  %i.agy = icmp eq i64 %.fr50.i873, 1
  br i1 %i.agy, label %tailrecurse.i.i.i.i861.epil.preheader, label %tailrecurse.i.i.i.i861.preheader.new

tailrecurse.i.i.i.i861.preheader.new:             ; preds = %tailrecurse.i.i.i.i861.preheader
  %unroll_iter1366 = and i64 %.fr50.i873, -2
  br label %tailrecurse.i.i.i.i861

tailrecurse.i.i.i.i861:                           ; preds = %tailrecurse.i.i.i.i861, %tailrecurse.i.i.i.i861.preheader.new
  %.tr811.i.i.i.i862 = phi i64 [ 0, %tailrecurse.i.i.i.i861.preheader.new ], [ %i.ahp, %tailrecurse.i.i.i.i861 ]
  %.tr69.i.i.i.i864 = phi ptr [ %i.afh, %tailrecurse.i.i.i.i861.preheader.new ], [ %i.ahh, %tailrecurse.i.i.i.i861 ] ; 3 uses
  %niter1367 = phi i64 [ 0, %tailrecurse.i.i.i.i861.preheader.new ], [ %niter1367.next.1, %tailrecurse.i.i.i.i861 ]
  %i.agz = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i864, i64 1
  %i.aha = mul i64 %.tr811.i.i.i.i862, 33
  %i.ahb = load i8, ptr %.tr69.i.i.i.i864, align 1, !tbaa !112
  %i.ahc = zext i8 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !112
  %i.ahf = zext i8 %i.ahe to i64
  %i.ahg = xor i64 %i.aha, %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i864, i64 2 ; 2 uses
  %i.ahi = mul nuw i64 %i.ahg, 33
  %i.ahj = and i64 %i.ahi, 288230376151711743
  %i.ahk = load i8, ptr %i.agz, align 1, !tbaa !112
  %i.ahl = zext i8 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ahl
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !112
  %i.aho = zext i8 %i.ahn to i64
  %i.ahp = xor i64 %i.ahj, %i.aho                 ; 3 uses
  %niter1367.next.1 = add nuw i64 %niter1367, 2   ; 2 uses
  %niter1367.ncmp.1 = icmp eq i64 %niter1367.next.1, %unroll_iter1366
  br i1 %niter1367.ncmp.1, label %.loopexit930.loopexit.unr-lcssa, label %tailrecurse.i.i.i.i861

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i885: ; preds = %bb.cp, %.lr.ph.split.us.i887
  %.sroa.0.040.sink.i886 = phi ptr [ %.sroa.0.048.us.i888, %.lr.ph.split.us.i887 ], [ %.sroa.0.048.i876, %bb.cp ] ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.0.040.sink.i886, i64 72
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !132
  br label %.loopexit930

.loopexit930.loopexit.unr-lcssa:                  ; preds = %tailrecurse.i.i.i.i861
  %lcmp.mod1363.not = icmp eq i64 %xtraiter1361, 0
  br i1 %lcmp.mod1363.not, label %.loopexit930, label %tailrecurse.i.i.i.i861.epil.preheader

tailrecurse.i.i.i.i861.epil.preheader:            ; preds = %.loopexit930.loopexit.unr-lcssa, %tailrecurse.i.i.i.i861.preheader
  %.tr811.i.i.i.i862.epil.init = phi i64 [ 0, %tailrecurse.i.i.i.i861.preheader ], [ %i.ahp, %.loopexit930.loopexit.unr-lcssa ]
  %.tr69.i.i.i.i864.epil.init = phi ptr [ %i.afh, %tailrecurse.i.i.i.i861.preheader ], [ %i.ahh, %.loopexit930.loopexit.unr-lcssa ]
  %lcmp.mod1365 = trunc i64 %.fr50.i873 to i1
  call void @llvm.assume(i1 %lcmp.mod1365)
  %i.ahs = mul i64 %.tr811.i.i.i.i862.epil.init, 33
  %i.aht = and i64 %i.ahs, 288230376151711743
  %i.ahu = load i8, ptr %.tr69.i.i.i.i864.epil.init, align 1, !tbaa !112
  %i.ahv = zext i8 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ahv
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !112
  %i.ahy = zext i8 %i.ahx to i64
  %i.ahz = xor i64 %i.aht, %i.ahy
  br label %.loopexit930

.loopexit930:                                     ; preds = %tailrecurse.i.i.i.i861.epil.preheader, %.loopexit930.loopexit.unr-lcssa, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i885, %.thread29.i859
  %.sroa.026.3.i865 = phi ptr [ null, %.thread29.i859 ], [ %.sroa.0.040.sink.i886, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i885 ], [ null, %.loopexit930.loopexit.unr-lcssa ], [ null, %tailrecurse.i.i.i.i861.epil.preheader ]
  %.sroa.4.3.i866 = phi i64 [ 0, %.thread29.i859 ], [ %i.ahr, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.sink.split.i885 ], [ %i.ahp, %.loopexit930.loopexit.unr-lcssa ], [ %i.ahz, %tailrecurse.i.i.i.i861.epil.preheader ]
  %i.aia = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSP_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef %.sroa.026.3.i865, i64 noundef %.sroa.4.3.i866, ptr noundef nonnull %i.aew)
          to label %bb.cr unwind label %bb.cq     ; 0 uses

bb.cq:                                            ; preds = %.loopexit930
  %i.aib = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body784

bb.cr:                                            ; preds = %.loopexit930
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aic = load ptr, ptr %i.afm, align 8, !tbaa !59 ; 2 uses
  %i.aid = icmp eq ptr %i.aic, %i.afp
  br i1 %i.aid, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i643, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i642

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i642: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.aic) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i643

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i643: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i642
  %i.aie = load ptr, ptr %46, align 8, !tbaa !59  ; 2 uses
  %i.aif = icmp eq ptr %i.aie, %i.afa
  br i1 %i.aif, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit647, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i644: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i643
  call void @_ZdlPv(ptr noundef %i.aie) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit647

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit647: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i643, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i644
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.cv

bb.cs:                                            ; preds = %.noexc.i624
  %i.aig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650

bb.ct:                                            ; preds = %_ZN14duckdb_httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i634
  %i.aih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aii = load ptr, ptr %45, align 8, !tbaa !59  ; 2 uses
  %i.aij = icmp eq ptr %i.aii, %i.adh
  br i1 %i.aij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648: ; preds = %bb.ct
  call void @_ZdlPv(ptr noundef %i.aii) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648, %bb.cs
  %.pn189 = phi { ptr, i32 } [ %i.aig, %bb.cs ], [ %i.aih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648 ], [ %i.aih, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  br label %common.resume

bb.cu:                                            ; preds = %bb.cl
  %i.aik = landingpad { ptr, i32 }
          cleanup
  br label %.body784

.body784:                                         ; preds = %bb.cq, %bb.cu
  %eh.lpad-body785 = phi { ptr, i32 } [ %i.aik, %bb.cu ], [ %i.aib, %bb.cq ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %46) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %common.resume

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit647, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN14duckdb_httplib6detail12BufferStreamE, i64 16), ptr %47, align 8, !tbaa !82
  %i.ail = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 4 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 4 uses
  store ptr %i.aim, ptr %i.ail, align 8, !tbaa !122
  %i.ain = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  store i64 0, ptr %i.ain, align 8, !tbaa !123
  store i8 0, ptr %i.aim, align 8, !tbaa !112
  %i.aio = getelementptr inbounds nuw i8, ptr %47, i64 40
  store i64 0, ptr %i.aio, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  %i.aip = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 6 uses
  store ptr %i.aip, ptr %48, align 8, !tbaa !122
  %i.aiq = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 5 uses
  store i64 0, ptr %i.aiq, align 8, !tbaa !123
  store i8 0, ptr %i.aip, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #24
  %i.air = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  store ptr %i.air, ptr %49, align 8, !tbaa !122
  %i.ais = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 6 uses
  store i64 0, ptr %i.ais, align 8, !tbaa !123
  store i8 0, ptr %i.air, align 8, !tbaa !112
  %i.ait = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.aiu = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ait, i8 noundef signext 63, i64 noundef 0) #24 ; 4 uses
  %.not = icmp eq i64 %i.aiu, -1
  br i1 %.not, label %bb.dq, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.aiv = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aiw = load i64, ptr %i.aiv, align 8, !tbaa !123, !noalias !816
  %i.aix = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 8 uses
  store ptr %i.aix, ptr %50, align 8, !tbaa !122, !alias.scope !816
  %i.aiy = load ptr, ptr %i.ait, align 8, !tbaa !59, !noalias !816 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aiu, i64 %i.aiw) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24, !noalias !816
  store i64 %spec.select.i.i.i, ptr %i.i, align 8, !tbaa !46, !noalias !816
  %i.aiz = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.aiz, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.cw
  %i.aja = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc651 unwind label %bb.do ; 2 uses

.noexc651:                                        ; preds = %.noexc10.i.i
  store ptr %i.aja, ptr %50, align 8, !tbaa !59, !alias.scope !816
  %i.ajb = load i64, ptr %i.i, align 8, !tbaa !46, !noalias !816
  store i64 %i.ajb, ptr %i.aix, align 8, !tbaa !112, !alias.scope !816
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc651, %bb.cw
  %i.ajc = phi ptr [ %i.aja, %.noexc651 ], [ %i.aix, %bb.cw ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %bb.cz
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i.i
  %i.ajd = load i8, ptr %i.aiy, align 1, !tbaa !112
  store i8 %i.ajd, ptr %i.ajc, align 1, !tbaa !112
  br label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ajc, ptr align 1 %i.aiy, i64 %spec.select.i.i.i, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i.i
  %i.aje = load i64, ptr %i.i, align 8, !tbaa !46, !noalias !816 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 6 uses
  store i64 %i.aje, ptr %i.ajf, align 8, !tbaa !123, !alias.scope !816
  %i.ajg = load ptr, ptr %50, align 8, !tbaa !59, !alias.scope !816
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %i.aje
  store i8 0, ptr %i.ajh, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24, !noalias !816
  %i.aji = load ptr, ptr %48, align 8, !tbaa !59  ; 6 uses
  %i.ajj = icmp eq ptr %i.aji, %i.aip
  %i.ajk = load ptr, ptr %50, align 8, !tbaa !59  ; 5 uses
  %i.ajl = icmp eq ptr %i.ajk, %i.aix             ; 2 uses
  br i1 %i.ajj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.cz
  br i1 %i.ajl, label %bb.da, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.cz
  br i1 %i.ajl, label %bb.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ajm = load i64, ptr %i.ajf, align 8, !tbaa !123 ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, 16
  call void @llvm.assume(i1 %i.ajn)
  switch i64 %i.ajm, label %bb.dc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.db
  ]
end_hunk_4
begin_hunk_5_@_ZN14duckdb_httplib10ClientImpl22create_redirect_clientERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iRNS_7RequestERNS_8ResponseES8_S8_RNS_5ErrorE:bb.a
  %.sroa.082.0107 = phi ptr [ %i.af, %.lr.ph108 ], [ %i.gl, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge ] ; 6 uses
  %i.bs = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.082.0107)
          to label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit.preheader unwind label %bb.aa ; 2 uses

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit.preheader: ; preds = %bb.f
  %.not94104 = icmp eq ptr %i.bs, null
  br i1 %.not94104, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.082.0107, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68
  %storemerge105 = phi ptr [ %i.bs, %.lr.ph ], [ %.sroa.06.1.i, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68 ] ; 9 uses
  %i.bu = load i64, ptr %i.az, align 8, !tbaa !71 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge105, i64 72
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !132
  %i.bx = urem i64 %i.bw, %i.bu                   ; 3 uses
  %i.by = load ptr, ptr %i.ay, align 8, !tbaa !70 ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !130 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.ca, %bb.g ], [ %i.cb, %bb.h ] ; 4 uses
  %i.cb = load ptr, ptr %.0.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, %storemerge105
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i, label %bb.h, !llvm.loop !1006

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i: ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge105, i64 8
  %i.cd = icmp eq ptr %.0.i.i, %i.ca
  %i.ce = load ptr, ptr %storemerge105, align 8, !tbaa !69 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ce, null           ; 2 uses
  br i1 %i.cd, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i
  br i1 %.not18.i.i, label %._crit_edge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !132
  %i.ch = urem i64 %i.cg, %i.bu                   ; 2 uses
  %.not9.i.i.i = icmp eq i64 %i.ch, %i.bx
  br i1 %.not9.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ch
  store ptr %i.ca, ptr %i.ci, align 8, !tbaa !130
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.i
  %i.cj = icmp eq ptr %i.ba, %i.ca
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  store ptr %i.ce, ptr %i.ba, align 8, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i
  store ptr null, ptr %i.bz, align 8, !tbaa !130
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i

bb.n:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i
  br i1 %.not18.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !132
  %i.cm = urem i64 %i.cl, %i.bu                   ; 2 uses
  %.not17.i.i = icmp eq i64 %i.cm, %i.bx
  br i1 %.not17.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cm
  store ptr %.0.i.i, ptr %i.cn, align 8, !tbaa !130
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.j
  %i.co = load ptr, ptr %storemerge105, align 8, !tbaa !69
  store ptr %i.co, ptr %.0.i.i, align 8, !tbaa !69
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge105, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !59 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge105, i64 56
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i
  call void @_ZdlPv(ptr noundef %i.cq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSE_4hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i77
  %i.ct = load ptr, ptr %i.cc, align 8, !tbaa !59 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge105, i64 24
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ct) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %storemerge105) #33
  %i.cw = load i64, ptr %i.bb, align 8, !tbaa !254
  %i.cx = add i64 %i.cw, -1                       ; 2 uses
  store i64 %i.cx, ptr %i.bb, align 8, !tbaa !254
  %.not.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.not.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i.i.i
  %.sroa.06.017.i = load ptr, ptr %i.ba, align 8, !tbaa !69 ; 3 uses
  %.not18.i = icmp eq ptr %.sroa.06.017.i, null
  br i1 %.not18.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.cy = load i64, ptr %i.bt, align 8, !tbaa !123
  %.fr.i = freeze i64 %i.cy                       ; 3 uses
  %i.cz = load ptr, ptr %.sroa.082.0107, align 8  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.fr.i
  %.not6.i.i.i.i.i = icmp eq i64 %.fr.i, 0
  br i1 %.not6.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i
  %.sroa.06.019.us.i = phi ptr [ %.sroa.06.0.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i ], [ %.sroa.06.017.i, %.lr.ph.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.06.019.us.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !123
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.06.0.us.i = load ptr, ptr %.sroa.06.019.us.i, align 8, !tbaa !69 ; 2 uses
  %.not.us.i = icmp eq ptr %.sroa.06.0.us.i, null
  br i1 %.not.us.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %.lr.ph.split.us.i, !llvm.loop !14

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i
  %.sroa.06.019.i = phi ptr [ %.sroa.06.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ %.sroa.06.017.i, %.lr.ph.i ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !123
  %i.dg = icmp eq i64 %.fr.i, %i.df
  br i1 %i.dg, label %.lr.ph.i.preheader.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.lr.ph.split.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.06.019.i, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.dt, %bb.r ], [ %i.di, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ds, %bb.r ], [ %i.cz, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.dj = load i8, ptr %.sroa.03.07.i.i.i.i.i, align 1, !tbaa !112
  %i.dk = load i8, ptr %.sroa.0.08.i.i.i.i.i, align 1, !tbaa !112
  %i.dl = zext i8 %i.dj to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !112
  %i.do = zext i8 %i.dk to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !112
  %i.dr = icmp eq i8 %i.dn, %i.dq
  br i1 %i.dr, label %bb.r, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i = icmp eq ptr %i.ds, %i.da
  br i1 %.not.i.i.i.i.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.split.i
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.019.i, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %.lr.ph.split.i, !llvm.loop !14

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i.i.i
  %i.du = load i64, ptr %i.bt, align 8, !tbaa !123
  %.fr.i.i.i = freeze i64 %i.du                   ; 7 uses
  %i.dv = icmp eq i64 %.fr.i.i.i, 0               ; 2 uses
  br i1 %i.dv, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i, label %tailrecurse.i.preheader.i.i.i

tailrecurse.i.preheader.i.i.i:                    ; preds = %bb.s
  %i.dw = load ptr, ptr %.sroa.082.0107, align 8, !tbaa !59 ; 2 uses
  %xtraiter = and i64 %.fr.i.i.i, 1
  %i.dx = icmp eq i64 %.fr.i.i.i, 1
  br i1 %i.dx, label %tailrecurse.i.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.i.new

tailrecurse.i.preheader.i.i.i.new:                ; preds = %tailrecurse.i.preheader.i.i.i
  %unroll_iter = and i64 %.fr.i.i.i, -2
  br label %tailrecurse.i.i.i.i

tailrecurse.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i, %tailrecurse.i.preheader.i.i.i.new
  %.tr811.i.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.i.new ], [ %i.eo, %tailrecurse.i.i.i.i ]
  %.tr69.i.i.i.i = phi ptr [ %i.dw, %tailrecurse.i.preheader.i.i.i.new ], [ %i.eg, %tailrecurse.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i, i64 1
  %i.dz = mul i64 %.tr811.i.i.i.i, 33
  %i.ea = load i8, ptr %.tr69.i.i.i.i, align 1, !tbaa !112
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !112
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %i.dz, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i.i, i64 2 ; 2 uses
  %i.eh = mul nuw i64 %i.ef, 33
  %i.ei = and i64 %i.eh, 288230376151711743
  %i.ej = load i8, ptr %i.dy, align 1, !tbaa !112
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !112
  %i.en = zext i8 %i.em to i64
  %i.eo = xor i64 %i.ei, %i.en                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.loopexit.unr-lcssa, label %tailrecurse.i.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i, label %tailrecurse.i.i.i.i.epil.preheader

tailrecurse.i.i.i.i.epil.preheader:               ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i.i
  %.tr811.i.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i.i ], [ %i.eo, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.loopexit.unr-lcssa ]
  %.tr69.i.i.i.i.epil.init = phi ptr [ %i.dw, %tailrecurse.i.preheader.i.i.i ], [ %i.eg, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod190 = trunc i64 %.fr.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.ep = mul i64 %.tr811.i.i.i.i.epil.init, 33
  %i.eq = and i64 %i.ep, 288230376151711743
  %i.er = load i8, ptr %.tr69.i.i.i.i.epil.init, align 1, !tbaa !112
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !112
  %i.ev = zext i8 %i.eu to i64
  %i.ew = xor i64 %i.eq, %i.ev
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %tailrecurse.i.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.loopexit.unr-lcssa, %bb.s
  %.tr8.lcssa.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.eo, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.loopexit.unr-lcssa ], [ %i.ew, %tailrecurse.i.i.i.i.epil.preheader ] ; 3 uses
  %i.ex = load i64, ptr %i.az, align 8, !tbaa !71 ; 3 uses
  %i.ey = urem i64 %.tr8.lcssa.i.i.i.i, %i.ex     ; 3 uses
  %i.ez = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ey
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !130 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i79, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %bb.t

bb.t:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !69 ; 3 uses
  %i.fd = load ptr, ptr %.sroa.082.0107, align 8  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.fr.i.i.i
  %.phi.trans.insert28.i.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %.pre29.i.i.i = load i64, ptr %.phi.trans.insert28.i.i.i, align 8, !tbaa !132 ; 2 uses
  br i1 %i.dv, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.t, %bb.w
  %i.ff = phi i64 [ %i.fm, %bb.w ], [ %.pre29.i.i.i, %bb.t ]
  %.0.us.i.i.i = phi ptr [ %i.fk, %bb.w ], [ %i.fc, %bb.t ] ; 3 uses
  %i.fg = icmp eq i64 %.tr8.lcssa.i.i.i.i, %i.ff
  br i1 %i.fg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.split.us.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !123
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68, label %bb.v

bb.v:                                             ; preds = %bb.u, %.split.us.i.i.i
  %i.fk = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not18.us.i.i.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !132 ; 2 uses
  %i.fn = urem i64 %i.fm, %i.ex
  %.not19.us.i.i.i = icmp eq i64 %i.fn, %i.ey
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, !llvm.loop !16

.split.i.i.i:                                     ; preds = %bb.t, %bb.z
  %i.fo = phi i64 [ %i.gi, %bb.z ], [ %.pre29.i.i.i, %bb.t ]
  %.0.i.i.i = phi ptr [ %i.gg, %bb.z ], [ %i.fc, %bb.t ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.fq = icmp eq i64 %.tr8.lcssa.i.i.i.i, %i.fo
  br i1 %i.fq, label %bb.x, label %.loopexit.i.i.i

bb.x:                                             ; preds = %.split.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !123
  %i.ft = icmp eq i64 %.fr.i.i.i, %i.fs
  br i1 %i.ft, label %.lr.ph.i.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.x
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !59
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.y, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fu, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %i.fd, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.fv = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.fw = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.i, align 1, !tbaa !112
  %i.fx = zext i8 %i.fv to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !112
  %i.ga = zext i8 %i.fw to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZZN14duckdb_httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !112
  %i.gd = icmp eq i8 %i.fz, %i.gc
  br i1 %i.gd, label %bb.y, label %.loopexit.i.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fe
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.x, %.split.i.i.i
  %i.gg = load ptr, ptr %.0.i.i.i, align 8, !tbaa !69 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not18.i.i.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %bb.z

bb.z:                                             ; preds = %.loopexit.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 72
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !132 ; 2 uses
  %i.gj = urem i64 %i.gi, %i.ex
  %.not19.i.i.i = icmp eq i64 %i.gj, %i.ey
  br i1 %.not19.i.i.i, label %.split.i.i.i, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, !llvm.loop !16

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68: ; preds = %bb.u, %.lr.ph.split.us.i, %bb.y, %bb.r
  %.sroa.06.1.i = phi ptr [ %.0.i.i.i, %bb.y ], [ %.sroa.06.019.us.i, %.lr.ph.split.us.i ], [ %.sroa.06.019.i, %bb.r ], [ %.0.us.i.i.i, %bb.u ] ; 2 uses
  %.not94 = icmp eq ptr %.sroa.06.1.i, null
  br i1 %.not94, label %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge, label %bb.g

bb.aa:                                            ; preds = %bb.f
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body72

_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit._crit_edge: ; preds = %bb.q, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit68, %bb.z, %.loopexit.i.i.i, %bb.v, %bb.w, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN14duckdb_httplib6detail11case_ignore8equal_toENSD_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i, %_ZNSt18unordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_N14duckdb_httplib6detail11case_ignore4hashENS8_8equal_toESaISt4pairIKS5_S5_EEE4findERSC_.exit.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.082.0107, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.gl, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  store i32 8, ptr %8, align 4, !tbaa !313
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !48
  %.not.i.i.not.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.not.i, label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.gq = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.gp) #24 ; 2 uses
  %.not.i.i4.i = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i4.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.gq) #32
          to label %.noexc71 unwind label %bb.ai

.noexc71:                                         ; preds = %bb.ad
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !383
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !48
  %.not.i.i5.i69 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i5.i69, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc.i70 unwind label %bb.ah

.noexc.i70:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !384
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ag unwind label %bb.ah, !inline_history !27

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gp) #24 ; 0 uses
  br label %_ZNK14duckdb_httplib10ClientImpl16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.gv = landingpad { ptr, i32 }
          cleanup
  %i.gw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.gp) #24 ; 0 uses
  br label %.body72

bb.ai:                                            ; preds = %bb.ad
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body72

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.gy, ptr %9, align 8, !tbaa !122
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.gz, align 8, !tbaa !123
end_hunk_5
