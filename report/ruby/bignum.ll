inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_mul_toom3:bb.a
  %i.mi = getelementptr [4 x i8], ptr %i.ab, i64 %i.ly
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !7
  %i.mj = ashr i64 %i.mg, 32                      ; 3 uses
  %i.mk = add nuw i64 %.06278.i.i683, 2           ; 2 uses
  %niter3408.next.1 = add i64 %niter3408, 2       ; 2 uses
  %niter3408.ncmp.1 = icmp eq i64 %niter3408.next.1, %unroll_iter3407
  br i1 %niter3408.ncmp.1, label %._crit_edge.i.i686.loopexit.unr-lcssa, label %.lr.ph.i.i682, !llvm.loop !48
end_hunk_0
