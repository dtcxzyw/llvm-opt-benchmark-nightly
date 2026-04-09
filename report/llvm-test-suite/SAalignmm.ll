inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@Aalign:bb.a
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.al
  %.0161.i = phi i32 [ %i.rl, %bb.al ], [ %i.rm, %bb.an ], [ %i.rn, %bb.ao ] ; 5 uses
  %.pn.i = phi i32 [ %i.rj, %bb.al ], [ -1, %bb.an ], [ -1, %bb.ao ] ; 3 uses
  %.0160.i = add nsw i32 %.pn.i, %.016250.i       ; 3 uses
  %i.ro = xor i32 %.0161.i, -1
  %i.rp = add i32 %.016349.i, %i.ro               ; 2 uses
  %.not18130.i = icmp eq i32 %i.rp, 0
  br i1 %.not18130.i, label %._crit_edge32.i, label %.preheader3.preheader.i
end_hunk_0
begin_hunk_1_@Aalign:bb.a
  br i1 %.not181.i, label %._crit_edge32.loopexit.i, label %.preheader3.i, !llvm.loop !67

._crit_edge32.loopexit.i:                         ; preds = %._crit_edge.i
  %i.ti = add i32 %.016349.i, -1
  %i.tj = add i32 %i.ti, %.015551.i
  %7 = sub i32 %i.tj, %.0161.i
  br label %._crit_edge32.i

._crit_edge32.i:                                  ; preds = %._crit_edge32.loopexit.i, %bb.ap
  %.1156.lcssa.i = phi i32 [ %.015551.i, %bb.ap ], [ %7, %._crit_edge32.loopexit.i ] ; 2 uses
  %.not18239.i = icmp eq i32 %.pn.i, -1
  br i1 %.not18239.i, label %._crit_edge41.i, label %.preheader1.preheader.i

end_hunk_1
