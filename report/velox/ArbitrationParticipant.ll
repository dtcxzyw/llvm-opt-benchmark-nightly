inline.NumInlined: 1121
inline.NumDeleted: 565
begin_hunk_0_@_ZZN5folly7futures6detail12WaitExecutor5driveEvENKUlvE_clEv:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  store ptr null, ptr %4, align 16, !tbaa !24, !alias.scope !508
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.016, i64 48 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.016, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !391, !noalias !508 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.am, align 16, !tbaa !108, !noalias !508
  store <2 x ptr> %i.ap, ptr %i.aj, align 16, !tbaa !108, !alias.scope !508
  store <2 x ptr> <ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr null>, ptr %i.am, align 16, !tbaa !108, !noalias !508
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZSt8exchangeIN5folly8FunctionIFvvEEEDnET_RS4_OT0_.exit, label %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZZN5folly7futures6detail12WaitExecutor5driveEvENKUlvE_clEv:bb.a
  br label %_ZSt8exchangeIN5folly8FunctionIFvvEEEDnET_RS4_OT0_.exit

_ZSt8exchangeIN5folly8FunctionIFvvEEEDnET_RS4_OT0_.exit: ; preds = %bb.h, %_ZN5folly8FunctionIFvvEEC2EOS2_.exit.i.i, %bb.i
  store <2 x ptr> <ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr null>, ptr %i.am, align 16, !tbaa !108, !noalias !508
  %i.as = load ptr, ptr %i.aj, align 16, !tbaa !389
  invoke void %i.as(ptr noundef nonnull align 16 dereferenceable(48) %4)
          to label %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit unwind label %bb.l, !inline_history !511
end_hunk_1
