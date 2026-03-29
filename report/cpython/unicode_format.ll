begin_hunk_0
  store i8 %i.dh, ptr %i.dc, align 1, !tbaa !14
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body185, %pred.store.if
  %i.di = extractelement <16 x i1> %i.de, i64 1
  br i1 %i.di, label %pred.store.if188, label %pred.store.continue189

end_hunk_0
begin_hunk_1
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !14
  br label %pred.store.continue189

pred.store.continue189:                           ; preds = %pred.store.continue, %pred.store.if188
  %i.dn = extractelement <16 x i1> %i.de, i64 2
  br i1 %i.dn, label %pred.store.if190, label %pred.store.continue191

end_hunk_1
begin_hunk_2
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !14
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.continue189, %pred.store.if190
  %i.ds = extractelement <16 x i1> %i.de, i64 3
  br i1 %i.ds, label %pred.store.if192, label %pred.store.continue193

end_hunk_2
begin_hunk_3
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !14
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.continue191, %pred.store.if192
  %i.dx = extractelement <16 x i1> %i.de, i64 4
  br i1 %i.dx, label %pred.store.if194, label %pred.store.continue195

end_hunk_3
begin_hunk_4
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !14
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.continue193, %pred.store.if194
  %i.ec = extractelement <16 x i1> %i.de, i64 5
  br i1 %i.ec, label %pred.store.if196, label %pred.store.continue197

end_hunk_4
begin_hunk_5
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !14
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.continue195, %pred.store.if196
  %i.eh = extractelement <16 x i1> %i.de, i64 6
  br i1 %i.eh, label %pred.store.if198, label %pred.store.continue199

end_hunk_5
begin_hunk_6
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !14
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.continue197, %pred.store.if198
  %i.em = extractelement <16 x i1> %i.de, i64 7
  br i1 %i.em, label %pred.store.if200, label %pred.store.continue201

end_hunk_6
begin_hunk_7
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !14
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.continue199, %pred.store.if200
  %i.er = extractelement <16 x i1> %i.de, i64 8
  br i1 %i.er, label %pred.store.if202, label %pred.store.continue203

end_hunk_7
begin_hunk_8
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !14
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.continue201, %pred.store.if202
  %i.ew = extractelement <16 x i1> %i.de, i64 9
  br i1 %i.ew, label %pred.store.if204, label %pred.store.continue205

end_hunk_8
begin_hunk_9
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !14
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.continue203, %pred.store.if204
  %i.fb = extractelement <16 x i1> %i.de, i64 10
  br i1 %i.fb, label %pred.store.if206, label %pred.store.continue207

end_hunk_9
begin_hunk_10
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !14
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.continue205, %pred.store.if206
  %i.fg = extractelement <16 x i1> %i.de, i64 11
  br i1 %i.fg, label %pred.store.if208, label %pred.store.continue209

end_hunk_10
begin_hunk_11
  store i8 %i.fk, ptr %i.fi, align 1, !tbaa !14
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.continue207, %pred.store.if208
  %i.fl = extractelement <16 x i1> %i.de, i64 12
  br i1 %i.fl, label %pred.store.if210, label %pred.store.continue211

end_hunk_11
begin_hunk_12
  store i8 %i.fp, ptr %i.fn, align 1, !tbaa !14
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.continue209, %pred.store.if210
  %i.fq = extractelement <16 x i1> %i.de, i64 13
  br i1 %i.fq, label %pred.store.if212, label %pred.store.continue213

end_hunk_12
begin_hunk_13
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !14
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.continue211, %pred.store.if212
  %i.fv = extractelement <16 x i1> %i.de, i64 14
  br i1 %i.fv, label %pred.store.if214, label %pred.store.continue215

end_hunk_13
begin_hunk_14
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !14
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.continue213, %pred.store.if214
  %i.ga = extractelement <16 x i1> %i.de, i64 15
  br i1 %i.ga, label %pred.store.if216, label %pred.store.continue217

end_hunk_14
begin_hunk_15
  store i8 %i.ge, ptr %i.gc, align 1, !tbaa !14
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.continue215, %pred.store.if216
  %index.next218 = add nuw i64 %index186, 16      ; 2 uses
  %i.gf = icmp eq i64 %index.next218, %n.vec184
  br i1 %i.gf, label %middle.block219, label %vector.body185, !llvm.loop !28
end_hunk_15
begin_hunk_16
  store i8 %i.gm, ptr %i.gh, align 1, !tbaa !14
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %vec.epilog.vector.body, %pred.store.if225
  %i.gn = extractelement <4 x i1> %i.gj, i64 1
  br i1 %i.gn, label %pred.store.if227, label %pred.store.continue228

end_hunk_16
begin_hunk_17
  store i8 %i.gr, ptr %i.gp, align 1, !tbaa !14
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.continue226, %pred.store.if227
  %i.gs = extractelement <4 x i1> %i.gj, i64 2
  br i1 %i.gs, label %pred.store.if229, label %pred.store.continue230

end_hunk_17
begin_hunk_18
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !14
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.continue228, %pred.store.if229
  %i.gx = extractelement <4 x i1> %i.gj, i64 3
  br i1 %i.gx, label %pred.store.if231, label %pred.store.continue232

end_hunk_18
begin_hunk_19
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !14
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.continue230, %pred.store.if231
  %index.next233 = add nuw i64 %index223, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next233, %n.vec222
  br i1 %i.hc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30
end_hunk_19
