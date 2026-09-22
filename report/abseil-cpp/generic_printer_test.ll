Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generic_printer_test?download=true
inline.NumInlined: 8384
inline.NumDeleted: 2934
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESJ_IJRKSB_EEEEESA_INSD_8iteratorEbERKT_DpOT0_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47, !noalias !1467 ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !48, !noalias !1467
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47, !noalias !1467
  %i.m = icmp eq i64 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.j, i64 %i.i), !noalias !1467
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !1467
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !1467
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !151, !alias.scope !1467
  br label %bb.h

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1467
  store ptr %i.b, ptr %6, align 8, !tbaa !153, !noalias !1467
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !61, !noalias !1467
  %i.r = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %6, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !1467 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.s, ptr %0, align 8, !alias.scope !1467
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1467
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.u, align 8, !tbaa !151, !alias.scope !1467
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1467
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.191") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !151, !range !59
  %i.v = trunc nuw i8 %.pre to i1
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %i.w = load i64, ptr %4, align 8, !tbaa !61
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load i64, ptr %5, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 16 ; 3 uses
  store ptr %i.z, ptr %.sroa.2.0.copyload, align 8, !tbaa !64
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !48  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !71
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %.sroa.2.0.copyload, align 8, !tbaa !48
  %i.af = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.af, ptr %i.z, align 8, !tbaa !49
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ag = phi ptr [ %i.ae, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  switch i64 %i.ac, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !49
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !49
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.ai = inttoptr i64 %i.y to ptr
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !47
  %i.al = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.191") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %2, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noalias !1470
  %i.j = and i64 %i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.l = lshr i64 %i.h, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !49 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.n, align 8, !tbaa !49 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.h, %bb.a ], [ %i.as, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.k               ; 5 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !49 ; 2 uses
  %i.t = icmp eq <16 x i8> %i.p, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #32, !srcloc !146 ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !48
  %i.y = load i64, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %.critedge.i ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.639.0, %i.ab
  %i.ad = and i64 %i.ac, %i.k                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.d, label %.critedge.i, !prof !154

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.x, i64 %i.y)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ak = add i32 %.sroa.024.069, -1
  %i.al = and i32 %i.ak, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit: ; preds = %.critedge.i, %bb.b
  %i.am = icmp eq <16 x i8> %i.s, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ao) #32, !srcloc !146 ; 2 uses
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !116

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i32 %i.ap, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !49
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.n, align 8, !tbaa !49
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit
  %i.ar = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.349.ph = phi i64 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.at, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.av, align 8, !tbaa !151
  ret void
}

declare { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1472, !nonnull !60, !align !148 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47
  %i.f = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %1, ptr noundef %i.c, i64 noundef %i.e)
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #20

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.200, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !49 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !49
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %0, ptr %1, align 8, !tbaa !156
  call void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 48, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSI_SJ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.e
  %i.l = load i64, ptr %0, align 8                ; 2 uses
  %i.m = and i64 %i.l, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.m         ; 4 uses
  %i.n = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.o = or i64 %i.n, %notmask.i.i.i.i
  %i.p = icmp eq i64 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.q)
  %i.r = and i64 %i.l, 65536
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  %i.s = xor i64 %notmask.i.i.i.i, -1
  %i.t = icmp ne i64 %i.r, 0
  call void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit
  ret void
}

declare void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSI_SJ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSH_SI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSM_DpOSN_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !49
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSH_SI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSM_DpOSN_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSH_SI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSM_DpOSN_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSF_RKSaISC_IKSB_SD_EEEUlPvPKvE_vJSN_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !64
  %i.c = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !71
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !48
  %i.h = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.h, ptr %i.b, align 8, !tbaa !49
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !49
  store i8 %i.j, ptr %i.i, align 1, !tbaa !49
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %1, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE19transfer_n_slots_fnEPvSL_SL_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit
  %.014 = phi ptr [ %i.w, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit ], [ %1, %bb.a ] ; 6 uses
  %.0913 = phi ptr [ %i.v, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit ], [ %2, %bb.a ] ; 8 uses
  %.01012 = phi i64 [ %i.u, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit ], [ %3, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !64
  %i.b = load ptr, ptr %.0913, align 8, !tbaa !48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 7 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.014, align 8, !tbaa !48
  %i.i = load i64, ptr %i.c, align 8, !tbaa !49
  store i64 %i.i, ptr %i.a, align 8, !tbaa !49
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !47
  store ptr %i.c, ptr %.0913, align 8, !tbaa !48
  store i64 0, ptr %i.j, align 8, !tbaa !47
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSQ_PFvSQ_hmmE:bb.a
; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC2EOSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5 = alloca %"struct.absl::lts_20260526::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  store i64 %.sroa.011.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i64 0, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSF_EESQ_IJRKSI_EEEEESB_INSK_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::tuple.185", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.211", align 8    ; 4 uses
  %8 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1480, !nonnull !60, !align !148 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  %i.b = load i64, ptr %i.a, align 8, !noalias !1481 ; 2 uses
  %i.c = and i64 %i.b, 254
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %.not.i.i.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !1483 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !48, !noalias !1483
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47, !noalias !1483 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !48, !noalias !1483
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47, !noalias !1483
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.i, i64 %i.h), !noalias !1483
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !1483
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !1483
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.o, align 8, !tbaa !159, !alias.scope !1483
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !1483
  store ptr %i.a, ptr %8, align 8, !tbaa !153, !noalias !1483
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !61, !noalias !1483
  %i.q = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %8, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !1483 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  store ptr %i.r, ptr %0, align 8, !alias.scope !1483
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1483
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.t, align 8, !tbaa !159, !alias.scope !1483
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !1483
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !159, !range !59
  %i.u = trunc nuw i8 %.pre to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.v = load i64, ptr %4, align 8, !tbaa !61
  store i64 %i.v, ptr %6, align 8, !tbaa !61
  %i.w = load i64, ptr %5, align 8, !tbaa !127
  store i64 %i.w, ptr %7, align 8, !tbaa !127
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2IJRSD_EJLm0EEJRKSG_EJLm0EEEERSt5tupleIJDpT_EERSM_IJDpT1_EESt12_Index_tupleIJXspT0_EEESV_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5, %bb.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %2, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noalias !1486
  %i.j = and i64 %i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.l = lshr i64 %i.h, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !49 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.n, align 8, !tbaa !49 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.h, %bb.a ], [ %i.as, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.k               ; 5 uses
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !49 ; 2 uses
  %i.t = icmp eq <16 x i8> %i.p, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #32, !srcloc !146 ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !48
  %i.y = load i64, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %.critedge.i ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.639.0, %i.ab
  %i.ad = and i64 %i.ac, %i.k                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.d, label %.critedge.i, !prof !154

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.x, i64 %i.y)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ak = add i32 %.sroa.024.069, -1
  %i.al = and i32 %i.ak, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit: ; preds = %.critedge.i, %bb.b
  %i.am = icmp eq <16 x i8> %i.s, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ao) #32, !srcloc !146 ; 2 uses
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !116

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i32 %i.ap, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !49
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.n, align 8, !tbaa !49
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit
  %i.ar = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.349.ph = phi i64 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.at, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.av, align 8, !tbaa !159
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2IJRSD_EJLm0EEJRKSG_EJLm0EEEERSt5tupleIJDpT_EERSM_IJDpT1_EESt12_Index_tupleIJXspT0_EEESV_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.203, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1488, !nonnull !60, !align !148 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !71
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !48
  %i.i = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.i, ptr %i.c, align 8, !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !49
  store i8 %i.k, ptr %i.j, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !47
  %i.n = load ptr, ptr %0, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !1490, !nonnull !60, !align !148 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.r = load i64, ptr %i.q, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEC2ERKSG_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.p, ptr %3, align 8, !tbaa !143
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSF_RKSaISC_IKSB_SD_EEEUlPvPKvE_vJSN_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN4absl12lts_2026052613flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEC2ERKSG_.exit

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

_ZN4absl12lts_2026052613flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEC2ERKSG_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

.body:                                            ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.x = load i64, ptr %i.c, align 8, !tbaa !49
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.222, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !49 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 32
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #28
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !49
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %0, ptr %1, align 8, !tbaa !1492
  call void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 56, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapISB_St4pairIddENS3_10StringHashENS3_8StringEqESaISD_IKSB_SE_EEEEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSP_SQ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.f
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %i.p = and i64 %i.o, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.p         ; 4 uses
  %i.q = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.r = or i64 %i.q, %notmask.i.i.i.i
  %i.s = icmp eq i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.t)
  %i.u = and i64 %i.o, 65536
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  %i.v = xor i64 %notmask.i.i.i.i, -1
  %i.w = icmp ne i64 %i.u, 0
  call void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i, i64 noundef 56, i64 noundef 8, i1 noundef zeroext %i.w)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapISB_St4pairIddENS3_10StringHashENS3_8StringEqESaISD_IKSB_SE_EEEEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSP_SQ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13flat_hash_mapISA_St4pairIddENS2_10StringHashENS2_8StringEqESaISC_IKSA_SD_EEEEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSO_SP_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !49
  %i.h = add i64 %i.g, 1
end_hunk_1
