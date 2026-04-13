inline.NumInlined: 956
inline.NumDeleted: 303
begin_hunk_0_@_ZN2v88internal8compiler14GraphAssembler10MergeStateIJPNS1_4NodeEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIS5_vJDpT_EE4TypeES9_:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ew, align 8
  %.not171 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not171, label %.loopexit172, label %bb.n, !prof !7

bb.n:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit133
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #15
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler14GraphAssembler10MergeStateIJNS0_5TNodeINS0_6ObjectEEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeESC_:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ex, align 8
  %.not170 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not170, label %.loopexit171, label %bb.n, !prof !7

bb.n:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #15
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjEN2v88internal13ZoneAllocatorIjEEE16_M_insert_uniqueIjEESt4pairISt17_Rb_tree_iteratorIjEbEOT_:bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !48

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.f, label %._crit_edge.thread.i, label %bb.d
end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
!45 = distinct !{!45, !11}
!46 = distinct !{null}
!47 = distinct !{ptr @_ZN2v88internal8compiler14MemoryLoweringD2Ev, null}
!48 = distinct !{!48, !11}
end_hunk_3
