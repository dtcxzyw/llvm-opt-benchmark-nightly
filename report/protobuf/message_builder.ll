inline.NumInlined: 2245
inline.NumDeleted: 1028
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEEEEmPKvPv:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !242
  %i.a = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
  %i.b = add i64 %.sroa.0.0.copyload, %i.a
  %i.c = add i64 %i.b, 87
  ret i64 %i.c
}

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb:bb.a
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, %4
  %i.c = add i64 %i.b, %i.a
  %i.d = add i64 %i.c, 15
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, %i.f
  %i.j = add i64 %i.i, 7
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #29
  ret void
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSP_PFvSP_hmmE:bb.a

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cj, %bb.o ], [ %i.bh, %bb.j ], [ %i.cb, %bb.l ], [ %i.ci, %bb.n ], [ %i.aw, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.ck = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %.0.i
  %i.cl = add i64 %i.ck, 87                       ; 2 uses
  %i.cm = lshr i64 %i.cl, 7
  %i.cn = xor i64 %i.cm, %i.j                     ; 5 uses
  %i.co = trunc i64 %i.cl to i8
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIS7_EESF_INSJ_8iteratorEbERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !242
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, %i.c
  %i.e = add i64 %i.d, 87                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !209, !noalias !301
  %i.h = and i64 %i.g, 65535
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !107
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, %i.ab
  %i.ad = add nsw i32 %i.ac, 1
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_:bb.a
  %lcmp.mod62 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !107
  %i.al = trunc nuw i64 %indvars.iv.epil.init to i8
  %i.am = add i8 %i.ak, %i.al
  %i.an = add i8 %i.am, 1                         ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 3 uses
  %i.aq = zext i8 %i.an to i64
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_:bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.av = load i8, ptr %i.a, align 1, !tbaa !107
  %4 = trunc nuw i64 %indvars.iv to i8
  %5 = add i8 %i.av, %4
  %i.aw = add i8 %5, 1                            ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !106 ; 3 uses
  %i.az = zext i8 %i.aw to i64
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 %i.aw, ptr %i.bb, align 1, !tbaa !107
  store ptr %0, ptr %i.ay, align 8, !tbaa !106
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !107
  %6 = trunc nuw i64 %indvars.iv.next to i8
  %7 = add i8 %i.bc, %6
  %i.bd = add i8 %7, 1                            ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !106 ; 3 uses
  %i.bg = zext i8 %i.bd to i64
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 %i.bd, ptr %i.bi, align 1, !tbaa !107
  store ptr %0, ptr %i.bf, align 8, !tbaa !106
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !310
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_:bb.a

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.bq, -2
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_:bb.a
  store ptr %2, ptr %i.cs, align 8, !tbaa !106
  %i.cw = load i8, ptr %i.ag, align 1, !tbaa !107
  %i.cx = trunc i64 %indvars.iv58 to i8
  %4 = sub i8 %i.cx, %1
  %.reass = add i8 %4, %i.cw
  %i.cy = add i8 %.reass, 1
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !106 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE4findIS7_EENSJ_8iteratorERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !242
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, %i.m
  %i.o = add i64 %i.n, 87                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !209, !noalias !362
  %i.r = and i64 %i.q, 65535
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA11_cEESF_INSJ_8iteratorEbERKT_:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %2) #25 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(11) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, %i.d
  %i.f = add i64 %i.e, 87                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !209, !noalias !366
  %i.i = and i64 %i.h, 65535
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA23_cEESF_INSJ_8iteratorEbERKT_:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %2) #25 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(23) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, %i.d
  %i.f = add i64 %i.e, 87                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !209, !noalias !369
  %i.i = and i64 %i.h, 65535
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA12_cEESF_INSJ_8iteratorEbERKT_:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(12) %2) #25 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(12) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, %i.d
  %i.f = add i64 %i.e, 87                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !209, !noalias !372
  %i.i = and i64 %i.h, 65535
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE:bb.a

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cj, %bb.o ], [ %i.bh, %bb.j ], [ %i.cb, %bb.l ], [ %i.ci, %bb.n ], [ %i.aw, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.ck = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %.0.i
  %i.cl = add i64 %i.ck, 87                       ; 2 uses
  %i.cm = lshr i64 %i.cl, 7
  %i.cn = xor i64 %i.cm, %i.j                     ; 5 uses
  %i.co = trunc i64 %i.cl to i8
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !242
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, %i.c
  %i.e = add i64 %i.d, 87                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !209, !noalias !388
  %i.h = and i64 %i.g, 65535
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !242
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, %i.m
  %i.o = add i64 %i.n, 87                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !209, !noalias !416
  %i.r = and i64 %i.q, 65535
end_hunk_17
