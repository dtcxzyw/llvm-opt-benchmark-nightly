inline.NumInlined: 4794
inline.NumDeleted: 2084
begin_hunk_0_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPNS0_2io7PrinterE:bb.a
.lr.ph.i.preheader:                               ; preds = %.noexc101
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %21 = sub i64 %i.je, %i.jf
  %22 = add i64 %21, -32                          ; 2 uses
  %min.iters.check = icmp ult i64 %22, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader275, label %vector.ph

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPNS0_2io7PrinterE:bb.a
  %i.kw = and <2 x i32> %i.kv, splat (i32 -2)
  %i.kx = trunc <2 x i64> %i.ku to <2 x i32>
  %i.ky = and <2 x i32> %i.kx, splat (i32 -2)
  %i.kz = add <2 x i32> %vec.phi, %i.kw
  %i.la = add <2 x i32> %vec.phi265, %i.ky
  %i.lb = add <2 x i32> %i.kz, splat (i32 3)      ; 2 uses
  %i.lc = add <2 x i32> %i.la, splat (i32 3)      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !218
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17GenerateDataDeclsEPNS0_2io7PrinterE:bb.a
  %sh.diff.i = lshr i64 %i.ll, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.lm = and i32 %tr.sh.diff.i, -2
  %i.ln = add i32 %.010.i, %i.lm
  %i.lo = add i32 %i.ln, 3                        ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.lp, %i.jd
  br i1 %.not.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i, !llvm.loop !221
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator21GenerateTailCallTableEPNS0_2io7PrinterE:bb.a
.lr.ph.i.preheader:                               ; preds = %.noexc144
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jq to i64
  %28 = sub i64 %i.jt, %i.ju
  %29 = add i64 %28, -32                          ; 2 uses
  %min.iters.check = icmp ult i64 %29, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader521, label %vector.ph

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator21GenerateTailCallTableEPNS0_2io7PrinterE:bb.a
  %i.ll = and <2 x i32> %i.lk, splat (i32 -2)
  %i.lm = trunc <2 x i64> %i.lj to <2 x i32>
  %i.ln = and <2 x i32> %i.lm, splat (i32 -2)
  %i.lo = add <2 x i32> %vec.phi, %i.ll
  %i.lp = add <2 x i32> %vec.phi502, %i.ln
  %i.lq = add <2 x i32> %i.lo, splat (i32 3)      ; 2 uses
  %i.lr = add <2 x i32> %i.lp, splat (i32 3)      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !283
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator21GenerateTailCallTableEPNS0_2io7PrinterE:bb.a
  %sh.diff.i = lshr i64 %i.ma, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.mb = and i32 %tr.sh.diff.i, -2
  %i.mc = add i32 %.010.i, %i.mb
  %i.md = add i32 %i.mc, 3                        ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.me, %i.js
  br i1 %.not.i, label %_ZNK6google8protobuf8compiler3cpp15NumToEntryTable6size16Ev.exit, label %.lr.ph.i, !llvm.loop !284
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator18GenerateFieldNamesERNS2_9FormatterE:bb.a
  %i.bx = add i64 %.13664, %i.aq
  %.068.i.i.i.ph65 = ptrtoint ptr %.068.i.i.i.ph to i64 ; 2 uses
  %i.by = sub i64 %i.bx, %.068.i.i.i.ph65
  %i.bz = add i64 %.13664, %i.aq
  %xtraiter = and i64 %i.by, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator18GenerateFieldNamesERNS2_9FormatterE:bb.a
.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cc, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi ptr [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.prol ]
  %3 = sub i64 %.068.i.i.i.ph65, %i.bz
  %4 = icmp ugt i64 %3, -8
  br i1 %4, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashESt17basic_string_viewIcSt11char_traitsIcEEEEmPKvPv:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !129
  %i.a = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload)
  %i.b = add i64 %.sroa.0.0.copyload, %i.a
  %i.c = add i64 %i.b, 87
  ret i64 %i.c
}

end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb:bb.a
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #31
  ret void
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSP_PFvSP_hmmE:bb.a

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cj, %bb.o ], [ %i.bh, %bb.j ], [ %i.cb, %bb.l ], [ %i.ci, %bb.n ], [ %i.aw, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.ck = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i, %.0.i
  %i.cl = add i64 %i.ck, 87                       ; 2 uses
  %i.cm = lshr i64 %i.cl, 7
  %i.cn = xor i64 %i.cm, %i.j                     ; 5 uses
  %i.co = trunc i64 %i.cl to i8
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE4findIS7_EENSJ_8iteratorERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, %i.m
  %i.o = add i64 %i.n, 87                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !64, !noalias !446
  %i.r = and i64 %i.q, 65535
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.a, i64 noundef %i.c)
  %i.e = add i64 %i.c, %i.d
  %i.f = add i64 %i.e, 87
  ret i64 %i.f
}

end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvST_PFvST_hmmE:bb.a

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cm, %bb.o ], [ %i.bk, %bb.j ], [ %i.ce, %bb.l ], [ %i.cl, %bb.n ], [ %i.az, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.cn = add i64 %i.aa, %.0.i
  %i.co = add i64 %i.cn, 87                       ; 2 uses
  %i.cp = lshr i64 %i.co, 7
  %i.cq = xor i64 %i.cp, %i.j                     ; 5 uses
  %i.cr = trunc i64 %i.co to i8
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE30find_or_prepare_insert_non_sooIS9_EESJ_INSN_8iteratorEbERKT_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, %i.f
  %i.h = add i64 %i.g, 87                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64, !noalias !541
  %i.k = and i64 %i.j, 65535
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE30find_or_prepare_insert_non_sooIS9_EESI_INSM_8iteratorEbERKT_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !147  ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, %i.f
  %i.h = add i64 %i.g, 87                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64, !noalias !544
  %i.k = and i64 %i.j, 65535
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSS_PFvSS_hmmE:bb.a

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cm, %bb.o ], [ %i.bk, %bb.j ], [ %i.ce, %bb.l ], [ %i.cl, %bb.n ], [ %i.az, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.cn = add i64 %i.aa, %.0.i
  %i.co = add i64 %i.cn, 87                       ; 2 uses
  %i.cp = lshr i64 %i.co, 7
  %i.cq = xor i64 %i.cp, %i.j                     ; 5 uses
  %i.cr = trunc i64 %i.co to i8
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer9ValueImplILb1EEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SF_EEE4findISt17basic_string_viewIcS7_EEENSN_8iteratorERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, %i.p
  %i.r = add i64 %i.q, 87                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64, !noalias !567
  %i.u = and i64 %i.t, 65535
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6google8protobuf2io7Printer16AnnotationRecordEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSM_8iteratorERKT_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !129
  %i.p = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.q = add i64 %.sroa.0.0.copyload.i, %i.p
  %i.r = add i64 %i.q, 87                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64, !noalias !603
  %i.u = and i64 %i.t, 65535
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA10_cEESF_INSJ_8iteratorEbERKT_:bb.a
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(10) %2) #32 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(10) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, %i.d
  %i.f = add i64 %i.e, 87                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64, !noalias !617
  %i.i = and i64 %i.h, 65535
end_hunk_19
