inline.NumInlined: 169
inline.NumDeleted: 85
begin_hunk_0_@_ZN6Assimp17DumpSceneToAssxmlEPKcS1_PNS_8IOSystemEPK7aiSceneb:bb.a
  %i.ahn = load ptr, ptr %i.h, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahp = load ptr, ptr %i.aho, align 8
  call void %i.ahp(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #16
  ret void

.body.thread51:                                   ; preds = %.noexc.i, %.noexc.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp17DumpSceneToAssxmlEPKcS1_PNS_8IOSystemEPK7aiSceneb:bb.a
  %i.ahr = load ptr, ptr %i.h, align 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8
  call void %i.aht(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #16
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit32: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i31
end_hunk_1
begin_hunk_2_@_ZN6Assimp16AssxmlFileWriterL9WriteNodeEPK6aiNodePNS_8IOStreamEj:bb.a
  %i.bi = load i32, ptr %i.bb, align 8
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.c, label %._crit_edge55, !llvm.loop !39

bb.d:                                             ; preds = %._crit_edge55, %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp16AssxmlFileWriterL9WriteNodeEPK6aiNodePNS_8IOStreamEj:bb.a
  %i.bt = load i32, ptr %i.bl, align 8
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next66, %i.bu
  br i1 %i.bv, label %bb.f, label %._crit_edge59, !llvm.loop !40

bb.g:                                             ; preds = %._crit_edge59, %bb.d
  call void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.a)
end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !4}
end_hunk_4
