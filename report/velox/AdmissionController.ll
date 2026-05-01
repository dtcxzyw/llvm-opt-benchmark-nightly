inline.NumInlined: 2528
inline.NumDeleted: 1389
begin_hunk_0_@_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  store ptr null, ptr %.012.i.i.i, align 16, !tbaa !7, !alias.scope !709, !noalias !712
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !457, !alias.scope !712, !noalias !709 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.y, align 16, !tbaa !90, !alias.scope !712, !noalias !709
  store <2 x ptr> %i.ab, ptr %i.x, align 16, !tbaa !90, !alias.scope !709, !noalias !712
  store <2 x ptr> <ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr null>, ptr %i.y, align 16, !tbaa !90, !alias.scope !712, !noalias !709
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5folly8FunctionIFvvEEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5folly8FunctionIFvvEEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  store ptr null, ptr %.012.i.i.i19, align 16, !tbaa !7, !alias.scope !717, !noalias !720
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 56 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !457, !alias.scope !720, !noalias !717 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ai, align 16, !tbaa !90, !alias.scope !720, !noalias !717
  store <2 x ptr> %i.al, ptr %i.ah, align 16, !tbaa !90, !alias.scope !717, !noalias !720
  store <2 x ptr> <ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr null>, ptr %i.ai, align 16, !tbaa !90, !alias.scope !720, !noalias !717
  %.not.i.i.i.i.i.i.i21 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i21, label %_ZSt19__relocate_object_aIN5folly8FunctionIFvvEEES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i25, label %_ZSt12construct_atIN5folly8FunctionIFvvEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i.i22

end_hunk_1
begin_hunk_2_@_ZZN5folly7futures6detail12WaitExecutor5driveEvENKUlvE_clEv:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  store ptr null, ptr %4, align 16, !tbaa !7, !alias.scope !854
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.016, i64 48 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.016, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !457, !noalias !854 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.am, align 16, !tbaa !90, !noalias !854
  store <2 x ptr> %i.ap, ptr %i.aj, align 16, !tbaa !90, !alias.scope !854
  store <2 x ptr> <ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr null>, ptr %i.am, align 16, !tbaa !90, !noalias !854
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZSt8exchangeIN5folly8FunctionIFvvEEEDnET_RS4_OT0_.exit, label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i

end_hunk_2
begin_hunk_3_@_ZZN5folly7futures6detail12WaitExecutor5driveEvENKUlvE_clEv:bb.a
  br label %_ZSt8exchangeIN5folly8FunctionIFvvEEEDnET_RS4_OT0_.exit

_ZSt8exchangeIN5folly8FunctionIFvvEEEDnET_RS4_OT0_.exit: ; preds = %bb.h, %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i, %bb.i
  store <2 x ptr> <ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr null>, ptr %i.am, align 16, !tbaa !90, !noalias !854
  %i.as = load ptr, ptr %i.aj, align 16, !tbaa !455
  invoke void %i.as(ptr noundef nonnull align 16 dereferenceable(48) %4)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit unwind label %bb.l, !inline_history !857
end_hunk_3
