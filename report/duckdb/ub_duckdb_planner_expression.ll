inline.NumInlined: 4585
inline.NumDeleted: 1902
begin_hunk_0_@_ZNK6duckdb24BoundAggregateExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 4 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.at  ; 2 uses
  %8 = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %i.y, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aj, i64 %offset.idx ; 2 uses
  %offset.idx81 = shl i64 %index, 3
  %next.gep82 = getelementptr i8, ptr %i.y, i64 %offset.idx81 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.aw = getelementptr i8, ptr %next.gep82, i64 16
end_hunk_0
begin_hunk_1_@_ZNK6duckdb26BoundConjunctionExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 4 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %4 = shl i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.v, i64 %4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ag, i64 %offset.idx ; 2 uses
  %offset.idx35 = shl i64 %index, 3
  %next.gep36 = getelementptr i8, ptr %i.v, i64 %offset.idx35 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.at = getelementptr i8, ptr %next.gep36, i64 16
end_hunk_1
begin_hunk_2_@_ZNK6duckdb23BoundFunctionExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 4 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.at  ; 2 uses
  %6 = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %i.y, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aj, i64 %offset.idx ; 2 uses
  %offset.idx56 = shl i64 %index, 3
  %next.gep57 = getelementptr i8, ptr %i.y, i64 %offset.idx56 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.aw = getelementptr i8, ptr %next.gep57, i64 16
end_hunk_2
begin_hunk_3_@_ZNK6duckdb21BoundLambdaExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 4 uses
  %i.br = shl i64 %n.vec, 3
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.br  ; 2 uses
  %7 = shl i64 %n.vec, 3
  %i.bt = getelementptr i8, ptr %i.aw, i64 %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bh, i64 %offset.idx ; 2 uses
  %offset.idx47 = shl i64 %index, 3
  %next.gep48 = getelementptr i8, ptr %i.aw, i64 %offset.idx47 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.bu = getelementptr i8, ptr %next.gep48, i64 16
end_hunk_3
begin_hunk_4_@_ZNK6duckdb23BoundOperatorExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.au = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au  ; 2 uses
  %5 = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.z, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %offset.idx35 = shl i64 %index, 3
  %next.gep36 = getelementptr i8, ptr %i.z, i64 %offset.idx35 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.ax = getelementptr i8, ptr %next.gep36, i64 16
end_hunk_4
begin_hunk_5_@_ZNK6duckdb21BoundWindowExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader615, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 4 uses
  %i.ct = shl i64 %n.vec, 3
  %i.cu = getelementptr i8, ptr %i.cj, i64 %i.ct  ; 2 uses
  %19 = shl i64 %n.vec, 3
  %i.cv = getelementptr i8, ptr %i.by, i64 %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cj, i64 %offset.idx ; 2 uses
  %offset.idx472 = shl i64 %index, 3
  %next.gep473 = getelementptr i8, ptr %i.by, i64 %offset.idx472 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.cw = getelementptr i8, ptr %next.gep473, i64 16
end_hunk_5
begin_hunk_6_@_ZNK6duckdb21BoundWindowExpression4CopyEv:bb.a
  br i1 %found.conflict483, label %.lr.ph.i.i.i.i.i.i.i98.preheader613, label %vector.ph486

vector.ph486:                                     ; preds = %vector.memcheck476
  %n.vec488 = and i64 %i.ew, 4611686018427387900  ; 4 uses
  %i.fa = shl i64 %n.vec488, 3
  %i.fb = getelementptr i8, ptr %i.eq, i64 %i.fa  ; 2 uses
  %20 = shl i64 %n.vec488, 3
  %i.fc = getelementptr i8, ptr %i.ef, i64 %20
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph486
  %index490 = phi i64 [ 0, %vector.ph486 ], [ %index.next497, %vector.body489 ] ; 3 uses
  %offset.idx491 = shl i64 %index490, 3
  %next.gep492 = getelementptr i8, ptr %i.eq, i64 %offset.idx491 ; 2 uses
  %offset.idx493 = shl i64 %index490, 3
  %next.gep494 = getelementptr i8, ptr %i.ef, i64 %offset.idx493 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.fd = getelementptr i8, ptr %next.gep494, i64 16
end_hunk_6
begin_hunk_7_@_ZNK6duckdb21BoundWindowExpression4CopyEv:bb.a
  br i1 %found.conflict535, label %.lr.ph.i.i.i.i.i.i.i119.preheader610, label %vector.ph538

vector.ph538:                                     ; preds = %vector.memcheck528
  %n.vec540 = and i64 %i.hb, 4611686018427387900  ; 4 uses
  %i.hf = shl i64 %n.vec540, 3
  %i.hg = getelementptr i8, ptr %i.gv, i64 %i.hf  ; 2 uses
  %21 = shl i64 %n.vec540, 3
  %i.hh = getelementptr i8, ptr %i.gk, i64 %21
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph538
  %index542 = phi i64 [ 0, %vector.ph538 ], [ %index.next549, %vector.body541 ] ; 3 uses
  %offset.idx543 = shl i64 %index542, 3
  %next.gep544 = getelementptr i8, ptr %i.gv, i64 %offset.idx543 ; 2 uses
  %offset.idx545 = shl i64 %index542, 3
  %next.gep546 = getelementptr i8, ptr %i.gk, i64 %offset.idx545 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.hi = getelementptr i8, ptr %next.gep546, i64 16
end_hunk_7
begin_hunk_8_@_ZNK6duckdb21BoundWindowExpression4CopyEv:bb.a
  br i1 %found.conflict509, label %.lr.ph.i.i.i.i.i.i.i133.preheader609, label %vector.ph512

vector.ph512:                                     ; preds = %vector.memcheck502
  %n.vec514 = and i64 %i.iq, 4611686018427387900  ; 4 uses
  %i.iu = shl i64 %n.vec514, 3
  %i.iv = getelementptr i8, ptr %i.il, i64 %i.iu  ; 2 uses
  %22 = shl i64 %n.vec514, 3
  %i.iw = getelementptr i8, ptr %i.ia, i64 %22
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph512
  %index516 = phi i64 [ 0, %vector.ph512 ], [ %index.next523, %vector.body515 ] ; 3 uses
  %offset.idx517 = shl i64 %index516, 3
  %next.gep518 = getelementptr i8, ptr %i.il, i64 %offset.idx517 ; 2 uses
  %offset.idx519 = shl i64 %index516, 3
  %next.gep520 = getelementptr i8, ptr %i.ia, i64 %offset.idx519 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.ix = getelementptr i8, ptr %next.gep520, i64 16
end_hunk_8
begin_hunk_9_@_ZNK6duckdb21BoundWindowExpression4CopyEv:bb.a
  br i1 %found.conflict587, label %.lr.ph.i.i.i.i.i.i.i225.preheader607, label %vector.ph590

vector.ph590:                                     ; preds = %vector.memcheck580
  %n.vec592 = and i64 %i.sp, 4611686018427387900  ; 4 uses
  %i.st = shl i64 %n.vec592, 3
  %i.su = getelementptr i8, ptr %i.sj, i64 %i.st  ; 2 uses
  %23 = shl i64 %n.vec592, 3
  %i.sv = getelementptr i8, ptr %i.ry, i64 %23
  br label %vector.body593

vector.body593:                                   ; preds = %vector.body593, %vector.ph590
  %index594 = phi i64 [ 0, %vector.ph590 ], [ %index.next601, %vector.body593 ] ; 3 uses
  %offset.idx595 = shl i64 %index594, 3
  %next.gep596 = getelementptr i8, ptr %i.sj, i64 %offset.idx595 ; 2 uses
  %offset.idx597 = shl i64 %index594, 3
  %next.gep598 = getelementptr i8, ptr %i.ry, i64 %offset.idx597 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.sw = getelementptr i8, ptr %next.gep598, i64 16
end_hunk_9
begin_hunk_10_@_ZNK6duckdb21BoundWindowExpression4CopyEv:bb.a
  br i1 %found.conflict561, label %.lr.ph.i.i.i.i.i.i.i244.preheader606, label %vector.ph564

vector.ph564:                                     ; preds = %vector.memcheck554
  %n.vec566 = and i64 %i.ue, 4611686018427387900  ; 4 uses
  %i.ui = shl i64 %n.vec566, 3
  %i.uj = getelementptr i8, ptr %i.tz, i64 %i.ui  ; 2 uses
  %24 = shl i64 %n.vec566, 3
  %i.uk = getelementptr i8, ptr %i.to, i64 %24
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph564
  %index568 = phi i64 [ 0, %vector.ph564 ], [ %index.next575, %vector.body567 ] ; 3 uses
  %offset.idx569 = shl i64 %index568, 3
  %next.gep570 = getelementptr i8, ptr %i.tz, i64 %offset.idx569 ; 2 uses
  %offset.idx571 = shl i64 %index568, 3
  %next.gep572 = getelementptr i8, ptr %i.to, i64 %offset.idx571 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.ul = getelementptr i8, ptr %next.gep572, i64 16
end_hunk_10
begin_hunk_11_@_ZN6duckdb12Deserializer4ReadINS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueESB_E4typeEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 4 uses
  %i.ba = shl i64 %n.vec, 3
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba  ; 2 uses
  %3 = shl i64 %n.vec, 3
  %i.bc = getelementptr i8, ptr %i.k, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aq, i64 %offset.idx ; 2 uses
  %offset.idx40 = shl i64 %index, 3
  %next.gep41 = getelementptr i8, ptr %i.k, i64 %offset.idx40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.bd = getelementptr i8, ptr %next.gep41, i64 16
end_hunk_11
