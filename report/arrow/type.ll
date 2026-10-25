Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/type?download=true
inline.NumInlined: 11292
inline.NumDeleted: 4276
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNS8_10_Hash_nodeIS6_Lb1EEEmSM_:bb.a
bb.k:                                             ; preds = %.split.us.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 8
  %.sroa.0.0.copyload.i.i.i.us.i = load i64, ptr %i.ag, align 8, !tbaa !288
  %i.ah = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.i, 0
  br i1 %i.ah, label %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.split.us.i
  %i.ai = load ptr, ptr %.0.us.i, align 8, !tbaa !285 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.ai, null
  br i1 %.not18.us.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !287 ; 2 uses
  %i.al = urem i64 %i.ak, %i.ad
  %.not19.us.i = icmp eq i64 %i.al, %i.u
  br i1 %.not19.us.i, label %.split.us.i, label %.loopexit, !llvm.loop !56

.split.i:                                         ; preds = %bb.j, %bb.p
  %i.am = phi i64 [ %i.at, %bb.p ], [ %.pre26.i, %bb.j ]
  %.015.i = phi ptr [ %.0.i, %bb.p ], [ %i.aa, %bb.j ]
  %.0.i = phi ptr [ %i.ar, %bb.p ], [ %i.ab, %bb.j ] ; 5 uses
  %i.an = icmp eq i64 %2, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !288
  %i.ap = icmp eq i64 %.sroa.01.0.copyload.i.i.i.fr.i, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, label %bb.o

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !246
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.fr.i)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aq, label %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.n, %.split.i
  %i.ar = load ptr, ptr %.0.i, align 8, !tbaa !285 ; 3 uses
  %.not18.i = icmp eq ptr %i.ar, null
  br i1 %.not18.i, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !287 ; 2 uses
  %i.au = urem i64 %i.at, %i.ad
  %.not19.i = icmp eq i64 %i.au, %i.u
  br i1 %.not19.i, label %.split.i, label %.loopexit, !llvm.loop !56

_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.k
  %i.av = phi ptr [ %.0.us.i, %bb.k ], [ %.0.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %i.aw = phi ptr [ %.015.us.i, %bb.k ], [ %.015.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.av, ptr %3, align 8, !tbaa !285
  store ptr %3, ptr %i.aw, align 8, !tbaa !285
  %i.ax = icmp eq ptr %i.aw, %1
  br i1 %i.ax, label %bb.q, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit, !prof !105

bb.q:                                             ; preds = %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit.thread41, %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit
  %i.ay = load ptr, ptr %3, align 8, !tbaa !285   ; 2 uses
  %.not36 = icmp eq ptr %i.ay, null
  br i1 %.not36, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = tail call noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_iENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueIS7_Lb1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
  br i1 %i.ba, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %3, align 8, !tbaa !285
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !280
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !287
  %i.bf = urem i64 %i.be, %i.bc                   ; 2 uses
  %.not37 = icmp eq i64 %i.bf, %i.u
  br i1 %.not37, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %0, align 8, !tbaa !279
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  store ptr %3, ptr %i.bh, align 8, !tbaa !492
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

.loopexit:                                        ; preds = %bb.o, %bb.p, %bb.l, %bb.m
  %i.bi = load ptr, ptr %i.aa, align 8, !tbaa !285
  store ptr %i.bi, ptr %3, align 8, !tbaa !285
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !492
  store ptr %3, ptr %i.bj, align 8, !tbaa !285
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

.loopexit.thread:                                 ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !284
  store ptr %i.bl, ptr %3, align 8, !tbaa !285
  store ptr %3, ptr %i.bk, align 8, !tbaa !284
  %i.bm = load ptr, ptr %3, align 8, !tbaa !285   ; 2 uses
  %.not11.i = icmp eq ptr %i.bm, null
  br i1 %.not11.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.loopexit.thread
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !280
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !287
  %i.bq = urem i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bq
  store ptr %3, ptr %i.br, align 8, !tbaa !492
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit.thread
  store ptr %i.bk, ptr %i.z, align 8, !tbaa !492
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit: ; preds = %bb.v, %.loopexit, %bb.s, %bb.t, %_ZNKSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_find_before_nodeEmRS5_m.exit, %bb.r, %bb.q
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !423
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.f, align 8, !tbaa !423
  ret ptr %3
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_iENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_equalsERS6_mRKNS_16_Hash_node_valueIS7_Lb1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !287
  %i.c = icmp eq i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_iENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !288 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !246
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !246
  %i.d = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.d, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_iENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %.sroa.01.0.copyload.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.01.0.copyload.i.i)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_iENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  br label %_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_iENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit

_ZNKSt8__detail15_Hashtable_baseISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS4_iENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS6_RKNS_16_Hash_node_valueIS7_Lb1EEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !424
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !132

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !284
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.p
  %.072 = phi i1 [ %or.cond, %bb.p ], [ false, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ]
  %.05271 = phi ptr [ %.05668, %bb.p ], [ null, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 5 uses
  %.05370 = phi i64 [ %i.l, %bb.p ], [ 0, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05469 = phi i64 [ %.155, %bb.p ], [ 0, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 3 uses
  %.05668 = phi ptr [ %i.i, %bb.p ], [ %i.h, %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 13 uses
  %i.i = load ptr, ptr %.05668, align 8, !tbaa !285 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05668, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !287
  %i.l = urem i64 %i.k, %1                        ; 6 uses
  %.not62 = icmp ne ptr %.05271, null
  %i.m = icmp eq i64 %.05370, %i.l
  %or.cond = and i1 %.not62, %i.m                 ; 3 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %.05271, align 8, !tbaa !285
  store ptr %i.n, ptr %.05668, align 8, !tbaa !285
  store ptr %.05668, ptr %.05271, align 8, !tbaa !285
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph
  br i1 %.072, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %.05271, align 8, !tbaa !285 ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !287
  %i.r = urem i64 %i.q, %1                        ; 2 uses
  %.not64 = icmp eq i64 %i.r, %.05370
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.r
  store ptr %.05271, ptr %i.s, align 8, !tbaa !492
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.h
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !492  ; 2 uses
  %.not65 = icmp eq ptr %i.u, null
  br i1 %.not65, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !284
  store ptr %i.v, ptr %.05668, align 8, !tbaa !285
  store ptr %.05668, ptr %i.g, align 8, !tbaa !284
  store ptr %i.g, ptr %i.t, align 8, !tbaa !492
  %i.w = load ptr, ptr %.05668, align 8, !tbaa !285
  %.not66 = icmp eq ptr %i.w, null
  br i1 %.not66, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.05469
  store ptr %.05668, ptr %i.x, align 8, !tbaa !492
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !285
  store ptr %i.y, ptr %.05668, align 8, !tbaa !285
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !492
  store ptr %.05668, ptr %i.z, align 8, !tbaa !285
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.g
  %.155 = phi i64 [ %.05469, %bb.g ], [ %.05469, %bb.o ], [ %i.l, %bb.n ], [ %i.l, %bb.m ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2959

._crit_edge:                                      ; preds = %bb.p
  br i1 %or.cond, label %bb.q, label %._crit_edge.thread

bb.q:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %.05668, align 8, !tbaa !285 ; 2 uses
  %.not60 = icmp eq ptr %i.aa, null
  br i1 %.not60, label %._crit_edge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !287
  %i.ad = urem i64 %i.ac, %1                      ; 2 uses
  %.not61 = icmp eq i64 %i.ad, %i.l
  br i1 %.not61, label %._crit_edge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ad
  store ptr %.05668, ptr %i.ae, align 8, !tbaa !492
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.r, %bb.s, %bb.q, %._crit_edge
  %i.af = load ptr, ptr %0, align 8, !tbaa !279   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !280
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ak) #37
  br label %_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge.thread, %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.al, align 8, !tbaa !280
  store ptr %.0.i, ptr %0, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_iESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb0EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEiELb1EEEEE19_M_deallocate_nodesEPS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !285 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 40) #37
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEiELb1EEEEE19_M_deallocate_nodesEPS9_.exit, label %.lr.ph.i, !llvm.loop !18

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt17basic_string_viewIcSt11char_traitsIcEEiELb1EEEEE19_M_deallocate_nodesEPS9_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !279
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !280
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !2960

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81   ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !81
  store i32 %i.k, ptr %i.i, align 4, !tbaa !81
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !81
  %i.x = load i32, ptr %i.v, align 4, !tbaa !81
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !81
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !81
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !57

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !81
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !81 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !81
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ar, align 4, !tbaa !81
  %i.as = icmp sgt i64 %i.m, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !2961

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !81  ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !81 ; 5 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !81 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %0, align 4, !tbaa !81
  store i32 %i.az, ptr %0, align 4, !tbaa !81
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !81
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp slt i32 %i.ay, %i.bb
  %i.bf = load i32, ptr %0, align 4, !tbaa !81    ; 2 uses
end_hunk_0
