inline.NumInlined: 4742
inline.NumDeleted: 2176
begin_hunk_0_@_ZN5arrow3ipc8internal12_GLOBAL__N_118SchemaToFlatbufferERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_6SchemaERKNS0_21DictionaryFieldMapperEPNS4_6OffsetIN3org6apache5arrow7flatbuf6SchemaEEE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader196, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.076.0, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %offset.idx ; 2 uses
  %next.gep193 = getelementptr i8, ptr %.sroa.076.0, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.au = getelementptr i8, ptr %next.gep193, i64 16
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc8internal18WriteTensorMessageERKNS_6TensorElRKNS0_15IpcWriteOptionsE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i69.preheader155, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i69.preheader
  %n.vec = and i64 %i.ga, 9223372036854775800     ; 3 uses
  %i.gc = shl i64 %n.vec, 2                       ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fu, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %.sroa.088.0111, i64 %i.gc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fu, i64 %offset.idx ; 2 uses
  %next.gep152 = getelementptr i8, ptr %.sroa.088.0111, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.gf = getelementptr i8, ptr %next.gep152, i64 16
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc8internal24WriteSparseTensorMessageERKNS_12SparseTensorElRKSt6vectorINS1_14BufferMetadataESaIS6_EERKNS0_15IpcWriteOptionsE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i70.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i70.i.preheader
  %n.vec = and i64 %i.es, 9223372036854775800     ; 3 uses
  %i.eu = shl i64 %n.vec, 2                       ; 2 uses
  %i.ev = getelementptr i8, ptr %i.em, i64 %i.eu  ; 2 uses
  %i.ew = getelementptr i8, ptr %.sroa.0121.0179.i, i64 %i.eu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %offset.idx ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.sroa.0121.0179.i, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ex = getelementptr i8, ptr %next.gep157, i64 16
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor9GetResultERKSt10shared_ptrINS_5FieldEEPN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEE:_ZN5arrow6StatusD2Ev.exit
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ec, 9223372036854775800     ; 3 uses
  %i.ee = shl i64 %n.vec, 2                       ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dw, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.cx, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dw, i64 %offset.idx ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.cx, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.eh = getelementptr i8, ptr %next.gep150, i64 16
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.w = shl i64 %n.vec, 2                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  %i.y = getelementptr i8, ptr %i.e, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %offset.idx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.e, i64 %offset.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.z = getelementptr i8, ptr %next.gep23, i64 16
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE:bb.a
  br i1 %or.cond46, label %.lr.ph.i.i.i.i.i.i.preheader47, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec32 = and i64 %i.bo, 9223372036854775800   ; 3 uses
  %i.bq = shl i64 %n.vec32, 2                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bi, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 %i.bq
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next41, %vector.body33 ] ; 2 uses
  %offset.idx35 = shl i64 %index34, 2             ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.bi, i64 %offset.idx35 ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.ax, i64 %offset.idx35 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.bt = getelementptr i8, ptr %next.gep38, i64 16
end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor16VisitChildFieldsERKNS_8DataTypeE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.al, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %offset.idx ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.al, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.bi = getelementptr i8, ptr %next.gep70, i64 16
end_hunk_6
