inline.NumInlined: 4584
inline.NumDeleted: 1366
begin_hunk_0_@_ZN2v88internal8compiler14GraphAssembler10MergeStateIJNS0_5TNodeINS0_7BooleanEEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeESC_:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ex, align 8
  %.not170 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not170, label %.loopexit171, label %bb.n, !prof !6

bb.n:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.39) #20
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!253 = distinct !{!253, !17}
!254 = distinct !{!254, !17}
!255 = distinct !{!255, !17}
end_hunk_1
