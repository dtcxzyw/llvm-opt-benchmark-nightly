inline.NumInlined: 1716
inline.NumDeleted: 657
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.bn = phi ptr [ %i.jq, %bb.bb ], [ %i.ba, %.lr.ph227.i.preheader ]
  %.055226.i = phi ptr [ %.val84.i, %bb.bb ], [ %9, %.lr.ph227.i.preheader ] ; 10 uses
  %.059225.i = phi ptr [ %.261.ph.i, %bb.bb ], [ %0, %.lr.ph227.i.preheader ] ; 4 uses
  %.063224.i = phi ptr [ %.265.i, %bb.bb ], [ null, %.lr.ph227.i.preheader ] ; 8 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv269.i
  store ptr %.055226.i, ptr %i.bo, align 8, !tbaa !107
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv269.i ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit.i

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv.exit.i: ; preds = %bb.m, %bb.l
  %10 = getelementptr inbounds nuw i8, ptr %.063224.i, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %10, align 8, !tbaa !103
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %.063224.i, align 8, !tbaa !103
  store i64 0, ptr %i.ce, align 8, !tbaa !94
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.f unwind label %bb.j       ; 5 uses

bb.f:                                             ; preds = %bb.e
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.j, align 8, !tbaa !87, !noalias !193
  %7 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %7, align 8, !tbaa !93, !noalias !193
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !94, !noalias !193
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !107  ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree20AddRequiredFieldPathEPNS3_4NodeEPKNS0_10DescriptorE:bb.a
  br i1 %.not.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22, !noalias !247 ; 4 uses
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.p, align 8, !tbaa !87, !noalias !247
  %3 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %3, align 8, !tbaa !93, !noalias !247
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.q, align 8, !tbaa !94, !noalias !247
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !107  ; 4 uses
end_hunk_3
