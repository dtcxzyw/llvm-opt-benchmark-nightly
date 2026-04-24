inline.NumInlined: 15600
inline.NumDeleted: 36
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AFuncCallNOpts0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.1623 = phi i32 [ %.0622, %bb.h ], [ %i.cl, %bb.m ], [ %i.cl, %._crit_edge ]
  %.1 = phi i32 [ %.0, %bb.h ], [ %i.ck, %bb.m ], [ %i.ck, %._crit_edge ] ; 2 uses
  %.3627 = add i32 %.3627.in, 4                   ; 2 uses
  %i.cm = add i32 %.0620, 1
  %.not647 = icmp eq i32 %.0620, %i.bg
  br i1 %.not647, label %.loopexit770, label %bb.g

end_hunk_0
begin_hunk_1_@w2c_hermes_0x5F_rem_pio2:bb.a
bb.at:                                            ; preds = %bb.av, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %bb.as ] ; 2 uses
  %.11540 = phi i32 [ %i.gx, %bb.av ], [ %i.gj, %bb.as ] ; 3 uses
  %i.gm = trunc nuw i64 %indvars.iv to i32
  %i.gn = shl i32 %i.gm, 3
  %i.go = add i32 %i.gk, %i.gn
  %i.gp = icmp slt i32 %.11540, 0
end_hunk_1
