begin_hunk_0
  store i16 %i.by, ptr %i.ax, align 2, !tbaa !712
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <8 x i1> %i.bw, i64 1
  br i1 %i.bz, label %pred.store.if106, label %pred.store.continue107

end_hunk_0
begin_hunk_1
  store i16 %i.ca, ptr %i.ay, align 2, !tbaa !712
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue
  %i.cb = extractelement <8 x i1> %i.bw, i64 2
  br i1 %i.cb, label %pred.store.if108, label %pred.store.continue109

end_hunk_1
begin_hunk_2
  store i16 %i.cc, ptr %i.az, align 2, !tbaa !712
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.cd = extractelement <8 x i1> %i.bw, i64 3
  br i1 %i.cd, label %pred.store.if110, label %pred.store.continue111

end_hunk_2
begin_hunk_3
  store i16 %i.ce, ptr %i.ba, align 2, !tbaa !712
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.cf = extractelement <8 x i1> %i.bw, i64 4
  br i1 %i.cf, label %pred.store.if112, label %pred.store.continue113

end_hunk_3
begin_hunk_4
  store i16 %i.cg, ptr %i.bb, align 2, !tbaa !712
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.ch = extractelement <8 x i1> %i.bw, i64 5
  br i1 %i.ch, label %pred.store.if114, label %pred.store.continue115

end_hunk_4
begin_hunk_5
  store i16 %i.ci, ptr %i.bc, align 2, !tbaa !712
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.cj = extractelement <8 x i1> %i.bw, i64 6
  br i1 %i.cj, label %pred.store.if116, label %pred.store.continue117

end_hunk_5
begin_hunk_6
  store i16 %i.ck, ptr %i.bd, align 2, !tbaa !712
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.cl = extractelement <8 x i1> %i.bw, i64 7
  br i1 %i.cl, label %pred.store.if118, label %pred.store.continue119

end_hunk_6
begin_hunk_7
  store i16 %i.cm, ptr %i.be, align 2, !tbaa !712
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !3695
end_hunk_7
begin_hunk_8
  store i64 %i.sv, ptr %i.su, align 8, !tbaa !4541
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.sw = extractelement <2 x i1> %i.sq, i64 1
  br i1 %i.sw, label %pred.store.if700, label %pred.store.continue701

end_hunk_8
begin_hunk_9
  store i64 %i.ta, ptr %i.sz, align 8, !tbaa !4541
  br label %pred.store.continue701

pred.store.continue701:                           ; preds = %pred.store.if700, %pred.store.continue
  %i.tb = icmp eq i64 %n.vec, 2
  br i1 %i.tb, label %._crit_edge186.i, label %vector.body.1

end_hunk_9
