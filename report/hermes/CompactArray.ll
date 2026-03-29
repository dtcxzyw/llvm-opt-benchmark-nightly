begin_hunk_0
  store i8 %i.w, ptr %i.u, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %vector.body242
  %i.x = extractelement <8 x i1> %i.r, i64 1
  br i1 %i.x, label %pred.store.if248, label %pred.store.continue249

end_hunk_0
begin_hunk_1
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue249

pred.store.continue249:                           ; preds = %pred.store.if248, %pred.store.continue247
  %i.ac = extractelement <8 x i1> %i.r, i64 2
  br i1 %i.ac, label %pred.store.if250, label %pred.store.continue251

end_hunk_1
begin_hunk_2
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue251

pred.store.continue251:                           ; preds = %pred.store.if250, %pred.store.continue249
  %i.ah = extractelement <8 x i1> %i.r, i64 3
  br i1 %i.ah, label %pred.store.if252, label %pred.store.continue253

end_hunk_2
begin_hunk_3
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue253

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %i.am = extractelement <8 x i1> %i.r, i64 4
  br i1 %i.am, label %pred.store.if254, label %pred.store.continue255

end_hunk_3
begin_hunk_4
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue255

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %i.ar = extractelement <8 x i1> %i.r, i64 5
  br i1 %i.ar, label %pred.store.if256, label %pred.store.continue257

end_hunk_4
begin_hunk_5
  store i8 %i.av, ptr %i.at, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue257

pred.store.continue257:                           ; preds = %pred.store.if256, %pred.store.continue255
  %i.aw = extractelement <8 x i1> %i.r, i64 6
  br i1 %i.aw, label %pred.store.if258, label %pred.store.continue259

end_hunk_5
begin_hunk_6
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue259

pred.store.continue259:                           ; preds = %pred.store.if258, %pred.store.continue257
  %i.bb = extractelement <8 x i1> %i.r, i64 7
  br i1 %i.bb, label %pred.store.if260, label %pred.store.continue261

end_hunk_6
begin_hunk_7
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.if260, %pred.store.continue259
  %i.bg = extractelement <8 x i1> %i.s, i64 0
  br i1 %i.bg, label %pred.store.if262, label %pred.store.continue263

end_hunk_7
begin_hunk_8
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.if262, %pred.store.continue261
  %i.bl = extractelement <8 x i1> %i.s, i64 1
  br i1 %i.bl, label %pred.store.if264, label %pred.store.continue265

end_hunk_8
begin_hunk_9
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.if264, %pred.store.continue263
  %i.bq = extractelement <8 x i1> %i.s, i64 2
  br i1 %i.bq, label %pred.store.if266, label %pred.store.continue267

end_hunk_9
begin_hunk_10
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.if266, %pred.store.continue265
  %i.bv = extractelement <8 x i1> %i.s, i64 3
  br i1 %i.bv, label %pred.store.if268, label %pred.store.continue269

end_hunk_10
begin_hunk_11
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.if268, %pred.store.continue267
  %i.ca = extractelement <8 x i1> %i.s, i64 4
  br i1 %i.ca, label %pred.store.if270, label %pred.store.continue271

end_hunk_11
begin_hunk_12
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.if270, %pred.store.continue269
  %i.cf = extractelement <8 x i1> %i.s, i64 5
  br i1 %i.cf, label %pred.store.if272, label %pred.store.continue273

end_hunk_12
begin_hunk_13
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.if272, %pred.store.continue271
  %i.ck = extractelement <8 x i1> %i.s, i64 6
  br i1 %i.ck, label %pred.store.if274, label %pred.store.continue275

end_hunk_13
begin_hunk_14
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.if274, %pred.store.continue273
  %i.cp = extractelement <8 x i1> %i.s, i64 7
  br i1 %i.cp, label %pred.store.if276, label %pred.store.continue277

end_hunk_14
begin_hunk_15
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue277

pred.store.continue277:                           ; preds = %pred.store.if276, %pred.store.continue275
  %index.next278 = add nuw i64 %index243, 16      ; 2 uses
  %i.cu = icmp eq i64 %index.next278, %n.vec241
  br i1 %i.cu, label %middle.block279, label %vector.body242, !llvm.loop !23
end_hunk_15
begin_hunk_16
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue292

pred.store.continue292:                           ; preds = %pred.store.if291, %vec.epilog.vector.body288
  %i.db = extractelement <4 x i1> %i.cw, i64 1
  br i1 %i.db, label %pred.store.if293, label %pred.store.continue294

end_hunk_16
begin_hunk_17
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue294

pred.store.continue294:                           ; preds = %pred.store.if293, %pred.store.continue292
  %i.dg = extractelement <4 x i1> %i.cw, i64 2
  br i1 %i.dg, label %pred.store.if295, label %pred.store.continue296

end_hunk_17
begin_hunk_18
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue296

pred.store.continue296:                           ; preds = %pred.store.if295, %pred.store.continue294
  %i.dl = extractelement <4 x i1> %i.cw, i64 3
  br i1 %i.dl, label %pred.store.if297, label %pred.store.continue298

end_hunk_18
begin_hunk_19
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !20, !alias.scope !21, !noalias !17
  br label %pred.store.continue298

pred.store.continue298:                           ; preds = %pred.store.if297, %pred.store.continue296
  %index.next299 = add nuw i64 %index289, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next299, %n.vec287
  br i1 %i.dq, label %vec.epilog.middle.block300, label %vec.epilog.vector.body288, !llvm.loop !28
end_hunk_19
begin_hunk_20
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %vector.body346
  %i.ev = extractelement <4 x i1> %i.ep, i64 1
  br i1 %i.ev, label %pred.store.if352, label %pred.store.continue353

end_hunk_20
begin_hunk_21
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.fa = extractelement <4 x i1> %i.ep, i64 2
  br i1 %i.fa, label %pred.store.if354, label %pred.store.continue355

end_hunk_21
begin_hunk_22
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.ff = extractelement <4 x i1> %i.ep, i64 3
  br i1 %i.ff, label %pred.store.if356, label %pred.store.continue357

end_hunk_22
begin_hunk_23
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %i.fk = extractelement <4 x i1> %i.eq, i64 0
  br i1 %i.fk, label %pred.store.if358, label %pred.store.continue359

end_hunk_23
begin_hunk_24
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue359

pred.store.continue359:                           ; preds = %pred.store.if358, %pred.store.continue357
  %i.fp = extractelement <4 x i1> %i.eq, i64 1
  br i1 %i.fp, label %pred.store.if360, label %pred.store.continue361

end_hunk_24
begin_hunk_25
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue361

pred.store.continue361:                           ; preds = %pred.store.if360, %pred.store.continue359
  %i.fu = extractelement <4 x i1> %i.eq, i64 2
  br i1 %i.fu, label %pred.store.if362, label %pred.store.continue363

end_hunk_25
begin_hunk_26
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue363

pred.store.continue363:                           ; preds = %pred.store.if362, %pred.store.continue361
  %i.fz = extractelement <4 x i1> %i.eq, i64 3
  br i1 %i.fz, label %pred.store.if364, label %pred.store.continue365

end_hunk_26
begin_hunk_27
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !20, !alias.scope !37, !noalias !34
  br label %pred.store.continue365

pred.store.continue365:                           ; preds = %pred.store.if364, %pred.store.continue363
  %index.next366 = add nuw i64 %index347, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next366, %n.vec345
  br i1 %i.ge, label %middle.block367, label %vector.body346, !llvm.loop !39
end_hunk_27
begin_hunk_28
  store i16 %i.jh, ptr %i.jf, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body205
  %i.ji = extractelement <4 x i1> %i.jc, i64 1
  br i1 %i.ji, label %pred.store.if209, label %pred.store.continue210

end_hunk_28
begin_hunk_29
  store i16 %i.jm, ptr %i.jk, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue
  %i.jn = extractelement <4 x i1> %i.jc, i64 2
  br i1 %i.jn, label %pred.store.if211, label %pred.store.continue212

end_hunk_29
begin_hunk_30
  store i16 %i.jr, ptr %i.jp, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.js = extractelement <4 x i1> %i.jc, i64 3
  br i1 %i.js, label %pred.store.if213, label %pred.store.continue214

end_hunk_30
begin_hunk_31
  store i16 %i.jw, ptr %i.ju, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.jx = extractelement <4 x i1> %i.jd, i64 0
  br i1 %i.jx, label %pred.store.if215, label %pred.store.continue216

end_hunk_31
begin_hunk_32
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.kc = extractelement <4 x i1> %i.jd, i64 1
  br i1 %i.kc, label %pred.store.if217, label %pred.store.continue218

end_hunk_32
begin_hunk_33
  store i16 %i.kg, ptr %i.ke, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.kh = extractelement <4 x i1> %i.jd, i64 2
  br i1 %i.kh, label %pred.store.if219, label %pred.store.continue220

end_hunk_33
begin_hunk_34
  store i16 %i.kl, ptr %i.kj, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.km = extractelement <4 x i1> %i.jd, i64 3
  br i1 %i.km, label %pred.store.if221, label %pred.store.continue222

end_hunk_34
begin_hunk_35
  store i16 %i.kq, ptr %i.ko, align 2, !tbaa !15, !alias.scope !57, !noalias !54
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %index.next223 = add nuw i64 %index206, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next223, %n.vec204
  br i1 %i.kr, label %middle.block224, label %vector.body205, !llvm.loop !59
end_hunk_35
