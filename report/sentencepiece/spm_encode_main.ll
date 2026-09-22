Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/spm_encode_main?download=true
inline.NumInlined: 1874
inline.NumDeleted: 891
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE16try_emplace_implIRKS9_JEEESt4pairINS1_12raw_hash_setISA_JEE8iteratorEbEOT_DpOT0_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !19, !noalias !202 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !18, !noalias !202
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !202 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !18, !noalias !202
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21, !noalias !202
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.i, i64 %i.h), !noalias !202
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread4, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread4: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !202
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !202
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.o, align 8, !tbaa !104, !alias.scope !202
  br label %bb.h

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !202
  store ptr %1, ptr %3, align 8, !tbaa !203, !noalias !202
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !36, !noalias !202
  %i.q = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !202 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  store ptr %i.r, ptr %0, align 8, !alias.scope !202
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !202
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.t, align 8, !tbaa !104, !alias.scope !202
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !202
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.161") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !104, !range !29
  %i.u = trunc nuw i8 %.pre to i1
  br i1 %i.u, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 16 ; 3 uses
  store ptr %i.v, ptr %.sroa.2.0.copyload, align 8, !tbaa !20
  %i.w = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.y, ptr %i.a, align 8, !tbaa !22
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aa, ptr %.sroa.2.0.copyload, align 8, !tbaa !18
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ac = phi ptr [ %i.aa, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.v, %bb.e ] ; 2 uses
  switch i64 %i.y, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !19
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !19
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !21
  %i.ag = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  store i32 0, ptr %i.ai, align 8, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit.thread4, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESG_IJEEEEEvNSB_8iteratorEDpOT_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE22find_or_prepare_insertIS9_EESt4pairINSB_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.161") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %2, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noalias !206
  %i.j = and i64 %i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.l = lshr i64 %i.h, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.n, align 8, !tbaa !19 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.h, %bb.a ], [ %i.as, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.k               ; 5 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !19 ; 2 uses
  %i.t = icmp eq <16 x i8> %i.p, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #34, !srcloc !106 ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_iEESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !18
  %i.y = load i64, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %.critedge.i ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.639.0, %i.ab
  %i.ad = and i64 %i.ac, %i.k                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.d, label %.critedge.i, !prof !207

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.x, i64 %i.y)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ak = add i32 %.sroa.024.069, -1
  %i.al = and i32 %i.ak, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_iEESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_iEESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit: ; preds = %.critedge.i, %bb.b
  %i.am = icmp eq <16 x i8> %i.s, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ao) #34, !srcloc !106 ; 2 uses
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !24

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_iEESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i32 %i.ap, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.n, align 8, !tbaa !19
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSt4pairIKS9_iEESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSL_DpOSM_.exit
  %i.ar = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE28find_or_prepare_insert_largeIS9_EESt4pairINSB_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.349.ph = phi i64 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  store ptr %i.at, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.av, align 8, !tbaa !104
  ret void
}

declare { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %2, ptr noundef %i.a, i64 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE19transfer_n_slots_fnEPvSC_SC_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit
  %.014 = phi ptr [ %i.r, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit ], [ %1, %bb.a ] ; 6 uses
  %.0913 = phi ptr [ %i.q, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit ], [ %2, %bb.a ] ; 7 uses
  %.01012 = phi i64 [ %i.p, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit ], [ %3, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !20
  %i.b = load ptr, ptr %.0913, align 8, !tbaa !18 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.014, align 8, !tbaa !18
  %i.i = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.i, ptr %i.a, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21
  store ptr %i.c, ptr %.0913, align 8, !tbaa !18
  store i64 0, ptr %i.j, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !76
  store i32 %i.o, ptr %i.m, align 8, !tbaa !76
  %i.p = add i64 %.01012, -1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 40
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE8transferEPNS1_13map_slot_typeIS9_iEESE_.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #34, !srcloc !106 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !209

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %.sroa.052.061 = phi i32 [ %i.ec, %bb.t ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.x ; 6 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255                      ; 4 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !18  ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21 ; 14 uses
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i.i.i = load i64, ptr %i.ag, align 1
  %i.ah = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i34.i.i = load i32, ptr %i.ac, align 1
  %i.ai = zext i32 %.0.copyload.i.i34.i.i to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %.0.copyload.i4.i.i.i = load i32, ptr %i.al, align 1
  %i.am = zext i32 %.0.copyload.i4.i.i.i to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = lshr i64 %i.ae, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.av, %i.ba
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.an, %bb.e ], [ %i.bb, %bb.g ], [ 87, %bb.f ]
  %i.bc = xor i64 %.0.copyload.i.i.i.i, %.0.i.i.i
  %i.bd = xor i64 %i.bc, %i.ab
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw nsw i128 %i.be, 8779197792823184629 ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bj = icmp ult i64 %i.ae, 17
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i38.i.i = load i64, ptr %i.bk, align 1
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
end_hunk_0
