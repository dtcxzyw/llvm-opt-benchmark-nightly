begin_hunk_0
  store i32 %i.oy, ptr %i.nx, align 4, !tbaa !237
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.oz = extractelement <4 x i1> %i.ov, i64 1
  br i1 %i.oz, label %pred.store.if690, label %pred.store.continue691

end_hunk_0
begin_hunk_1
  store i32 %i.pa, ptr %i.ny, align 4, !tbaa !237
  br label %pred.store.continue691

pred.store.continue691:                           ; preds = %pred.store.if690, %pred.store.continue
  %i.pb = extractelement <4 x i1> %i.ov, i64 2
  br i1 %i.pb, label %pred.store.if692, label %pred.store.continue693

end_hunk_1
begin_hunk_2
  store i32 %i.pc, ptr %i.nz, align 4, !tbaa !237
  br label %pred.store.continue693

pred.store.continue693:                           ; preds = %pred.store.if692, %pred.store.continue691
  %i.pd = extractelement <4 x i1> %i.ov, i64 3
  br i1 %i.pd, label %pred.store.if694, label %pred.store.continue695

end_hunk_2
begin_hunk_3
  store i32 %i.pe, ptr %i.oa, align 4, !tbaa !237
  br label %pred.store.continue695

pred.store.continue695:                           ; preds = %pred.store.if694, %pred.store.continue693
  %i.pf = extractelement <4 x i1> %i.ow, i64 0
  br i1 %i.pf, label %pred.store.if696, label %pred.store.continue697

end_hunk_3
begin_hunk_4
  store i32 %i.pg, ptr %i.ob, align 4, !tbaa !237
  br label %pred.store.continue697

pred.store.continue697:                           ; preds = %pred.store.if696, %pred.store.continue695
  %i.ph = extractelement <4 x i1> %i.ow, i64 1
  br i1 %i.ph, label %pred.store.if698, label %pred.store.continue699

end_hunk_4
begin_hunk_5
  store i32 %i.pi, ptr %i.oc, align 4, !tbaa !237
  br label %pred.store.continue699

pred.store.continue699:                           ; preds = %pred.store.if698, %pred.store.continue697
  %i.pj = extractelement <4 x i1> %i.ow, i64 2
  br i1 %i.pj, label %pred.store.if700, label %pred.store.continue701

end_hunk_5
begin_hunk_6
  store i32 %i.pk, ptr %i.od, align 4, !tbaa !237
  br label %pred.store.continue701

pred.store.continue701:                           ; preds = %pred.store.if700, %pred.store.continue699
  %i.pl = extractelement <4 x i1> %i.ow, i64 3
  br i1 %i.pl, label %pred.store.if702, label %pred.store.continue703

end_hunk_6
begin_hunk_7
  store i32 %i.pm, ptr %i.oe, align 4, !tbaa !237
  br label %pred.store.continue703

pred.store.continue703:                           ; preds = %pred.store.if702, %pred.store.continue701
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pn = icmp eq i64 %index.next, %n.vec
  br i1 %i.pn, label %middle.block, label %vector.body, !llvm.loop !239
end_hunk_7
begin_hunk_8
  store float %i.cj, ptr %next.gep, align 4, !tbaa !65
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ck = extractelement <4 x i1> %i.cc, i64 1
  br i1 %i.ck, label %pred.store.if251, label %pred.store.continue252

end_hunk_8
begin_hunk_9
  store float %i.cq, ptr %next.gep248, align 4, !tbaa !65
  br label %pred.store.continue252

pred.store.continue252:                           ; preds = %pred.store.if251, %pred.store.continue
  %i.cr = extractelement <4 x i1> %i.cc, i64 2
  br i1 %i.cr, label %pred.store.if253, label %pred.store.continue254

end_hunk_9
begin_hunk_10
  store float %i.cx, ptr %next.gep249, align 4, !tbaa !65
  br label %pred.store.continue254

pred.store.continue254:                           ; preds = %pred.store.if253, %pred.store.continue252
  %i.cy = extractelement <4 x i1> %i.cc, i64 3
  br i1 %i.cy, label %pred.store.if255, label %pred.store.continue256

end_hunk_10
begin_hunk_11
  store float %i.de, ptr %next.gep250, align 4, !tbaa !65
  br label %pred.store.continue256

pred.store.continue256:                           ; preds = %pred.store.if255, %pred.store.continue254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !525
end_hunk_11
