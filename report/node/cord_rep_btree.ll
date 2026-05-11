inline.NumInlined: 774
inline.NumDeleted: 203
begin_hunk_0_@_ZN4absl13cord_internal12CordRepBtree7AddEdgeILNS1_8EdgeTypeE1EEENS1_8OpResultEbPNS0_7CordRepEm:bb.a
; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.absl::cord_internal::(anonymous namespace)::StackOperations", align 8 ; 17 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.ao, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i, !prof !21

end_hunk_0
begin_hunk_1_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.u = load atomic i32, ptr %i.t acquire, align 4
  %i.v = icmp eq i32 %i.u, 2
  %i.w = zext i1 %i.v to i32
  %i.x = add nuw nsw i32 %.0.lcssa.i, %i.w        ; 3 uses
  store i32 %i.x, ptr %4, align 8
  %smax30.i = tail call i32 @llvm.smax.i32(i32 %.0.lcssa.i, i32 %i.d)
  %wide.trip.count31.i = zext nneg i32 %smax30.i to i64 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit: ; preds = %.lr.ph.i, %.loopexit42.i, %bb.l, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE9PropagateEPS3_imNS3_8OpResultE.exit
  %.060 = phi ptr [ %.2.i.i, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE9PropagateEPS3_imNS3_8OpResultE.exit ], [ %0, %bb.l ], [ %0, %.loopexit42.i ], [ %0, %.lr.ph.i ]
  %.0 = phi ptr [ undef, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE9PropagateEPS3_imNS3_8OpResultE.exit ], [ %i.bs, %bb.l ], [ %i.cj, %.loopexit42.i ], [ %i.ce, %.lr.ph.i ] ; 2 uses
  br i1 %i.bk, label %.loopexit, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit
  %.promoted.pre = load i32, ptr %4, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS3_i.exit
  %.promoted = phi i32 [ %.promoted.pre, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge ], [ %i.x, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS3_i.exit ]
  %.sroa.11.0 = phi ptr [ %i.bj, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge ], [ %2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS3_i.exit ]
  %.sroa.0.0 = phi i64 [ %i.bi, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge ], [ %1, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS3_i.exit ]
  %.161 = phi ptr [ %.060, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge ], [ %0, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS3_i.exit ]
  %.1 = phi ptr [ %.0, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit._crit_edge ], [ undef, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE10BuildStackEPS3_i.exit ]
  br label %bb.w

bb.w:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92, %bb.v
  %5 = phi i32 [ %.promoted, %bb.v ], [ %6, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 5 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.v ], [ %.sroa.0.2, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 11 uses
  %.064 = phi i32 [ %i.d, %bb.v ], [ %.165, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 9 uses
  %.262 = phi ptr [ %.161, %bb.v ], [ %.363, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92 ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.dk = zext nneg i32 %.064 to i64
  %i.dl = add nsw i32 %.064, -1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = sext i32 %5 to i64
  br label %bb.y

end_hunk_3
begin_hunk_4_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  %i.ei = zext nneg i32 %.064 to i64
  %i.ej = add nsw i32 %.064, -1
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = sext i32 %5 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %.preheader.i94
end_hunk_4
begin_hunk_5_@_ZN4absl13cord_internal12CordRepBtree7AddDataILNS1_8EdgeTypeE0EEEPS1_S4_St17basic_string_viewIcSt11char_traitsIcEEm:bb.a
  unreachable

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113._crit_edge
  %i.fz = add nuw nsw i32 %i.fh, 1                ; 2 uses
  store i32 %i.fz, ptr %4, align 8
  br label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE6UnwindILb0EEEPS3_S7_imNS3_8OpResultE.exit92: ; preds = %.lr.ph.i83, %.loopexit42.i89, %bb.ab, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit
  %6 = phi i32 [ %i.fz, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %5, %bb.ab ], [ %5, %.loopexit42.i89 ], [ %5, %.lr.ph.i83 ]
  %.sroa.0.2 = phi i64 [ %.sroa.speculated.i.i, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.sroa.0.1, %bb.ab ], [ %.sroa.0.1, %.loopexit42.i89 ], [ %.sroa.0.1, %.lr.ph.i83 ]
  %.165 = phi i32 [ %i.fh, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.064, %bb.ab ], [ %.064, %.loopexit42.i89 ], [ %.064, %.lr.ph.i83 ]
  %.363 = phi ptr [ %.2.i100, %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE0EE15BuildOwnedStackEPS3_i.exit ], [ %.262, %bb.ab ], [ %.262, %.loopexit42.i89 ], [ %.262, %.lr.ph.i83 ]
end_hunk_5
