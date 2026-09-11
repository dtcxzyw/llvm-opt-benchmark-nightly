Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/message_differencer?download=true
inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6google8protobuf4util18MessageDifferencer14IsTreatedAsSetEPKNS0_15FieldDescriptorE:bb.a
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i, %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !176
  %i.bd = icmp eq i32 %i.bc, 1
  br label %bb.j

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.c, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit
  %i.be = tail call noundef ptr @_ZNK6google8protobuf4util18MessageDifferencer19GetMapKeyComparatorEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1)
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !161
  %i.bi = icmp eq i32 %i.bh, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, %bb.i, %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit
  %.0 = phi i1 [ %i.bd, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit ], [ false, %bb.a ], [ false, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread ], [ %i.bi, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer19IsTreatedAsSmartSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.341", align 8    ; 8 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 32
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !119  ; 4 uses
  %i.g = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %i.f, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load i64, ptr %i.i, align 8, !tbaa !120
  %.not.i.i.i.i.i = icmp ugt i64 %i.j, 131071
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, %1
  %or.cond = select i1 %.not.i.i.i.i.i, i1 %i.m, i1 false
  br i1 %or.cond, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121  ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 1, i32 1)
  %i.p = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = xor i64 %i.s, %i.p
  %i.u = mul i64 %i.t, -2543921745674291987
  %i.v = tail call noundef i64 @llvm.bswap.i64(i64 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load i64, ptr %i.w, align 8, !tbaa !120, !noalias !687
  %i.y = and i64 %i.x, 65535
  %i.z = lshr i64 %i.v, 7
  %i.aa = xor i64 %i.y, %i.z
  %i.ab = trunc i64 %i.v to i8
  %i.ac = and i8 %i.ab, 127
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !121 ; 2 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i.i = phi i64 [ %i.aa, %bb.d ], [ %i.ax, %bb.g ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aw, %bb.g ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.f ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ag, i32 0, i32 3, i32 1)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.6.0.i.i.i.i
  %i.ai = load <16 x i8>, ptr %i.ah, align 1, !tbaa !121 ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.af, %i.ai
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.at, %bb.f ], [ %i.ak, %bb.e ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.i.i.i, %i.am
  %i.ao = and i64 %i.an, %i.f
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.ar = icmp eq ptr %i.aq, %1
  br i1 %i.ar, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit, label %bb.f, !prof !122

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.at = and i16 %i.as, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.au = icmp eq <16 x i8> %i.ai, splat (i8 -128)
  %i.av = bitcast <16 x i1> %i.au to i16
  %.not43.i.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not43.i.i.i.i, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, !prof !110

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.6.0.i.i.i.i
  br label %bb.e, !llvm.loop !3

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not5 = icmp eq ptr %i.o, null
  br i1 %.not5, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !688
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE30find_or_prepare_insert_non_sooIS8_EESH_INSL_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.341") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !179, !range !180, !alias.scope !691
  %i.ay = trunc nuw i8 %.pre.i.i.i to i1
  br i1 %i.ay, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !691 ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !114, !noalias !691
  store ptr %i.az, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !182
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !183
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i.thread, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE22find_or_prepare_insertIS8_EESH_INSL_8iteratorEbERKT_.exit.i.i.i, %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !176
  %i.bd = icmp eq i32 %i.bc, 3
  br label %bb.j

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %bb.c, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit
  %i.be = tail call noundef ptr @_ZNK6google8protobuf4util18MessageDifferencer19GetMapKeyComparatorEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1)
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !161
  %i.bi = icmp eq i32 %i.bh, 3
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread, %bb.i, %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit
  %.0 = phi i1 [ %i.bd, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEEixIS8_SC_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISJ_EPT_RSP_EclL_ZSt7declvalIRSJ_EDTcl9__declvalISP_ELi0EEEvEEEEERKSP_.exit ], [ false, %bb.a ], [ false, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorENS5_4util18MessageDifferencer23RepeatedFieldComparisonEEENS1_6HashEqIS8_vE4HashENSE_2EqESaISt4pairIKS8_SB_EEE8containsIS8_EEbRKT_.exit.thread ], [ %i.bi, %bb.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::vector.247", align 8   ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.google::protobuf::util::NumDiffsReporter", align 8 ; 9 uses
  %11 = alloca %"class.google::protobuf::util::(anonymous namespace)::MaximumMatcher", align 8 ; 19 uses
  %12 = alloca %"class.std::function.158", align 8 ; 10 uses
  store i32 %3, ptr %i.e, align 4, !tbaa !27
  store ptr %4, ptr %i.f, align 8, !tbaa !114
  store ptr %5, ptr %i.g, align 8, !tbaa !174
  %i.j = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.k = extractvalue { ptr, ptr } %i.j, 1
  %i.l = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4) ; 10 uses
  %i.m = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.n = extractvalue { ptr, ptr } %i.m, 1
  %i.o = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %4) ; 5 uses
  %i.p = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer19IsTreatedAsSmartSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %4) ; 6 uses
  %i.q = sext i32 %i.l to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #40
  store i32 -1, ptr %i.h, align 4, !tbaa !27
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  %i.r = sext i32 %i.o to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #40
  store i32 -1, ptr %i.i, align 4, !tbaa !27
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  %i.s = icmp eq i32 %i.l, 1
  %i.t = icmp eq i32 %i.o, 1
  %or.cond = and i1 %i.s, %i.t
  %i.u = load ptr, ptr %0, align 8, !tbaa !130    ; 4 uses
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp eq ptr %5, null
  %or.cond6 = and i1 %i.v, %i.w
  br i1 %or.cond6, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.not, label %bb.d, label %_ZNSt6vectorIiSaIiEE2atEm.exit

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef 0, i64 noundef 0) #39
  unreachable

_ZNSt6vectorIiSaIiEE2atEm.exit:                   ; preds = %bb.c
  store i32 0, ptr %i.z, align 4, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %.not.i.i163.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i163.not, label %bb.e, label %_ZNSt6vectorIiSaIiEE2atEm.exit164

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef 0, i64 noundef 0) #39
  unreachable

_ZNSt6vectorIiSaIiEE2atEm.exit164:                ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  store i32 0, ptr %i.ac, align 4, !tbaa !27
  br label %bb.bt

bb.f:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6google8protobuf4util16NumDiffsReporterE, i64 16), ptr %10, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !248
  %i.ae = icmp ne i32 %i.l, 0
  %or.cond299 = and i1 %i.ae, %i.p
  br i1 %or.cond299, label %bb.g, label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit

.thread:                                          ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6google8protobuf4util16NumDiffsReporterE, i64 16), ptr %10, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.af, align 8, !tbaa !248
  br i1 %i.p, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp slt i32 %i.l, 0
  br i1 %i.ag, label %.noexc219, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc219:                                        ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #39
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %.thread, %bb.g
  %i.ah = phi ptr [ %i.ad, %bb.g ], [ %i.af, %.thread ]
  %i.ai = shl nuw nsw i64 %i.q, 2                 ; 3 uses
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #41 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = add nsw i64 %i.ai, -4                   ; 2 uses
  %i.am = lshr exact i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %n.vec = and i64 %i.an, 9223372036854775800     ; 3 uses
  %i.ao = shl i64 %n.vec, 2
  %i.ap = getelementptr i8, ptr %i.aj, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep, align 4, !tbaa !27
  store <4 x i32> splat (i32 2147483647), ptr %i.ar, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !693

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.q
  %i.av = ptrtoint ptr %i.au to i64
  br label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, %.thread, %bb.f
  %i.aw = phi ptr [ %i.af, %.thread ], [ %i.ad, %bb.f ], [ %i.ah, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 2 uses
  %.sroa.0224.0 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ %i.aj, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 9 uses
  %.sroa.20.0 = phi i64 [ 0, %.thread ], [ 0, %bb.f ], [ %i.av, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !105
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.bb = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #41
          to label %bb.l unwind label %bb.i, !inline_history !694 ; 8 uses

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !165 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i165, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body unwind label %bb.k, !inline_history !694 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #43, !inline_history !694
  unreachable

bb.l:                                             ; preds = %bb.h
  store ptr %0, ptr %i.bb, align 16, !tbaa !251
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !205
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !168
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !113
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %2, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !113
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !252
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store ptr %6, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !253
  store ptr %i.bb, ptr %12, align 8, !tbaa !163
  store i32 %i.l, ptr %11, align 8, !tbaa !701
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  store i32 %i.o, ptr %i.bh, align 4, !tbaa !262
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr @"_ZNSt17_Function_handlerIFbiiEZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS2_7MessageES7_iPKNS2_15FieldDescriptorEPKNS4_16MapKeyComparatorERKSt6vectorINS4_13SpecificFieldESaISF_EEPSE_IiSaIiEESM_E3$_0E9_M_invokeERKSt9_Any_dataOiSS_", ptr %i.bj, align 8, !tbaa !263
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 16, i1 false), !tbaa.struct !184
  store ptr @"_ZNSt17_Function_handlerIFbiiEZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS2_7MessageES7_iPKNS2_15FieldDescriptorEPKNS4_16MapKeyComparatorERKSt6vectorINS4_13SpecificFieldESaISF_EEPSE_IiSaIiEESM_E3$_0E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation", ptr %i.bk, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  store i64 1, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  store ptr %7, ptr %i.bm, align 8, !tbaa !702
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  store ptr %8, ptr %i.bn, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i32 -1, ptr %i.c, align 4, !tbaa !27
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit.i unwind label %bb.m

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit.i:          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  store i32 -1, ptr %i.d, align 4, !tbaa !27
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.r unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_:bb.a

.cont:                                            ; preds = %.invoke
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv
  store i32 %i.fq, ptr %i.fz, align 4, !tbaa !27
  %i.ga = load ptr, ptr %i.fl, align 8, !tbaa !25
  %i.gb = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 2                 ; 2 uses
  %.not.i.i181 = icmp ugt i64 %i.gf, %indvars.iv
  br i1 %.not.i.i181, label %bb.ao, label %.invoke

bb.ao:                                            ; preds = %bb.an
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv
  store i32 %i.fq, ptr %i.gg, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit311, label %bb.ak, !llvm.loop !697

.loopexit312:                                     ; preds = %bb.ak
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp313:                            ; preds = %.invoke
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit311:                                     ; preds = %bb.al, %bb.ao, %bb.ai, %bb.ah
  %.1123 = phi i32 [ 0, %bb.ah ], [ %.sroa.speculated, %bb.ai ], [ %i.fq, %bb.al ], [ %.sroa.speculated, %bb.ao ] ; 3 uses
  %.not380 = icmp slt i32 %.1123, %i.l
  br i1 %.not380, label %.preheader.lr.ph, label %.thread283

.preheader.lr.ph:                                 ; preds = %.loopexit311
  %i.gh = icmp slt i32 %.1123, %i.o
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gk = icmp ne ptr %i.u, null
  %i.gl = sext i32 %.1123 to i64                  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.bj
  %indvars.iv444 = phi i64 [ %i.gl, %.preheader.lr.ph ], [ %indvars.iv.next445, %bb.bj ] ; 8 uses
  %.1125381 = phi i1 [ true, %.preheader.lr.ph ], [ %i.jv, %bb.bj ]
  br i1 %i.gh, label %.lr.ph378, label %._crit_edge.thread

.lr.ph378:                                        ; preds = %.preheader
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0224.0, i64 %indvars.iv444 ; 4 uses
  %i.gn = trunc nsw i64 %indvars.iv444 to i32
  %i.go = trunc nsw i64 %indvars.iv444 to i32
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph378, %.thread266
  %indvars.iv440 = phi i64 [ %i.gl, %.lr.ph378 ], [ %indvars.iv.next441, %.thread266 ] ; 9 uses
  %.0116376 = phi i32 [ -1, %.lr.ph378 ], [ %.1, %.thread266 ] ; 7 uses
  %i.gp = load ptr, ptr %i.gi, align 8, !tbaa !25
  %i.gq = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 2                 ; 2 uses
  %.not.i.i184 = icmp ugt i64 %i.gu, %indvars.iv440
  br i1 %.not.i.i184, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %indvars.iv440, i64 noundef %i.gu) #39
          to label %.noexc185 unwind label %.loopexit.split-lp306

.noexc185:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv440
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !27 ; 2 uses
  %.not150 = icmp eq i32 %i.gw, -1
  br i1 %.not150, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %i.p, label %bb.at, label %.thread266

bb.at:                                            ; preds = %bb.as
  %i.gx = load i32, ptr %i.gm, align 4, !tbaa !27
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %.thread266, label %_ZNSt6vectorIiSaIiEE2atEm.exit189

_ZNSt6vectorIiSaIiEE2atEm.exit189:                ; preds = %bb.at
  %i.gz = sext i32 %i.gw to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0224.0, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !27
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %.thread266, label %_ZNSt6vectorIiSaIiEE2atEm.exit189..thread261_crit_edge

_ZNSt6vectorIiSaIiEE2atEm.exit189..thread261_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit189
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !114
  br label %.thread261

.loopexit305:                                     ; preds = %.thread261, %bb.av
  %lpad.loopexit307 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp306:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp308 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.au:                                            ; preds = %bb.ar
  %.pre448 = load ptr, ptr %i.f, align 8, !tbaa !114 ; 2 uses
  br i1 %i.p, label %.thread261, label %bb.av

.thread261:                                       ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit189..thread261_crit_edge, %bb.au
  %i.hd = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE2atEm.exit189..thread261_crit_edge ], [ %.pre448, %bb.au ]
  store i32 0, ptr %i.aw, align 8, !tbaa !248
  %i.he = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.hf = load i32, ptr %i.e, align 4, !tbaa !27
  %i.hg = trunc nsw i64 %indvars.iv440 to i32     ; 4 uses
  %i.hh = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7IsMatchEPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorEPKNS0_7MessageESB_iRKSt6vectorINS2_13SpecificFieldESaISD_EEPNS2_8ReporterEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.hd, ptr noundef %i.he, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %10, i32 noundef %i.go, i32 noundef %i.hg)
          to label %bb.aw unwind label %.loopexit305

bb.av:                                            ; preds = %bb.au
  %i.hi = load ptr, ptr %i.g, align 8, !tbaa !174
  %i.hj = load i32, ptr %i.e, align 4, !tbaa !27
  %i.hk = trunc nsw i64 %indvars.iv440 to i32     ; 2 uses
  %i.hl = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7IsMatchEPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorEPKNS0_7MessageESB_iRKSt6vectorINS2_13SpecificFieldESaISD_EEPNS2_8ReporterEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %.pre448, ptr noundef %i.hi, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.hj, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef null, i32 noundef %i.gn, i32 noundef %i.hk)
          to label %bb.bc unwind label %.loopexit305

bb.aw:                                            ; preds = %.thread261
  br i1 %i.hh, label %.thread268.thread, label %bb.ax

.thread268.thread:                                ; preds = %bb.aw
  store i32 0, ptr %i.gm, align 4, !tbaa !27
  br label %.thread280

bb.ax:                                            ; preds = %bb.aw
  %i.hm = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !143
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !145
  %i.hs = icmp eq i32 %i.hr, 10
  br i1 %i.hs, label %bb.ay, label %.thread266

bb.ay:                                            ; preds = %bb.ax
  %i.ht = load i32, ptr %i.aw, align 8, !tbaa !248 ; 4 uses
  %i.hu = load i32, ptr %i.gm, align 4, !tbaa !27
  %i.hv = icmp slt i32 %i.ht, %i.hu
  br i1 %i.hv, label %bb.az, label %.thread266

bb.az:                                            ; preds = %bb.ay
  %i.hw = load ptr, ptr %i.gi, align 8, !tbaa !25
  %i.hx = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 2                 ; 2 uses
  %.not.i.i190 = icmp ugt i64 %i.ib, %indvars.iv440
  br i1 %.not.i.i190, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %indvars.iv440, i64 noundef %i.ib) #39
          to label %.noexc191 unwind label %.thread291

.noexc191:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv440
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !27 ; 2 uses
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %.thread268, label %_ZNSt6vectorIiSaIiEE2atEm.exit195

_ZNSt6vectorIiSaIiEE2atEm.exit195:                ; preds = %bb.bb
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0224.0, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !27
  %i.ii = icmp slt i32 %i.ht, %i.ih
  br i1 %i.ii, label %.thread268, label %.thread266

.thread291:                                       ; preds = %bb.ba
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bc:                                            ; preds = %bb.av
  br i1 %i.hl, label %.thread275, label %.thread266

.thread268:                                       ; preds = %bb.bb, %_ZNSt6vectorIiSaIiEE2atEm.exit195
  store i32 %i.ht, ptr %i.gm, align 4, !tbaa !27
  %i.ik = icmp eq i32 %i.ht, 0
  br i1 %i.ik, label %.thread280, label %.thread266

.thread266:                                       ; preds = %bb.ax, %_ZNSt6vectorIiSaIiEE2atEm.exit195, %bb.ay, %bb.bc, %.thread268, %bb.as, %bb.at, %_ZNSt6vectorIiSaIiEE2atEm.exit189
  %.1 = phi i32 [ %.0116376, %bb.at ], [ %.0116376, %_ZNSt6vectorIiSaIiEE2atEm.exit189 ], [ %i.hg, %.thread268 ], [ %.0116376, %bb.bc ], [ %.0116376, %bb.as ], [ %.0116376, %bb.ay ], [ %.0116376, %_ZNSt6vectorIiSaIiEE2atEm.exit195 ], [ %.0116376, %bb.ax ] ; 4 uses
  %indvars.iv.next441 = add nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond443.not = icmp eq i64 %indvars.iv.next441, %i.r
  br i1 %exitcond443.not, label %._crit_edge, label %bb.ap, !llvm.loop !698

._crit_edge:                                      ; preds = %.thread266
  %.not300 = icmp eq i32 %.1, -1
  br i1 %.not300, label %._crit_edge.thread, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  br i1 %i.p, label %.thread280, label %.thread275

.thread280:                                       ; preds = %.thread268, %.thread268.thread, %bb.bd
  %.2274282 = phi i32 [ %.1, %bb.bd ], [ %i.hg, %.thread268.thread ], [ %i.hg, %.thread268 ] ; 3 uses
  %i.il = sext i32 %.2274282 to i64               ; 3 uses
  %i.im = load ptr, ptr %i.gi, align 8, !tbaa !25
  %i.in = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = ashr exact i64 %i.iq, 2                 ; 2 uses
  %.not.i.i196 = icmp ugt i64 %i.ir, %i.il
  br i1 %.not.i.i196, label %bb.be, label %.invoke550

bb.be:                                            ; preds = %.thread280
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.il
  %i.it = load i32, ptr %i.is, align 4, !tbaa !27 ; 2 uses
  %.not152 = icmp eq i32 %i.it, -1
  br i1 %.not152, label %.thread275, label %_ZNSt6vectorIiSaIiEE2atEm.exit201

_ZNSt6vectorIiSaIiEE2atEm.exit201:                ; preds = %bb.be
  %i.iu = sext i32 %i.it to i64                   ; 3 uses
  %i.iv = load ptr, ptr %i.gj, align 8, !tbaa !25
  %i.iw = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ashr exact i64 %i.iz, 2                 ; 2 uses
  %.not.i.i202 = icmp ugt i64 %i.ja, %i.iu
  br i1 %.not.i.i202, label %bb.bf, label %.invoke550

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit201
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.iu
  store i32 -1, ptr %i.jb, align 4, !tbaa !27
  br label %.thread275

bb.bg:                                            ; preds = %.invoke550
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.thread275:                                       ; preds = %bb.bc, %bb.bf, %bb.be, %bb.bd
  %.2274277 = phi i32 [ %.2274282, %bb.bf ], [ %.2274282, %bb.be ], [ %.1, %bb.bd ], [ %i.hk, %bb.bc ] ; 2 uses
  %.3 = phi i1 [ false, %bb.bf ], [ true, %bb.be ], [ true, %bb.bd ], [ true, %bb.bc ]
  %i.jd = load ptr, ptr %i.gj, align 8, !tbaa !25
  %i.je = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr exact i64 %i.jh, 2                 ; 2 uses
  %.not.i.i205 = icmp ugt i64 %i.ji, %indvars.iv444
  br i1 %.not.i.i205, label %bb.bh, label %.invoke550

bb.bh:                                            ; preds = %.thread275
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv444
  store i32 %.2274277, ptr %i.jj, align 4, !tbaa !27
  %i.jk = sext i32 %.2274277 to i64               ; 3 uses
  %i.jl = load ptr, ptr %i.gi, align 8, !tbaa !25
  %i.jm = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = ashr exact i64 %i.jp, 2                 ; 2 uses
  %.not.i.i208 = icmp ugt i64 %i.jq, %i.jk
  br i1 %.not.i.i208, label %bb.bi, label %.invoke550

.invoke550:                                       ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit201, %.thread280, %bb.bh, %.thread275
  %i.jr = phi i64 [ %indvars.iv444, %.thread275 ], [ %i.jk, %bb.bh ], [ %i.il, %.thread280 ], [ %i.iu, %_ZNSt6vectorIiSaIiEE2atEm.exit201 ]
  %i.js = phi i64 [ %i.ji, %.thread275 ], [ %i.jq, %bb.bh ], [ %i.ir, %.thread280 ], [ %i.ja, %_ZNSt6vectorIiSaIiEE2atEm.exit201 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %i.jr, i64 noundef %i.js) #39
          to label %.cont551 unwind label %bb.bg

.cont551:                                         ; preds = %.invoke550
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jk
  %i.ju = trunc nsw i64 %indvars.iv444 to i32
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !27
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.bi, %._crit_edge
  %.4 = phi i1 [ %.3, %bb.bi ], [ false, %._crit_edge ], [ false, %.preheader ] ; 2 uses
  %or.cond12.not = select i1 %.4, i1 true, i1 %i.gk
  br i1 %or.cond12.not, label %bb.bj, label %.loopexit310

bb.bj:                                            ; preds = %._crit_edge.thread
  %i.jv = select i1 %.4, i1 %.1125381, i1 false   ; 2 uses
  %indvars.iv.next445 = add nsw i64 %indvars.iv444, 1 ; 2 uses
  %lftr.wideiv446 = trunc i64 %indvars.iv.next445 to i32
  %exitcond447.not = icmp eq i32 %i.l, %lftr.wideiv446
  br i1 %exitcond447.not, label %.thread283, label %.preheader, !llvm.loop !699

.thread283:                                       ; preds = %bb.bj, %.loopexit311, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit
  %.4128 = phi i1 [ %i.em, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit ], [ true, %.loopexit311 ], [ %i.jv, %bb.bj ]
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.jx = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20IsTreatedAsSmartListEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.jw)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %.thread283
  br i1 %i.jx, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %i.a, align 8, !tbaa !267
  store ptr %8, ptr %i.b, align 8, !tbaa !267
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !165
  %.not.i.i211 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i211, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc212 unwind label %bb.bo

.noexc212:                                        ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !164
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(32) %i.ka, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNKSt8functionIFvPSt6vectorIiSaIiEES3_EEclES3_S3_.exit unwind label %bb.bo, !inline_history !700

_ZNKSt8functionIFvPSt6vectorIiSaIiEES3_EEclES3_S3_.exit: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %.thread283
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bp:                                            ; preds = %_ZNKSt8functionIFvPSt6vectorIiSaIiEES3_EEclES3_S3_.exit, %bb.bk
  store ptr %i.u, ptr %0, align 8, !tbaa !130
  br label %.loopexit310

.loopexit310:                                     ; preds = %._crit_edge.thread, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit, %bb.bp
  %.4147 = phi i1 [ %.4128, %bb.bp ], [ false, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit ], [ false, %._crit_edge.thread ]
  %.not.i.i.i = icmp eq ptr %.sroa.0224.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %.loopexit310
  %i.ke = ptrtoint ptr %.sroa.0224.0 to i64
  %i.kf = sub i64 %.sroa.20.0, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0224.0, i64 noundef %i.kf) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit310, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.bt

bb.br:                                            ; preds = %.loopexit305, %.loopexit.split-lp306, %.loopexit312, %.loopexit.split-lp313, %.body, %bb.bo, %bb.bg, %bb.aj
  %.pn160.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp315, %.loopexit.split-lp313 ], [ %i.kd, %bb.bo ], [ %.pn158, %.body ], [ %i.jc, %bb.bg ], [ %i.fm, %bb.aj ], [ %lpad.loopexit314, %.loopexit312 ], [ %lpad.loopexit307, %.loopexit305 ], [ %lpad.loopexit.split-lp308, %.loopexit.split-lp306 ] ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %.sroa.0224.0, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorIiSaIiEED2Ev.exit215, label %bb.bs

bb.bs:                                            ; preds = %.thread291, %bb.br
  %.pn160.pn298 = phi { ptr, i32 } [ %i.ij, %.thread291 ], [ %.pn160.pn, %bb.br ]
  %i.kg = ptrtoint ptr %.sroa.0224.0 to i64
  %i.kh = sub i64 %.sroa.20.0, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0224.0, i64 noundef %i.kh) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit215

_ZNSt6vectorIiSaIiEED2Ev.exit215:                 ; preds = %bb.br, %bb.bs
  %.pn160.pn290 = phi { ptr, i32 } [ %.pn160.pn298, %bb.bs ], [ %.pn160.pn, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  resume { ptr, i32 } %.pn160.pn290

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt6vectorIiSaIiEE2atEm.exit164
  %.5148 = phi i1 [ true, %_ZNSt6vectorIiSaIiEE2atEm.exit164 ], [ %.4147, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  ret i1 %.5148
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer17CompareFieldValueERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer34CompareFieldValueUsingParentFieldsERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEiiPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf4util18MessageDifferencer24GetFieldComparisonResultERKNS0_7MessageES5_PKNS0_15FieldDescriptorEiiPKNS1_12FieldContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.a = load ptr, ptr %.in, align 8, !tbaa !121  ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
end_hunk_1
