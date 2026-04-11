inline.NumInlined: 34
inline.NumDeleted: 14
begin_hunk_0_@_io_open:bb.a

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i
  %.0169.i = phi ptr [ %i.cy, %bb.bg ], [ %i.c, %._crit_edge.i ] ; 3 uses
  %.not196.i = icmp eq i32 %.1139.i, 0            ; 3 uses
  br i1 %.not196.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
end_hunk_0
begin_hunk_1_@_io_open:bb.a
  br label %Py_DECREF.exit.i

bb.br:                                            ; preds = %bb.bp, %bb.bo, %.thread443.i
  %.not196377389415426459.i = phi i1 [ true, %.thread443.i ], [ %.not196.i, %bb.bp ], [ %.not196.i, %bb.bo ]
  %.0163.lcssa354376390414427458.i = phi i1 [ false, %.thread443.i ], [ %i.cw, %bb.bp ], [ %i.cw, %bb.bo ] ; 6 uses
  %.0150.lcssa356374392412429457.i = phi i1 [ true, %.thread443.i ], [ true, %bb.bp ], [ false, %bb.bo ]
  %.0146.lcssa357373393411430456.i = phi i32 [ 0, %.thread443.i ], [ %.1147.i, %bb.bp ], [ %.1147.i, %bb.bo ] ; 2 uses
  %.0142.lcssa358372394410431455.i = phi i32 [ 0, %.thread443.i ], [ %.1143.i, %bb.bp ], [ %.1143.i, %bb.bo ] ; 2 uses
  %.0138.lcssa359371395409432454.i = phi i32 [ 0, %.thread443.i ], [ %.1139.i, %bb.bp ], [ %.1139.i, %bb.bo ]
  %.0135.lcssa360370396408433453.i = phi i32 [ 0, %.thread443.i ], [ %.1136.i, %bb.bp ], [ %.1136.i, %bb.bo ] ; 2 uses
  %i.de = add nuw nsw i32 %.0142.lcssa358372394410431455.i, %.0146.lcssa357373393411430456.i
  %i.df = add nuw nsw i32 %i.de, %.0138.lcssa359371395409432454.i
end_hunk_1
begin_hunk_2_@_io_open:bb.a

bb.cw:                                            ; preds = %bb.cv
  %i.fd = or i32 %.0142.lcssa358372394410431455.i, %.0146.lcssa357373393411430456.i
  %i.fe = or i32 %i.fd, %.0135.lcssa360370396408433453.i
  %or.cond15.not.i = icmp eq i32 %i.fe, 0         ; 2 uses
  %brmerge.not.i = and i1 %.not196377389415426459.i, %or.cond15.not.i
  %.mux.i = select i1 %or.cond15.not.i, i64 64, i64 72
  br i1 %brmerge.not.i, label %.thread276.i, label %bb.cx

end_hunk_2
begin_hunk_3_@_io_open:bb.a
  br label %.thread266.i

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sink.i = phi i64 [ 56, %bb.cv ], [ %.mux.i, %bb.cw ]
  %i.fh = getelementptr i8, ptr %.val.i, i64 %.sink.i
  %.0133.i = load ptr, ptr %i.fh, align 8, !tbaa !49
  %i.fi = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %.0133.i, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.dx, i32 noundef %.2275.i) #6 ; 9 uses
end_hunk_3
