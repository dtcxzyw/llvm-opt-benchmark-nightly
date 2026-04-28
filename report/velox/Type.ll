inline.NumInlined: 8537
inline.NumDeleted: 3636
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox8TypeKindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKS6_RKSA_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1137
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %7 = add i64 %i.ck, 256
  %8 = and i64 %i.cj, 255
  %i.cl = or disjoint i64 %7, %8
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !10
  br label %bb.o

end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox8TypeKindEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKS7_RKSA_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESK_ImmERKT_DpOT0_:bb.a
  store i8 %i.dm, ptr %i.dl, align 8, !tbaa !1144
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.do = and i64 %i.dn, -256
  %7 = add i64 %i.do, 256
  %8 = and i64 %i.dn, 255
  %i.dp = or disjoint i64 %7, %8
  store i64 %i.dp, ptr %i.a, align 8, !tbaa !10
  br label %bb.o

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESS_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIST_SL_EEEEESZ_ImmEDpOT_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10   ; 2 uses
  %i.q = and i64 %i.p, -256
  %8 = add i64 %i.q, 256
  %9 = and i64 %i.p, 255
  %i.r = or disjoint i64 %8, %9
  store i64 %i.r, ptr %i.o, align 8, !tbaa !10
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox7RowType9NameIndexEvNS6_15NameIndexHasherEvvEEE19tryEmplaceValueImplIS7_JS7_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS7_EEEEbESC_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox7RowType9NameIndexEvNS6_15NameIndexHasherEvvEEE13insertAtBlankIJS7_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS7_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox7RowType9NameIndexEE6setTagEmm.exit, %bb.n
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.cf = and i64 %i.ce, -256
  %6 = add i64 %i.cf, 256
  %7 = and i64 %i.ce, 255
  %i.cg = or disjoint i64 %6, %7
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !10
  br label %.loopexit

end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKN8facebook5velox4TypeESt4pairIiNS_7dynamicEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS8_JS8_SB_EEES9_INS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbES9_ImmERKT_DpOT0_:bb.a
  tail call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 8 dereferenceable(40) %i.cl) #17
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.cn = and i64 %i.cm, -256
  %7 = add i64 %i.cn, 256
  %8 = and i64 %i.cm, 255
  %i.co = or disjoint i64 %7, %8
  store i64 %i.co, ptr %i.a, align 8, !tbaa !10
  br label %bb.o

end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiSt10shared_ptrIKN8facebook5velox4TypeEEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIiJiRS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESG_ImmERKT_DpOT0_:bb.a
_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIiSt10shared_ptrIKN8facebook5velox4TypeEEvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJiRS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, %bb.p, %bb.q
  %i.cr = phi i64 [ %.pre.i, %bb.q ], [ %i.cb, %bb.p ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 2 uses
  %i.cs = and i64 %i.cr, -256
  %7 = add i64 %i.cs, 256
  %8 = and i64 %i.cr, 255
  %i.ct = or disjoint i64 %7, %8
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !10
  br label %bb.r

end_hunk_5
