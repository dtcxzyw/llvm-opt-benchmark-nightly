begin_hunk_0
  store float %i.n, ptr %invariant.gep, align 4, !tbaa !31
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %.preheader.us
  br i1 %i.i, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
end_hunk_0
begin_hunk_1
  store float %i.n, ptr %i.p, align 4, !tbaa !31
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  br i1 %i.j, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
end_hunk_1
begin_hunk_2
  store float %i.n, ptr %i.q, align 4, !tbaa !31
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  br i1 %i.k, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
end_hunk_2
begin_hunk_3
  store float %i.n, ptr %i.r, align 4, !tbaa !31
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %wide.trip.count25
  br i1 %exitcond26.not, label %.loopexit, label %.preheader.us, !llvm.loop !33
end_hunk_3
begin_hunk_4
  store float %i.p, ptr %invariant.gep, align 4, !tbaa !31
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %.lr.ph.us
  br i1 %i.i, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue
end_hunk_4
begin_hunk_5
  store float %i.p, ptr %i.r, align 4, !tbaa !31
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue
  br i1 %i.j, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
end_hunk_5
begin_hunk_6
  store float %i.p, ptr %i.s, align 4, !tbaa !31
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  br i1 %i.k, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
end_hunk_6
begin_hunk_7
  store float %i.p, ptr %i.t, align 4, !tbaa !31
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !35
end_hunk_7
