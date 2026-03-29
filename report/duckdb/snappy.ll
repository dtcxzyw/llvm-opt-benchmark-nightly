begin_hunk_0
  store i32 %i.mr, ptr %next.gep, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ne = extractelement <4 x i1> %i.nc, i64 1
  br i1 %i.ne, label %pred.store.if408, label %pred.store.continue409

end_hunk_0
begin_hunk_1
  store i32 %i.mr, ptr %next.gep403, align 1
  br label %pred.store.continue409

pred.store.continue409:                           ; preds = %pred.store.if408, %pred.store.continue
  %i.nf = extractelement <4 x i1> %i.nc, i64 2
  br i1 %i.nf, label %pred.store.if410, label %pred.store.continue411

end_hunk_1
begin_hunk_2
  store i32 %i.mr, ptr %next.gep404, align 1
  br label %pred.store.continue411

pred.store.continue411:                           ; preds = %pred.store.if410, %pred.store.continue409
  %i.ng = extractelement <4 x i1> %i.nc, i64 3
  br i1 %i.ng, label %pred.store.if412, label %pred.store.continue413

end_hunk_2
begin_hunk_3
  store i32 %i.mr, ptr %next.gep405, align 1
  br label %pred.store.continue413

pred.store.continue413:                           ; preds = %pred.store.if412, %pred.store.continue411
  %index.next = add i64 %index, 4                 ; 2 uses
  %i.nh = icmp eq i64 %index.next, %n.vec
  br i1 %i.nh, label %._crit_edge.i166, label %vector.body, !prof !32, !llvm.loop !33
end_hunk_3
begin_hunk_4
  store i32 %i.hj, ptr %next.gep, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.hw = extractelement <4 x i1> %i.hu, i64 1
  br i1 %i.hw, label %pred.store.if599, label %pred.store.continue600

end_hunk_4
begin_hunk_5
  store i32 %i.hj, ptr %next.gep594, align 1
  br label %pred.store.continue600

pred.store.continue600:                           ; preds = %pred.store.if599, %pred.store.continue
  %i.hx = extractelement <4 x i1> %i.hu, i64 2
  br i1 %i.hx, label %pred.store.if601, label %pred.store.continue602

end_hunk_5
begin_hunk_6
  store i32 %i.hj, ptr %next.gep595, align 1
  br label %pred.store.continue602

pred.store.continue602:                           ; preds = %pred.store.if601, %pred.store.continue600
  %i.hy = extractelement <4 x i1> %i.hu, i64 3
  br i1 %i.hy, label %pred.store.if603, label %pred.store.continue604

end_hunk_6
begin_hunk_7
  store i32 %i.hj, ptr %next.gep596, align 1
  br label %pred.store.continue604

pred.store.continue604:                           ; preds = %pred.store.if603, %pred.store.continue602
  %index.next = add i64 %index, 4                 ; 2 uses
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %._crit_edge.i, label %vector.body, !prof !32, !llvm.loop !42
end_hunk_7
