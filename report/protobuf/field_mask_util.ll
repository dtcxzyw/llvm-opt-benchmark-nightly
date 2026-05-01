inline.NumInlined: 1716
inline.NumDeleted: 658
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.cq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.q unwind label %bb.ao      ; 4 uses

bb.q:                                             ; preds = %bb.p
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.cq, align 8, !tbaa !103, !noalias !118
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 0, ptr %i.cr, align 8, !tbaa !94, !noalias !118
  store ptr %i.cq, ptr %8, align 8, !tbaa !107, !alias.scope !118
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %.val98.i = load ptr, ptr %i.kf, align 8
  %.val.i.i = load ptr, ptr %i.kc, align 8, !tbaa !87 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.val5.i.i = load ptr, ptr %i.kg, align 8       ; 2 uses
  br label %bb.be

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5clearEv.exit.i.i.i: ; preds = %bb.ca
  call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val.i.i), !noalias !164, !inline_history !171
  store <2 x ptr> <ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11>, ptr %i.kc, align 8, !tbaa !103, !noalias !164
  store i64 0, ptr %i.nt, align 8, !tbaa !94, !noalias !164
  br label %.loopexit170.i

end_hunk_2
