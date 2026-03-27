begin_hunk_0
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.PCF_TableRec_, align 8      ; 5 uses
  %i.e = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 6 uses
end_hunk_0
begin_hunk_1
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i64 %i.jj, ptr %i.lb, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.lc = call fastcc i32 @pcf_get_encodings(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  store i32 %i.lc, ptr %i.e, align 4, !tbaa !3
  %.not175 = icmp eq i32 %i.lc, 0
end_hunk_1
begin_hunk_2
  br i1 %.not171242, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ld = call fastcc i32 @pcf_get_accel(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 256)
  %.not176 = icmp eq i32 %i.ld, 0
  br i1 %.not176, label %bb.cn, label %.thread266

end_hunk_2
begin_hunk_3
  %.sroa.0151.1 = phi ptr [ %.sroa.0151.0167, %bb.n ], [ @.str.25, %bb.o ], [ @.str.25, %bb.a ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.n ], [ 7, %bb.o ], [ 7, %bb.a ] ; 11 uses
  %.277 = phi i64 [ %.176.3, %bb.n ], [ 8, %bb.o ], [ 8, %bb.a ]
  %i.bq = call ptr @ft_mem_qalloc(ptr noundef %i.c, i64 noundef %.277, ptr noundef nonnull %i.a) #14 ; 45 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !60
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
end_hunk_3
begin_hunk_4
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue317, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue317 ] ; 33 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load = load <16 x i8>, ptr %i.bt, align 1, !tbaa !40
  %wide.load255 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !40
end_hunk_4
begin_hunk_5
  br i1 %i.bx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 45, ptr %i.bt, align 1, !tbaa !40
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.by = extractelement <16 x i1> %i.bv, i64 1
  br i1 %i.by, label %pred.store.if256, label %pred.store.continue257

end_hunk_5
begin_hunk_6
  store i8 45, ptr %i.ca, align 1, !tbaa !40
  br label %pred.store.continue257

pred.store.continue257:                           ; preds = %pred.store.continue, %pred.store.if256
  %i.cb = extractelement <16 x i1> %i.bv, i64 2
  br i1 %i.cb, label %pred.store.if258, label %pred.store.continue259

end_hunk_6
begin_hunk_7
  store i8 45, ptr %i.cd, align 1, !tbaa !40
  br label %pred.store.continue259

pred.store.continue259:                           ; preds = %pred.store.continue257, %pred.store.if258
  %i.ce = extractelement <16 x i1> %i.bv, i64 3
  br i1 %i.ce, label %pred.store.if260, label %pred.store.continue261

end_hunk_7
begin_hunk_8
  store i8 45, ptr %i.cg, align 1, !tbaa !40
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.continue259, %pred.store.if260
  %i.ch = extractelement <16 x i1> %i.bv, i64 4
  br i1 %i.ch, label %pred.store.if262, label %pred.store.continue263

end_hunk_8
begin_hunk_9
  store i8 45, ptr %i.cj, align 1, !tbaa !40
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.continue261, %pred.store.if262
  %i.ck = extractelement <16 x i1> %i.bv, i64 5
  br i1 %i.ck, label %pred.store.if264, label %pred.store.continue265

end_hunk_9
begin_hunk_10
  store i8 45, ptr %i.cm, align 1, !tbaa !40
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.continue263, %pred.store.if264
  %i.cn = extractelement <16 x i1> %i.bv, i64 6
  br i1 %i.cn, label %pred.store.if266, label %pred.store.continue267

end_hunk_10
begin_hunk_11
  store i8 45, ptr %i.cp, align 1, !tbaa !40
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.continue265, %pred.store.if266
  %i.cq = extractelement <16 x i1> %i.bv, i64 7
  br i1 %i.cq, label %pred.store.if268, label %pred.store.continue269

end_hunk_11
begin_hunk_12
  store i8 45, ptr %i.cs, align 1, !tbaa !40
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.continue267, %pred.store.if268
  %i.ct = extractelement <16 x i1> %i.bv, i64 8
  br i1 %i.ct, label %pred.store.if270, label %pred.store.continue271

end_hunk_12
begin_hunk_13
  store i8 45, ptr %i.cv, align 1, !tbaa !40
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.continue269, %pred.store.if270
  %i.cw = extractelement <16 x i1> %i.bv, i64 9
  br i1 %i.cw, label %pred.store.if272, label %pred.store.continue273

end_hunk_13
begin_hunk_14
  store i8 45, ptr %i.cy, align 1, !tbaa !40
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.continue271, %pred.store.if272
  %i.cz = extractelement <16 x i1> %i.bv, i64 10
  br i1 %i.cz, label %pred.store.if274, label %pred.store.continue275

end_hunk_14
begin_hunk_15
  store i8 45, ptr %i.db, align 1, !tbaa !40
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.continue273, %pred.store.if274
  %i.dc = extractelement <16 x i1> %i.bv, i64 11
  br i1 %i.dc, label %pred.store.if276, label %pred.store.continue277

end_hunk_15
begin_hunk_16
  store i8 45, ptr %i.de, align 1, !tbaa !40
  br label %pred.store.continue277

pred.store.continue277:                           ; preds = %pred.store.continue275, %pred.store.if276
  %i.df = extractelement <16 x i1> %i.bv, i64 12
  br i1 %i.df, label %pred.store.if278, label %pred.store.continue279

end_hunk_16
begin_hunk_17
  store i8 45, ptr %i.dh, align 1, !tbaa !40
  br label %pred.store.continue279

pred.store.continue279:                           ; preds = %pred.store.continue277, %pred.store.if278
  %i.di = extractelement <16 x i1> %i.bv, i64 13
  br i1 %i.di, label %pred.store.if280, label %pred.store.continue281

end_hunk_17
begin_hunk_18
  store i8 45, ptr %i.dk, align 1, !tbaa !40
  br label %pred.store.continue281

pred.store.continue281:                           ; preds = %pred.store.continue279, %pred.store.if280
  %i.dl = extractelement <16 x i1> %i.bv, i64 14
  br i1 %i.dl, label %pred.store.if282, label %pred.store.continue283

end_hunk_18
begin_hunk_19
  store i8 45, ptr %i.dn, align 1, !tbaa !40
  br label %pred.store.continue283

pred.store.continue283:                           ; preds = %pred.store.continue281, %pred.store.if282
  %i.do = extractelement <16 x i1> %i.bv, i64 15
  br i1 %i.do, label %pred.store.if284, label %pred.store.continue285

end_hunk_19
begin_hunk_20
  store i8 45, ptr %i.dq, align 1, !tbaa !40
  br label %pred.store.continue285

pred.store.continue285:                           ; preds = %pred.store.continue283, %pred.store.if284
  %i.dr = extractelement <16 x i1> %i.bw, i64 0
  br i1 %i.dr, label %pred.store.if286, label %pred.store.continue287

end_hunk_20
begin_hunk_21
  store i8 45, ptr %i.dt, align 1, !tbaa !40
  br label %pred.store.continue287

pred.store.continue287:                           ; preds = %pred.store.continue285, %pred.store.if286
  %i.du = extractelement <16 x i1> %i.bw, i64 1
  br i1 %i.du, label %pred.store.if288, label %pred.store.continue289

end_hunk_21
begin_hunk_22
  store i8 45, ptr %i.dw, align 1, !tbaa !40
  br label %pred.store.continue289

pred.store.continue289:                           ; preds = %pred.store.continue287, %pred.store.if288
  %i.dx = extractelement <16 x i1> %i.bw, i64 2
  br i1 %i.dx, label %pred.store.if290, label %pred.store.continue291

end_hunk_22
begin_hunk_23
  store i8 45, ptr %i.dz, align 1, !tbaa !40
  br label %pred.store.continue291

pred.store.continue291:                           ; preds = %pred.store.continue289, %pred.store.if290
  %i.ea = extractelement <16 x i1> %i.bw, i64 3
  br i1 %i.ea, label %pred.store.if292, label %pred.store.continue293

end_hunk_23
begin_hunk_24
  store i8 45, ptr %i.ec, align 1, !tbaa !40
  br label %pred.store.continue293

pred.store.continue293:                           ; preds = %pred.store.continue291, %pred.store.if292
  %i.ed = extractelement <16 x i1> %i.bw, i64 4
  br i1 %i.ed, label %pred.store.if294, label %pred.store.continue295

end_hunk_24
begin_hunk_25
  store i8 45, ptr %i.ef, align 1, !tbaa !40
  br label %pred.store.continue295

pred.store.continue295:                           ; preds = %pred.store.continue293, %pred.store.if294
  %i.eg = extractelement <16 x i1> %i.bw, i64 5
  br i1 %i.eg, label %pred.store.if296, label %pred.store.continue297

end_hunk_25
begin_hunk_26
  store i8 45, ptr %i.ei, align 1, !tbaa !40
  br label %pred.store.continue297

pred.store.continue297:                           ; preds = %pred.store.continue295, %pred.store.if296
  %i.ej = extractelement <16 x i1> %i.bw, i64 6
  br i1 %i.ej, label %pred.store.if298, label %pred.store.continue299

end_hunk_26
begin_hunk_27
  store i8 45, ptr %i.el, align 1, !tbaa !40
  br label %pred.store.continue299

pred.store.continue299:                           ; preds = %pred.store.continue297, %pred.store.if298
  %i.em = extractelement <16 x i1> %i.bw, i64 7
  br i1 %i.em, label %pred.store.if300, label %pred.store.continue301

end_hunk_27
begin_hunk_28
  store i8 45, ptr %i.eo, align 1, !tbaa !40
  br label %pred.store.continue301

pred.store.continue301:                           ; preds = %pred.store.continue299, %pred.store.if300
  %i.ep = extractelement <16 x i1> %i.bw, i64 8
  br i1 %i.ep, label %pred.store.if302, label %pred.store.continue303

end_hunk_28
begin_hunk_29
  store i8 45, ptr %i.er, align 1, !tbaa !40
  br label %pred.store.continue303

pred.store.continue303:                           ; preds = %pred.store.continue301, %pred.store.if302
  %i.es = extractelement <16 x i1> %i.bw, i64 9
  br i1 %i.es, label %pred.store.if304, label %pred.store.continue305

end_hunk_29
begin_hunk_30
  store i8 45, ptr %i.eu, align 1, !tbaa !40
  br label %pred.store.continue305

pred.store.continue305:                           ; preds = %pred.store.continue303, %pred.store.if304
  %i.ev = extractelement <16 x i1> %i.bw, i64 10
  br i1 %i.ev, label %pred.store.if306, label %pred.store.continue307

end_hunk_30
begin_hunk_31
  store i8 45, ptr %i.ex, align 1, !tbaa !40
  br label %pred.store.continue307

pred.store.continue307:                           ; preds = %pred.store.continue305, %pred.store.if306
  %i.ey = extractelement <16 x i1> %i.bw, i64 11
  br i1 %i.ey, label %pred.store.if308, label %pred.store.continue309

end_hunk_31
begin_hunk_32
  store i8 45, ptr %i.fa, align 1, !tbaa !40
  br label %pred.store.continue309

pred.store.continue309:                           ; preds = %pred.store.continue307, %pred.store.if308
  %i.fb = extractelement <16 x i1> %i.bw, i64 12
  br i1 %i.fb, label %pred.store.if310, label %pred.store.continue311

end_hunk_32
begin_hunk_33
  store i8 45, ptr %i.fd, align 1, !tbaa !40
  br label %pred.store.continue311

pred.store.continue311:                           ; preds = %pred.store.continue309, %pred.store.if310
  %i.fe = extractelement <16 x i1> %i.bw, i64 13
  br i1 %i.fe, label %pred.store.if312, label %pred.store.continue313

end_hunk_33
begin_hunk_34
  store i8 45, ptr %i.fg, align 1, !tbaa !40
  br label %pred.store.continue313

pred.store.continue313:                           ; preds = %pred.store.continue311, %pred.store.if312
  %i.fh = extractelement <16 x i1> %i.bw, i64 14
  br i1 %i.fh, label %pred.store.if314, label %pred.store.continue315

end_hunk_34
begin_hunk_35
  store i8 45, ptr %i.fj, align 1, !tbaa !40
  br label %pred.store.continue315

pred.store.continue315:                           ; preds = %pred.store.continue313, %pred.store.if314
  %i.fk = extractelement <16 x i1> %i.bw, i64 15
  br i1 %i.fk, label %pred.store.if316, label %pred.store.continue317

end_hunk_35
begin_hunk_36
  store i8 45, ptr %i.fm, align 1, !tbaa !40
  br label %pred.store.continue317

pred.store.continue317:                           ; preds = %pred.store.continue315, %pred.store.if316
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !178
end_hunk_36
begin_hunk_37
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue337, %vec.epilog.ph
  %index320 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next338, %pred.store.continue337 ] ; 9 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 %index320 ; 2 uses
  %wide.load321 = load <8 x i8>, ptr %i.fo, align 1, !tbaa !40
  %i.fp = icmp eq <8 x i8> %wide.load321, splat (i8 32) ; 8 uses
  %i.fq = extractelement <8 x i1> %i.fp, i64 0
  br i1 %i.fq, label %pred.store.if322, label %pred.store.continue323

pred.store.if322:                                 ; preds = %vec.epilog.vector.body
  store i8 45, ptr %i.fo, align 1, !tbaa !40
  br label %pred.store.continue323

pred.store.continue323:                           ; preds = %vec.epilog.vector.body, %pred.store.if322
  %i.fr = extractelement <8 x i1> %i.fp, i64 1
  br i1 %i.fr, label %pred.store.if324, label %pred.store.continue325

end_hunk_37
begin_hunk_38
  store i8 45, ptr %i.ft, align 1, !tbaa !40
  br label %pred.store.continue325

pred.store.continue325:                           ; preds = %pred.store.continue323, %pred.store.if324
  %i.fu = extractelement <8 x i1> %i.fp, i64 2
  br i1 %i.fu, label %pred.store.if326, label %pred.store.continue327

end_hunk_38
begin_hunk_39
  store i8 45, ptr %i.fw, align 1, !tbaa !40
  br label %pred.store.continue327

pred.store.continue327:                           ; preds = %pred.store.continue325, %pred.store.if326
  %i.fx = extractelement <8 x i1> %i.fp, i64 3
  br i1 %i.fx, label %pred.store.if328, label %pred.store.continue329

end_hunk_39
begin_hunk_40
  store i8 45, ptr %i.fz, align 1, !tbaa !40
  br label %pred.store.continue329

pred.store.continue329:                           ; preds = %pred.store.continue327, %pred.store.if328
  %i.ga = extractelement <8 x i1> %i.fp, i64 4
  br i1 %i.ga, label %pred.store.if330, label %pred.store.continue331

end_hunk_40
begin_hunk_41
  store i8 45, ptr %i.gc, align 1, !tbaa !40
  br label %pred.store.continue331

pred.store.continue331:                           ; preds = %pred.store.continue329, %pred.store.if330
  %i.gd = extractelement <8 x i1> %i.fp, i64 5
  br i1 %i.gd, label %pred.store.if332, label %pred.store.continue333

end_hunk_41
begin_hunk_42
  store i8 45, ptr %i.gf, align 1, !tbaa !40
  br label %pred.store.continue333

pred.store.continue333:                           ; preds = %pred.store.continue331, %pred.store.if332
  %i.gg = extractelement <8 x i1> %i.fp, i64 6
  br i1 %i.gg, label %pred.store.if334, label %pred.store.continue335

end_hunk_42
begin_hunk_43
  store i8 45, ptr %i.gi, align 1, !tbaa !40
  br label %pred.store.continue335

pred.store.continue335:                           ; preds = %pred.store.continue333, %pred.store.if334
  %i.gj = extractelement <8 x i1> %i.fp, i64 7
  br i1 %i.gj, label %pred.store.if336, label %pred.store.continue337

end_hunk_43
begin_hunk_44
  store i8 45, ptr %i.gl, align 1, !tbaa !40
  br label %pred.store.continue337

pred.store.continue337:                           ; preds = %pred.store.continue335, %pred.store.if336
  %index.next338 = add nuw i64 %index320, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next338, %n.vec319
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179
end_hunk_44
begin_hunk_45
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.174.3 = phi ptr [ %i.gz, %bb.x ], [ %.2.2, %bb.w ] ; 43 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.174.3, ptr nonnull align 1 %.sroa.13.1170178198215246, i64 %.sroa.12.0252, i1 false)
  %.not.3 = icmp eq i64 %.sroa.12.0252, 0
  br i1 %.not.3, label %.loopexit.3, label %iter.check342
end_hunk_45
begin_hunk_46
  br label %vector.body348

vector.body348:                                   ; preds = %pred.store.continue415, %vector.ph345
  %index349 = phi i64 [ 0, %vector.ph345 ], [ %index.next416, %pred.store.continue415 ] ; 33 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index349 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load350 = load <16 x i8>, ptr %i.ha, align 1, !tbaa !40
  %wide.load351 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !40
end_hunk_46
begin_hunk_47
  br i1 %i.he, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %vector.body348
  store i8 45, ptr %i.ha, align 1, !tbaa !40
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %vector.body348, %pred.store.if352
  %i.hf = extractelement <16 x i1> %i.hc, i64 1
  br i1 %i.hf, label %pred.store.if354, label %pred.store.continue355

end_hunk_47
begin_hunk_48
  store i8 45, ptr %i.hh, align 1, !tbaa !40
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.continue353, %pred.store.if354
  %i.hi = extractelement <16 x i1> %i.hc, i64 2
  br i1 %i.hi, label %pred.store.if356, label %pred.store.continue357

end_hunk_48
begin_hunk_49
  store i8 45, ptr %i.hk, align 1, !tbaa !40
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.continue355, %pred.store.if356
  %i.hl = extractelement <16 x i1> %i.hc, i64 3
  br i1 %i.hl, label %pred.store.if358, label %pred.store.continue359

end_hunk_49
begin_hunk_50
  store i8 45, ptr %i.hn, align 1, !tbaa !40
  br label %pred.store.continue359

pred.store.continue359:                           ; preds = %pred.store.continue357, %pred.store.if358
  %i.ho = extractelement <16 x i1> %i.hc, i64 4
  br i1 %i.ho, label %pred.store.if360, label %pred.store.continue361

end_hunk_50
begin_hunk_51
  store i8 45, ptr %i.hq, align 1, !tbaa !40
  br label %pred.store.continue361

pred.store.continue361:                           ; preds = %pred.store.continue359, %pred.store.if360
  %i.hr = extractelement <16 x i1> %i.hc, i64 5
  br i1 %i.hr, label %pred.store.if362, label %pred.store.continue363

end_hunk_51
begin_hunk_52
  store i8 45, ptr %i.ht, align 1, !tbaa !40
  br label %pred.store.continue363

pred.store.continue363:                           ; preds = %pred.store.continue361, %pred.store.if362
  %i.hu = extractelement <16 x i1> %i.hc, i64 6
  br i1 %i.hu, label %pred.store.if364, label %pred.store.continue365

end_hunk_52
begin_hunk_53
  store i8 45, ptr %i.hw, align 1, !tbaa !40
  br label %pred.store.continue365

pred.store.continue365:                           ; preds = %pred.store.continue363, %pred.store.if364
  %i.hx = extractelement <16 x i1> %i.hc, i64 7
  br i1 %i.hx, label %pred.store.if366, label %pred.store.continue367

end_hunk_53
begin_hunk_54
  store i8 45, ptr %i.hz, align 1, !tbaa !40
  br label %pred.store.continue367

pred.store.continue367:                           ; preds = %pred.store.continue365, %pred.store.if366
  %i.ia = extractelement <16 x i1> %i.hc, i64 8
  br i1 %i.ia, label %pred.store.if368, label %pred.store.continue369

end_hunk_54
begin_hunk_55
  store i8 45, ptr %i.ic, align 1, !tbaa !40
  br label %pred.store.continue369

pred.store.continue369:                           ; preds = %pred.store.continue367, %pred.store.if368
  %i.id = extractelement <16 x i1> %i.hc, i64 9
  br i1 %i.id, label %pred.store.if370, label %pred.store.continue371

end_hunk_55
begin_hunk_56
  store i8 45, ptr %i.if, align 1, !tbaa !40
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.continue369, %pred.store.if370
  %i.ig = extractelement <16 x i1> %i.hc, i64 10
  br i1 %i.ig, label %pred.store.if372, label %pred.store.continue373

end_hunk_56
begin_hunk_57
  store i8 45, ptr %i.ii, align 1, !tbaa !40
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.continue371, %pred.store.if372
  %i.ij = extractelement <16 x i1> %i.hc, i64 11
  br i1 %i.ij, label %pred.store.if374, label %pred.store.continue375

end_hunk_57
begin_hunk_58
  store i8 45, ptr %i.il, align 1, !tbaa !40
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.continue373, %pred.store.if374
  %i.im = extractelement <16 x i1> %i.hc, i64 12
  br i1 %i.im, label %pred.store.if376, label %pred.store.continue377

end_hunk_58
begin_hunk_59
  store i8 45, ptr %i.io, align 1, !tbaa !40
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.continue375, %pred.store.if376
  %i.ip = extractelement <16 x i1> %i.hc, i64 13
  br i1 %i.ip, label %pred.store.if378, label %pred.store.continue379

end_hunk_59
begin_hunk_60
  store i8 45, ptr %i.ir, align 1, !tbaa !40
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.continue377, %pred.store.if378
  %i.is = extractelement <16 x i1> %i.hc, i64 14
  br i1 %i.is, label %pred.store.if380, label %pred.store.continue381

end_hunk_60
begin_hunk_61
  store i8 45, ptr %i.iu, align 1, !tbaa !40
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.continue379, %pred.store.if380
  %i.iv = extractelement <16 x i1> %i.hc, i64 15
  br i1 %i.iv, label %pred.store.if382, label %pred.store.continue383

end_hunk_61
begin_hunk_62
  store i8 45, ptr %i.ix, align 1, !tbaa !40
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.continue381, %pred.store.if382
  %i.iy = extractelement <16 x i1> %i.hd, i64 0
  br i1 %i.iy, label %pred.store.if384, label %pred.store.continue385

end_hunk_62
begin_hunk_63
  store i8 45, ptr %i.ja, align 1, !tbaa !40
  br label %pred.store.continue385

pred.store.continue385:                           ; preds = %pred.store.continue383, %pred.store.if384
  %i.jb = extractelement <16 x i1> %i.hd, i64 1
  br i1 %i.jb, label %pred.store.if386, label %pred.store.continue387

end_hunk_63
begin_hunk_64
  store i8 45, ptr %i.jd, align 1, !tbaa !40
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.continue385, %pred.store.if386
  %i.je = extractelement <16 x i1> %i.hd, i64 2
  br i1 %i.je, label %pred.store.if388, label %pred.store.continue389

end_hunk_64
begin_hunk_65
  store i8 45, ptr %i.jg, align 1, !tbaa !40
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.continue387, %pred.store.if388
  %i.jh = extractelement <16 x i1> %i.hd, i64 3
  br i1 %i.jh, label %pred.store.if390, label %pred.store.continue391

end_hunk_65
begin_hunk_66
  store i8 45, ptr %i.jj, align 1, !tbaa !40
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.continue389, %pred.store.if390
  %i.jk = extractelement <16 x i1> %i.hd, i64 4
  br i1 %i.jk, label %pred.store.if392, label %pred.store.continue393

end_hunk_66
begin_hunk_67
  store i8 45, ptr %i.jm, align 1, !tbaa !40
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.continue391, %pred.store.if392
  %i.jn = extractelement <16 x i1> %i.hd, i64 5
  br i1 %i.jn, label %pred.store.if394, label %pred.store.continue395

end_hunk_67
begin_hunk_68
  store i8 45, ptr %i.jp, align 1, !tbaa !40
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.continue393, %pred.store.if394
  %i.jq = extractelement <16 x i1> %i.hd, i64 6
  br i1 %i.jq, label %pred.store.if396, label %pred.store.continue397

end_hunk_68
begin_hunk_69
  store i8 45, ptr %i.js, align 1, !tbaa !40
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.continue395, %pred.store.if396
  %i.jt = extractelement <16 x i1> %i.hd, i64 7
  br i1 %i.jt, label %pred.store.if398, label %pred.store.continue399

end_hunk_69
begin_hunk_70
  store i8 45, ptr %i.jv, align 1, !tbaa !40
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.continue397, %pred.store.if398
  %i.jw = extractelement <16 x i1> %i.hd, i64 8
  br i1 %i.jw, label %pred.store.if400, label %pred.store.continue401

end_hunk_70
begin_hunk_71
  store i8 45, ptr %i.jy, align 1, !tbaa !40
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.continue399, %pred.store.if400
  %i.jz = extractelement <16 x i1> %i.hd, i64 9
  br i1 %i.jz, label %pred.store.if402, label %pred.store.continue403

end_hunk_71
begin_hunk_72
  store i8 45, ptr %i.kb, align 1, !tbaa !40
  br label %pred.store.continue403

pred.store.continue403:                           ; preds = %pred.store.continue401, %pred.store.if402
  %i.kc = extractelement <16 x i1> %i.hd, i64 10
  br i1 %i.kc, label %pred.store.if404, label %pred.store.continue405

end_hunk_72
begin_hunk_73
  store i8 45, ptr %i.ke, align 1, !tbaa !40
  br label %pred.store.continue405

pred.store.continue405:                           ; preds = %pred.store.continue403, %pred.store.if404
  %i.kf = extractelement <16 x i1> %i.hd, i64 11
  br i1 %i.kf, label %pred.store.if406, label %pred.store.continue407

end_hunk_73
begin_hunk_74
  store i8 45, ptr %i.kh, align 1, !tbaa !40
  br label %pred.store.continue407

pred.store.continue407:                           ; preds = %pred.store.continue405, %pred.store.if406
  %i.ki = extractelement <16 x i1> %i.hd, i64 12
  br i1 %i.ki, label %pred.store.if408, label %pred.store.continue409

end_hunk_74
begin_hunk_75
  store i8 45, ptr %i.kk, align 1, !tbaa !40
  br label %pred.store.continue409

pred.store.continue409:                           ; preds = %pred.store.continue407, %pred.store.if408
  %i.kl = extractelement <16 x i1> %i.hd, i64 13
  br i1 %i.kl, label %pred.store.if410, label %pred.store.continue411

end_hunk_75
begin_hunk_76
  store i8 45, ptr %i.kn, align 1, !tbaa !40
  br label %pred.store.continue411

pred.store.continue411:                           ; preds = %pred.store.continue409, %pred.store.if410
  %i.ko = extractelement <16 x i1> %i.hd, i64 14
  br i1 %i.ko, label %pred.store.if412, label %pred.store.continue413

end_hunk_76
begin_hunk_77
  store i8 45, ptr %i.kq, align 1, !tbaa !40
  br label %pred.store.continue413

pred.store.continue413:                           ; preds = %pred.store.continue411, %pred.store.if412
  %i.kr = extractelement <16 x i1> %i.hd, i64 15
  br i1 %i.kr, label %pred.store.if414, label %pred.store.continue415

end_hunk_77
begin_hunk_78
  store i8 45, ptr %i.kt, align 1, !tbaa !40
  br label %pred.store.continue415

pred.store.continue415:                           ; preds = %pred.store.continue413, %pred.store.if414
  %index.next416 = add nuw i64 %index349, 32      ; 2 uses
  %i.ku = icmp eq i64 %index.next416, %n.vec347
  br i1 %i.ku, label %middle.block417, label %vector.body348, !llvm.loop !181
end_hunk_78
begin_hunk_79
  br label %vec.epilog.vector.body426

vec.epilog.vector.body426:                        ; preds = %pred.store.continue444, %vec.epilog.ph423
  %index427 = phi i64 [ %vec.epilog.resume.val419, %vec.epilog.ph423 ], [ %index.next445, %pred.store.continue444 ] ; 9 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.174.3, i64 %index427 ; 2 uses
  %wide.load428 = load <8 x i8>, ptr %i.kv, align 1, !tbaa !40
  %i.kw = icmp eq <8 x i8> %wide.load428, splat (i8 32) ; 8 uses
  %i.kx = extractelement <8 x i1> %i.kw, i64 0
  br i1 %i.kx, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %vec.epilog.vector.body426
  store i8 45, ptr %i.kv, align 1, !tbaa !40
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %vec.epilog.vector.body426, %pred.store.if429
  %i.ky = extractelement <8 x i1> %i.kw, i64 1
  br i1 %i.ky, label %pred.store.if431, label %pred.store.continue432

end_hunk_79
begin_hunk_80
  store i8 45, ptr %i.la, align 1, !tbaa !40
  br label %pred.store.continue432

pred.store.continue432:                           ; preds = %pred.store.continue430, %pred.store.if431
  %i.lb = extractelement <8 x i1> %i.kw, i64 2
  br i1 %i.lb, label %pred.store.if433, label %pred.store.continue434

end_hunk_80
begin_hunk_81
  store i8 45, ptr %i.ld, align 1, !tbaa !40
  br label %pred.store.continue434

pred.store.continue434:                           ; preds = %pred.store.continue432, %pred.store.if433
  %i.le = extractelement <8 x i1> %i.kw, i64 3
  br i1 %i.le, label %pred.store.if435, label %pred.store.continue436

end_hunk_81
begin_hunk_82
  store i8 45, ptr %i.lg, align 1, !tbaa !40
  br label %pred.store.continue436

pred.store.continue436:                           ; preds = %pred.store.continue434, %pred.store.if435
  %i.lh = extractelement <8 x i1> %i.kw, i64 4
  br i1 %i.lh, label %pred.store.if437, label %pred.store.continue438

end_hunk_82
begin_hunk_83
  store i8 45, ptr %i.lj, align 1, !tbaa !40
  br label %pred.store.continue438

pred.store.continue438:                           ; preds = %pred.store.continue436, %pred.store.if437
  %i.lk = extractelement <8 x i1> %i.kw, i64 5
  br i1 %i.lk, label %pred.store.if439, label %pred.store.continue440

end_hunk_83
begin_hunk_84
  store i8 45, ptr %i.lm, align 1, !tbaa !40
  br label %pred.store.continue440

pred.store.continue440:                           ; preds = %pred.store.continue438, %pred.store.if439
  %i.ln = extractelement <8 x i1> %i.kw, i64 6
  br i1 %i.ln, label %pred.store.if441, label %pred.store.continue442

end_hunk_84
begin_hunk_85
  store i8 45, ptr %i.lp, align 1, !tbaa !40
  br label %pred.store.continue442

pred.store.continue442:                           ; preds = %pred.store.continue440, %pred.store.if441
  %i.lq = extractelement <8 x i1> %i.kw, i64 7
  br i1 %i.lq, label %pred.store.if443, label %pred.store.continue444

end_hunk_85
begin_hunk_86
  store i8 45, ptr %i.ls, align 1, !tbaa !40
  br label %pred.store.continue444

pred.store.continue444:                           ; preds = %pred.store.continue442, %pred.store.if443
  %index.next445 = add nuw i64 %index427, 8       ; 2 uses
  %i.lt = icmp eq i64 %index.next445, %n.vec425
  br i1 %i.lt, label %vec.epilog.middle.block446, label %vec.epilog.vector.body426, !llvm.loop !182
end_hunk_86
