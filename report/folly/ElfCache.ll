Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ElfCache?download=true
inline.NumInlined: 691
inline.NumDeleted: 427
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !169
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %i.ag, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !169 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !170 ; 3 uses
  %i.ak = urem i64 %i.ah, %i.aj                   ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !171
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !168 ; 3 uses
  %i.ap = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8               ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq ptr %i.ap, %i.aq
  %.fr.i.i = freeze i1 %i.au
  %.phi.trans.insert24.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.pre25.i.i = load i64, ptr %.phi.trans.insert24.i.i, align 8, !tbaa !174 ; 2 uses
  br i1 %.fr.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.d, %bb.f
  %i.av = phi i64 [ %i.bg, %bb.f ], [ %.pre25.i.i, %bb.d ]
  %.0.us.i.i = phi ptr [ %i.be, %bb.f ], [ %i.ao, %bb.d ] ; 4 uses
  %i.aw = icmp eq i64 %i.ah, %i.av
  br i1 %i.aw, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

bb.e:                                             ; preds = %.split.us.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !80
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not.i.i.i.i.us.i.i = icmp eq i64 %i.at, %i.bd
  br i1 %.not.i.i.i.i.us.i.i, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.e, %.split.us.i.i
  %i.be = load ptr, ptr %.0.us.i.i, align 8, !tbaa !168 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.be, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !174 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.aj
  %.not19.us.i.i = icmp eq i64 %i.bh, %i.ak
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, !llvm.loop !5

.split.i.i:                                       ; preds = %bb.d, %bb.h
  %i.bi = phi i64 [ %i.bu, %bb.h ], [ %.pre25.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.ao, %bb.d ] ; 4 uses
  %i.bj = icmp eq i64 %i.ah, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !81
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !80 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %.not.i.i.i.i.i.i = icmp eq i64 %i.at, %i.bq
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.aq, ptr %i.bn, i64 %i.at)
  %i.br = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.br, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.bs = load ptr, ptr %.0.i.i, align 8, !tbaa !168 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !174 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.aj
  %.not19.i.i = icmp eq i64 %i.bv, %i.ak
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, !llvm.loop !5

_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit: ; preds = %bb.h, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.f, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i, %bb.e, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11.us, %.lr.ph.split.us, %bb.b, %bb.c
  %.sroa.06.1 = phi ptr [ null, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11 ], [ null, %bb.c ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11.us ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit ], [ %.0.us.i.i, %bb.e ], [ null, %bb.f ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i ], [ null, %bb.h ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ]
  ret ptr %.sroa.06.1
}

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(624) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 624) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(624) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN5folly10symbolizer7ElfFileD1Ev(ptr noundef nonnull align 8 dead_on_return(576) dereferenceable(576) %i.b) #21
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt16allocator_traitsISaIvEE7destroyIN5folly10symbolizer8ElfCache5EntryEEEvRS0_PT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !62
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt16allocator_traitsISaIvEE7destroyIN5folly10symbolizer8ElfCache5EntryEEEvRS0_PT_.exit

_ZNSt16allocator_traitsISaIvEE7destroyIN5folly10symbolizer8ElfCache5EntryEEEvRS0_PT_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(624) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 624) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEES5_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.std::_Hashtable<folly::Range<const char *>, std::pair<const folly::Range<const char *>, std::shared_ptr<folly::symbolizer::ElfCache::Entry>>, std::allocator<std::pair<const folly::Range<const char *>, std::shared_ptr<folly::symbolizer::ElfCache::Entry>>>, std::__detail::_Select1st, std::equal_to<folly::Range<const char *>>, folly::Hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !366
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25 ; 8 uses
  store ptr null, ptr %i.d, align 8, !tbaa !168
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !83     ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !78
  %.fr72 = freeze i64 %i.i                        ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr72
  store ptr %i.j, ptr %i.g, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load <2 x ptr>, ptr %2, align 8, !tbaa !61
  store ptr null, ptr %i.m, align 8, !tbaa !60
  store <2 x ptr> %i.n, ptr %i.k, align 8, !tbaa !61
  store ptr null, ptr %2, align 8, !tbaa !71
  store ptr %i.d, ptr %i.c, align 8, !tbaa !178
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !167
  %.not.not = icmp eq i64 %i.p, 0
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.034.055 = load ptr, ptr %i.q, align 8, !tbaa !168 ; 3 uses
  %i.r = icmp eq ptr %.sroa.034.055, null
  br i1 %i.r, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = icmp eq i64 %.fr72, 0
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40.us
  %.sroa.034.056.us = phi ptr [ %.sroa.034.0.us, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40.us ], [ %.sroa.034.055, %.lr.ph ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.034.056.us, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.034.056.us, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !80
  %4 = ptrtoint ptr %i.v to i64
  %5 = ptrtoint ptr %i.w to i64
  %6 = sub i64 %4, %5
  %.not.i.i.i.us = icmp eq i64 %.fr72, %6
  br i1 %.not.i.i.i.us, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40.us

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40.us: ; preds = %.lr.ph.split.us
  %.sroa.034.0.us = load ptr, ptr %.sroa.034.056.us, align 8, !tbaa !168 ; 2 uses
  %i.x = icmp eq ptr %.sroa.034.0.us, null
  br i1 %i.x, label %.critedge, label %.lr.ph.split.us, !llvm.loop !364

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40
  %.sroa.034.056 = phi ptr [ %.sroa.034.0, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40 ], [ %.sroa.034.055, %.lr.ph ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.034.056, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.034.056, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !80  ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not.i.i.i = icmp eq i64 %.fr72, %i.ae
  br i1 %.not.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit: ; preds = %.lr.ph.split
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.ab, i64 %.fr72)
  %i.af = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.af, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit
  %.sroa.034.0 = load ptr, ptr %.sroa.034.056, align 8, !tbaa !168 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.034.0, null
  br i1 %i.ag, label %.critedge, label %.lr.ph.split, !llvm.loop !364

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread40.us, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !169
  invoke void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %i.f, i64 noundef %.fr72, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %.critedge
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !169 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !170 ; 3 uses
  %i.ak = urem i64 %i.ah, %i.aj                   ; 4 uses
  %i.al = load i64, ptr %i.o, align 8, !tbaa !167
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %.critedge28, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %0, align 8, !tbaa !171
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !172 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %.critedge28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !168 ; 3 uses
  %i.aq = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq ptr %i.aq, %i.ar
  %.fr.i.i = freeze i1 %i.av
  %.phi.trans.insert24.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.pre25.i.i = load i64, ptr %.phi.trans.insert24.i.i, align 8, !tbaa !174 ; 2 uses
  br i1 %.fr.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.aw = phi i64 [ %i.bh, %bb.g ], [ %.pre25.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bf, %bb.g ], [ %i.ap, %bb.e ] ; 4 uses
  %i.ax = icmp eq i64 %i.ah, %i.aw
  br i1 %i.ax, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !80
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %.not.i.i.i.i.us.i.i = icmp eq i64 %i.au, %i.be
  br i1 %.not.i.i.i.i.us.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.bf = load ptr, ptr %.0.us.i.i, align 8, !tbaa !168 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bf, null
  br i1 %.not18.us.i.i, label %.critedge28, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !174 ; 2 uses
  %i.bi = urem i64 %i.bh, %i.aj
  %.not19.us.i.i = icmp eq i64 %i.bi, %i.ak
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge28, !llvm.loop !5

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.bj = phi i64 [ %i.bv, %bb.i ], [ %.pre25.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.bt, %bb.i ], [ %i.ap, %bb.e ] ; 4 uses
  %i.bk = icmp eq i64 %i.ah, %i.bj
  br i1 %i.bk, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !81
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !80 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %.not.i.i.i.i.i.i = icmp eq i64 %i.au, %i.br
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.h
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ar, ptr %i.bo, i64 %i.au)
  %i.bs = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.bt = load ptr, ptr %.0.i.i, align 8, !tbaa !168 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bt, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !174 ; 2 uses
  %i.bw = urem i64 %i.bv, %i.aj
  %.not19.i.i = icmp eq i64 %i.bw, %i.ak
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge28, !llvm.loop !5

bb.j:                                             ; preds = %.critedge
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.critedge28:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i, %bb.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i, %bb.d, %bb.c
  %i.by = invoke ptr @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISC_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ak, i64 noundef %i.ah, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.critedge28
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.f
  %.sroa.038.0.ph = phi ptr [ %.sroa.034.056.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS7_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.f ], [ %.sroa.034.056, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit ]
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !60  ; 8 uses
  %.not.i.i.i.i.i.i29 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i29, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly5RangeIPKcEESt10shared_ptrINS3_10symbolizer8ElfCache5EntryEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.cb, align 8, !tbaa !73
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !74
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #21, !call_target !88, !inline_history !365
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #21, !call_target !103, !inline_history !365
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly5RangeIPKcEESt10shared_ptrINS3_10symbolizer8ElfCache5EntryEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.o ], [ %i.co, %bb.p ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cp, label %bb.q, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly5RangeIPKcEESt10shared_ptrINS3_10symbolizer8ElfCache5EntryEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, !prof !82

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #21
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly5RangeIPKcEESt10shared_ptrINS3_10symbolizer8ElfCache5EntryEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly5RangeIPKcEESt10shared_ptrINS3_10symbolizer8ElfCache5EntryEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #23
  br label %_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly5RangeIPKcEESt10shared_ptrINS3_10symbolizer8ElfCache5EntryEEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
end_hunk_0
