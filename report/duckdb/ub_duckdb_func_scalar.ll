inline.NumInlined: 4066
inline.NumDeleted: 1630
begin_hunk_0_@_ZN6duckdb20CreateSortKeyHelpers13CreateSortKeyERNS_9DataChunkERKNS_6vectorINS_14OrderModifiersELb1ESaIS4_EEERNS_6VectorE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.k, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %offset.idx ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.k, i64 %offset.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ap = getelementptr i8, ptr %next.gep137, i64 16
end_hunk_0
begin_hunk_1_@_ZN6duckdbL21CreateSortKeyFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader143, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.r, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.r, i64 %offset.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.ax = getelementptr i8, ptr %next.gep140, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_117CreateSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cd, 12
  %n.vec = and i64 %i.cd, -16                     ; 4 uses
  %i.cf = shl i64 %n.vec, 1                       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %offset.idx ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.bm, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.ci = getelementptr i8, ptr %next.gep171, i64 16
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_117CreateSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec175 = and i64 %i.cd, -4                   ; 3 uses
  %i.cl = shl i64 %n.vec175, 1                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bx, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bm, i64 %i.cl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index176 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 2 uses
  %i.co = shl i64 %index176, 1                    ; 2 uses
  %next.gep177.a = getelementptr i8, ptr %i.bx, i64 %i.co
  %next.gep178 = getelementptr i8, ptr %i.bm, i64 %i.co
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %wide.load179 = load <4 x i16>, ptr %next.gep178, align 1, !alias.scope !315, !noalias !312
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_117DecodeSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eu, 12
  %n.vec = and i64 %i.eu, -16                     ; 4 uses
  %i.ew = shl i64 %n.vec, 1                       ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ed, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %offset.idx ; 2 uses
  %next.gep552 = getelementptr i8, ptr %i.ed, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.ez = getelementptr i8, ptr %next.gep552, i64 16
end_hunk_4
begin_hunk_5_@_ZN6duckdb12_GLOBAL__N_117DecodeSortKeyBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec556 = and i64 %i.eu, -4                   ; 3 uses
  %i.fc = shl i64 %n.vec556, 1                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.eo, i64 %i.fc  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ed, i64 %i.fc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index557 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next561, %vec.epilog.vector.body ] ; 2 uses
  %i.ff = shl i64 %index557, 1                    ; 2 uses
  %next.gep558.a = getelementptr i8, ptr %i.eo, i64 %i.ff
  %next.gep559 = getelementptr i8, ptr %i.ed, i64 %i.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %wide.load560 = load <4 x i16>, ptr %next.gep559, align 1, !alias.scope !356, !noalias !353
end_hunk_5
begin_hunk_6_@_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE:bb.a
  br i1 %found.conflict201, label %.lr.ph.i.i.i.i.i.i.i.preheader220, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck194
  %n.vec206 = and i64 %i.au, 4611686018427387900  ; 3 uses
  %i.ay = shl i64 %n.vec206, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %.val.i.i.i, i64 %i.ay
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph204
  %index208 = phi i64 [ 0, %vector.ph204 ], [ %index.next215, %vector.body207 ] ; 2 uses
  %offset.idx209 = shl i64 %index208, 3           ; 2 uses
  %next.gep210 = getelementptr i8, ptr %i.ap, i64 %offset.idx209 ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.val.i.i.i, i64 %offset.idx209 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.bb = getelementptr i8, ptr %next.gep212, i64 16
end_hunk_6
begin_hunk_7_@_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE:bb.a
  br i1 %found.conflict175, label %.lr.ph.i.i.i.i.i.i.i56.preheader225, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck170
  %n.vec180 = and i64 %i.cm, 4611686018427387900  ; 3 uses
  %i.cr = shl i64 %n.vec180, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ch, i64 %i.cr  ; 2 uses
  %i.ct = getelementptr i8, ptr %.val.i.i.i51, i64 %i.cr
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next189, %vector.body181 ] ; 2 uses
  %offset.idx183 = shl i64 %index182, 3           ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.ch, i64 %offset.idx183 ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.val.i.i.i51, i64 %offset.idx183 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.cu = getelementptr i8, ptr %next.gep186, i64 16
end_hunk_7
begin_hunk_8_@_ZN6duckdb12_GLOBAL__N_117SortKeyVectorDataC2ERNS_6VectorEmNS_14OrderModifiersE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i83.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eh, 4611686018427387900     ; 3 uses
  %i.em = shl i64 %n.vec, 3                       ; 2 uses
  %i.en = getelementptr i8, ptr %i.ec, i64 %i.em  ; 2 uses
  %i.eo = getelementptr i8, ptr %.val.i.i.i78, i64 %i.em
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ec, i64 %offset.idx ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.val.i.i.i78, i64 %offset.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.ep = getelementptr i8, ptr %next.gep167, i64 16
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EEaSERKS3_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.au, 12
  %n.vec = and i64 %i.au, -16                     ; 4 uses
  %i.aw = shl i64 %n.vec, 1                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.af, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 1                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %offset.idx ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.ak, i64 %offset.idx ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep34, align 1
  %wide.load35 = load <8 x i16>, ptr %i.az, align 1
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN6duckdb14OrderModifiersESaIS1_EEaSERKS3_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.au, -4                    ; 3 uses
  %i.bc = shl i64 %n.vec38, 1                     ; 2 uses
  %i.bd = getelementptr i8, ptr %i.af, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.ak, i64 %i.bc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = shl i64 %index39, 1                     ; 2 uses
  %next.gep40.a = getelementptr i8, ptr %i.af, i64 %i.bf
  %next.gep41 = getelementptr i8, ptr %i.ak, i64 %i.bf
  %wide.load42 = load <4 x i16>, ptr %next.gep41, align 1
  store <4 x i16> %wide.load42, ptr %next.gep40.a, align 1
  %index.next43 = add nuw i64 %index39, 4         ; 2 uses
end_hunk_10
