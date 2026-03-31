begin_hunk_0
  br i1 %i.an, label %bb.at, label %check_subscripter.exit.thread

check_subscripter.exit.thread:                    ; preds = %bb.b, %bb.h, %check_subscripter.exit
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !24  ; 12 uses
  %i.ap = getelementptr i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !23
end_hunk_0
begin_hunk_1
  %i.bs = load <2 x i32>, ptr %i.bp, align 8, !tbaa !7
  %i.bt = zext <2 x i32> %i.bs to <2 x i64>
  %i.bu = shl nuw <2 x i64> %i.bt, splat (i64 32)
  %i.bv = or disjoint <2 x i64> %i.bu, %i.br      ; 8 uses
  switch i32 %i.ba, label %bb.ad [
    i32 28, label %check_index.exit
    i32 27, label %2
    i32 9, label %2
    i32 22, label %._crit_edge.i
    i32 11, label %3
    i32 18, label %bb.ac
    i32 10, label %4
    i32 12, label %5
    i32 20, label %bb.ac
    i32 21, label %bb.ab
    i32 19, label %bb.ab
  ]

._crit_edge.i:                                    ; preds = %bb.aa
  %.phi.trans.insert.i = getelementptr i8, ptr %i.ao, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %.phi.trans.insert47.i = getelementptr i8, ptr %.pre.i, i64 8
  %.val.i26.pre.i = load ptr, ptr %.phi.trans.insert47.i, align 8, !tbaa !100
  br label %check_index.exit

2:                                                ; preds = %bb.aa, %bb.aa
  br label %check_index.exit

3:                                                ; preds = %bb.aa
  br label %check_index.exit

4:                                                ; preds = %bb.aa
  br label %check_index.exit

5:                                                ; preds = %bb.aa
  br label %check_index.exit

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  br label %check_index.exit
end_hunk_1
begin_hunk_2
bb.ad:                                            ; preds = %bb.aa
  unreachable

check_index.exit:                                 ; preds = %.thread.i, %bb.aa, %._crit_edge.i, %2, %3, %4, %5, %bb.ab, %bb.ac
  %.0.i27.i = phi ptr [ @PyUnicode_Type, %bb.ac ], [ @_PyTemplate_Type, %bb.ab ], [ @PyList_Type, %2 ], [ @PyDict_Type, %3 ], [ @PySet_Type, %4 ], [ @PyGen_Type, %5 ], [ @PyTuple_Type, %bb.aa ], [ %.val21.i, %.thread.i ], [ %.val.i26.pre.i, %._crit_edge.i ]
  %6 = phi <2 x i64> [ %i.bv, %bb.ac ], [ %i.bv, %bb.ab ], [ %i.bv, %2 ], [ %i.bv, %3 ], [ %i.bv, %4 ], [ %i.bv, %5 ], [ %i.bv, %bb.aa ], [ %i.bn, %.thread.i ], [ %i.bv, %._crit_edge.i ] ; 2 uses
  %i.bw = getelementptr i8, ptr %.0.i27.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !196
  %i.by = getelementptr i8, ptr %.0.i30.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !196
  %i.ca = extractelement <2 x i64> %6, i64 0
  %i.cb = extractelement <2 x i64> %6, i64 1
  %i.cc = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Warn(ptr noundef %0, i64 %i.ca, i64 %i.cb, ptr noundef nonnull @.str.295, ptr noundef %i.bx, ptr noundef %i.bz) #11
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.at, label %check_index.exit.check_index.exit.thread_crit_edge
end_hunk_2
