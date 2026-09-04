Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/IR?download=true
inline.NumInlined: 3701
inline.NumDeleted: 2010
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS5_iEEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.al = load ptr, ptr %0, align 8, !tbaa !268
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !299 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %.critedge18, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !263 ; 3 uses
  %i.ap = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  %.not.not.i.i.i.i.i.i.i.i.fr.i.i = freeze i1 %.not.not.i.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert24.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %.pre25.i.i = load i64, ptr %.phi.trans.insert24.i.i, align 8, !tbaa !346 ; 2 uses
  br i1 %.not.not.i.i.i.i.i.i.i.i.fr.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.d, %bb.f
  %i.au = phi i64 [ %i.bg, %bb.f ], [ %.pre25.i.i, %bb.d ]
  %.0.us.i.i = phi ptr [ %i.be, %bb.f ], [ %i.ao, %bb.d ] ; 4 uses
  %i.av = icmp eq i64 %i.ag, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.e:                                             ; preds = %.split.us.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !497
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !266
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp eq i64 %i.at, %i.bc
  br i1 %i.bd, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.e, %.split.us.i.i
  %i.be = load ptr, ptr %.0.us.i.i, align 8, !tbaa !263 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.be, null
  br i1 %.not18.us.i.i, label %.critedge18, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !346 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.ai
  %.not19.us.i.i = icmp eq i64 %i.bh, %i.aj
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge18, !llvm.loop !495

.split.i.i:                                       ; preds = %bb.d, %bb.h
  %i.bi = phi i64 [ %i.bu, %bb.h ], [ %.pre25.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.ao, %bb.d ] ; 4 uses
  %i.bj = icmp eq i64 %i.ag, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !497
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !266 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp eq i64 %i.at, %i.bq
  br i1 %i.br, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.g
  %bcmp.i.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aq, ptr %i.bn, i64 %i.at)
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.bs = load ptr, ptr %.0.i.i, align 8, !tbaa !263 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.i.i, label %.critedge18, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !346 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.ai
  %.not19.i.i = icmp eq i64 %i.bv, %i.aj
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge18, !llvm.loop !495

.critedge18:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i, %bb.h, %bb.f, %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i, %bb.c, %.critedge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 noundef %i.ai, i64 noundef %i.ak, i64 noundef 1) #28 ; 2 uses
  %i.by = extractvalue { i8, i64 } %i.bx, 0
  %i.bz = trunc i8 %i.by to i1
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge18
  %i.ca = extractvalue { i8, i64 } %i.bx, 1
  tail call void @_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ca)
  %i.cb = load i64, ptr %i.ah, align 8, !tbaa !269
  %i.cc = urem i64 %i.ag, %i.cb
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge18
  %.0.i19 = phi i64 [ %i.cc, %bb.i ], [ %i.aj, %.critedge18 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.ag, ptr %i.cd, align 8, !tbaa !346
  %i.ce = load ptr, ptr %0, align 8, !tbaa !268   ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0.i19 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !299 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !263
  store ptr %i.ch, ptr %i.a, align 8, !tbaa !263
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !299
  store ptr %i.a, ptr %i.ci, align 8, !tbaa !263
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !262 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !263
  store ptr %i.a, ptr %i.cj, align 8, !tbaa !262
  %.not11.i.i = icmp eq ptr %i.ck, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr %i.ah, align 8, !tbaa !269
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !346
  %i.co = urem i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.co
  store ptr %i.a, ptr %i.cp, align 8, !tbaa !299
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.cj, ptr %i.cf, align 8, !tbaa !299
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.cq = load i64, ptr %i.k, align 8, !tbaa !321
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.k, align 8, !tbaa !321
  br label %_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.e
  %i.cs = phi ptr [ %i.c, %.lr.ph.split.us ], [ %i.aq, %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ %i.aq, %bb.e ], [ %i.c, %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ] ; 3 uses
  %.sroa.032.0.ph = phi ptr [ %.sroa.025.054.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.e ], [ %.sroa.025.054, %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6vectorIPN6hermes13LiteralStringESaIS6_EEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !267
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6vectorIPN6hermes13LiteralStringESaIS6_EEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6vectorIPN6hermes13LiteralStringESaIS6_EEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %bb.p, %_ZNKSt8__detail15_Hashtable_baseISt6vectorIPN6hermes13LiteralStringESaIS4_EESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ENS2_6Module14HashRawStringsENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30
  br label %_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableISt6vectorIPN6hermes13LiteralStringESaIS3_EESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ENS1_6Module14HashRawStringsENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.o, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6vectorIPN6hermes13LiteralStringESaIS6_EEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.sroa.4.044 = phi i8 [ 1, %bb.o ], [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6vectorIPN6hermes13LiteralStringESaIS6_EEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ]
  %.sroa.032.042 = phi ptr [ %i.a, %bb.o ], [ %.sroa.032.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt6vectorIPN6hermes13LiteralStringESaIS6_EEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.032.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvh7hashing6detail23hash_combine_range_implIN9__gnu_cxx17__normal_iteratorIPKPN6hermes13LiteralStringESt6vectorIS7_SaIS7_EEEEEENS_9hash_codeET_SF_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 38 uses
  %i.b = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  %.2.add.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.2.add.lcssa.sroa.gep103 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.2.add.lcssa.sroa.gep104 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.2.add.lcssa.sroa.gep105 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.2.add.lcssa.sroa.gep106 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.2.add.lcssa.sroa.gep107 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.2.add.lcssa.sroa.gep108 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.2.add.lcssa.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br i1 %i.c, label %bb.b, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, !prof !501

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #28
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !120 ; 2 uses
  %.not1.i = icmp eq i64 %i.e, 0
  %i.f = select i1 %.not1.i, i64 -49064778989728563, i64 %i.e
  store i64 %i.f, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !120
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #28
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !120 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.not47 = icmp eq ptr %0, %1
  br i1 %.not47, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !502
  store ptr %i.i, ptr %i.a, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %.037.ptr50.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !502
  store ptr %i.k, ptr %.037.ptr50.1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not.1 = icmp eq ptr %i.l, %1
  br i1 %.not.1, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %.037.ptr50.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !502
  store ptr %i.m, ptr %.037.ptr50.2, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not.2 = icmp eq ptr %i.n, %1
  br i1 %.not.2, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %.037.ptr50.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !502
  store ptr %i.o, ptr %.037.ptr50.3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not.3 = icmp eq ptr %i.p, %1
  br i1 %.not.3, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %.037.ptr50.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !502
  store ptr %i.q, ptr %.037.ptr50.4, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not.4 = icmp eq ptr %i.r, %1
  br i1 %.not.4, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %.037.ptr50.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !502
  store ptr %i.s, ptr %.037.ptr50.5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.not.5 = icmp eq ptr %i.t, %1
  br i1 %.not.5, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %.037.ptr50.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !502
  store ptr %i.u, ptr %.037.ptr50.6, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not.6 = icmp eq ptr %i.v, %1
  br i1 %.not.6, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %.037.ptr50.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !502
  store ptr %i.w, ptr %.037.ptr50.7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit

_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit: ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %.sroa.028.0.lcssa = phi ptr [ %0, %_ZN4llvh7hashing6detail18get_execution_seedEv.exit ], [ %i.j, %.lr.ph ], [ %i.l, %.lr.ph.1 ], [ %i.n, %.lr.ph.2 ], [ %i.p, %.lr.ph.3 ], [ %i.r, %.lr.ph.4 ], [ %i.t, %.lr.ph.5 ], [ %i.v, %.lr.ph.6 ], [ %i.x, %.lr.ph.7 ] ; 2 uses
  %.037.idx.lcssa = phi i64 [ 0, %_ZN4llvh7hashing6detail18get_execution_seedEv.exit ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ], [ 24, %.lr.ph.2 ], [ 32, %.lr.ph.3 ], [ 40, %.lr.ph.4 ], [ 48, %.lr.ph.5 ], [ 56, %.lr.ph.6 ], [ 64, %.lr.ph.7 ]
  %i.y = icmp eq ptr %.sroa.028.0.lcssa, %1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit
  %i.z = call noundef i64 @_ZN4llvh7hashing6detail10hash_shortEPKcmm(ptr noundef nonnull %i.a, i64 noundef %.037.idx.lcssa, i64 noundef %i.g)
  br label %bb.n

bb.e:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit
  %i.aa = xor i64 %i.g, -5435081209227447693      ; 3 uses
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.ab, %i.ac
  %i.ae = xor i64 %i.ad, -5435081209227447693
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = lshr i64 %i.af, 47
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, -7070675565921424023
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 15) ; 2 uses
  %i.ak = mul i64 %i.g, -5435081209227447693
  %i.al = lshr i64 %i.g, 47
  %i.am = xor i64 %i.al, %i.g                     ; 4 uses
  %i.an = xor i64 %i.am, %i.ak
  %i.ao = mul i64 %i.an, -7070675565921424023     ; 2 uses
  %i.ap = lshr i64 %i.ao, 47
  %i.aq = xor i64 %i.am, %i.ap
  %i.ar = xor i64 %i.aq, %i.ao
  %i.as = mul i64 %i.ar, -7070675565921424023     ; 2 uses
  %i.at = lshr i64 %i.as, 47
  %i.au = xor i64 %i.at, %i.as
  %i.av = mul i64 %i.au, -7070675565921424023     ; 2 uses
  %i.aw = add i64 %i.aj, %i.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.ax, align 8, !noalias !503 ; 2 uses
  %i.ay = add i64 %i.aw, %.0.copyload.i.i.i       ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 27)
  %i.ba = mul i64 %i.az, -5435081209227447693
  %i.bb = mul i64 %i.g, -5435081209227447692
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.0.copyload.i7.i.i = load i64, ptr %i.bc, align 16, !noalias !503 ; 2 uses
  %i.bd = add i64 %.0.copyload.i7.i.i, %i.bb      ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 22)
  %i.bf = mul i64 %i.be, -5435081209227447693
  %i.bg = xor i64 %i.ba, %i.av                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %.0.copyload.i8.i.i = load i64, ptr %i.bh, align 8, !noalias !503 ; 2 uses
  %i.bi = add i64 %.0.copyload.i8.i.i, %i.aj
  %i.bj = add i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.ai, %i.am                    ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 31)
  %i.bm = mul i64 %i.bl, -5435081209227447693     ; 2 uses
  %i.bn = mul i64 %i.g, -7894485801551159383
  %i.bo = add i64 %i.bg, %i.am
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !noalias !503
  %i.bp = add i64 %.0.copyload.i.i.i.i, %i.bn     ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.0.copyload.i15.i.i.i = load i64, ptr %i.bq, align 8, !noalias !503 ; 2 uses
  %i.br = add i64 %i.bo, %i.bp
  %i.bs = add i64 %i.br, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 43)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.0.copyload.i17.i.i.i = load i64, ptr %i.bu, align 16, !noalias !503 ; 2 uses
  %i.bv = add i64 %i.bp, %.0.copyload.i.i.i
  %i.bw = add i64 %i.bv, %.0.copyload.i17.i.i.i   ; 3 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 20)
  %i.by = add i64 %i.bx, %i.bp
  %i.bz = add i64 %i.by, %i.bt
  %i.ca = add i64 %i.bw, %.0.copyload.i15.i.i.i
  %i.cb = add i64 %i.bm, %i.av
  %i.cc = add i64 %i.bj, %.0.copyload.i17.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.0.copyload.i.i10.i.i = load i64, ptr %i.cd, align 16, !noalias !503
  %i.ce = add i64 %i.cb, %.0.copyload.i.i10.i.i   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.cf, align 8, !noalias !503 ; 2 uses
  %i.cg = add i64 %i.cc, %i.ce
  %i.ch = add i64 %i.cg, %.0.copyload.i15.i11.i.i ; 2 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 43)
  %i.cj = add i64 %.0.copyload.i8.i.i, %.0.copyload.i7.i.i
  %i.ck = add i64 %i.cj, %i.ce                    ; 3 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 20)
  %i.cm = add i64 %i.cl, %i.ce
  %i.cn = add i64 %i.cm, %i.ci
  %i.co = add i64 %i.ck, %.0.copyload.i15.i11.i.i
  %.2.ptr54.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.2.ptr54.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.2.ptr54.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.2.ptr54.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.2.ptr54.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.2.ptr54.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.2.ptr54.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8
  %.063 = phi i64 [ 64, %bb.e ], [ %i.et, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ]
  %.sroa.0.062 = phi i64 [ %i.bm, %bb.e ], [ %i.du, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ]
  %.sroa.8.061 = phi i64 [ %i.bj, %bb.e ], [ %i.dr, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ] ; 2 uses
  %.sroa.13.060 = phi i64 [ %i.bg, %bb.e ], [ %i.dp, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ]
  %.sroa.18.059 = phi i64 [ %i.ca, %bb.e ], [ %i.eg, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ] ; 2 uses
  %.sroa.24.058 = phi i64 [ %i.bz, %bb.e ], [ %i.ef, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ] ; 2 uses
  %.sroa.30.057 = phi i64 [ %i.co, %bb.e ], [ %i.es, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ] ; 2 uses
  %.sroa.36.056 = phi i64 [ %i.cn, %bb.e ], [ %i.er, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ] ; 2 uses
  %.sroa.028.155 = phi ptr [ %.sroa.028.0.lcssa, %bb.e ], [ %.lcssa, %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8 ] ; 9 uses
  %i.cp = load ptr, ptr %.sroa.028.155, align 8, !tbaa !502
  store ptr %i.cp, ptr %i.a, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 8 ; 3 uses
  %.not44 = icmp eq ptr %i.cq, %1
  br i1 %.not44, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !502
  store ptr %i.cr, ptr %.2.ptr54.1, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 16 ; 3 uses
  %.not44.1 = icmp eq ptr %i.cs, %1
  br i1 %.not44.1, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !502
  store ptr %i.ct, ptr %.2.ptr54.2, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 24 ; 3 uses
  %.not44.2 = icmp eq ptr %i.cu, %1
  br i1 %.not44.2, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !502
  store ptr %i.cv, ptr %.2.ptr54.3, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 32 ; 3 uses
  %.not44.3 = icmp eq ptr %i.cw, %1
  br i1 %.not44.3, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !502
  store ptr %i.cx, ptr %.2.ptr54.4, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 40 ; 3 uses
  %.not44.4 = icmp eq ptr %i.cy, %1
  br i1 %.not44.4, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !502
  store ptr %i.cz, ptr %.2.ptr54.5, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 48 ; 3 uses
  %.not44.5 = icmp eq ptr %i.da, %1
  br i1 %.not44.5, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !502
  store ptr %i.db, ptr %.2.ptr54.6, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 56 ; 3 uses
  %.not44.6 = icmp eq ptr %i.dc, %1
  br i1 %.not44.6, label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !502
  store ptr %i.dd, ptr %.2.ptr54.7, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.028.155, i64 64 ; 2 uses
  %.not44.7 = icmp eq ptr %i.de, %1
  br label %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8

_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.preheader
  %.2.add.lcssa.sroa.phi = phi ptr [ %.2.add.lcssa.sroa.gep, %.preheader ], [ %.2.add.lcssa.sroa.gep103, %bb.f ], [ %.2.add.lcssa.sroa.gep104, %bb.g ], [ %.2.add.lcssa.sroa.gep105, %bb.h ], [ %.2.add.lcssa.sroa.gep106, %bb.i ], [ %.2.add.lcssa.sroa.gep107, %bb.j ], [ %.2.add.lcssa.sroa.gep108, %bb.k ], [ %.2.add.lcssa.sroa.gep109, %bb.l ]
  %.2.add.lcssa = phi i64 [ 8, %.preheader ], [ 16, %bb.f ], [ 24, %bb.g ], [ 32, %bb.h ], [ 40, %bb.i ], [ 48, %bb.j ], [ 56, %bb.k ], [ 64, %bb.l ]
  %.lcssa = phi ptr [ %i.cq, %.preheader ], [ %i.cs, %bb.f ], [ %i.cu, %bb.g ], [ %i.cw, %bb.h ], [ %i.cy, %bb.i ], [ %i.da, %bb.j ], [ %i.dc, %bb.k ], [ %i.de, %bb.l ]
  %.not44.lcssa = phi i1 [ true, %.preheader ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ %.not44.7, %bb.l ]
  %i.df = call noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %.2.add.lcssa.sroa.phi, ptr noundef nonnull %i.h) ; 0 uses
  %.0.copyload.i.i = load i64, ptr %i.ax, align 8 ; 2 uses
  %i.dg = add i64 %.sroa.8.061, %.sroa.18.059
  %i.dh = add i64 %i.dg, %.sroa.0.062
  %i.di = add i64 %i.dh, %.0.copyload.i.i         ; 2 uses
  %i.dj = call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 27)
  %i.dk = mul i64 %i.dj, -5435081209227447693
  %i.dl = add i64 %.sroa.8.061, %.sroa.24.058
  %.0.copyload.i7.i = load i64, ptr %i.bc, align 16 ; 2 uses
  %i.dm = add i64 %i.dl, %.0.copyload.i7.i        ; 2 uses
  %i.dn = call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 22)
  %i.do = mul i64 %i.dn, -5435081209227447693
  %i.dp = xor i64 %i.dk, %.sroa.36.056            ; 3 uses
  %.0.copyload.i8.i = load i64, ptr %i.bh, align 8 ; 2 uses
  %i.dq = add i64 %.0.copyload.i8.i, %.sroa.18.059
  %i.dr = add i64 %i.dq, %i.do                    ; 4 uses
  %i.ds = add i64 %.sroa.13.060, %.sroa.30.057    ; 2 uses
  %i.dt = call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 31) ; 2 uses
  %i.du = mul i64 %i.dt, -5435081209227447693     ; 2 uses
  %i.dv = mul i64 %.sroa.24.058, -5435081209227447693
  %i.dw = add i64 %i.dp, %.sroa.30.057
  %.0.copyload.i.i.i9 = load i64, ptr %i.a, align 16
  %i.dx = add i64 %.0.copyload.i.i.i9, %i.dv      ; 3 uses
  %.0.copyload.i15.i.i = load i64, ptr %i.bq, align 8 ; 2 uses
  %i.dy = add i64 %i.dw, %i.dx
  %i.dz = add i64 %i.dy, %.0.copyload.i15.i.i     ; 2 uses
  %i.ea = call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 43)
  %.0.copyload.i17.i.i = load i64, ptr %i.bu, align 16 ; 2 uses
  %i.eb = add i64 %i.dx, %.0.copyload.i.i
  %i.ec = add i64 %i.eb, %.0.copyload.i17.i.i     ; 3 uses
  %i.ed = call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 20)
  %i.ee = add i64 %i.ed, %i.dx
  %i.ef = add i64 %i.ee, %i.ea                    ; 2 uses
  %i.eg = add i64 %i.ec, %.0.copyload.i15.i.i     ; 2 uses
  %i.eh = add i64 %i.du, %.sroa.36.056
  %i.ei = add i64 %i.dr, %.0.copyload.i17.i.i
  %.0.copyload.i.i10.i = load i64, ptr %i.cd, align 16
  %i.ej = add i64 %i.eh, %.0.copyload.i.i10.i     ; 3 uses
  %.0.copyload.i15.i11.i = load i64, ptr %i.cf, align 8 ; 2 uses
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = add i64 %i.ek, %.0.copyload.i15.i11.i   ; 2 uses
  %i.em = call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 43)
  %i.en = add i64 %.0.copyload.i8.i, %.0.copyload.i7.i
  %i.eo = add i64 %i.en, %i.ej                    ; 3 uses
  %i.ep = call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 20)
  %i.eq = add i64 %i.em, %i.ej
  %i.er = add i64 %i.eq, %i.ep                    ; 3 uses
  %i.es = add i64 %i.eo, %.0.copyload.i15.i11.i   ; 3 uses
  %i.et = add i64 %.2.add.lcssa, %.063            ; 3 uses
  br i1 %.not44.lcssa, label %bb.m, label %.preheader, !llvm.loop !500

bb.m:                                             ; preds = %_ZN4llvh7hashing6detail17store_and_advanceIPN6hermes13LiteralStringEEEbRPcS6_RKT_m.exit8
  %i.eu = xor i64 %i.eg, %i.es
  %i.ev = mul i64 %i.eu, -7070675565921424023     ; 2 uses
  %i.ew = lshr i64 %i.ev, 47
  %i.ex = xor i64 %i.es, %i.ew
  %i.ey = xor i64 %i.ex, %i.ev
  %i.ez = mul i64 %i.ey, -7070675565921424023     ; 2 uses
  %i.fa = lshr i64 %i.ez, 47
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = mul i64 %i.fb, -7070675565921424023
  %i.fd = lshr i64 %i.dr, 47
  %i.fe = xor i64 %i.fd, %i.dr
  %i.ff = mul i64 %i.fe, -5435081209227447693
  %i.fg = add i64 %i.ff, %i.dp
  %i.fh = add i64 %i.fg, %i.fc
  %i.fi = xor i64 %i.ef, %i.er
  %i.fj = mul i64 %i.fi, -7070675565921424023     ; 2 uses
  %i.fk = lshr i64 %i.fj, 47
  %i.fl = xor i64 %i.er, %i.fk
  %i.fm = xor i64 %i.fl, %i.fj
  %i.fn = mul i64 %i.fm, -7070675565921424023     ; 2 uses
  %i.fo = lshr i64 %i.fn, 47
  %i.fp = xor i64 %i.fo, %i.fn
  %i.fq = mul i64 %i.fp, -7070675565921424023
  %i.fr = lshr i64 %i.et, 47
  %i.fs = xor i64 %i.fr, %i.et
  %i.ft = add i64 %i.fs, %i.dt
  %i.fu = mul i64 %i.ft, -5435081209227447693
  %i.fv = add i64 %i.fu, %i.fq                    ; 2 uses
  %i.fw = xor i64 %i.fh, %i.fv
  %i.fx = mul i64 %i.fw, -7070675565921424023     ; 2 uses
  %i.fy = lshr i64 %i.fx, 47
  %i.fz = xor i64 %i.fv, %i.fy
  %i.ga = xor i64 %i.fz, %i.fx
  %i.gb = mul i64 %i.ga, -7070675565921424023     ; 2 uses
  %i.gc = lshr i64 %i.gb, 47
  %i.gd = xor i64 %i.gc, %i.gb
  %i.ge = mul i64 %i.gd, -7070675565921424023
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.sroa.036.0 = phi i64 [ %i.z, %bb.d ], [ %i.ge, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.sroa.036.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvh7hashing6detail10hash_shortEPKcmm(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add i64 %1, -4
  %or.cond = icmp ult i64 %i.a, 5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i = load i32, ptr %0, align 1
  %i.b = zext i32 %.0.copyload.i.i to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i5.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i5.i to i64
  %i.h = xor i64 %2, %i.g                         ; 2 uses
  %i.i = xor i64 %i.h, %i.d
  %i.j = mul i64 %i.i, -7070675565921424023       ; 2 uses
  %i.k = lshr i64 %i.j, 47
  %i.l = xor i64 %i.h, %i.k
  %i.m = xor i64 %i.l, %i.j
  %i.n = mul i64 %i.m, -7070675565921424023       ; 2 uses
  %i.o = lshr i64 %i.n, 47
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -7070675565921424023
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.r = add i64 %1, -9
  %or.cond3 = icmp ult i64 %i.r, 8
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i30 = load i64, ptr %0, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.0.copyload.i8.i = load i64, ptr %i.t, align 1 ; 2 uses
  %i.u = xor i64 %.0.copyload.i.i30, %2
  %i.v = add i64 %.0.copyload.i8.i, %1            ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshr.i64(i64 %i.v, i64 %i.v, i64 %1) ; 2 uses
  %i.x = xor i64 %i.u, %i.w
  %i.y = mul i64 %i.x, -7070675565921424023       ; 2 uses
end_hunk_0
