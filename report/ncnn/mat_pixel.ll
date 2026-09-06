Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel?download=true
inline.NumInlined: 128
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn3Mat9to_pixelsEPhii:bb.a
  %.027139.i = phi i32 [ %i.bo, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.028138.i = phi ptr [ %.lcssa256, %._crit_edge.i ], [ %i.t, %.preheader.preheader.i ] ; 6 uses
  %.029137.i = phi ptr [ %.lcssa257, %._crit_edge.i ], [ %i.q, %.preheader.preheader.i ] ; 6 uses
  %.031136.i = phi ptr [ %.lcssa258, %._crit_edge.i ], [ %i.k, %.preheader.preheader.i ] ; 6 uses
  %.035135.i = phi ptr [ %i.bn, %._crit_edge.i ], [ %1, %.preheader.preheader.i ] ; 8 uses
  br i1 %min.iters.check395, label %scalar.ph394.preheader, label %vector.memcheck378

vector.memcheck378:                               ; preds = %.preheader.i
  %i.ae = getelementptr i8, ptr %.035135.i, i64 %i.w
  %scevgep379 = getelementptr i8, ptr %i.ae, i64 3 ; 3 uses
  %scevgep380 = getelementptr i8, ptr %.028138.i, i64 %i.y
  %scevgep381 = getelementptr i8, ptr %.029137.i, i64 %i.y
  %scevgep382 = getelementptr i8, ptr %.031136.i, i64 %i.y
  %bound0383 = icmp ult ptr %.035135.i, %scevgep380
  %bound1384 = icmp ult ptr %.028138.i, %scevgep379
  %found.conflict385 = and i1 %bound0383, %bound1384
  %bound0386 = icmp ult ptr %.035135.i, %scevgep381
  %bound1387 = icmp ult ptr %.029137.i, %scevgep379
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %found.conflict385, %found.conflict388
  %bound0390 = icmp ult ptr %.035135.i, %scevgep382
  %bound1391 = icmp ult ptr %.031136.i, %scevgep379
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %conflict.rdx389, %found.conflict392
  br i1 %conflict.rdx393, label %scalar.ph394.preheader, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck378
  %i.af = getelementptr i8, ptr %.028138.i, i64 %i.ac ; 2 uses
  %i.ag = getelementptr i8, ptr %.029137.i, i64 %i.ac ; 2 uses
  %i.ah = getelementptr i8, ptr %.031136.i, i64 %i.ac ; 2 uses
  %i.ai = getelementptr i8, ptr %.035135.i, i64 %i.ad ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next408, %vector.body398 ] ; 3 uses
  %i.aj = shl i64 %index399, 2                    ; 3 uses
  %next.gep400 = getelementptr i8, ptr %.028138.i, i64 %i.aj
  %next.gep401 = getelementptr i8, ptr %.029137.i, i64 %i.aj
  %next.gep402 = getelementptr i8, ptr %.031136.i, i64 %i.aj
  %i.ak = mul i64 %index399, 3
  %next.gep403 = getelementptr i8, ptr %.035135.i, i64 %i.ak
  %wide.load404 = load <4 x float>, ptr %next.gep402, align 4, !tbaa !23, !alias.scope !364
  %i.al = fptosi <4 x float> %wide.load404 to <4 x i32>
  %i.am = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.al, <4 x i32> zeroinitializer)
  %i.an = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.am, <4 x i32> splat (i32 255))
  %i.ao = trunc nuw <4 x i32> %i.an to <4 x i8>
  %wide.load405 = load <4 x float>, ptr %next.gep401, align 4, !tbaa !23, !alias.scope !365
  %wide.load406 = load <4 x float>, ptr %next.gep400, align 4, !tbaa !23, !alias.scope !366
  %i.ap = shufflevector <4 x float> %wide.load406, <4 x float> %wide.load405, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = fptosi <8 x float> %i.ap to <8 x i32>
  %i.ar = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aq, <8 x i32> zeroinitializer)
  %i.as = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ar, <8 x i32> splat (i32 255))
  %i.at = trunc nuw <8 x i32> %i.as to <8 x i8>
  %i.au = shufflevector <4 x i8> %i.ao, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec407 = shufflevector <8 x i8> %i.at, <8 x i8> %i.au, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i8> %interleaved.vec407, ptr %next.gep403, align 1, !tbaa !10, !alias.scope !367, !noalias !368
  %index.next408 = add nuw i64 %index399, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next408, %n.vec397
  br i1 %i.av, label %middle.block409, label %vector.body398, !llvm.loop !289

middle.block409:                                  ; preds = %vector.body398
  br i1 %cmp.n410, label %._crit_edge.i, label %scalar.ph394.preheader

scalar.ph394.preheader:                           ; preds = %vector.memcheck378, %.preheader.i, %middle.block409
  %.0131.i.ph = phi i32 [ %spec.select.i, %vector.memcheck378 ], [ %spec.select.i, %.preheader.i ], [ %i.ab, %middle.block409 ]
  %.1130.i.ph = phi ptr [ %.028138.i, %vector.memcheck378 ], [ %.028138.i, %.preheader.i ], [ %i.af, %middle.block409 ]
  %.130129.i.ph = phi ptr [ %.029137.i, %vector.memcheck378 ], [ %.029137.i, %.preheader.i ], [ %i.ag, %middle.block409 ]
  %.132128.i.ph = phi ptr [ %.031136.i, %vector.memcheck378 ], [ %.031136.i, %.preheader.i ], [ %i.ah, %middle.block409 ]
  %.136127.i.ph = phi ptr [ %.035135.i, %vector.memcheck378 ], [ %.035135.i, %.preheader.i ], [ %i.ai, %middle.block409 ]
  br label %scalar.ph394

scalar.ph394:                                     ; preds = %scalar.ph394.preheader, %scalar.ph394
  %.0131.i = phi i32 [ %i.bl, %scalar.ph394 ], [ %.0131.i.ph, %scalar.ph394.preheader ] ; 2 uses
  %.1130.i = phi ptr [ %i.bk, %scalar.ph394 ], [ %.1130.i.ph, %scalar.ph394.preheader ] ; 2 uses
  %.130129.i = phi ptr [ %i.bj, %scalar.ph394 ], [ %.130129.i.ph, %scalar.ph394.preheader ] ; 2 uses
  %.132128.i = phi ptr [ %i.bi, %scalar.ph394 ], [ %.132128.i.ph, %scalar.ph394.preheader ] ; 2 uses
  %.136127.i = phi ptr [ %i.bh, %scalar.ph394 ], [ %.136127.i.ph, %scalar.ph394.preheader ] ; 4 uses
  %i.aw = load float, ptr %.132128.i, align 4, !tbaa !23
  %i.ax = fptosi float %i.aw to i32
  %.sroa.speculated83.i = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  %.sroa.speculated79.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated83.i, i32 255)
  %i.ay = trunc nuw i32 %.sroa.speculated79.i to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.136127.i, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !10
  %i.ba = load float, ptr %.130129.i, align 4, !tbaa !23
  %i.bb = fptosi float %i.ba to i32
  %.sroa.speculated72.i = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %.sroa.speculated68.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated72.i, i32 255)
  %i.bc = trunc nuw i32 %.sroa.speculated68.i to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.136127.i, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !10
  %i.be = load float, ptr %.1130.i, align 4, !tbaa !23
  %i.bf = fptosi float %i.be to i32
  %.sroa.speculated61.i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated61.i, i32 255)
  %i.bg = trunc nuw i32 %.sroa.speculated.i to i8
  store i8 %i.bg, ptr %.136127.i, align 1, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %.136127.i, i64 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.132128.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.130129.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1130.i, i64 4 ; 2 uses
  %i.bl = add nsw i32 %.0131.i, -1
  %i.bm = icmp sgt i32 %.0131.i, 1
  br i1 %i.bm, label %scalar.ph394, label %._crit_edge.i, !llvm.loop !290

._crit_edge.i:                                    ; preds = %scalar.ph394, %middle.block409
  %.lcssa259 = phi ptr [ %i.ai, %middle.block409 ], [ %i.bh, %scalar.ph394 ]
  %.lcssa258 = phi ptr [ %i.ah, %middle.block409 ], [ %i.bi, %scalar.ph394 ]
  %.lcssa257 = phi ptr [ %i.ag, %middle.block409 ], [ %i.bj, %scalar.ph394 ]
  %.lcssa256 = phi ptr [ %i.af, %middle.block409 ], [ %i.bk, %scalar.ph394 ]
  %i.bn = getelementptr inbounds i8, ptr %.lcssa259, i64 %i.j
  %i.bo = add nuw nsw i32 %.027139.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bo, %spec.select37.i
  br i1 %exitcond.not.i, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit, label %.preheader.i, !llvm.loop !291

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !30 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %i.bt = shl nsw i32 %i.bq, 2                    ; 2 uses
  %i.bu = icmp eq i32 %3, %i.bt                   ; 2 uses
  %i.bv = select i1 %i.bu, i32 %i.bs, i32 1
  %spec.select.i27 = mul i32 %i.bv, %i.bq         ; 7 uses
  %spec.select38.i = select i1 %i.bu, i32 1, i32 %i.bs ; 2 uses
  %i.bw = icmp sgt i32 %spec.select38.i, 0
  br i1 %i.bw, label %.preheader.lr.ph.i28, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.lr.ph.i28:                             ; preds = %bb.d
  %i.bx = sub nsw i32 %3, %i.bt
  %i.by = icmp sgt i32 %spec.select.i27, 0
  %i.bz = sext i32 %i.bx to i64
  br i1 %i.by, label %.preheader.preheader.i29, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.preheader.i29:                         ; preds = %.preheader.lr.ph.i28
  %i.ca = load ptr, ptr %0, align 8, !tbaa !20, !noalias !369 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !21, !noalias !370 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19, !noalias !370 ; 2 uses
  %i.cf = mul i64 %i.ce, %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cf
  %i.ch = shl i64 %i.cc, 1
  %i.ci = mul i64 %i.ch, %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ci
  %i.ck = add nsw i32 %spec.select.i27, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 4                ; 4 uses
  %i.co = zext nneg i32 %spec.select.i27 to i64   ; 2 uses
  %min.iters.check357 = icmp ult i32 %spec.select.i27, 4
  %n.vec359 = and i64 %i.co, 2147483644           ; 4 uses
  %i.cp = trunc nuw nsw i64 %n.vec359 to i32
  %i.cq = sub nsw i32 %spec.select.i27, %i.cp
  %i.cr = shl nuw nsw i64 %n.vec359, 2            ; 4 uses
  %cmp.n372 = icmp eq i64 %n.vec359, %i.co
  br label %.preheader.i30

.preheader.i30:                                   ; preds = %._crit_edge.i32, %.preheader.preheader.i29
  %.028140.i = phi i32 [ %i.du, %._crit_edge.i32 ], [ 0, %.preheader.preheader.i29 ]
  %.029139.i = phi ptr [ %.lcssa260, %._crit_edge.i32 ], [ %i.cj, %.preheader.preheader.i29 ] ; 6 uses
  %.030138.i = phi ptr [ %.lcssa261, %._crit_edge.i32 ], [ %i.cg, %.preheader.preheader.i29 ] ; 6 uses
  %.032137.i = phi ptr [ %.lcssa262, %._crit_edge.i32 ], [ %i.ca, %.preheader.preheader.i29 ] ; 6 uses
  %.036136.i = phi ptr [ %i.dt, %._crit_edge.i32 ], [ %1, %.preheader.preheader.i29 ] ; 8 uses
  br i1 %min.iters.check357, label %scalar.ph356.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %.preheader.i30
  %scevgep341 = getelementptr i8, ptr %.036136.i, i64 %i.cn ; 3 uses
  %scevgep342 = getelementptr i8, ptr %.029139.i, i64 %i.cn
  %scevgep343 = getelementptr i8, ptr %.030138.i, i64 %i.cn
  %scevgep344 = getelementptr i8, ptr %.032137.i, i64 %i.cn
  %bound0345 = icmp ult ptr %.036136.i, %scevgep342
  %bound1346 = icmp ult ptr %.029139.i, %scevgep341
  %found.conflict347 = and i1 %bound0345, %bound1346
  %bound0348 = icmp ult ptr %.036136.i, %scevgep343
  %bound1349 = icmp ult ptr %.030138.i, %scevgep341
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %found.conflict347, %found.conflict350
  %bound0352 = icmp ult ptr %.036136.i, %scevgep344
  %bound1353 = icmp ult ptr %.032137.i, %scevgep341
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  br i1 %conflict.rdx355, label %scalar.ph356.preheader, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck340
  %i.cs = getelementptr i8, ptr %.029139.i, i64 %i.cr ; 2 uses
  %i.ct = getelementptr i8, ptr %.030138.i, i64 %i.cr ; 2 uses
  %i.cu = getelementptr i8, ptr %.032137.i, i64 %i.cr ; 2 uses
  %i.cv = getelementptr i8, ptr %.036136.i, i64 %i.cr ; 2 uses
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next370, %vector.body360 ] ; 2 uses
  %i.cw = shl i64 %index361, 2                    ; 4 uses
  %next.gep362 = getelementptr i8, ptr %.029139.i, i64 %i.cw
  %next.gep363 = getelementptr i8, ptr %.030138.i, i64 %i.cw
  %next.gep364 = getelementptr i8, ptr %.032137.i, i64 %i.cw
  %next.gep365 = getelementptr i8, ptr %.036136.i, i64 %i.cw
  %wide.load366 = load <4 x float>, ptr %next.gep364, align 4, !tbaa !23, !alias.scope !371
  %wide.load367 = load <4 x float>, ptr %next.gep363, align 4, !tbaa !23, !alias.scope !372
  %4 = shufflevector <4 x float> %wide.load366, <4 x float> %wide.load367, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fptosi <8 x float> %4 to <8 x i32>
  %6 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %5, <8 x i32> zeroinitializer)
  %wide.load368 = load <4 x float>, ptr %next.gep362, align 4, !tbaa !23, !alias.scope !373
  %7 = fptosi <4 x float> %wide.load368 to <4 x i32>
  %8 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %7, <4 x i32> zeroinitializer)
  %9 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %8, <4 x i32> splat (i32 255))
  %10 = trunc nuw <4 x i32> %9 to <4 x i8>
  %i.cx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %6, <8 x i32> splat (i32 255))
  %i.cy = trunc nuw <8 x i32> %i.cx to <8 x i8>
  %i.cz = shufflevector <4 x i8> %10, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec369 = shufflevector <8 x i8> %i.cy, <8 x i8> %i.cz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec369, ptr %next.gep365, align 1, !tbaa !10, !alias.scope !374, !noalias !375
  %index.next370 = add nuw i64 %index361, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next370, %n.vec359
  br i1 %i.da, label %middle.block371, label %vector.body360, !llvm.loop !301

middle.block371:                                  ; preds = %vector.body360
  br i1 %cmp.n372, label %._crit_edge.i32, label %scalar.ph356.preheader

scalar.ph356.preheader:                           ; preds = %vector.memcheck340, %.preheader.i30, %middle.block371
  %.0132.i.ph = phi i32 [ %spec.select.i27, %vector.memcheck340 ], [ %spec.select.i27, %.preheader.i30 ], [ %i.cq, %middle.block371 ]
  %.1131.i.ph = phi ptr [ %.029139.i, %vector.memcheck340 ], [ %.029139.i, %.preheader.i30 ], [ %i.cs, %middle.block371 ]
  %.131130.i.ph = phi ptr [ %.030138.i, %vector.memcheck340 ], [ %.030138.i, %.preheader.i30 ], [ %i.ct, %middle.block371 ]
  %.133129.i.ph = phi ptr [ %.032137.i, %vector.memcheck340 ], [ %.032137.i, %.preheader.i30 ], [ %i.cu, %middle.block371 ]
  %.137128.i.ph = phi ptr [ %.036136.i, %vector.memcheck340 ], [ %.036136.i, %.preheader.i30 ], [ %i.cv, %middle.block371 ]
  br label %scalar.ph356

scalar.ph356:                                     ; preds = %scalar.ph356.preheader, %scalar.ph356
  %.0132.i = phi i32 [ %i.dr, %scalar.ph356 ], [ %.0132.i.ph, %scalar.ph356.preheader ] ; 2 uses
  %.1131.i = phi ptr [ %i.dq, %scalar.ph356 ], [ %.1131.i.ph, %scalar.ph356.preheader ] ; 2 uses
  %.131130.i = phi ptr [ %i.dp, %scalar.ph356 ], [ %.131130.i.ph, %scalar.ph356.preheader ] ; 2 uses
  %.133129.i = phi ptr [ %i.do, %scalar.ph356 ], [ %.133129.i.ph, %scalar.ph356.preheader ] ; 2 uses
  %.137128.i = phi ptr [ %i.dn, %scalar.ph356 ], [ %.137128.i.ph, %scalar.ph356.preheader ] ; 5 uses
  %i.db = load float, ptr %.133129.i, align 4, !tbaa !23
  %i.dc = fptosi float %i.db to i32
  %.sroa.speculated84.i = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %.sroa.speculated80.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated84.i, i32 255)
  %i.dd = trunc nuw i32 %.sroa.speculated80.i to i8
  store i8 %i.dd, ptr %.137128.i, align 1, !tbaa !10
  %i.de = load float, ptr %.131130.i, align 4, !tbaa !23
  %i.df = fptosi float %i.de to i32
  %.sroa.speculated73.i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %.sroa.speculated69.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated73.i, i32 255)
  %i.dg = trunc nuw i32 %.sroa.speculated69.i to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.137128.i, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !10
  %i.di = load float, ptr %.1131.i, align 4, !tbaa !23
  %i.dj = fptosi float %i.di to i32
  %.sroa.speculated62.i = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %.sroa.speculated.i31 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated62.i, i32 255)
  %i.dk = trunc nuw i32 %.sroa.speculated.i31 to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.137128.i, i64 2
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %.137128.i, i64 3
  store i8 -1, ptr %i.dm, align 1, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %.137128.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.133129.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.131130.i, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1131.i, i64 4 ; 2 uses
  %i.dr = add nsw i32 %.0132.i, -1
  %i.ds = icmp sgt i32 %.0132.i, 1
  br i1 %i.ds, label %scalar.ph356, label %._crit_edge.i32, !llvm.loop !302

._crit_edge.i32:                                  ; preds = %scalar.ph356, %middle.block371
  %.lcssa263 = phi ptr [ %i.cv, %middle.block371 ], [ %i.dn, %scalar.ph356 ]
  %.lcssa262 = phi ptr [ %i.cu, %middle.block371 ], [ %i.do, %scalar.ph356 ]
  %.lcssa261 = phi ptr [ %i.ct, %middle.block371 ], [ %i.dp, %scalar.ph356 ]
  %.lcssa260 = phi ptr [ %i.cs, %middle.block371 ], [ %i.dq, %scalar.ph356 ]
  %i.dt = getelementptr inbounds i8, ptr %.lcssa263, i64 %i.bz
  %i.du = add nuw nsw i32 %.028140.i, 1           ; 2 uses
  %exitcond.not.i33 = icmp eq i32 %i.du, %spec.select38.i
  br i1 %exitcond.not.i33, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit, label %.preheader.i30, !llvm.loop !303

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !30 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !31 ; 2 uses
  %i.dz = shl nsw i32 %i.dw, 2                    ; 2 uses
  %i.ea = icmp eq i32 %3, %i.dz                   ; 2 uses
  %i.eb = select i1 %i.ea, i32 %i.dy, i32 1
  %spec.select.i34 = mul i32 %i.eb, %i.dw         ; 7 uses
  %spec.select38.i35 = select i1 %i.ea, i32 1, i32 %i.dy ; 2 uses
  %i.ec = icmp sgt i32 %spec.select38.i35, 0
  br i1 %i.ec, label %.preheader.lr.ph.i36, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.lr.ph.i36:                             ; preds = %bb.e
  %i.ed = sub nsw i32 %3, %i.dz
  %i.ee = icmp sgt i32 %spec.select.i34, 0
  %i.ef = sext i32 %i.ed to i64
  br i1 %i.ee, label %.preheader.preheader.i37, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.preheader.i37:                         ; preds = %.preheader.lr.ph.i36
  %i.eg = load ptr, ptr %0, align 8, !tbaa !20, !noalias !376 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !21, !noalias !377 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !19, !noalias !377 ; 2 uses
  %i.el = mul i64 %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.el
  %i.en = shl i64 %i.ei, 1
  %i.eo = mul i64 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eo
  %i.eq = add nsw i32 %spec.select.i34, -1
  %i.er = zext i32 %i.eq to i64
  %i.es = shl nuw nsw i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 4                ; 4 uses
  %i.eu = zext nneg i32 %spec.select.i34 to i64   ; 2 uses
  %min.iters.check319 = icmp ult i32 %spec.select.i34, 4
  %n.vec321 = and i64 %i.eu, 2147483644           ; 4 uses
  %i.ev = trunc nuw nsw i64 %n.vec321 to i32
  %i.ew = sub nsw i32 %spec.select.i34, %i.ev
  %i.ex = shl nuw nsw i64 %n.vec321, 2            ; 4 uses
  %cmp.n334 = icmp eq i64 %n.vec321, %i.eu
  br label %.preheader.i38

.preheader.i38:                                   ; preds = %._crit_edge.i55, %.preheader.preheader.i37
  %.028140.i39 = phi i32 [ %i.ga, %._crit_edge.i55 ], [ 0, %.preheader.preheader.i37 ]
  %.029139.i40 = phi ptr [ %.lcssa264, %._crit_edge.i55 ], [ %i.ep, %.preheader.preheader.i37 ] ; 6 uses
  %.030138.i41 = phi ptr [ %.lcssa265, %._crit_edge.i55 ], [ %i.em, %.preheader.preheader.i37 ] ; 6 uses
  %.032137.i42 = phi ptr [ %.lcssa266, %._crit_edge.i55 ], [ %i.eg, %.preheader.preheader.i37 ] ; 6 uses
  %.036136.i43 = phi ptr [ %i.fz, %._crit_edge.i55 ], [ %1, %.preheader.preheader.i37 ] ; 8 uses
  br i1 %min.iters.check319, label %scalar.ph318.preheader, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.preheader.i38
  %scevgep303 = getelementptr i8, ptr %.036136.i43, i64 %i.et ; 3 uses
  %scevgep304 = getelementptr i8, ptr %.032137.i42, i64 %i.et
  %scevgep305 = getelementptr i8, ptr %.030138.i41, i64 %i.et
  %scevgep306 = getelementptr i8, ptr %.029139.i40, i64 %i.et
  %bound0307 = icmp ult ptr %.036136.i43, %scevgep304
  %bound1308 = icmp ult ptr %.032137.i42, %scevgep303
  %found.conflict309 = and i1 %bound0307, %bound1308
  %bound0310 = icmp ult ptr %.036136.i43, %scevgep305
  %bound1311 = icmp ult ptr %.030138.i41, %scevgep303
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %found.conflict309, %found.conflict312
  %bound0314 = icmp ult ptr %.036136.i43, %scevgep306
  %bound1315 = icmp ult ptr %.029139.i40, %scevgep303
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %conflict.rdx313, %found.conflict316
  br i1 %conflict.rdx317, label %scalar.ph318.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %vector.memcheck302
  %i.ey = getelementptr i8, ptr %.029139.i40, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %.030138.i41, i64 %i.ex ; 2 uses
  %i.fa = getelementptr i8, ptr %.032137.i42, i64 %i.ex ; 2 uses
  %i.fb = getelementptr i8, ptr %.036136.i43, i64 %i.ex ; 2 uses
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph320
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next332, %vector.body322 ] ; 2 uses
  %i.fc = shl i64 %index323, 2                    ; 4 uses
  %next.gep324 = getelementptr i8, ptr %.029139.i40, i64 %i.fc
  %next.gep325 = getelementptr i8, ptr %.030138.i41, i64 %i.fc
  %next.gep326 = getelementptr i8, ptr %.032137.i42, i64 %i.fc
  %next.gep327 = getelementptr i8, ptr %.036136.i43, i64 %i.fc
  %wide.load328 = load <4 x float>, ptr %next.gep324, align 4, !tbaa !23, !alias.scope !378
  %wide.load329 = load <4 x float>, ptr %next.gep325, align 4, !tbaa !23, !alias.scope !379
  %11 = shufflevector <4 x float> %wide.load328, <4 x float> %wide.load329, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = fptosi <8 x float> %11 to <8 x i32>
  %13 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %12, <8 x i32> zeroinitializer)
  %wide.load330 = load <4 x float>, ptr %next.gep326, align 4, !tbaa !23, !alias.scope !380
  %14 = fptosi <4 x float> %wide.load330 to <4 x i32>
  %15 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %14, <4 x i32> zeroinitializer)
  %16 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %15, <4 x i32> splat (i32 255))
  %17 = trunc nuw <4 x i32> %16 to <4 x i8>
  %i.fd = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %13, <8 x i32> splat (i32 255))
  %i.fe = trunc nuw <8 x i32> %i.fd to <8 x i8>
  %i.ff = shufflevector <4 x i8> %17, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec331 = shufflevector <8 x i8> %i.fe, <8 x i8> %i.ff, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec331, ptr %next.gep327, align 1, !tbaa !10, !alias.scope !381, !noalias !382
  %index.next332 = add nuw i64 %index323, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next332, %n.vec321
  br i1 %i.fg, label %middle.block333, label %vector.body322, !llvm.loop !313

middle.block333:                                  ; preds = %vector.body322
  br i1 %cmp.n334, label %._crit_edge.i55, label %scalar.ph318.preheader

scalar.ph318.preheader:                           ; preds = %vector.memcheck302, %.preheader.i38, %middle.block333
  %.0132.i44.ph = phi i32 [ %spec.select.i34, %vector.memcheck302 ], [ %spec.select.i34, %.preheader.i38 ], [ %i.ew, %middle.block333 ]
  %.1131.i45.ph = phi ptr [ %.029139.i40, %vector.memcheck302 ], [ %.029139.i40, %.preheader.i38 ], [ %i.ey, %middle.block333 ]
  %.131130.i46.ph = phi ptr [ %.030138.i41, %vector.memcheck302 ], [ %.030138.i41, %.preheader.i38 ], [ %i.ez, %middle.block333 ]
  %.133129.i47.ph = phi ptr [ %.032137.i42, %vector.memcheck302 ], [ %.032137.i42, %.preheader.i38 ], [ %i.fa, %middle.block333 ]
  %.137128.i48.ph = phi ptr [ %.036136.i43, %vector.memcheck302 ], [ %.036136.i43, %.preheader.i38 ], [ %i.fb, %middle.block333 ]
  br label %scalar.ph318

scalar.ph318:                                     ; preds = %scalar.ph318.preheader, %scalar.ph318
  %.0132.i44 = phi i32 [ %i.fx, %scalar.ph318 ], [ %.0132.i44.ph, %scalar.ph318.preheader ] ; 2 uses
  %.1131.i45 = phi ptr [ %i.fw, %scalar.ph318 ], [ %.1131.i45.ph, %scalar.ph318.preheader ] ; 2 uses
  %.131130.i46 = phi ptr [ %i.fv, %scalar.ph318 ], [ %.131130.i46.ph, %scalar.ph318.preheader ] ; 2 uses
  %.133129.i47 = phi ptr [ %i.fu, %scalar.ph318 ], [ %.133129.i47.ph, %scalar.ph318.preheader ] ; 2 uses
  %.137128.i48 = phi ptr [ %i.ft, %scalar.ph318 ], [ %.137128.i48.ph, %scalar.ph318.preheader ] ; 5 uses
  %i.fh = load float, ptr %.1131.i45, align 4, !tbaa !23
  %i.fi = fptosi float %i.fh to i32
  %.sroa.speculated84.i49 = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 0)
  %.sroa.speculated80.i50 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated84.i49, i32 255)
  %i.fj = trunc nuw i32 %.sroa.speculated80.i50 to i8
  store i8 %i.fj, ptr %.137128.i48, align 1, !tbaa !10
  %i.fk = load float, ptr %.131130.i46, align 4, !tbaa !23
  %i.fl = fptosi float %i.fk to i32
  %.sroa.speculated73.i51 = tail call i32 @llvm.smax.i32(i32 %i.fl, i32 0)
  %.sroa.speculated69.i52 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated73.i51, i32 255)
  %i.fm = trunc nuw i32 %.sroa.speculated69.i52 to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.137128.i48, i64 1
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !10
  %i.fo = load float, ptr %.133129.i47, align 4, !tbaa !23
  %i.fp = fptosi float %i.fo to i32
  %.sroa.speculated62.i53 = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0)
  %.sroa.speculated.i54 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated62.i53, i32 255)
  %i.fq = trunc nuw i32 %.sroa.speculated.i54 to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %.137128.i48, i64 2
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %.137128.i48, i64 3
  store i8 -1, ptr %i.fs, align 1, !tbaa !10
  %i.ft = getelementptr inbounds nuw i8, ptr %.137128.i48, i64 4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.133129.i47, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.131130.i46, i64 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.1131.i45, i64 4 ; 2 uses
  %i.fx = add nsw i32 %.0132.i44, -1
  %i.fy = icmp sgt i32 %.0132.i44, 1
  br i1 %i.fy, label %scalar.ph318, label %._crit_edge.i55, !llvm.loop !314

._crit_edge.i55:                                  ; preds = %scalar.ph318, %middle.block333
  %.lcssa267 = phi ptr [ %i.fb, %middle.block333 ], [ %i.ft, %scalar.ph318 ]
  %.lcssa266 = phi ptr [ %i.fa, %middle.block333 ], [ %i.fu, %scalar.ph318 ]
  %.lcssa265 = phi ptr [ %i.ez, %middle.block333 ], [ %i.fv, %scalar.ph318 ]
  %.lcssa264 = phi ptr [ %i.ey, %middle.block333 ], [ %i.fw, %scalar.ph318 ]
  %i.fz = getelementptr inbounds i8, ptr %.lcssa267, i64 %i.ef
  %i.ga = add nuw nsw i32 %.028140.i39, 1         ; 2 uses
  %exitcond.not.i56 = icmp eq i32 %i.ga, %spec.select38.i35
  br i1 %exitcond.not.i56, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit, label %.preheader.i38, !llvm.loop !315

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !30 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !31 ; 2 uses
  %i.gf = shl nsw i32 %i.gc, 2                    ; 2 uses
  %i.gg = icmp eq i32 %3, %i.gf                   ; 2 uses
  %i.gh = select i1 %i.gg, i32 %i.ge, i32 1
  %spec.select.i57 = mul i32 %i.gh, %i.gc         ; 5 uses
  %spec.select31.i = select i1 %i.gg, i32 1, i32 %i.ge ; 2 uses
  %i.gi = icmp sgt i32 %spec.select31.i, 0
  br i1 %i.gi, label %.preheader.lr.ph.i58, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.lr.ph.i58:                             ; preds = %bb.f
  %i.gj = sub nsw i32 %3, %i.gf
  %i.gk = icmp sgt i32 %spec.select.i57, 0
  %i.gl = sext i32 %i.gj to i64
  br i1 %i.gk, label %.preheader.preheader.i59, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.preheader.i59:                         ; preds = %.preheader.lr.ph.i58
  %i.gm = load ptr, ptr %0, align 8, !tbaa !20
  %xtraiter = and i32 %spec.select.i57, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.gn = add nsw i32 %spec.select.i57, -1
  %i.go = icmp eq i32 %spec.select.i57, 1
  br label %.preheader.i60

.preheader.i60:                                   ; preds = %._crit_edge.i62, %.preheader.preheader.i59
  %.047.i = phi ptr [ %i.hp, %._crit_edge.i62 ], [ %1, %.preheader.preheader.i59 ] ; 6 uses
  %.02646.i = phi i32 [ %i.hq, %._crit_edge.i62 ], [ 0, %.preheader.preheader.i59 ]
  %.02745.i = phi ptr [ %.lcssa549, %._crit_edge.i62 ], [ %i.gm, %.preheader.preheader.i59 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i60
  %i.gp = load float, ptr %.02745.i, align 4, !tbaa !23
  %i.gq = fptosi float %i.gp to i32
  %.sroa.speculated34.i.prol = tail call i32 @llvm.smax.i32(i32 %i.gq, i32 0)
  %.sroa.speculated.i61.prol = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated34.i.prol, i32 255)
  %i.gr = trunc nuw i32 %.sroa.speculated.i61.prol to i8 ; 3 uses
  store i8 %i.gr, ptr %.047.i, align 1, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %.047.i, i64 1
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !10
  %i.gt = getelementptr inbounds nuw i8, ptr %.047.i, i64 2
  store i8 %i.gr, ptr %i.gt, align 1, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %.047.i, i64 3
  store i8 -1, ptr %i.gu, align 1, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %.047.i, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.02745.i, i64 4 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i60
  %.143.i.unr = phi ptr [ %.047.i, %.preheader.i60 ], [ %i.gv, %.prol.loopexit.unr-lcssa ]
  %.02542.i.unr = phi i32 [ %spec.select.i57, %.preheader.i60 ], [ %i.gn, %.prol.loopexit.unr-lcssa ]
  %.12841.i.unr = phi ptr [ %.02745.i, %.preheader.i60 ], [ %i.gw, %.prol.loopexit.unr-lcssa ]
  %.lcssa550.unr = phi ptr [ poison, %.preheader.i60 ], [ %i.gv, %.prol.loopexit.unr-lcssa ]
  %.lcssa549.unr = phi ptr [ poison, %.preheader.i60 ], [ %i.gw, %.prol.loopexit.unr-lcssa ]
  br i1 %i.go, label %._crit_edge.i62, label %.preheader.i60.new

.preheader.i60.new:                               ; preds = %.prol.loopexit, %.preheader.i60.new
  %.143.i = phi ptr [ %i.hl, %.preheader.i60.new ], [ %.143.i.unr, %.prol.loopexit ] ; 9 uses
  %.02542.i = phi i32 [ %i.hn, %.preheader.i60.new ], [ %.02542.i.unr, %.prol.loopexit ] ; 2 uses
  %.12841.i = phi ptr [ %i.hm, %.preheader.i60.new ], [ %.12841.i.unr, %.prol.loopexit ] ; 3 uses
  %i.gx = load float, ptr %.12841.i, align 4, !tbaa !23
  %i.gy = fptosi float %i.gx to i32
  %.sroa.speculated34.i = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 0)
  %.sroa.speculated.i61 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated34.i, i32 255)
  %i.gz = trunc nuw i32 %.sroa.speculated.i61 to i8 ; 3 uses
  store i8 %i.gz, ptr %.143.i, align 1, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %.143.i, i64 1
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %.143.i, i64 2
  store i8 %i.gz, ptr %i.hb, align 1, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %.143.i, i64 3
  store i8 -1, ptr %i.hc, align 1, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %.143.i, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %.12841.i, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !23
  %i.hg = fptosi float %i.hf to i32
  %.sroa.speculated34.i.1 = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 0)
  %.sroa.speculated.i61.1 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated34.i.1, i32 255)
  %i.hh = trunc nuw i32 %.sroa.speculated.i61.1 to i8 ; 3 uses
  store i8 %i.hh, ptr %i.hd, align 1, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %.143.i, i64 5
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %.143.i, i64 6
  store i8 %i.hh, ptr %i.hj, align 1, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %.143.i, i64 7
  store i8 -1, ptr %i.hk, align 1, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.143.i, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.12841.i, i64 8 ; 2 uses
  %i.hn = add nsw i32 %.02542.i, -2
  %i.ho = icmp sgt i32 %.02542.i, 2
  br i1 %i.ho, label %.preheader.i60.new, label %._crit_edge.i62, !llvm.loop !316

._crit_edge.i62:                                  ; preds = %.preheader.i60.new, %.prol.loopexit
  %.lcssa550 = phi ptr [ %.lcssa550.unr, %.prol.loopexit ], [ %i.hl, %.preheader.i60.new ]
  %.lcssa549 = phi ptr [ %.lcssa549.unr, %.prol.loopexit ], [ %i.hm, %.preheader.i60.new ]
  %i.hp = getelementptr inbounds i8, ptr %.lcssa550, i64 %i.gl
  %i.hq = add nuw nsw i32 %.02646.i, 1            ; 2 uses
  %exitcond.not.i63 = icmp eq i32 %i.hq, %spec.select31.i
  br i1 %exitcond.not.i63, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit, label %.preheader.i60, !llvm.loop !317

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !30 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !31 ; 2 uses
  %i.hv = shl nsw i32 %i.hs, 2                    ; 2 uses
  %i.hw = icmp eq i32 %3, %i.hv                   ; 2 uses
  %i.hx = select i1 %i.hw, i32 %i.hu, i32 1
  %spec.select.i64 = mul i32 %i.hx, %i.hs         ; 7 uses
  %spec.select43.i = select i1 %i.hw, i32 1, i32 %i.hu ; 2 uses
  %i.hy = icmp sgt i32 %spec.select43.i, 0
  br i1 %i.hy, label %.preheader.lr.ph.i65, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.lr.ph.i65:                             ; preds = %bb.g
  %i.hz = sub nsw i32 %3, %i.hv
  %i.ia = icmp sgt i32 %spec.select.i64, 0
  %i.ib = sext i32 %i.hz to i64
  br i1 %i.ia, label %.preheader.preheader.i66, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.preheader.i66:                         ; preds = %.preheader.lr.ph.i65
  %i.ic = load ptr, ptr %0, align 8, !tbaa !20, !noalias !383 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !21, !noalias !384
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !19, !noalias !384
  %i.ih = mul i64 %i.ig, %i.ie                    ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ih
  %i.ij = shl i64 %i.ih, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ij
  %i.il = mul i64 %i.ih, 3
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.il
  %i.in = add nsw i32 %spec.select.i64, -1
  %i.io = zext i32 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 2
  %i.iq = add nuw nsw i64 %i.ip, 4                ; 5 uses
  %i.ir = zext nneg i32 %spec.select.i64 to i64   ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select.i64, 4
  %n.vec = and i64 %i.ir, 2147483644              ; 4 uses
  %i.is = trunc nuw nsw i64 %n.vec to i32
  %i.it = sub nsw i32 %spec.select.i64, %i.is
  %i.iu = shl nuw nsw i64 %n.vec, 2               ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ir
  br label %.preheader.i67

.preheader.i67:                                   ; preds = %._crit_edge.i70, %.preheader.preheader.i66
  %.031185.i = phi i32 [ %i.kh, %._crit_edge.i70 ], [ 0, %.preheader.preheader.i66 ]
  %.032184.i = phi ptr [ %.lcssa270, %._crit_edge.i70 ], [ %i.im, %.preheader.preheader.i66 ] ; 6 uses
  %.033183.i = phi ptr [ %.lcssa271, %._crit_edge.i70 ], [ %i.ik, %.preheader.preheader.i66 ] ; 6 uses
  %.035182.i = phi ptr [ %.lcssa272, %._crit_edge.i70 ], [ %i.ii, %.preheader.preheader.i66 ] ; 6 uses
  %.037181.i = phi ptr [ %.lcssa273, %._crit_edge.i70 ], [ %i.ic, %.preheader.preheader.i66 ] ; 6 uses
  %.041180.i = phi ptr [ %i.kg, %._crit_edge.i70 ], [ %1, %.preheader.preheader.i66 ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i67
  %scevgep = getelementptr i8, ptr %.041180.i, i64 %i.iq ; 4 uses
  %scevgep275 = getelementptr i8, ptr %.032184.i, i64 %i.iq
  %scevgep276 = getelementptr i8, ptr %.037181.i, i64 %i.iq
  %scevgep277 = getelementptr i8, ptr %.035182.i, i64 %i.iq
  %scevgep278 = getelementptr i8, ptr %.033183.i, i64 %i.iq
  %bound0 = icmp ult ptr %.041180.i, %scevgep275
  %bound1 = icmp ult ptr %.032184.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0279 = icmp ult ptr %.041180.i, %scevgep276
  %bound1280 = icmp ult ptr %.037181.i, %scevgep
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx = or i1 %found.conflict, %found.conflict281
  %bound0282 = icmp ult ptr %.041180.i, %scevgep277
  %bound1283 = icmp ult ptr %.035182.i, %scevgep
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx, %found.conflict284
  %bound0286 = icmp ult ptr %.041180.i, %scevgep278
  %bound1287 = icmp ult ptr %.033183.i, %scevgep
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  br i1 %conflict.rdx289, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.iv = getelementptr i8, ptr %.032184.i, i64 %i.iu ; 2 uses
  %i.iw = getelementptr i8, ptr %.033183.i, i64 %i.iu ; 2 uses
  %i.ix = getelementptr i8, ptr %.035182.i, i64 %i.iu ; 2 uses
  %i.iy = getelementptr i8, ptr %.037181.i, i64 %i.iu ; 2 uses
  %i.iz = getelementptr i8, ptr %.041180.i, i64 %i.iu ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ja = shl i64 %index, 2                       ; 5 uses
  %next.gep = getelementptr i8, ptr %.032184.i, i64 %i.ja
  %next.gep290 = getelementptr i8, ptr %.033183.i, i64 %i.ja
  %next.gep291 = getelementptr i8, ptr %.035182.i, i64 %i.ja
  %next.gep292 = getelementptr i8, ptr %.037181.i, i64 %i.ja
  %next.gep293 = getelementptr i8, ptr %.041180.i, i64 %i.ja
  %wide.load295.a = load <4 x float>, ptr %next.gep290, align 4, !tbaa !23, !alias.scope !385
  %wide.load296.a = load <4 x float>, ptr %next.gep291, align 4, !tbaa !23, !alias.scope !386
  %i.jb = shufflevector <4 x float> %wide.load295.a, <4 x float> %wide.load296.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jc = fptosi <8 x float> %i.jb to <8 x i32>
  %i.jd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jc, <8 x i32> zeroinitializer)
  %wide.load295 = load <4 x float>, ptr %next.gep292, align 4, !tbaa !23, !alias.scope !387
  %wide.load296 = load <4 x float>, ptr %next.gep, align 4, !tbaa !23, !alias.scope !388
  %i.je = shufflevector <4 x float> %wide.load295, <4 x float> %wide.load296, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jf = fptosi <8 x float> %i.je to <8 x i32>
  %18 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jf, <8 x i32> zeroinitializer)
  %i.jg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jd, <8 x i32> splat (i32 255))
  %19 = trunc nuw <8 x i32> %i.jg to <8 x i8>
  %i.jh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %18, <8 x i32> splat (i32 255))
  %i.ji = trunc nuw <8 x i32> %i.jh to <8 x i8>
  %interleaved.vec = shufflevector <8 x i8> %19, <8 x i8> %i.ji, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep293, align 1, !tbaa !10, !alias.scope !389, !noalias !390
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !328

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i67, %middle.block
  %.0175.i.ph = phi i32 [ %spec.select.i64, %vector.memcheck ], [ %spec.select.i64, %.preheader.i67 ], [ %i.it, %middle.block ]
  %.1174.i.ph = phi ptr [ %.032184.i, %vector.memcheck ], [ %.032184.i, %.preheader.i67 ], [ %i.iv, %middle.block ]
  %.134173.i.ph = phi ptr [ %.033183.i, %vector.memcheck ], [ %.033183.i, %.preheader.i67 ], [ %i.iw, %middle.block ]
  %.136172.i.ph = phi ptr [ %.035182.i, %vector.memcheck ], [ %.035182.i, %.preheader.i67 ], [ %i.ix, %middle.block ]
  %.138171.i.ph = phi ptr [ %.037181.i, %vector.memcheck ], [ %.037181.i, %.preheader.i67 ], [ %i.iy, %middle.block ]
  %.142170.i.ph = phi ptr [ %.041180.i, %vector.memcheck ], [ %.041180.i, %.preheader.i67 ], [ %i.iz, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0175.i = phi i32 [ %i.ke, %scalar.ph ], [ %.0175.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1174.i = phi ptr [ %i.kd, %scalar.ph ], [ %.1174.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.134173.i = phi ptr [ %i.kc, %scalar.ph ], [ %.134173.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.136172.i = phi ptr [ %i.kb, %scalar.ph ], [ %.136172.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.138171.i = phi ptr [ %i.ka, %scalar.ph ], [ %.138171.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.142170.i = phi ptr [ %i.jz, %scalar.ph ], [ %.142170.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.jk = load float, ptr %.134173.i, align 4, !tbaa !23
  %i.jl = fptosi float %i.jk to i32
  %.sroa.speculated110.i = tail call i32 @llvm.smax.i32(i32 %i.jl, i32 0)
  %.sroa.speculated106.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated110.i, i32 255)
  %i.jm = trunc nuw i32 %.sroa.speculated106.i to i8
  store i8 %i.jm, ptr %.142170.i, align 1, !tbaa !10
  %i.jn = load float, ptr %.136172.i, align 4, !tbaa !23
  %i.jo = fptosi float %i.jn to i32
  %.sroa.speculated99.i = tail call i32 @llvm.smax.i32(i32 %i.jo, i32 0)
  %.sroa.speculated95.i = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated99.i, i32 255)
  %i.jp = trunc nuw i32 %.sroa.speculated95.i to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.142170.i, i64 1
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !10
  %i.jr = load float, ptr %.138171.i, align 4, !tbaa !23
  %i.js = fptosi float %i.jr to i32
  %.sroa.speculated88.i = tail call i32 @llvm.smax.i32(i32 %i.js, i32 0)
  %.sroa.speculated84.i68 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated88.i, i32 255)
  %i.jt = trunc nuw i32 %.sroa.speculated84.i68 to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %.142170.i, i64 2
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !10
  %i.jv = load float, ptr %.1174.i, align 4, !tbaa !23
  %i.jw = fptosi float %i.jv to i32
  %.sroa.speculated77.i = tail call i32 @llvm.smax.i32(i32 %i.jw, i32 0)
  %.sroa.speculated.i69 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated77.i, i32 255)
  %i.jx = trunc nuw i32 %.sroa.speculated.i69 to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %.142170.i, i64 3
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !10
  %i.jz = getelementptr inbounds nuw i8, ptr %.142170.i, i64 4 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.138171.i, i64 4 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.136172.i, i64 4 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.134173.i, i64 4 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.1174.i, i64 4 ; 2 uses
  %i.ke = add nsw i32 %.0175.i, -1
  %i.kf = icmp sgt i32 %.0175.i, 1
  br i1 %i.kf, label %scalar.ph, label %._crit_edge.i70, !llvm.loop !329

._crit_edge.i70:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa274 = phi ptr [ %i.iz, %middle.block ], [ %i.jz, %scalar.ph ]
  %.lcssa273 = phi ptr [ %i.iy, %middle.block ], [ %i.ka, %scalar.ph ]
  %.lcssa272 = phi ptr [ %i.ix, %middle.block ], [ %i.kb, %scalar.ph ]
  %.lcssa271 = phi ptr [ %i.iw, %middle.block ], [ %i.kc, %scalar.ph ]
  %.lcssa270 = phi ptr [ %i.iv, %middle.block ], [ %i.kd, %scalar.ph ]
  %i.kg = getelementptr inbounds i8, ptr %.lcssa274, i64 %i.ib
  %i.kh = add nuw nsw i32 %.031185.i, 1           ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.kh, %spec.select43.i
  br i1 %exitcond.not.i71, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit, label %.preheader.i67, !llvm.loop !330

bb.h:                                             ; preds = %bb.b
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.kj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.2, i32 noundef %2) #12 ; 0 uses
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !14
  %fputc = tail call i32 @fputc(i32 10, ptr %i.kk) ; 0 uses
  br label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

bb.i:                                             ; preds = %bb.a
  %i.kl = add nsw i32 %2, -1
  %or.cond = icmp ult i32 %i.kl, 2
  br i1 %or.cond, label %bb.j, label %_ZN4ncnnL6to_rgbERKNS_3MatEPhi.exit

bb.j:                                             ; preds = %bb.i
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !30 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !31 ; 2 uses
  %.neg.i72 = mul i32 %i.kn, -3
  %i.kq = add i32 %.neg.i72, %3                   ; 2 uses
  %i.kr = icmp eq i32 %i.kq, 0                    ; 2 uses
  %i.ks = select i1 %i.kr, i32 %i.kp, i32 1
  %spec.select.i73 = mul i32 %i.ks, %i.kn         ; 7 uses
  %spec.select37.i74 = select i1 %i.kr, i32 1, i32 %i.kp ; 2 uses
  %i.kt = icmp sgt i32 %spec.select37.i74, 0
  br i1 %i.kt, label %.preheader.lr.ph.i75, label %_ZN4ncnnL7to_grayERKNS_3MatEPhi.exit

.preheader.lr.ph.i75:                             ; preds = %bb.j
  %i.ku = icmp sgt i32 %spec.select.i73, 0
  %i.kv = sext i32 %i.kq to i64
  br i1 %i.ku, label %.preheader.preheader.i76, label %_ZN4ncnnL7to_grayERKNS_3MatEPhi.exit

.preheader.preheader.i76:                         ; preds = %.preheader.lr.ph.i75
  %i.kw = load ptr, ptr %0, align 8, !tbaa !20, !noalias !391 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !21, !noalias !392 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !19, !noalias !392 ; 2 uses
  %i.lb = mul i64 %i.la, %i.ky
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lb
  %i.ld = shl i64 %i.ky, 1
  %i.le = mul i64 %i.ld, %i.la
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.le
  %i.lg = add nsw i32 %spec.select.i73, -1
  %i.lh = zext i32 %i.lg to i64                   ; 2 uses
  %i.li = mul nuw nsw i64 %i.lh, 3
  %i.lj = shl nuw nsw i64 %i.lh, 2
  %i.lk = add nuw nsw i64 %i.lj, 4                ; 3 uses
  %i.ll = zext nneg i32 %spec.select.i73 to i64   ; 2 uses
  %min.iters.check433 = icmp ult i32 %spec.select.i73, 4
  %n.vec435 = and i64 %i.ll, 2147483644           ; 5 uses
  %i.lm = trunc nuw nsw i64 %n.vec435 to i32
  %i.ln = sub nsw i32 %spec.select.i73, %i.lm
  %i.lo = shl nuw nsw i64 %n.vec435, 2            ; 3 uses
  %i.lp = mul nuw nsw i64 %n.vec435, 3
  %cmp.n448 = icmp eq i64 %n.vec435, %i.ll
  br label %.preheader.i77

.preheader.i77:                                   ; preds = %._crit_edge.i94, %.preheader.preheader.i76
  %.027139.i78 = phi i32 [ %i.mt, %._crit_edge.i94 ], [ 0, %.preheader.preheader.i76 ]
  %.028138.i79 = phi ptr [ %.lcssa252, %._crit_edge.i94 ], [ %i.lf, %.preheader.preheader.i76 ] ; 6 uses
  %.029137.i80 = phi ptr [ %.lcssa253, %._crit_edge.i94 ], [ %i.lc, %.preheader.preheader.i76 ] ; 6 uses
  %.031136.i81 = phi ptr [ %.lcssa254, %._crit_edge.i94 ], [ %i.kw, %.preheader.preheader.i76 ] ; 6 uses
  %.035135.i82 = phi ptr [ %i.ms, %._crit_edge.i94 ], [ %1, %.preheader.preheader.i76 ] ; 8 uses
  br i1 %min.iters.check433, label %scalar.ph432.preheader, label %vector.memcheck416

vector.memcheck416:                               ; preds = %.preheader.i77
  %i.lq = getelementptr i8, ptr %.035135.i82, i64 %i.li
  %scevgep417 = getelementptr i8, ptr %i.lq, i64 3 ; 3 uses
  %scevgep418 = getelementptr i8, ptr %.028138.i79, i64 %i.lk
  %scevgep419 = getelementptr i8, ptr %.029137.i80, i64 %i.lk
  %scevgep420 = getelementptr i8, ptr %.031136.i81, i64 %i.lk
  %bound0421 = icmp ult ptr %.035135.i82, %scevgep418
  %bound1422 = icmp ult ptr %.028138.i79, %scevgep417
  %found.conflict423 = and i1 %bound0421, %bound1422
  %bound0424 = icmp ult ptr %.035135.i82, %scevgep419
  %bound1425 = icmp ult ptr %.029137.i80, %scevgep417
  %found.conflict426 = and i1 %bound0424, %bound1425
  %conflict.rdx427 = or i1 %found.conflict423, %found.conflict426
  %bound0428 = icmp ult ptr %.035135.i82, %scevgep420
  %bound1429 = icmp ult ptr %.031136.i81, %scevgep417
  %found.conflict430 = and i1 %bound0428, %bound1429
  %conflict.rdx431 = or i1 %conflict.rdx427, %found.conflict430
  br i1 %conflict.rdx431, label %scalar.ph432.preheader, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck416
  %i.lr = getelementptr i8, ptr %.028138.i79, i64 %i.lo ; 2 uses
  %i.ls = getelementptr i8, ptr %.029137.i80, i64 %i.lo ; 2 uses
  %i.lt = getelementptr i8, ptr %.031136.i81, i64 %i.lo ; 2 uses
  %i.lu = getelementptr i8, ptr %.035135.i82, i64 %i.lp ; 2 uses
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph434
  %index437 = phi i64 [ 0, %vector.ph434 ], [ %index.next446, %vector.body436 ] ; 3 uses
  %i.lv = shl i64 %index437, 2                    ; 3 uses
  %next.gep438 = getelementptr i8, ptr %.028138.i79, i64 %i.lv
  %next.gep439 = getelementptr i8, ptr %.029137.i80, i64 %i.lv
  %next.gep440 = getelementptr i8, ptr %.031136.i81, i64 %i.lv
  %i.lw = mul i64 %index437, 3
  %next.gep441 = getelementptr i8, ptr %.035135.i82, i64 %i.lw
  %wide.load442 = load <4 x float>, ptr %next.gep440, align 4, !tbaa !23, !alias.scope !393
  %wide.load443 = load <4 x float>, ptr %next.gep439, align 4, !tbaa !23, !alias.scope !394
  %20 = shufflevector <4 x float> %wide.load442, <4 x float> %wide.load443, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %21 = fptosi <8 x float> %20 to <8 x i32>
  %22 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %21, <8 x i32> zeroinitializer)
  %wide.load444 = load <4 x float>, ptr %next.gep438, align 4, !tbaa !23, !alias.scope !395
  %23 = fptosi <4 x float> %wide.load444 to <4 x i32>
  %24 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %23, <4 x i32> zeroinitializer)
  %25 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %24, <4 x i32> splat (i32 255))
  %26 = trunc nuw <4 x i32> %25 to <4 x i8>
  %i.lx = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %22, <8 x i32> splat (i32 255))
  %i.ly = trunc nuw <8 x i32> %i.lx to <8 x i8>
  %i.lz = shufflevector <4 x i8> %26, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec445 = shufflevector <8 x i8> %i.ly, <8 x i8> %i.lz, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i8> %interleaved.vec445, ptr %next.gep441, align 1, !tbaa !10, !alias.scope !396, !noalias !397
  %index.next446 = add nuw i64 %index437, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next446, %n.vec435
  br i1 %i.ma, label %middle.block447, label %vector.body436, !llvm.loop !340

middle.block447:                                  ; preds = %vector.body436
  br i1 %cmp.n448, label %._crit_edge.i94, label %scalar.ph432.preheader

scalar.ph432.preheader:                           ; preds = %vector.memcheck416, %.preheader.i77, %middle.block447
  %.0131.i83.ph = phi i32 [ %spec.select.i73, %vector.memcheck416 ], [ %spec.select.i73, %.preheader.i77 ], [ %i.ln, %middle.block447 ]
  %.1130.i84.ph = phi ptr [ %.028138.i79, %vector.memcheck416 ], [ %.028138.i79, %.preheader.i77 ], [ %i.lr, %middle.block447 ]
  %.130129.i85.ph = phi ptr [ %.029137.i80, %vector.memcheck416 ], [ %.029137.i80, %.preheader.i77 ], [ %i.ls, %middle.block447 ]
  %.132128.i86.ph = phi ptr [ %.031136.i81, %vector.memcheck416 ], [ %.031136.i81, %.preheader.i77 ], [ %i.lt, %middle.block447 ]
  %.136127.i87.ph = phi ptr [ %.035135.i82, %vector.memcheck416 ], [ %.035135.i82, %.preheader.i77 ], [ %i.lu, %middle.block447 ]
  br label %scalar.ph432

scalar.ph432:                                     ; preds = %scalar.ph432.preheader, %scalar.ph432
  %.0131.i83 = phi i32 [ %i.mq, %scalar.ph432 ], [ %.0131.i83.ph, %scalar.ph432.preheader ] ; 2 uses
  %.1130.i84 = phi ptr [ %i.mp, %scalar.ph432 ], [ %.1130.i84.ph, %scalar.ph432.preheader ] ; 2 uses
  %.130129.i85 = phi ptr [ %i.mo, %scalar.ph432 ], [ %.130129.i85.ph, %scalar.ph432.preheader ] ; 2 uses
  %.132128.i86 = phi ptr [ %i.mn, %scalar.ph432 ], [ %.132128.i86.ph, %scalar.ph432.preheader ] ; 2 uses
  %.136127.i87 = phi ptr [ %i.mm, %scalar.ph432 ], [ %.136127.i87.ph, %scalar.ph432.preheader ] ; 4 uses
  %i.mb = load float, ptr %.132128.i86, align 4, !tbaa !23
  %i.mc = fptosi float %i.mb to i32
  %.sroa.speculated83.i88 = tail call i32 @llvm.smax.i32(i32 %i.mc, i32 0)
  %.sroa.speculated79.i89 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated83.i88, i32 255)
  %i.md = trunc nuw i32 %.sroa.speculated79.i89 to i8
  store i8 %i.md, ptr %.136127.i87, align 1, !tbaa !10
  %i.me = load float, ptr %.130129.i85, align 4, !tbaa !23
  %i.mf = fptosi float %i.me to i32
  %.sroa.speculated72.i90 = tail call i32 @llvm.smax.i32(i32 %i.mf, i32 0)
  %.sroa.speculated68.i91 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated72.i90, i32 255)
  %i.mg = trunc nuw i32 %.sroa.speculated68.i91 to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %.136127.i87, i64 1
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !10
  %i.mi = load float, ptr %.1130.i84, align 4, !tbaa !23
  %i.mj = fptosi float %i.mi to i32
  %.sroa.speculated61.i92 = tail call i32 @llvm.smax.i32(i32 %i.mj, i32 0)
  %.sroa.speculated.i93 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated61.i92, i32 255)
  %i.mk = trunc nuw i32 %.sroa.speculated.i93 to i8
  %i.ml = getelementptr inbounds nuw i8, ptr %.136127.i87, i64 2
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !10
  %i.mm = getelementptr inbounds nuw i8, ptr %.136127.i87, i64 3 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.132128.i86, i64 4 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.130129.i85, i64 4 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.1130.i84, i64 4 ; 2 uses
  %i.mq = add nsw i32 %.0131.i83, -1
  %i.mr = icmp sgt i32 %.0131.i83, 1
  br i1 %i.mr, label %scalar.ph432, label %._crit_edge.i94, !llvm.loop !341

._crit_edge.i94:                                  ; preds = %scalar.ph432, %middle.block447
  %.lcssa255 = phi ptr [ %i.lu, %middle.block447 ], [ %i.mm, %scalar.ph432 ]
  %.lcssa254 = phi ptr [ %i.lt, %middle.block447 ], [ %i.mn, %scalar.ph432 ]
  %.lcssa253 = phi ptr [ %i.ls, %middle.block447 ], [ %i.mo, %scalar.ph432 ]
  %.lcssa252 = phi ptr [ %i.lr, %middle.block447 ], [ %i.mp, %scalar.ph432 ]
  %i.ms = getelementptr inbounds i8, ptr %.lcssa255, i64 %i.kv
  %i.mt = add nuw nsw i32 %.027139.i78, 1         ; 2 uses
  %exitcond.not.i95 = icmp eq i32 %i.mt, %spec.select37.i74
  br i1 %exitcond.not.i95, label %_ZN4ncnnL6to_rgbERKNS_3MatEPhi.exit, label %.preheader.i77, !llvm.loop !342

_ZN4ncnnL6to_rgbERKNS_3MatEPhi.exit:              ; preds = %._crit_edge.i94, %bb.i
  %i.mu = icmp eq i32 %2, 3
  br i1 %i.mu, label %bb.k, label %_ZN4ncnnL7to_grayERKNS_3MatEPhi.exit

bb.k:                                             ; preds = %_ZN4ncnnL6to_rgbERKNS_3MatEPhi.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !30 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !31 ; 2 uses
  %i.mz = icmp eq i32 %3, %i.mw                   ; 2 uses
  %i.na = select i1 %i.mz, i32 %i.my, i32 1
  %spec.select.i96 = mul i32 %i.na, %i.mw         ; 8 uses
  %spec.select25.i = select i1 %i.mz, i32 1, i32 %i.my ; 2 uses
  %i.nb = icmp sgt i32 %spec.select25.i, 0
  br i1 %i.nb, label %.preheader.lr.ph.i97, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.lr.ph.i97:                             ; preds = %bb.k
  %i.nc = sub nsw i32 %3, %i.mw
  %i.nd = icmp sgt i32 %spec.select.i96, 0
  %i.ne = sext i32 %i.nc to i64
  br i1 %i.nd, label %.preheader.preheader.i98, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.preheader.i98:                         ; preds = %.preheader.lr.ph.i97
  %i.nf = load ptr, ptr %0, align 8, !tbaa !20
  %i.ng = add nsw i32 %spec.select.i96, -1
  %i.nh = zext i32 %i.ng to i64
  %i.ni = zext nneg i32 %spec.select.i96 to i64
  %i.nj = shl nuw nsw i64 %i.nh, 2
  %i.nk = zext nneg i32 %spec.select.i96 to i64   ; 2 uses
  %min.iters.check461 = icmp ult i32 %spec.select.i96, 8
  %n.vec463 = and i64 %i.nk, 2147483640           ; 5 uses
  %i.nl = trunc nuw nsw i64 %n.vec463 to i32
  %i.nm = sub nsw i32 %spec.select.i96, %i.nl
  %i.nn = shl nuw nsw i64 %n.vec463, 2
  %cmp.n472 = icmp eq i64 %n.vec463, %i.nk
  br label %.preheader.i99

.preheader.i99:                                   ; preds = %._crit_edge.i101, %.preheader.preheader.i98
  %.01941.i = phi i32 [ %i.ol, %._crit_edge.i101 ], [ 0, %.preheader.preheader.i98 ]
  %.02040.i = phi ptr [ %.lcssa250, %._crit_edge.i101 ], [ %i.nf, %.preheader.preheader.i98 ] ; 6 uses
  %.02339.i = phi ptr [ %i.ok, %._crit_edge.i101 ], [ %1, %.preheader.preheader.i98 ] ; 6 uses
  br i1 %min.iters.check461, label %scalar.ph460.preheader, label %vector.memcheck454

vector.memcheck454:                               ; preds = %.preheader.i99
  %scevgep455 = getelementptr i8, ptr %.02339.i, i64 %i.ni
  %i.no = getelementptr i8, ptr %.02040.i, i64 %i.nj
  %scevgep456 = getelementptr i8, ptr %i.no, i64 4
  %bound0457 = icmp ult ptr %.02339.i, %scevgep456
  %bound1458 = icmp ult ptr %.02040.i, %scevgep455
  %found.conflict459 = and i1 %bound0457, %bound1458
  br i1 %found.conflict459, label %scalar.ph460.preheader, label %vector.ph462

vector.ph462:                                     ; preds = %vector.memcheck454
  %i.np = getelementptr i8, ptr %.02040.i, i64 %i.nn ; 2 uses
  %i.nq = getelementptr i8, ptr %.02339.i, i64 %n.vec463 ; 2 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 3 uses
  %i.nr = shl i64 %index465, 2
  %next.gep466 = getelementptr i8, ptr %.02040.i, i64 %i.nr ; 2 uses
  %next.gep467 = getelementptr i8, ptr %.02339.i, i64 %index465 ; 2 uses
  %i.ns = getelementptr i8, ptr %next.gep466, i64 16
  %wide.load468 = load <4 x float>, ptr %next.gep466, align 4, !tbaa !23, !alias.scope !398
  %wide.load469 = load <4 x float>, ptr %i.ns, align 4, !tbaa !23, !alias.scope !398
  %i.nt = fptosi <4 x float> %wide.load468 to <4 x i32>
  %i.nu = fptosi <4 x float> %wide.load469 to <4 x i32>
  %i.nv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nt, <4 x i32> zeroinitializer)
  %i.nw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nu, <4 x i32> zeroinitializer)
  %i.nx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nv, <4 x i32> splat (i32 255))
  %i.ny = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nw, <4 x i32> splat (i32 255))
  %i.nz = trunc nuw <4 x i32> %i.nx to <4 x i8>
  %i.oa = trunc nuw <4 x i32> %i.ny to <4 x i8>
  %i.ob = getelementptr i8, ptr %next.gep467, i64 4
  store <4 x i8> %i.nz, ptr %next.gep467, align 1, !tbaa !10, !alias.scope !399, !noalias !398
  store <4 x i8> %i.oa, ptr %i.ob, align 1, !tbaa !10, !alias.scope !399, !noalias !398
  %index.next470 = add nuw i64 %index465, 8       ; 2 uses
  %i.oc = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.oc, label %middle.block471, label %vector.body464, !llvm.loop !346

middle.block471:                                  ; preds = %vector.body464
  br i1 %cmp.n472, label %._crit_edge.i101, label %scalar.ph460.preheader

scalar.ph460.preheader:                           ; preds = %vector.memcheck454, %.preheader.i99, %middle.block471
  %.037.i.ph = phi i32 [ %spec.select.i96, %vector.memcheck454 ], [ %spec.select.i96, %.preheader.i99 ], [ %i.nm, %middle.block471 ]
  %.136.i.ph = phi ptr [ %.02040.i, %vector.memcheck454 ], [ %.02040.i, %.preheader.i99 ], [ %i.np, %middle.block471 ]
  %.12435.i.ph = phi ptr [ %.02339.i, %vector.memcheck454 ], [ %.02339.i, %.preheader.i99 ], [ %i.nq, %middle.block471 ]
  br label %scalar.ph460

scalar.ph460:                                     ; preds = %scalar.ph460.preheader, %scalar.ph460
  %.037.i = phi i32 [ %i.oi, %scalar.ph460 ], [ %.037.i.ph, %scalar.ph460.preheader ] ; 2 uses
  %.136.i = phi ptr [ %i.oh, %scalar.ph460 ], [ %.136.i.ph, %scalar.ph460.preheader ] ; 2 uses
  %.12435.i = phi ptr [ %i.og, %scalar.ph460 ], [ %.12435.i.ph, %scalar.ph460.preheader ] ; 2 uses
  %i.od = load float, ptr %.136.i, align 4, !tbaa !23
  %i.oe = fptosi float %i.od to i32
  %.sroa.speculated28.i = tail call i32 @llvm.smax.i32(i32 %i.oe, i32 0)
  %.sroa.speculated.i100 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated28.i, i32 255)
  %i.of = trunc nuw i32 %.sroa.speculated.i100 to i8
  store i8 %i.of, ptr %.12435.i, align 1, !tbaa !10
  %i.og = getelementptr inbounds nuw i8, ptr %.12435.i, i64 1 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.136.i, i64 4 ; 2 uses
  %i.oi = add nsw i32 %.037.i, -1
  %i.oj = icmp sgt i32 %.037.i, 1
  br i1 %i.oj, label %scalar.ph460, label %._crit_edge.i101, !llvm.loop !347

._crit_edge.i101:                                 ; preds = %scalar.ph460, %middle.block471
  %.lcssa251 = phi ptr [ %i.nq, %middle.block471 ], [ %i.og, %scalar.ph460 ]
  %.lcssa250 = phi ptr [ %i.np, %middle.block471 ], [ %i.oh, %scalar.ph460 ]
  %i.ok = getelementptr inbounds i8, ptr %.lcssa251, i64 %i.ne
  %i.ol = add nuw nsw i32 %.01941.i, 1            ; 2 uses
  %exitcond.not.i102 = icmp eq i32 %i.ol, %spec.select25.i
  br i1 %exitcond.not.i102, label %_ZN4ncnnL7to_grayERKNS_3MatEPhi.exit, label %.preheader.i99, !llvm.loop !348

_ZN4ncnnL7to_grayERKNS_3MatEPhi.exit:             ; preds = %._crit_edge.i101, %bb.j, %.preheader.lr.ph.i75, %_ZN4ncnnL6to_rgbERKNS_3MatEPhi.exit
  %i.om = and i32 %2, 65534
  %or.cond3 = icmp eq i32 %i.om, 4
  br i1 %or.cond3, label %bb.l, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

bb.l:                                             ; preds = %_ZN4ncnnL7to_grayERKNS_3MatEPhi.exit
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !30 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !31 ; 2 uses
  %i.or = shl nsw i32 %i.oo, 2                    ; 2 uses
  %i.os = icmp eq i32 %3, %i.or                   ; 2 uses
  %i.ot = select i1 %i.os, i32 %i.oq, i32 1
  %spec.select.i103 = mul i32 %i.ot, %i.oo        ; 7 uses
  %spec.select43.i104 = select i1 %i.os, i32 1, i32 %i.oq ; 2 uses
  %i.ou = icmp sgt i32 %spec.select43.i104, 0
  br i1 %i.ou, label %.preheader.lr.ph.i105, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.lr.ph.i105:                            ; preds = %bb.l
  %i.ov = sub nsw i32 %3, %i.or
  %i.ow = icmp sgt i32 %spec.select.i103, 0
  %i.ox = sext i32 %i.ov to i64
  br i1 %i.ow, label %.preheader.preheader.i106, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit

.preheader.preheader.i106:                        ; preds = %.preheader.lr.ph.i105
  %i.oy = load ptr, ptr %0, align 8, !tbaa !20, !noalias !400 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !21, !noalias !401
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !19, !noalias !401
  %i.pd = mul i64 %i.pc, %i.pa                    ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pd
  %i.pf = shl i64 %i.pd, 1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pf
  %i.ph = mul i64 %i.pd, 3
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ph
  %i.pj = add nsw i32 %spec.select.i103, -1
  %i.pk = zext i32 %i.pj to i64
  %i.pl = shl nuw nsw i64 %i.pk, 2
  %i.pm = add nuw nsw i64 %i.pl, 4                ; 5 uses
  %i.pn = zext nneg i32 %spec.select.i103 to i64  ; 2 uses
  %min.iters.check498 = icmp ult i32 %spec.select.i103, 4
  %n.vec500 = and i64 %i.pn, 2147483644           ; 4 uses
  %i.po = trunc nuw nsw i64 %n.vec500 to i32
  %i.pp = sub nsw i32 %spec.select.i103, %i.po
  %i.pq = shl nuw nsw i64 %n.vec500, 2            ; 5 uses
  %cmp.n515 = icmp eq i64 %n.vec500, %i.pn
  br label %.preheader.i107

.preheader.i107:                                  ; preds = %._crit_edge.i128, %.preheader.preheader.i106
  %.031185.i108 = phi i32 [ %i.rd, %._crit_edge.i128 ], [ 0, %.preheader.preheader.i106 ]
  %.032184.i109 = phi ptr [ %.lcssa, %._crit_edge.i128 ], [ %i.pi, %.preheader.preheader.i106 ] ; 6 uses
  %.033183.i110 = phi ptr [ %.lcssa246, %._crit_edge.i128 ], [ %i.pg, %.preheader.preheader.i106 ] ; 6 uses
  %.035182.i111 = phi ptr [ %.lcssa247, %._crit_edge.i128 ], [ %i.pe, %.preheader.preheader.i106 ] ; 6 uses
  %.037181.i112 = phi ptr [ %.lcssa248, %._crit_edge.i128 ], [ %i.oy, %.preheader.preheader.i106 ] ; 6 uses
  %.041180.i113 = phi ptr [ %i.rc, %._crit_edge.i128 ], [ %1, %.preheader.preheader.i106 ] ; 9 uses
  br i1 %min.iters.check498, label %scalar.ph497.preheader, label %vector.memcheck476

vector.memcheck476:                               ; preds = %.preheader.i107
  %scevgep477 = getelementptr i8, ptr %.041180.i113, i64 %i.pm ; 4 uses
  %scevgep478 = getelementptr i8, ptr %.032184.i109, i64 %i.pm
  %scevgep479 = getelementptr i8, ptr %.033183.i110, i64 %i.pm
  %scevgep480 = getelementptr i8, ptr %.035182.i111, i64 %i.pm
  %scevgep481 = getelementptr i8, ptr %.037181.i112, i64 %i.pm
  %bound0482 = icmp ult ptr %.041180.i113, %scevgep478
  %bound1483 = icmp ult ptr %.032184.i109, %scevgep477
  %found.conflict484 = and i1 %bound0482, %bound1483
  %bound0485 = icmp ult ptr %.041180.i113, %scevgep479
  %bound1486 = icmp ult ptr %.033183.i110, %scevgep477
  %found.conflict487 = and i1 %bound0485, %bound1486
  %conflict.rdx488 = or i1 %found.conflict484, %found.conflict487
  %bound0489 = icmp ult ptr %.041180.i113, %scevgep480
  %bound1490 = icmp ult ptr %.035182.i111, %scevgep477
  %found.conflict491 = and i1 %bound0489, %bound1490
  %conflict.rdx492 = or i1 %conflict.rdx488, %found.conflict491
  %bound0493 = icmp ult ptr %.041180.i113, %scevgep481
  %bound1494 = icmp ult ptr %.037181.i112, %scevgep477
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx496 = or i1 %conflict.rdx492, %found.conflict495
  br i1 %conflict.rdx496, label %scalar.ph497.preheader, label %vector.ph499

vector.ph499:                                     ; preds = %vector.memcheck476
  %i.pr = getelementptr i8, ptr %.032184.i109, i64 %i.pq ; 2 uses
  %i.ps = getelementptr i8, ptr %.033183.i110, i64 %i.pq ; 2 uses
  %i.pt = getelementptr i8, ptr %.035182.i111, i64 %i.pq ; 2 uses
  %i.pu = getelementptr i8, ptr %.037181.i112, i64 %i.pq ; 2 uses
  %i.pv = getelementptr i8, ptr %.041180.i113, i64 %i.pq ; 2 uses
  br label %vector.body501

vector.body501:                                   ; preds = %vector.body501, %vector.ph499
  %index502 = phi i64 [ 0, %vector.ph499 ], [ %index.next513, %vector.body501 ] ; 2 uses
  %i.pw = shl i64 %index502, 2                    ; 5 uses
  %next.gep503 = getelementptr i8, ptr %.032184.i109, i64 %i.pw
  %next.gep504 = getelementptr i8, ptr %.033183.i110, i64 %i.pw
  %next.gep505 = getelementptr i8, ptr %.035182.i111, i64 %i.pw
  %next.gep506 = getelementptr i8, ptr %.037181.i112, i64 %i.pw
  %next.gep507 = getelementptr i8, ptr %.041180.i113, i64 %i.pw
  %wide.load510.a = load <4 x float>, ptr %next.gep506, align 4, !tbaa !23, !alias.scope !402
  %wide.load511.a = load <4 x float>, ptr %next.gep505, align 4, !tbaa !23, !alias.scope !403
  %i.px = shufflevector <4 x float> %wide.load510.a, <4 x float> %wide.load511.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.py = fptosi <8 x float> %i.px to <8 x i32>
  %i.pz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.py, <8 x i32> zeroinitializer)
  %wide.load510 = load <4 x float>, ptr %next.gep504, align 4, !tbaa !23, !alias.scope !404
  %wide.load511 = load <4 x float>, ptr %next.gep503, align 4, !tbaa !23, !alias.scope !405
  %i.qa = shufflevector <4 x float> %wide.load510, <4 x float> %wide.load511, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qb = fptosi <8 x float> %i.qa to <8 x i32>
  %27 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qb, <8 x i32> zeroinitializer)
  %i.qc = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.pz, <8 x i32> splat (i32 255))
  %28 = trunc nuw <8 x i32> %i.qc to <8 x i8>
  %i.qd = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %27, <8 x i32> splat (i32 255))
  %i.qe = trunc nuw <8 x i32> %i.qd to <8 x i8>
  %interleaved.vec512 = shufflevector <8 x i8> %28, <8 x i8> %i.qe, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec512, ptr %next.gep507, align 1, !tbaa !10, !alias.scope !406, !noalias !407
  %index.next513 = add nuw i64 %index502, 4       ; 2 uses
  %i.qf = icmp eq i64 %index.next513, %n.vec500
  br i1 %i.qf, label %middle.block514, label %vector.body501, !llvm.loop !359

middle.block514:                                  ; preds = %vector.body501
  br i1 %cmp.n515, label %._crit_edge.i128, label %scalar.ph497.preheader

scalar.ph497.preheader:                           ; preds = %vector.memcheck476, %.preheader.i107, %middle.block514
  %.0175.i114.ph = phi i32 [ %spec.select.i103, %vector.memcheck476 ], [ %spec.select.i103, %.preheader.i107 ], [ %i.pp, %middle.block514 ]
  %.1174.i115.ph = phi ptr [ %.032184.i109, %vector.memcheck476 ], [ %.032184.i109, %.preheader.i107 ], [ %i.pr, %middle.block514 ]
  %.134173.i116.ph = phi ptr [ %.033183.i110, %vector.memcheck476 ], [ %.033183.i110, %.preheader.i107 ], [ %i.ps, %middle.block514 ]
  %.136172.i117.ph = phi ptr [ %.035182.i111, %vector.memcheck476 ], [ %.035182.i111, %.preheader.i107 ], [ %i.pt, %middle.block514 ]
  %.138171.i118.ph = phi ptr [ %.037181.i112, %vector.memcheck476 ], [ %.037181.i112, %.preheader.i107 ], [ %i.pu, %middle.block514 ]
  %.142170.i119.ph = phi ptr [ %.041180.i113, %vector.memcheck476 ], [ %.041180.i113, %.preheader.i107 ], [ %i.pv, %middle.block514 ]
  br label %scalar.ph497

scalar.ph497:                                     ; preds = %scalar.ph497.preheader, %scalar.ph497
  %.0175.i114 = phi i32 [ %i.ra, %scalar.ph497 ], [ %.0175.i114.ph, %scalar.ph497.preheader ] ; 2 uses
  %.1174.i115 = phi ptr [ %i.qz, %scalar.ph497 ], [ %.1174.i115.ph, %scalar.ph497.preheader ] ; 2 uses
  %.134173.i116 = phi ptr [ %i.qy, %scalar.ph497 ], [ %.134173.i116.ph, %scalar.ph497.preheader ] ; 2 uses
  %.136172.i117 = phi ptr [ %i.qx, %scalar.ph497 ], [ %.136172.i117.ph, %scalar.ph497.preheader ] ; 2 uses
  %.138171.i118 = phi ptr [ %i.qw, %scalar.ph497 ], [ %.138171.i118.ph, %scalar.ph497.preheader ] ; 2 uses
  %.142170.i119 = phi ptr [ %i.qv, %scalar.ph497 ], [ %.142170.i119.ph, %scalar.ph497.preheader ] ; 5 uses
  %i.qg = load float, ptr %.138171.i118, align 4, !tbaa !23
  %i.qh = fptosi float %i.qg to i32
  %.sroa.speculated110.i120 = tail call i32 @llvm.smax.i32(i32 %i.qh, i32 0)
  %.sroa.speculated106.i121 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated110.i120, i32 255)
  %i.qi = trunc nuw i32 %.sroa.speculated106.i121 to i8
  store i8 %i.qi, ptr %.142170.i119, align 1, !tbaa !10
  %i.qj = load float, ptr %.136172.i117, align 4, !tbaa !23
  %i.qk = fptosi float %i.qj to i32
  %.sroa.speculated99.i122 = tail call i32 @llvm.smax.i32(i32 %i.qk, i32 0)
  %.sroa.speculated95.i123 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated99.i122, i32 255)
  %i.ql = trunc nuw i32 %.sroa.speculated95.i123 to i8
  %i.qm = getelementptr inbounds nuw i8, ptr %.142170.i119, i64 1
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !10
  %i.qn = load float, ptr %.134173.i116, align 4, !tbaa !23
  %i.qo = fptosi float %i.qn to i32
  %.sroa.speculated88.i124 = tail call i32 @llvm.smax.i32(i32 %i.qo, i32 0)
  %.sroa.speculated84.i125 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated88.i124, i32 255)
  %i.qp = trunc nuw i32 %.sroa.speculated84.i125 to i8
  %i.qq = getelementptr inbounds nuw i8, ptr %.142170.i119, i64 2
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !10
  %i.qr = load float, ptr %.1174.i115, align 4, !tbaa !23
  %i.qs = fptosi float %i.qr to i32
  %.sroa.speculated77.i126 = tail call i32 @llvm.smax.i32(i32 %i.qs, i32 0)
  %.sroa.speculated.i127 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated77.i126, i32 255)
  %i.qt = trunc nuw i32 %.sroa.speculated.i127 to i8
  %i.qu = getelementptr inbounds nuw i8, ptr %.142170.i119, i64 3
  store i8 %i.qt, ptr %i.qu, align 1, !tbaa !10
  %i.qv = getelementptr inbounds nuw i8, ptr %.142170.i119, i64 4 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.138171.i118, i64 4 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.136172.i117, i64 4 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.134173.i116, i64 4 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.1174.i115, i64 4 ; 2 uses
  %i.ra = add nsw i32 %.0175.i114, -1
  %i.rb = icmp sgt i32 %.0175.i114, 1
  br i1 %i.rb, label %scalar.ph497, label %._crit_edge.i128, !llvm.loop !360

._crit_edge.i128:                                 ; preds = %scalar.ph497, %middle.block514
  %.lcssa249 = phi ptr [ %i.pv, %middle.block514 ], [ %i.qv, %scalar.ph497 ]
  %.lcssa248 = phi ptr [ %i.pu, %middle.block514 ], [ %i.qw, %scalar.ph497 ]
  %.lcssa247 = phi ptr [ %i.pt, %middle.block514 ], [ %i.qx, %scalar.ph497 ]
  %.lcssa246 = phi ptr [ %i.ps, %middle.block514 ], [ %i.qy, %scalar.ph497 ]
  %.lcssa = phi ptr [ %i.pr, %middle.block514 ], [ %i.qz, %scalar.ph497 ]
  %i.rc = getelementptr inbounds i8, ptr %.lcssa249, i64 %i.ox
  %i.rd = add nuw nsw i32 %.031185.i108, 1        ; 2 uses
  %exitcond.not.i129 = icmp eq i32 %i.rd, %spec.select43.i104
  br i1 %exitcond.not.i129, label %_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit, label %.preheader.i107, !llvm.loop !361

_ZN4ncnnL10to_bgr2rgbERKNS_3MatEPhi.exit:         ; preds = %._crit_edge.i70, %._crit_edge.i62, %._crit_edge.i55, %._crit_edge.i32, %._crit_edge.i, %._crit_edge.i128, %bb.k, %.preheader.lr.ph.i97, %.preheader.lr.ph.i105, %bb.l, %.preheader.lr.ph.i65, %bb.g, %.preheader.lr.ph.i58, %bb.f, %.preheader.lr.ph.i36, %bb.e, %.preheader.lr.ph.i28, %bb.d, %.preheader.lr.ph.i, %bb.c, %_ZN4ncnnL7to_grayERKNS_3MatEPhi.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn3Mat16to_pixels_resizeEPhiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp ult i32 %2, 65536
  %i.a = ashr i32 %2, 16
  %i.b = select i1 %.not, i32 %2, i32 %i.a        ; 3 uses
  %i.c = add nsw i32 %i.b, -1
  %or.cond = icmp ult i32 %i.c, 2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = mul nsw i32 %3, 3
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.b, 3
  br i1 %i.e, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.b, -2
  %or.cond3 = icmp eq i32 %i.f, 4
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = shl nsw i32 %3, 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.e
  %.sink = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.e ], [ %3, %bb.c ]
  tail call void @_ZNK4ncnn3Mat16to_pixels_resizeEPhiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.sink)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4ncnn3Mat16to_pixels_resizeEPhiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !30   ; 4 uses
  %i.c = icmp eq i32 %i.b, %3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq i32 %i.e, %4
  %or.cond37 = select i1 %i.c, i1 %i.f, i1 false
  %.not.i74 = icmp ult i32 %2, 65536
  %i.g = ashr i32 %2, 16
  %i.h = select i1 %.not.i74, i32 %2, i32 %i.g    ; 5 uses
  %i.i = add nsw i32 %i.h, -1
  %or.cond.i = icmp ult i32 %i.i, 2               ; 2 uses
  br i1 %or.cond37, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = mul nsw i32 %3, 3
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.h, 3
  br i1 %i.k, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %i.h, -2
  %or.cond3.i = icmp eq i32 %i.l, 4
  br i1 %or.cond3.i, label %bb.f, label %_ZNK4ncnn3Mat9to_pixelsEPhi.exit

bb.f:                                             ; preds = %bb.e
  %i.m = shl nsw i32 %3, 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.f, %bb.c
  %.sink.i = phi i32 [ %i.j, %bb.c ], [ %i.m, %bb.f ], [ %3, %bb.d ]
  tail call void @_ZNK4ncnn3Mat9to_pixelsEPhii(ptr noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %.sink.i)
  br label %_ZNK4ncnn3Mat9to_pixelsEPhi.exit

bb.g:                                             ; preds = %bb.a
  br i1 %or.cond.i, label %_ZNK4ncnn3Mat9to_pixelsEPhi.exit80, label %bb.v

_ZNK4ncnn3Mat9to_pixelsEPhi.exit80:               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.p, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.b, i32 noundef %i.e, i64 noundef 3, i32 noundef 3, ptr noundef null)
  %i.q = load ptr, ptr %6, align 8, !tbaa !20
  %i.r = load i32, ptr %i.a, align 4, !tbaa !30
  %i.s = mul nsw i32 %i.r, 3
  call void @_ZNK4ncnn3Mat9to_pixelsEPhii(ptr noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef %i.q, i32 noundef %2, i32 noundef %i.s)
  %.pre94 = load ptr, ptr %6, align 8, !tbaa !20
  %i.t = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.u = load i32, ptr %i.d, align 8, !tbaa !31
  %i.v = mul nsw i32 %i.t, 3
  invoke void @_ZN4ncnn18resize_bilinear_c3EPKhiiiPhiii(ptr noundef %.pre94, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, ptr noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNK4ncnn3Mat9to_pixelsEPhi.exit80
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit42, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit42

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %.not3.i = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %6, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
end_hunk_0
