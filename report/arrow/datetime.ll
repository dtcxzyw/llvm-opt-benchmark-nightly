inline.NumInlined: 2499
inline.NumDeleted: 992
begin_hunk_0_@_ZNK14arrow_vendored4date4tzdb12current_zoneEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit199: ; preds = %.sink.split.i194, %bb.cb
  %i.jl = phi i64 [ %.pre462, %.sink.split.i194 ], [ %.lcssa691, %bb.cb ] ; 5 uses
  %.not.i200 = icmp eq i64 %i.jl, 0
  br i1 %.not.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit, label %bb.cf

end_hunk_0
begin_hunk_1_@_ZNK14arrow_vendored4date4tzdb12current_zoneEv:bb.a

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %lsr.iv = phi i64 [ %i.jn, %bb.cf ], [ %lsr.iv.next, %bb.cg ] ; 3 uses
  %.1.i605 = phi i64 [ %i.jl, %bb.cf ], [ %14, %bb.cg ]
  %14 = add i64 %.1.i605, -1                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.jm, i64 %lsr.iv
  %i.jo = load i8, ptr %scevgep, align 1, !tbaa !31
  %i.jp = icmp eq i8 %i.jo, 34
  br i1 %i.jp, label %._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit_crit_edge, label %bb.cg, !llvm.loop !206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexitsplit: ; preds = %bb.cg
  %.09.i.ph.ph = phi i64 [ -1, %bb.cg ]
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit

._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit_crit_edge: ; preds = %bb.ch
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.ch ]
  %split = phi i64 [ %14, %bb.ch ]                ; 0 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit, !llvm.loop !206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexitsplit, %._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit_crit_edge
  %.09.i.ph = phi i64 [ %lsr.iv.lcssa, %._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit_crit_edge ], [ %.09.i.ph.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexitsplit ]
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm.exit.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit199
end_hunk_1
