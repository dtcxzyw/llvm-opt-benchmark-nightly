inline.NumInlined: 4529
inline.NumDeleted: 1763
begin_hunk_0_@_ZN6duckdb21ConjunctionExpression13AddExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE:bb.a
  br i1 %found.conflict52, label %.lr.ph.i.i.i.i.i.i.i.preheader71, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck45
  %n.vec57 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.ao = shl i64 %n.vec57, 3                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ao
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next66, %vector.body58 ] ; 2 uses
  %offset.idx60 = shl i64 %index59, 3             ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ae, i64 %offset.idx60 ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.t, i64 %offset.idx60 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.ar = getelementptr i8, ptr %next.gep63, i64 16
end_hunk_0
begin_hunk_1_@_ZN6duckdb21ConjunctionExpression13AddExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i10.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bv, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bk, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %offset.idx ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.bk, i64 %offset.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.cj = getelementptr i8, ptr %next.gep42, i64 16
end_hunk_1
begin_hunk_2_@_ZNK6duckdb21ConjunctionExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ba, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ah, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %offset.idx ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ah, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.bn = getelementptr i8, ptr %next.gep56, i64 16
end_hunk_2
begin_hunk_3_@_ZNK6duckdb18FunctionExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.y, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %offset.idx ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.y, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.aw = getelementptr i8, ptr %next.gep80, i64 16
end_hunk_3
begin_hunk_4_@_ZN6duckdb16LambdaExpressionC2ENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISB_ELb1EEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cf, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bu, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %offset.idx ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.bu, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.cs = getelementptr i8, ptr %next.gep128, i64 16
end_hunk_4
begin_hunk_5_@_ZNK6duckdb16LambdaExpression27ExtractColumnRefExpressionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i53.preheader173, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i53.preheader
  %n.vec = and i64 %i.dk, 4611686018427387900     ; 3 uses
  %i.dm = shl i64 %n.vec, 3                       ; 2 uses
  %i.dn = getelementptr i8, ptr %i.de, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.bo, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %offset.idx ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.bo, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.dp = getelementptr i8, ptr %next.gep170, i64 16
end_hunk_5
begin_hunk_6_@_ZN6duckdb18OperatorExpressionC2ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i9.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i9.preheader
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ag, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.q, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %offset.idx ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.q, i64 %offset.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.ap = getelementptr i8, ptr %next.gep27, i64 16
end_hunk_6
begin_hunk_7_@_ZNK6duckdb18OperatorExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ax, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %offset.idx ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ax, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.bv = getelementptr i8, ptr %next.gep41, i64 16
end_hunk_7
begin_hunk_8_@_ZNK6duckdb14TypeExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.z, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.z, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.ax = getelementptr i8, ptr %next.gep49, i64 16
end_hunk_8
begin_hunk_9_@_ZNK6duckdb16WindowExpression4CopyEv:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader283, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ak, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %offset.idx ; 2 uses
  %next.gep253 = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.bi = getelementptr i8, ptr %next.gep253, i64 16
end_hunk_9
begin_hunk_10_@_ZNK6duckdb16WindowExpression4CopyEv:bb.a
  br i1 %found.conflict263, label %.lr.ph.i.i.i.i.i.i.i63.preheader282, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck256
  %n.vec268 = and i64 %i.di, 4611686018427387900  ; 3 uses
  %i.dm = shl i64 %n.vec268, 3                    ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dc, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.cr, i64 %i.dm
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph266
  %index270 = phi i64 [ 0, %vector.ph266 ], [ %index.next277, %vector.body269 ] ; 2 uses
  %offset.idx271 = shl i64 %index270, 3           ; 2 uses
  %next.gep272 = getelementptr i8, ptr %i.dc, i64 %offset.idx271 ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.cr, i64 %offset.idx271 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.dp = getelementptr i8, ptr %next.gep274, i64 16
end_hunk_10
