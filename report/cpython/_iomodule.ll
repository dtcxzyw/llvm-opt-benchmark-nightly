inline.NumInlined: 34
inline.NumDeleted: 14
begin_hunk_0_@_io_open:bb.a
  %.0142310.i = phi i32 [ %.1143.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0146309.i = phi i32 [ %.1147.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0150308.i = phi i32 [ %.1151.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0154307.i = phi i32 [ %.1155.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %.0163306.i = phi i32 [ %.1164.i, %bb.ax ], [ 0, %_Py_NewRef.exit.thread.i ] ; 6 uses
  %i.cn = getelementptr i8, ptr %.188, i64 %.0134313.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29  ; 2 uses
  %i.cp = sext i8 %i.co to i32
end_hunk_0
begin_hunk_1_@_io_open:bb.a
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %.lr.ph.i
  %.1164.i = phi i32 [ 1, %bb.bd ], [ %.0163306.i, %bb.ay ], [ %.0163306.i, %bb.az ], [ %.0163306.i, %bb.ba ], [ %.0163306.i, %bb.bb ], [ %.0163306.i, %bb.bc ], [ %.0163306.i, %.lr.ph.i ] ; 2 uses
  %.1155.i = phi i32 [ %.0154307.i, %bb.bd ], [ %.0154307.i, %bb.ay ], [ %.0154307.i, %bb.az ], [ %.0154307.i, %bb.ba ], [ %.0154307.i, %bb.bb ], [ 1, %bb.bc ], [ %.0154307.i, %.lr.ph.i ] ; 2 uses
  %.1151.i = phi i32 [ %.0150308.i, %bb.bd ], [ %.0150308.i, %bb.ay ], [ %.0150308.i, %bb.az ], [ %.0150308.i, %bb.ba ], [ 1, %bb.bb ], [ %.0150308.i, %bb.bc ], [ %.0150308.i, %.lr.ph.i ] ; 2 uses
  %.1147.i = phi i32 [ %.0146309.i, %bb.bd ], [ %.0146309.i, %bb.ay ], [ %.0146309.i, %bb.az ], [ 1, %bb.ba ], [ %.0146309.i, %bb.bb ], [ %.0146309.i, %bb.bc ], [ %.0146309.i, %.lr.ph.i ] ; 4 uses
  %.1143.i = phi i32 [ %.0142310.i, %bb.bd ], [ %.0142310.i, %bb.ay ], [ 1, %bb.az ], [ %.0142310.i, %bb.ba ], [ %.0142310.i, %bb.bb ], [ %.0142310.i, %bb.bc ], [ %.0142310.i, %.lr.ph.i ] ; 4 uses
end_hunk_1
begin_hunk_2_@_io_open:bb.a

._crit_edge.i:                                    ; preds = %bb.ax
  %i.cu = icmp eq i32 %.1151.i, 0                 ; 2 uses
  %4 = icmp ne i32 %.1155.i, 0
  %5 = icmp ne i32 %.1164.i, 0                    ; 3 uses
  %i.cv = select i1 %4, i1 %5, i1 false           ; 2 uses
  %.not200.i = icmp eq i32 %.1136.i, 0
  br i1 %.not200.i, label %bb.bh, label %bb.bg

end_hunk_2
begin_hunk_3_@_io_open:bb.a

bb.br:                                            ; preds = %bb.bp, %bb.bo, %.thread443.i
  %.not196377389415426459.i = phi i1 [ true, %.thread443.i ], [ %.not196.i, %bb.bp ], [ %.not196.i, %bb.bo ]
  %.0163.lcssa354376390414427458.i = phi i1 [ false, %.thread443.i ], [ %5, %bb.bp ], [ %5, %bb.bo ] ; 6 uses
  %.0150.lcssa356374392412429457.i = phi i1 [ true, %.thread443.i ], [ true, %bb.bp ], [ false, %bb.bo ]
  %.0146.lcssa357373393411430456.i = phi i32 [ 0, %.thread443.i ], [ %.1147.i, %bb.bp ], [ %.1147.i, %bb.bo ] ; 2 uses
  %.0142.lcssa358372394410431455.i = phi i32 [ 0, %.thread443.i ], [ %.1143.i, %bb.bp ], [ %.1143.i, %bb.bo ] ; 2 uses
end_hunk_3
