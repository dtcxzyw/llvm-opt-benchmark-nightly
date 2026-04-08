inline.NumInlined: 142
inline.NumDeleted: 110
begin_hunk_0_@_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE4growEm:bb.a

bb.e:                                             ; preds = %.lr.ph.i
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !21
  tail call void %i.bn(ptr noundef nonnull %i.bm) #9, !inline_history !54
  br label %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i

_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i:          ; preds = %bb.e, %.lr.ph.i
  %.not.i = icmp eq ptr %.pre, %i.bk
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit, label %.lr.ph.i, !llvm.loop !55

_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIvPDoFvPvEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit: ; preds = %_ZNSt10unique_ptrIvPDoFvPvEED2Ev.exit.i
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !46}
!54 = distinct !{null, null}
!55 = distinct !{!55, !46}
end_hunk_1
