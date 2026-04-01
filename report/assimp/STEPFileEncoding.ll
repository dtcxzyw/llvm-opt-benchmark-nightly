begin_hunk_0
  %i.f = add nuw i64 %.0146.ph634, 1              ; 9 uses
  %i.g = add i64 %.0146.ph634, 2                  ; 5 uses
  %i.h = add i64 %.0146.ph634, 4                  ; 9 uses
  %invariant.op = sub i64 4, %.0146.ph634
  %invariant.op779 = sub i64 4, %.0146.ph634
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph416, %bb.ci
end_hunk_0
begin_hunk_1
          to label %bb.av unwind label %bb.ay     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.kb = add i64 %.0153.lcssa, %invariant.op779
  %i.kc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0146.ph634, i64 noundef %i.kb)
          to label %bb.aw unwind label %bb.az     ; 0 uses

end_hunk_1
begin_hunk_2
  br i1 %.not.i276, label %_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277, label %.lr.ph.i273, !llvm.loop !16

_ZN4utf88utf32to8IPhPKjEET_T0_S5_S4_.exit277:     ; preds = %.noexc
  %i.nr = add i64 %.0153.lcssa, %invariant.op
  %i.ns = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0146.ph634, i64 noundef %i.nr)
          to label %bb.ce unwind label %bb.ch     ; 0 uses

end_hunk_2
