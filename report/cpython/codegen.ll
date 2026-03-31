begin_hunk_0
  br i1 %i.an, label %bb.at, label %check_subscripter.exit.thread

check_subscripter.exit.thread:                    ; preds = %bb.b, %bb.h, %check_subscripter.exit
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !24  ; 11 uses
  %i.ap = getelementptr i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !23
end_hunk_0
begin_hunk_1
  %i.bs = load <2 x i32>, ptr %i.bp, align 8, !tbaa !7
  %i.bt = zext <2 x i32> %i.bs to <2 x i64>
  %i.bu = shl nuw <2 x i64> %i.bt, splat (i64 32)
  %i.bv = or disjoint <2 x i64> %i.bu, %i.br      ; 3 uses
  switch i32 %i.ba, label %bb.ad [
    i32 28, label %check_index.exit
    i32 27, label %bb.ab
    i32 9, label %bb.ab
    i32 18, label %bb.ac
    i32 20, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  br label %check_index.exit
end_hunk_1
begin_hunk_2
bb.ad:                                            ; preds = %bb.aa
  unreachable

check_index.exit:                                 ; preds = %.thread.i, %bb.aa, %bb.ab, %bb.ac
  %.0.i27.i = phi ptr [ @PyUnicode_Type, %bb.ac ], [ %.val21.i, %.thread.i ], [ @PyList_Type, %bb.ab ], [ @PyTuple_Type, %bb.aa ]
  %2 = phi <2 x i64> [ %i.bv, %bb.ac ], [ %i.bn, %.thread.i ], [ %i.bv, %bb.ab ], [ %i.bv, %bb.aa ] ; 2 uses
  %i.bw = getelementptr i8, ptr %.0.i27.i, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !196
  %i.by = getelementptr i8, ptr %.0.i30.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !196
  %i.ca = extractelement <2 x i64> %2, i64 0
  %i.cb = extractelement <2 x i64> %2, i64 1
  %i.cc = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Warn(ptr noundef %0, i64 %i.ca, i64 %i.cb, ptr noundef nonnull @.str.295, ptr noundef %i.bx, ptr noundef %i.bz) #11
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.at, label %check_index.exit.check_index.exit.thread_crit_edge
end_hunk_2
