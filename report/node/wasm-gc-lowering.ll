inline.NumInlined: 1332
inline.NumDeleted: 270
begin_hunk_0_@_ZN2v88internal8compiler14GraphAssembler10MergeStateIJPNS1_4NodeEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeES9_:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ew, align 8
  %.not171 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not171, label %.loopexit172, label %bb.n, !prof !8

bb.n:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #11
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler14GraphAssembler10MergeStateIJNS0_5TNodeINS0_5BoolTEEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeESC_:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ex, align 8
  %.not170 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not170, label %.loopexit171, label %bb.n, !prof !8

bb.n:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #11
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!156 = distinct !{!156, !157, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!157 = distinct !{!157, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!158 = !{!156, !153}
end_hunk_2
