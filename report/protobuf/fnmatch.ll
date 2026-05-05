inline.NumInlined: 30
inline.NumDeleted: 17
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_:bb.a
  br i1 %i.d, label %.lr.ph.i.preheader, label %bb.c

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.06.i = phi i64 [ %i.g, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.sroa.12.082, i64 %.06.i
  %i.e = load i8, ptr %scevgep, align 1, !tbaa !7
  %i.f = icmp eq i8 %i.e, 42
  br i1 %i.f, label %bb.b, label %.lr.ph.i._ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit_crit_edge

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add i64 %.06.i, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.033.083, %i.g
  br i1 %exitcond.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exitsplit, label %.lr.ph.i, !llvm.loop !8

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exitsplit: ; preds = %bb.b
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit

.lr.ph.i._ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit_crit_edge: ; preds = %.lr.ph.i
  %.06.i.lcssa.a = phi i64 [ %.06.i, %.lr.ph.i ]
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exitsplit, %.lr.ph.i._ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit_crit_edge
  %.05.i = phi i64 [ %.06.i.lcssa.a, %.lr.ph.i._ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit_crit_edge ], [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exitsplit ]
  %i.h = icmp eq i64 %.05.i, -1
  br label %.thread

end_hunk_0
