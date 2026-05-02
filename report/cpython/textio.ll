inline.NumInlined: 326
inline.NumDeleted: 79
begin_hunk_0_@_io_TextIOWrapper_reconfigure:bb.a
  %.139 = phi ptr [ %i.n, %bb.l ], [ %i.n, %bb.k ], [ %i.n, %bb.i ], [ null, %bb.g ], [ null, %bb.e ] ; 4 uses
  %.1 = phi ptr [ %.037, %bb.l ], [ %i.q, %bb.k ], [ @_Py_NoneStruct, %bb.i ], [ @_Py_NoneStruct, %bb.g ], [ @_Py_NoneStruct, %bb.e ] ; 5 uses
  %.0 = phi ptr [ %i.t, %bb.l ], [ @_Py_NoneStruct, %bb.k ], [ @_Py_NoneStruct, %bb.i ], [ @_Py_NoneStruct, %bb.g ], [ @_Py_NoneStruct, %bb.e ] ; 5 uses
  %.not108 = icmp ne ptr %.143, @_Py_NoneStruct   ; 7 uses
  br i1 %.not108, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_io_TextIOWrapper_reconfigure:bb.a
  br label %_io_TextIOWrapper_reconfigure_impl.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %.not109 = icmp ne ptr %.141, @_Py_NoneStruct   ; 7 uses
  br i1 %.not109, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
end_hunk_1
begin_hunk_2_@_io_TextIOWrapper_reconfigure:bb.a
  %i.ar = getelementptr i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %.not55.not.i = icmp eq ptr %i.as, null
  %or.cond3.i = or i1 %.not108, %.not109          ; 4 uses
  br i1 %.not55.not.i, label %bb.x, label %bb.w

.thread.i:                                        ; preds = %bb.b, %.thread69, %bb.s
end_hunk_2
begin_hunk_3_@_io_TextIOWrapper_reconfigure:bb.a
  %i.aw = getelementptr i8, ptr %0, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !85
  %.not5573.i = icmp ne ptr %i.ax, null
  %or.cond374.i = or i1 %i.au, %i.av              ; 2 uses
  %or.cond575.i = or i1 %i.at, %or.cond374.i
  %or.cond5676.i = and i1 %or.cond575.i, %.not5573.i
  br i1 %or.cond5676.i, label %bb.w, label %.thread77.i
end_hunk_3
begin_hunk_4_@_io_TextIOWrapper_reconfigure:bb.a

.thread77.i:                                      ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %.thread.i
  %i.bo = phi i1 [ %i.at, %.thread.i ], [ true, %bb.y ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ]
  %i.bp = phi i1 [ %i.au, %.thread.i ], [ %.not108, %bb.y ], [ %.not108, %bb.ab ], [ %.not108, %bb.aa ], [ %.not108, %bb.z ]
  %.08188106 = phi ptr [ %.08188107, %.thread.i ], [ %.0, %bb.y ], [ %.0, %bb.ab ], [ %.0, %bb.aa ], [ %.0, %bb.z ] ; 2 uses
  %.18089104 = phi ptr [ %.18089105, %.thread.i ], [ %.1, %bb.y ], [ %.1, %bb.ab ], [ %.1, %bb.aa ], [ %.1, %bb.z ] ; 2 uses
  %.1417891102 = phi ptr [ %.1417891103, %.thread.i ], [ %.141, %bb.y ], [ %.141, %bb.ab ], [ %.141, %bb.aa ], [ %.141, %bb.z ] ; 2 uses
  %.1437792100 = phi ptr [ %.1437792101, %.thread.i ], [ %.143, %bb.y ], [ %.143, %bb.ab ], [ %.143, %bb.aa ], [ %.143, %bb.z ] ; 5 uses
  %i.bq = phi i1 [ %i.av, %.thread.i ], [ %.not109, %bb.y ], [ %.not109, %bb.ab ], [ %.not109, %bb.aa ], [ %.not109, %bb.z ] ; 2 uses
  %or.cond37780.i = phi i1 [ %or.cond374.i, %.thread.i ], [ %or.cond3.i, %bb.y ], [ %or.cond3.i, %bb.ab ], [ %or.cond3.i, %bb.aa ], [ %or.cond3.i, %bb.z ]
  %.0.i = phi ptr [ null, %.thread.i ], [ %i.bb, %bb.y ], [ %i.bb, %bb.ab ], [ %i.bb, %bb.aa ], [ %i.bb, %bb.z ]
  %i.br = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.bs = icmp eq ptr %.18089104, @_Py_NoneStruct
end_hunk_4
begin_hunk_5_@_io_TextIOWrapper_reconfigure:bb.a
  br i1 %i.cp, label %_io_TextIOWrapper_reconfigure_impl.exit, label %.thread85.i

bb.ak:                                            ; preds = %bb.ai
  br i1 %or.cond37780.i, label %.thread85.i, label %textiowrapper_change_encoding.exit.thread88.i

.thread85.i:                                      ; preds = %bb.ak, %bb.aj
  br i1 %i.bp, label %bb.ap, label %bb.al
end_hunk_5
