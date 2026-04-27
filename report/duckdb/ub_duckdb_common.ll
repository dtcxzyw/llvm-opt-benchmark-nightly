inline.NumInlined: 29982
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb25BoxRendererImplementation19ComputeRenderWidthsERNS_6vectorINS_20RenderDataCollectionELb1ESaIS2_EEEmm:bb.a
  call void @llvm.memset.p0.i64(ptr align 8 %i.uk, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !33
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc619
  store ptr %i.uh, ptr %37, align 8, !tbaa !152
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.vy ; 2 uses
  store ptr %i.ul, ptr %i.ue, align 8, !tbaa !150
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_16ResultRenderTypeERNS0_20ValueRenderAlignmentERNS0_12optional_idxEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.bb = phi i64 [ %i.ax, %bb.g ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !139, !alias.scope !4674, !noalias !4677
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_16ResultRenderTypeERNS0_20ValueRenderAlignmentERNS0_12optional_idxEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34, %bb.h
  %i.cb = phi i64 [ %i.bx, %bb.h ], [ %.pre.i.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i33, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i32, i64 8
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !139, !alias.scope !4681, !noalias !4684
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_16ResultRenderTypeENS0_20ValueRenderAlignmentENS0_12optional_idxERmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.n
  %i.bq = phi i64 [ %i.bm, %bb.n ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !139, !alias.scope !4707, !noalias !4710
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_16ResultRenderTypeENS0_20ValueRenderAlignmentENS0_12optional_idxERmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i44

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i41, %bb.o
  %i.cq = phi i64 [ %i.cm, %bb.o ], [ %.pre.i.i.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i41 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i40, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i39, i64 8
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !139, !alias.scope !4713, !noalias !4716
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ay = phi i64 [ %i.au, %bb.e ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !139, !alias.scope !4748, !noalias !4751
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.f
  %i.by = phi i64 [ %i.bu, %bb.f ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !139, !alias.scope !4754, !noalias !4757
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_16ResultRenderTypeERNS0_20ValueRenderAlignmentEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.bf = phi i64 [ %i.bb, %bb.h ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !139, !alias.scope !4760, !noalias !4763
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_16ResultRenderTypeERNS0_20ValueRenderAlignmentEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i36

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i33, %bb.i
  %i.cf = phi i64 [ %i.cb, %bb.i ], [ %.pre.i.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i33 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i32, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 8
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !139, !alias.scope !4766, !noalias !4769
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_16ResultRenderTypeERNS0_20ValueRenderAlignmentERNS0_12optional_idxERmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.m
  %i.bm = phi i64 [ %i.bi, %bb.m ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !139, !alias.scope !4772, !noalias !4775
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN6duckdb14BoxRenderValueESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_16ResultRenderTypeERNS0_20ValueRenderAlignmentERNS0_12optional_idxERmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br label %_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43

_ZSt19__relocate_object_aIN6duckdb14BoxRenderValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40, %bb.n
  %i.cm = phi i64 [ %i.ci, %bb.n ], [ %.pre.i.i.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !139, !alias.scope !4778, !noalias !4781
end_hunk_10
