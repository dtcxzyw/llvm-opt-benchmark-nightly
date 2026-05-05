inline.NumInlined: 6448
inline.NumDeleted: 2427
begin_hunk_0_@_ZN6google8protobuf24MergedDescriptorDatabase24FindFileContainingSymbolESt17basic_string_viewIcSt11char_traitsIcEEPNS0_19FileDescriptorProtoE:bb.a
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %.01829.lcssa = phi i64 [ %.01829, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef null)
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf24MergedDescriptorDatabase24FindFileContainingSymbolESt17basic_string_viewIcSt11char_traitsIcEEPNS0_19FileDescriptorProtoE:bb.a
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %.01829, %lsr.iv
  %or.cond = select i1 %i.z, i1 true, i1 %exitcond.not
  %lsr.iv.next = add nuw i64 %lsr.iv, 1
  br i1 %or.cond, label %.thread.sink.split.loopexit, label %bb.c, !llvm.loop !345
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf24MergedDescriptorDatabase27FindFileContainingExtensionESt17basic_string_viewIcSt11char_traitsIcEEiPNS0_19FileDescriptorProtoE:bb.a
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %.01930.lcssa = phi i64 [ %.01930, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN6google8protobuf19FileDescriptorProtoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef null)
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf24MergedDescriptorDatabase27FindFileContainingExtensionESt17basic_string_viewIcSt11char_traitsIcEEiPNS0_19FileDescriptorProtoE:bb.a
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i64 %.01930, %lsr.iv
  %or.cond = select i1 %i.z, i1 true, i1 %exitcond.not
  %lsr.iv.next = add nuw i64 %lsr.iv, 1
  br i1 %or.cond, label %.thread.sink.split.loopexit, label %bb.c, !llvm.loop !347
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf24MergedDescriptorDatabase23FindAllExtensionNumbersESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIiSaIiEE:bb.a
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.h
  %.07.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.h ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.x = shl nuw nsw i64 %.07.i.i.i.i.i.i, 2
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.x
  %i.y = load i32, ptr %scevgep, align 4, !tbaa !3, !noalias !357
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf24MergedDescriptorDatabase23FindAllExtensionNumbersESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIiSaIiEE:bb.a
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexitsplit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !363

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexitsplit: ; preds = %bb.h
  br label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexit

.lr.ph.i.i.i.i.i.i._ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.lcssa.a = phi i64 [ %.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  br label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexit

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexit: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexitsplit, %.lr.ph.i.i.i.i.i.i._ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexit_crit_edge
  %.0.lcssa.i.i.i.i.i.i.ph = phi i64 [ %.07.i.i.i.i.i.i.lcssa.a, %.lr.ph.i.i.i.i.i.i._ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexit_crit_edge ], [ %i.v, %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexitsplit ]
  br label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIiSt4lessIiESaIiELi256ELb0EEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS5_iE15checked_compareE.exit.i.i.i.loopexit, %bb.g
end_hunk_5
begin_hunk_6_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN4absl12lts_2025051218container_internal14btree_iteratorINSB_10btree_nodeINSB_10set_paramsIS5_St4lessIS5_ES6_Li256ELb0EEEEERKS5_PSJ_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SR_St20forward_iterator_tag:bb.a
  %i.ac = icmp ne i32 %.sroa.4.1.i, %5
  %.not3.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  %lsr.iv.next = add i64 %lsr.iv370, 32           ; 4 uses
  %lsr.iv.next407 = inttoptr i64 %lsr.iv.next to ptr
  br i1 %.not3.i.i, label %.lr.ph.i, label %_ZSt10__distanceIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_ELi256ELb0EEEEERKSB_PSH_EEENSt15iterator_traitsIT_E15difference_typeESM_SM_St18input_iterator_tag.exit, !llvm.loop !436

_ZSt10__distanceIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_ELi256ELb0EEEEERKSB_PSH_EEENSt15iterator_traitsIT_E15difference_typeESM_SM_St18input_iterator_tag.exit: ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EppEv.exit.i
  %.lcssa339 = phi i64 [ %i.aa, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EppEv.exit.i ] ; 4 uses
  %.011.i.lcssa = phi i64 [ %.011.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISA_ESaISA_ELi256ELb0EEEEERKSA_PSG_EppEv.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
end_hunk_6
begin_hunk_7_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN4absl12lts_2025051218container_internal14btree_iteratorINSB_10btree_nodeINSB_10set_paramsIS5_St4lessIS5_ES6_Li256ELb0EEEEERKS5_PSJ_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SR_St20forward_iterator_tag:bb.a
  %.idx = shl nsw i64 %i.ap, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 %.idx ; 2 uses
  %scevgep389 = getelementptr i8, ptr %i.ag, i64 16
  %i.ar = sub i64 16, %lsr.iv.next
  %scevgep394 = getelementptr i8, ptr %i.ag, i64 %i.ar ; 5 uses
  br label %.lr.ph.i.i.i.i.i

end_hunk_7
begin_hunk_8_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN4absl12lts_2025051218container_internal14btree_iteratorINSB_10btree_nodeINSB_10set_paramsIS5_St4lessIS5_ES6_Li256ELb0EEEEERKS5_PSJ_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SR_St20forward_iterator_tag:bb.a
  %scevgep391 = getelementptr i8, ptr %lsr.iv390, i64 32
  %lsr.iv.next396 = add i64 %lsr.iv395, 32        ; 2 uses
  %tmp = inttoptr i64 %lsr.iv.next396 to ptr
  %.not.i.i.i.i.i69 = icmp eq ptr %lsr.iv.next407, %tmp
  br i1 %.not.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !437

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN4absl12lts_2025051218container_internal14btree_iteratorINSB_10btree_nodeINSB_10set_paramsIS5_St4lessIS5_ES6_Li256ELb0EEEEERKS5_PSJ_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SR_St20forward_iterator_tag:bb.a
.lr.ph.i.i.i.i.i85.preheader:                     ; preds = %_ZSt9__advanceIN4absl12lts_2025051218container_internal14btree_iteratorINS2_10btree_nodeINS2_10set_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_ELi256ELb0EEEEERKSB_PSH_EElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.fn = mul i64 %i.an, -32
  %scevgep369 = getelementptr i8, ptr %i.fl, i64 %i.fn
  %scevgep371 = getelementptr i8, ptr %scevgep369, i64 %lsr.iv.next ; 3 uses
  br label %.lr.ph.i.i.i.i.i85

.lr.ph.i.i.i.i.i85:                               ; preds = %.lr.ph.i.i.i.i.i85.preheader, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i89
end_hunk_9
