inline.NumInlined: 3324
inline.NumDeleted: 1547
begin_hunk_0_@_ZN6duckdb11AlterBinder19BindColumnReferenceERNS_19ColumnRefExpressionEm:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %i.bw = shl i64 %n.vec, 3                       ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bo, i64 %i.bw  ; 2 uses
  %i.by = getelementptr i8, ptr %i.bd, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %offset.idx ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bd, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.bz = getelementptr i8, ptr %next.gep70, i64 16
end_hunk_0
begin_hunk_1_@_ZN6duckdb16BaseSelectBinder9BindGroupERNS_16ParsedExpressionEmm:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader260, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.dc, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cr, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %offset.idx ; 2 uses
  %next.gep257 = getelementptr i8, ptr %i.cr, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.dq = getelementptr i8, ptr %next.gep257, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb12HavingBinder13BindColumnRefERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmb:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jp, 4611686018427387900     ; 3 uses
  %i.ju = shl i64 %n.vec, 3                       ; 2 uses
  %i.jv = getelementptr i8, ptr %i.jj, i64 %i.ju  ; 2 uses
  %i.jw = getelementptr i8, ptr %i.iy, i64 %i.ju
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jj, i64 %offset.idx ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.iy, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.jx = getelementptr i8, ptr %next.gep263, i64 16
end_hunk_2
begin_hunk_3_@_ZN6duckdb11IndexBinder9BindIndexERKNS_12UnboundIndexE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cf = shl i64 %n.vec, 3                       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bv, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bk, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %offset.idx ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.bk, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.ci = getelementptr i8, ptr %next.gep84, i64 16
end_hunk_3
begin_hunk_4_@_ZN6duckdb11IndexBinder15BindCreateIndexERNS_13ClientContextENS_10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS4_ELb1EEERNS_17TableCatalogEntryENS3_INS_15LogicalOperatorES5_ISA_ELb1EEENS3_INS_14AlterTableInfoES5_ISD_ELb1EEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ao, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ad, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %offset.idx ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.ad, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.bb = getelementptr i8, ptr %next.gep87, i64 16
end_hunk_4
begin_hunk_5_@_ZN6duckdb11IndexBinder15BindCreateIndexERNS_13ClientContextENS_10unique_ptrINS_15CreateIndexInfoESt14default_deleteIS4_ELb1EEERNS_17TableCatalogEntryENS3_INS_15LogicalOperatorES5_ISA_ELb1EEENS3_INS_14AlterTableInfoES5_ISD_ELb1EEE:bb.a
  br i1 %found.conflict95, label %.lr.ph.i.i.i.i.i.i.i39.preheader114, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck90
  %n.vec100 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.df = shl i64 %n.vec100, 3                    ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cu, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cj, i64 %i.df
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph98
  %index102 = phi i64 [ 0, %vector.ph98 ], [ %index.next109, %vector.body101 ] ; 2 uses
  %offset.idx103 = shl i64 %index102, 3           ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.cu, i64 %offset.idx103 ; 2 uses
  %next.gep106 = getelementptr i8, ptr %i.cj, i64 %offset.idx103 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.di = getelementptr i8, ptr %next.gep106, i64 16
end_hunk_5
begin_hunk_6_@_ZN6duckdb11OrderBinder20CreateExtraReferenceENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.al, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %offset.idx ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.al, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.bk = getelementptr i8, ptr %next.gep22, i64 16
end_hunk_6
begin_hunk_7_@_ZN6duckdb16ProjectionBinder13BindColumnRefERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmb:bb.a
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader99, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gi, 4611686018427387900     ; 3 uses
  %i.gn = shl i64 %n.vec, 3                       ; 2 uses
  %i.go = getelementptr i8, ptr %i.gc, i64 %i.gn  ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fr, i64 %i.gn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gc, i64 %offset.idx ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.fr, i64 %offset.idx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.gq = getelementptr i8, ptr %next.gep96, i64 16
end_hunk_7
