inline.NumInlined: 4932
inline.NumDeleted: 2065
begin_hunk_0_@_ZN6google8protobuf4util18MessageDifferencer15CompareMapFieldERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPSt6vectorINS2_13SpecificFieldESaISA_EE:bb.a
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf4util18MessageDifferencer13SpecificFieldESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i37.preheader

.lr.ph.i.i.i.i.i37.preheader:                     ; preds = %.noexc40
  %7 = add i64 %i.ck, -96
  %8 = sub i64 %7, %i.cl                          ; 2 uses
  %i.cw = urem i64 %8, 96
  %i.cx = sub nuw i64 %8, %i.cw
  %i.cy = add i64 %i.cx, 96                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb:bb.a
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #43
  ret void
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10unique_ptrIN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -8
  %4 = sub i64 %3, %i.f                           ; 2 uses
  %i.t = lshr i64 %4, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %5 = add i64 %i.a, -8
  %i.v = sub i64 %5, %i.f
  %i.w = and i64 %i.v, -8
  %6 = add i64 %i.w, 8                            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %6
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %6
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt10unique_ptrIN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaESt14default_deleteIS5_EESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_:bb.a
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf4util18MessageDifferencer14IgnoreCriteriaESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %7 = add i64 %i.e, -8
  %8 = sub i64 %7, %i.a                           ; 2 uses
  %i.aj = lshr i64 %8, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check47 = icmp ult i64 %8, 184
  br i1 %min.iters.check47, label %.lr.ph.i.i.i17.preheader64, label %vector.memcheck40

vector.memcheck40:                                ; preds = %.lr.ph.i.i.i17.preheader
  %9 = add i64 %i.e, -8
  %i.al = sub i64 %9, %i.a
  %i.am = and i64 %i.al, -8                       ; 2 uses
  %10 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %scevgep41.a = getelementptr i8, ptr %10, i64 16
  %i.an = getelementptr i8, ptr %1, i64 %i.am
  %scevgep42 = getelementptr i8, ptr %i.an, i64 8
  %bound043 = icmp ult ptr %i.ai, %scevgep42
  %bound144 = icmp ult ptr %1, %scevgep41.a
  %found.conflict45 = and i1 %bound043, %bound144
  br i1 %found.conflict45, label %.lr.ph.i.i.i17.preheader64, label %vector.ph48

end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !371  ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d
  ret i64 %i.f
}

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSK_PFvSK_hmmE:bb.a

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cm, %bb.o ], [ %i.bk, %bb.j ], [ %i.ce, %bb.l ], [ %i.cl, %bb.n ], [ %i.az, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.cn = add i64 %i.aa, 87
  %i.co = add i64 %i.cn, %.0.i                    ; 2 uses
  %i.cp = lshr i64 %i.co, 7
  %i.cq = xor i64 %i.cp, %i.j                     ; 5 uses
  %i.cr = trunc i64 %i.co to i8
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooISt17basic_string_viewIcS7_EEESt4pairINSE_8iteratorEbERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !505
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !105, !noalias !901
  %i.h = and i64 %i.g, 65535
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %3 = add i64 %i.z, -4
  %4 = sub i64 %3, %i.e                           ; 2 uses
  %i.ae = lshr i64 %4, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %4, 28
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.am, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i.i ; 2 uses
  %i.ao = shl i64 %1, 2
  %5 = add i64 %i.ao, -4
  %6 = sub i64 %5, %i.aa                          ; 2 uses
  %i.ap = lshr i64 %6, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %6, 28
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEEEEmPKvPv:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !505
  %i.a = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
  %i.b = add i64 %.sroa.0.0.copyload, 87
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE:bb.a

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cj, %bb.o ], [ %i.bh, %bb.j ], [ %i.cb, %bb.l ], [ %i.ci, %bb.n ], [ %i.aw, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.ck = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 87
  %i.cl = add i64 %i.ck, %.0.i                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 7
  %i.cn = xor i64 %i.cm, %i.j                     ; 5 uses
  %i.co = trunc i64 %i.cl to i8
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !505
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !105, !noalias !982
  %i.h = and i64 %i.g, 65535
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !505
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !105, !noalias !1023
  %i.r = and i64 %i.q, 65535
end_hunk_12
