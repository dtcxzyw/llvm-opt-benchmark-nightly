begin_hunk_0
  store i32 %i.du, ptr %i.fz, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body239
  %i.ge = extractelement <4 x i1> %i.gb, i64 1
  br i1 %i.ge, label %pred.store.if243, label %pred.store.continue244

end_hunk_0
begin_hunk_1
  store i32 %i.du, ptr %i.gg, align 4, !tbaa !3
  br label %pred.store.continue244

pred.store.continue244:                           ; preds = %pred.store.if243, %pred.store.continue
  %i.gh = extractelement <4 x i1> %i.gb, i64 2
  br i1 %i.gh, label %pred.store.if245, label %pred.store.continue246

end_hunk_1
begin_hunk_2
  store i32 %i.du, ptr %i.gj, align 4, !tbaa !3
  br label %pred.store.continue246

pred.store.continue246:                           ; preds = %pred.store.if245, %pred.store.continue244
  %i.gk = extractelement <4 x i1> %i.gb, i64 3
  br i1 %i.gk, label %pred.store.if247, label %pred.store.continue248

end_hunk_2
begin_hunk_3
  store i32 %i.du, ptr %i.gm, align 4, !tbaa !3
  br label %pred.store.continue248

pred.store.continue248:                           ; preds = %pred.store.if247, %pred.store.continue246
  %i.gn = extractelement <4 x i1> %i.gc, i64 0
  br i1 %i.gn, label %pred.store.if249, label %pred.store.continue250

end_hunk_3
begin_hunk_4
  store i32 %i.du, ptr %i.gp, align 4, !tbaa !3
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue248
  %i.gq = extractelement <4 x i1> %i.gc, i64 1
  br i1 %i.gq, label %pred.store.if251, label %pred.store.continue252

end_hunk_4
begin_hunk_5
  store i32 %i.du, ptr %i.gs, align 4, !tbaa !3
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue250
  %i.gt = extractelement <4 x i1> %i.gc, i64 2
  br i1 %i.gt, label %pred.store.if253, label %pred.store.continue254

end_hunk_5
begin_hunk_6
  store i32 %i.du, ptr %i.gv, align 4, !tbaa !3
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.gw = extractelement <4 x i1> %i.gc, i64 3
  br i1 %i.gw, label %pred.store.if255, label %pred.store.continue256

end_hunk_6
begin_hunk_7
  store i32 %i.du, ptr %i.gy, align 4, !tbaa !3
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %index.next257 = add nuw i64 %index240, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next257, %n.vec
  br i1 %i.gz, label %middle.block258, label %vector.body239, !llvm.loop !49
end_hunk_7
begin_hunk_8
  store i32 %i.du, ptr %i.fz, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body239
  %i.ge = extractelement <4 x i1> %i.gb, i64 1
  br i1 %i.ge, label %pred.store.if243, label %pred.store.continue244

end_hunk_8
begin_hunk_9
  store i32 %i.du, ptr %i.gg, align 4, !tbaa !3
  br label %pred.store.continue244

pred.store.continue244:                           ; preds = %pred.store.if243, %pred.store.continue
  %i.gh = extractelement <4 x i1> %i.gb, i64 2
  br i1 %i.gh, label %pred.store.if245, label %pred.store.continue246

end_hunk_9
begin_hunk_10
  store i32 %i.du, ptr %i.gj, align 4, !tbaa !3
  br label %pred.store.continue246

pred.store.continue246:                           ; preds = %pred.store.if245, %pred.store.continue244
  %i.gk = extractelement <4 x i1> %i.gb, i64 3
  br i1 %i.gk, label %pred.store.if247, label %pred.store.continue248

end_hunk_10
begin_hunk_11
  store i32 %i.du, ptr %i.gm, align 4, !tbaa !3
  br label %pred.store.continue248

pred.store.continue248:                           ; preds = %pred.store.if247, %pred.store.continue246
  %i.gn = extractelement <4 x i1> %i.gc, i64 0
  br i1 %i.gn, label %pred.store.if249, label %pred.store.continue250

end_hunk_11
begin_hunk_12
  store i32 %i.du, ptr %i.gp, align 4, !tbaa !3
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue248
  %i.gq = extractelement <4 x i1> %i.gc, i64 1
  br i1 %i.gq, label %pred.store.if251, label %pred.store.continue252

end_hunk_12
begin_hunk_13
  store i32 %i.du, ptr %i.gs, align 4, !tbaa !3
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue250
  %i.gt = extractelement <4 x i1> %i.gc, i64 2
  br i1 %i.gt, label %pred.store.if253, label %pred.store.continue254

end_hunk_13
begin_hunk_14
  store i32 %i.du, ptr %i.gv, align 4, !tbaa !3
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.gw = extractelement <4 x i1> %i.gc, i64 3
  br i1 %i.gw, label %pred.store.if255, label %pred.store.continue256

end_hunk_14
begin_hunk_15
  store i32 %i.du, ptr %i.gy, align 4, !tbaa !3
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %index.next257 = add nuw i64 %index240, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next257, %n.vec
  br i1 %i.gz, label %middle.block258, label %vector.body239, !llvm.loop !143
end_hunk_15
begin_hunk_16
  store i32 %i.du, ptr %i.fz, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body239
  %i.ge = extractelement <4 x i1> %i.gb, i64 1
  br i1 %i.ge, label %pred.store.if243, label %pred.store.continue244

end_hunk_16
begin_hunk_17
  store i32 %i.du, ptr %i.gg, align 4, !tbaa !3
  br label %pred.store.continue244

pred.store.continue244:                           ; preds = %pred.store.if243, %pred.store.continue
  %i.gh = extractelement <4 x i1> %i.gb, i64 2
  br i1 %i.gh, label %pred.store.if245, label %pred.store.continue246

end_hunk_17
begin_hunk_18
  store i32 %i.du, ptr %i.gj, align 4, !tbaa !3
  br label %pred.store.continue246

pred.store.continue246:                           ; preds = %pred.store.if245, %pred.store.continue244
  %i.gk = extractelement <4 x i1> %i.gb, i64 3
  br i1 %i.gk, label %pred.store.if247, label %pred.store.continue248

end_hunk_18
begin_hunk_19
  store i32 %i.du, ptr %i.gm, align 4, !tbaa !3
  br label %pred.store.continue248

pred.store.continue248:                           ; preds = %pred.store.if247, %pred.store.continue246
  %i.gn = extractelement <4 x i1> %i.gc, i64 0
  br i1 %i.gn, label %pred.store.if249, label %pred.store.continue250

end_hunk_19
begin_hunk_20
  store i32 %i.du, ptr %i.gp, align 4, !tbaa !3
  br label %pred.store.continue250

pred.store.continue250:                           ; preds = %pred.store.if249, %pred.store.continue248
  %i.gq = extractelement <4 x i1> %i.gc, i64 1
  br i1 %i.gq, label %pred.store.if251, label %pred.store.continue252

end_hunk_20
begin_hunk_21
  store i32 %i.du, ptr %i.gs, align 4, !tbaa !3
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue250
  %i.gt = extractelement <4 x i1> %i.gc, i64 2
  br i1 %i.gt, label %pred.store.if253, label %pred.store.continue254

end_hunk_21
begin_hunk_22
  store i32 %i.du, ptr %i.gv, align 4, !tbaa !3
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.gw = extractelement <4 x i1> %i.gc, i64 3
  br i1 %i.gw, label %pred.store.if255, label %pred.store.continue256

end_hunk_22
begin_hunk_23
  store i32 %i.du, ptr %i.gy, align 4, !tbaa !3
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %index.next257 = add nuw i64 %index240, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next257, %n.vec
  br i1 %i.gz, label %middle.block258, label %vector.body239, !llvm.loop !235
end_hunk_23
