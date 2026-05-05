inline.NumInlined: 44
inline.NumDeleted: 3
begin_hunk_0_@uvwasi_init:bb.a
  br i1 %.not164, label %._crit_edge213, label %.lr.ph212, !llvm.loop !44

._crit_edge213:                                   ; preds = %.lr.ph212
  %lsr.iv.lcssa = phi i32 [ %lsr.iv, %.lr.ph212 ]
  %.lcssa395 = phi i32 [ %i.bq, %.lr.ph212 ]      ; 3 uses
  %.lcssa394 = phi i32 [ %i.br, %.lr.ph212 ]      ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 36
end_hunk_0
begin_hunk_1_@uvwasi_init:bb.a
  br i1 %.not233, label %.loopexit185, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %.preheader184
  %i.cl = zext i32 %lsr.iv.lcssa to i64
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
end_hunk_1
