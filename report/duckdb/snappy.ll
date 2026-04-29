inline.NumInlined: 514
inline.NumDeleted: 215
begin_hunk_0_@_ZN13duckdb_snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc:bb.a
  %i.cp = add i64 %i.co, %i.ar
  %i.cq = add i64 %.157.i230, 16
  %umax235 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq)
  %i.cr = add i64 %umax235, %i.cn                 ; 2 uses
  %i.cs = lshr i64 %i.cr, 4                       ; 2 uses
  %4 = add nuw nsw i64 %i.cs, 1                   ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.cr, 144
  br i1 %min.iters.check236, label %.lr.ph90.i.preheader254, label %vector.memcheck229

end_hunk_0
begin_hunk_1_@_ZN13duckdb_snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc:bb.a
  br i1 %found.conflict, label %.lr.ph90.i.preheader254, label %vector.ph237

vector.ph237:                                     ; preds = %vector.memcheck229
  %5 = shl i64 %4, 4
  %6 = getelementptr i8, ptr %i.ax, i64 %5
  %7 = shl i64 %4, 4
  %i.cz = getelementptr i8, ptr %.157.i, i64 %7
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph237
  %index241 = phi i64 [ 0, %vector.ph237 ], [ %index.next246, %vector.body240 ] ; 4 uses
  %offset.idx = shl i64 %index241, 4
  %next.gep242 = getelementptr i8, ptr %i.ax, i64 %offset.idx
  %offset.idx243 = shl i64 %index241, 4
  %next.gep244 = getelementptr i8, ptr %.157.i, i64 %offset.idx243
  %wide.load245 = load <2 x i64>, ptr %next.gep242, align 1
  store <2 x i64> %wide.load245, ptr %next.gep244, align 1
  %index.next246 = add nuw i64 %index241, 1
end_hunk_1
begin_hunk_2_@_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_:bb.a
  %i.ar = add i64 %.157110, 16
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %i.as = xor i64 %.157110, -1
  %i.at = add i64 %umax112, %i.as                 ; 2 uses
  %i.au = lshr i64 %i.at, 4                       ; 2 uses
  %4 = add nuw nsw i64 %i.au, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 336
  br i1 %min.iters.check, label %.lr.ph90.preheader185, label %vector.memcheck

end_hunk_2
begin_hunk_3_@_ZN13duckdb_snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_:bb.a
  br i1 %found.conflict, label %.lr.ph90.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %5 = shl i64 %4, 4
  %6 = getelementptr i8, ptr %0, i64 %5
  %7 = shl i64 %4, 4
  %i.bb = getelementptr i8, ptr %.157, i64 %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %offset.idx = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx
  %offset.idx113 = shl i64 %index, 4
  %next.gep114 = getelementptr i8, ptr %.157, i64 %offset.idx113
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  store <2 x i64> %wide.load, ptr %next.gep114, align 1
  %index.next = add nuw i64 %index, 1
end_hunk_3
