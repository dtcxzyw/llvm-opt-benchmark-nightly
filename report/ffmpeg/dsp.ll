Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 137
loop-unroll.NumUnrolled: 304
begin_hunk_0_@pred_mip_12:bb.a
  %i.cp = trunc nuw i64 %n.vec406 to i32
  %i.cq = or disjoint i32 %i.cp, 1
  %cmp.n417 = icmp eq i64 %n.vec406, %i.cn
  br label %.lr.ph133.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us.preheader, %._crit_edge.us138
  %indvars.iv248 = phi i64 [ 0, %.lr.ph133.us.preheader ], [ %indvars.iv.next249, %._crit_edge.us138 ] ; 2 uses
  %.028.i135.us = phi ptr [ %2, %.lr.ph133.us.preheader ], [ %scevgep246, %._crit_edge.us138 ] ; 5 uses
  %i.cr = load i16, ptr %.028.i135.us, align 2, !tbaa !34
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph133.us
  %i.ct = getelementptr i8, ptr %.028.i135.us, i64 %i.co
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cs, i64 0
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next414, %vector.body407 ] ; 2 uses
  %vec.phi409 = phi <4 x i32> [ %i.cu, %vector.ph405 ], [ %i.da, %vector.body407 ]
  %vec.phi410 = phi <4 x i32> [ zeroinitializer, %vector.ph405 ], [ %i.db, %vector.body407 ]
  %i.cv = shl i64 %index408, 1
  %next.gep411 = getelementptr i8, ptr %.028.i135.us, i64 %i.cv ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep411, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep411, i64 10
  %wide.load412 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !34
  %wide.load413 = load <4 x i16>, ptr %i.cx, align 2, !tbaa !34
  %i.cy = zext <4 x i16> %wide.load412 to <4 x i32>
  %i.cz = zext <4 x i16> %wide.load413 to <4 x i32>
  %i.da = add <4 x i32> %vec.phi409, %i.cy        ; 2 uses
  %i.db = add <4 x i32> %vec.phi410, %i.cz        ; 2 uses
  %index.next414 = add nuw i64 %index408, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next414, %n.vec406
  br i1 %i.dc, label %middle.block415, label %vector.body407, !llvm.loop !736

middle.block415:                                  ; preds = %vector.body407
  %bin.rdx416 = add <4 x i32> %i.db, %i.da
  %i.dd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx416) ; 2 uses
  br i1 %cmp.n417, label %._crit_edge.us138, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %.lr.ph133.us, %middle.block415
  %.028.i135.us.pn.ph = phi ptr [ %.028.i135.us, %.lr.ph133.us ], [ %i.ct, %middle.block415 ]
  %.0.i131.us.ph = phi i32 [ 1, %.lr.ph133.us ], [ %i.cq, %middle.block415 ]
  %.025.i130.us.ph = phi i32 [ %i.cs, %.lr.ph133.us ], [ %i.dd, %middle.block415 ]
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %.028.i135.us.pn = phi ptr [ %.1.i132.us, %scalar.ph403 ], [ %.028.i135.us.pn.ph, %scalar.ph403.preheader ]
  %.0.i131.us = phi i32 [ %i.dh, %scalar.ph403 ], [ %.0.i131.us.ph, %scalar.ph403.preheader ]
  %.025.i130.us = phi i32 [ %i.dg, %scalar.ph403 ], [ %.025.i130.us.ph, %scalar.ph403.preheader ]
  %.1.i132.us = getelementptr inbounds nuw i8, ptr %.028.i135.us.pn, i64 2 ; 2 uses
  %i.de = load i16, ptr %.1.i132.us, align 2, !tbaa !34
  %i.df = zext i16 %i.de to i32
  %i.dg = add nuw nsw i32 %.025.i130.us, %i.df    ; 2 uses
  %i.dh = add nuw nsw i32 %.0.i131.us, 1          ; 2 uses
  %exitcond247.not = icmp eq i32 %i.dh, %i.bw
  br i1 %exitcond247.not, label %._crit_edge.us138, label %scalar.ph403, !llvm.loop !737

._crit_edge.us138:                                ; preds = %scalar.ph403, %middle.block415
  %.lcssa352 = phi i32 [ %i.dd, %middle.block415 ], [ %i.dg, %scalar.ph403 ]
  %i.di = getelementptr i8, ptr %.028.i135.us, i64 %i.cl
  %scevgep246 = getelementptr i8, ptr %i.di, i64 4
  %i.dj = add nuw nsw i32 %.lcssa352, %i.ci
  %i.dk = ashr i32 %i.dj, %i.ce
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv248
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !107
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %mip_downsampling_12.exit, label %.lr.ph133.us, !llvm.loop !732

.preheader114:                                    ; preds = %mip_downsampling_12.exit95
  %i.dm = icmp sgt i32 %4, 0
  br i1 %i.dm, label %.lr.ph141.preheader, label %mip_downsampling_12.exit

.lr.ph141.preheader:                              ; preds = %.preheader114
  %wide.trip.count257 = zext nneg i32 %4 to i64   ; 3 uses
  %min.iters.check422 = icmp ult i32 %4, 8
  br i1 %min.iters.check422, label %.lr.ph141.preheader503, label %vector.ph423

vector.ph423:                                     ; preds = %.lr.ph141.preheader
  %n.vec424 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next429, %vector.body425 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index426 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %wide.load427 = load <4 x i16>, ptr %i.dn, align 2, !tbaa !34
  %wide.load428 = load <4 x i16>, ptr %i.do, align 2, !tbaa !34
  %i.dp = zext <4 x i16> %wide.load427 to <4 x i32>
  %i.dq = zext <4 x i16> %wide.load428 to <4 x i32>
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %index426 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !107
  store <4 x i32> %i.dq, ptr %i.ds, align 4, !tbaa !107
  %index.next429 = add nuw i64 %index426, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next429, %n.vec424
  br i1 %i.dt, label %middle.block430, label %vector.body425, !llvm.loop !738

middle.block430:                                  ; preds = %vector.body425
  %cmp.n431 = icmp eq i64 %n.vec424, %wide.trip.count257
  br i1 %cmp.n431, label %mip_downsampling_12.exit, label %.lr.ph141.preheader503

.lr.ph141.preheader503:                           ; preds = %.lr.ph141.preheader, %middle.block430
  %indvars.iv254.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec424, %middle.block430 ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader503, %.lr.ph141
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph141 ], [ %indvars.iv254.ph, %.lr.ph141.preheader503 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv254
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !34
  %i.dw = zext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv254
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !107
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %mip_downsampling_12.exit, label %.lr.ph141, !llvm.loop !739

.lr.ph137.split:                                  ; preds = %.lr.ph137.split.preheader, %.lr.ph137.split
  %indvars.iv240 = phi i64 [ 0, %.lr.ph137.split.preheader ], [ %indvars.iv.next241, %.lr.ph137.split ] ; 2 uses
  %.028.i135 = phi ptr [ %2, %.lr.ph137.split.preheader ], [ %.1.i129, %.lr.ph137.split ] ; 2 uses
  %i.dy = load i16, ptr %.028.i135, align 2, !tbaa !34
  %i.dz = zext i16 %i.dy to i32
  %.1.i129 = getelementptr inbounds nuw i8, ptr %.028.i135, i64 2
  %i.ea = add nuw nsw i32 %i.ci, %i.dz
  %i.eb = ashr i32 %i.ea, %i.ce
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv240
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !107
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count244
  br i1 %exitcond245.not, label %mip_downsampling_12.exit, label %.lr.ph137.split, !llvm.loop !740

mip_downsampling_12.exit:                         ; preds = %.lr.ph137.split, %._crit_edge.us138, %.lr.ph141, %middle.block430, %.preheader114
  %i.ed = load i32, ptr %i.a, align 16, !tbaa !107 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ef = load i32, ptr %i.ee, align 4
  %.pn = select i1 %i.i, i32 %i.ef, i32 2048
  %.073 = sub nsw i32 %.pn, %i.ed                 ; 4 uses
  store i32 %.073, ptr %i.a, align 16, !tbaa !107
  %i.eg = icmp sgt i32 %i.j, 1
  br i1 %i.eg, label %.lr.ph144.preheader, label %.preheader113.lr.ph

.lr.ph144.preheader:                              ; preds = %mip_downsampling_12.exit
  %wide.trip.count262 = zext nneg i32 %i.j to i64 ; 2 uses
  %.sroa.sel.idx = select i1 %i.i, i64 4, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx ; 2 uses
  %i.eh = add nsw i64 %wide.trip.count262, -1     ; 2 uses
  %min.iters.check434 = icmp ult i32 %i.j, 9
  br i1 %min.iters.check434, label %.lr.ph144.preheader499, label %vector.ph435

vector.ph435:                                     ; preds = %.lr.ph144.preheader
  %n.vec436 = and i64 %i.eh, -8                   ; 3 uses
  %i.ei = or disjoint i64 %n.vec436, 1
  %i.ej = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.073, i64 0
  %broadcast.splatinsert437 = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat438 = shufflevector <4 x i32> %broadcast.splatinsert437, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph435
  %index440 = phi i64 [ 0, %vector.ph435 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %vec.phi441 = phi <4 x i32> [ %i.ej, %vector.ph435 ], [ %i.er, %vector.body439 ]
  %vec.phi442 = phi <4 x i32> [ zeroinitializer, %vector.ph435 ], [ %i.es, %vector.body439 ]
  %i.ek = or disjoint i64 %index440, 1            ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load443 = load <4 x i32>, ptr %i.el, align 4, !tbaa !107
  %wide.load444 = load <4 x i32>, ptr %i.em, align 4, !tbaa !107
  %i.en = sub nsw <4 x i32> %wide.load443, %broadcast.splat438 ; 2 uses
  %i.eo = sub nsw <4 x i32> %wide.load444, %broadcast.splat438 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ek ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x i32> %i.en, ptr %i.ep, align 4, !tbaa !107
  store <4 x i32> %i.eo, ptr %i.eq, align 4, !tbaa !107
  %i.er = add <4 x i32> %i.en, %vec.phi441        ; 2 uses
  %i.es = add <4 x i32> %i.eo, %vec.phi442        ; 2 uses
  %index.next445 = add nuw i64 %index440, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next445, %n.vec436
  br i1 %i.et, label %middle.block446, label %vector.body439, !llvm.loop !741

middle.block446:                                  ; preds = %vector.body439
  %bin.rdx447 = add <4 x i32> %i.es, %i.er
  %i.eu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx447) ; 2 uses
  %cmp.n448 = icmp eq i64 %i.eh, %n.vec436
  br i1 %cmp.n448, label %.preheader113.lr.ph, label %.lr.ph144.preheader499

.lr.ph144.preheader499:                           ; preds = %.lr.ph144.preheader, %middle.block446
  %indvars.iv259.ph = phi i64 [ 1, %.lr.ph144.preheader ], [ %i.ei, %middle.block446 ]
  %.1142.ph = phi i32 [ %.073, %.lr.ph144.preheader ], [ %i.eu, %middle.block446 ]
  br label %.lr.ph144

.preheader113.lr.ph:                              ; preds = %.lr.ph144, %middle.block446, %mip_downsampling_12.exit
  %.1.lcssa = phi i32 [ %.073, %mip_downsampling_12.exit ], [ %i.eu, %middle.block446 ], [ %i.hx, %.lr.ph144 ]
  %i.ev = add i32 %i.m, -1                        ; 4 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %5, %i.ew
  %i.ey = getelementptr [2 x i8], ptr %0, i64 %i.ex ; 2 uses
  %i.ez = sext i32 %i.l to i64                    ; 4 uses
  %i.fa = getelementptr [2 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -2     ; 2 uses
  %i.fc = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.fd = sext i32 %i.j to i64                    ; 7 uses
  %i.fe = shl i32 %.1.lcssa, 5
  %reass.sub = sub i32 32, %i.fe                  ; 3 uses
  %i.ff = ashr i32 %reass.sub, 6
  %i.fg = add nsw i32 %i.ff, %i.ed
  %i.fh = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 0)
  %i.fi = tail call i32 @llvm.umin.i32(i32 %i.fh, i32 4095)
  %i.fj = trunc nuw nsw i32 %i.fi to i16          ; 5 uses
  %i.fk = sext i32 %i.m to i64                    ; 3 uses
  %smax267 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count296 = zext nneg i32 %smax267 to i64 ; 5 uses
  %factor.op.mul337 = mul i64 %5, %i.fk
  %factor.op.mul = mul i64 %5, %i.fk              ; 5 uses
  %wide.trip.count273 = zext i32 %i.j to i64      ; 5 uses
  %factor.op.mul335 = mul i64 %5, %i.fk
  %wide.trip.count284 = zext nneg i32 %i.j to i64
  %xtraiter = and i64 %wide.trip.count296, 3      ; 3 uses
  %unroll_iter = and i64 %wide.trip.count296, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod516 = icmp ne i64 %xtraiter, 0
  %min.iters.check470 = icmp ult i32 %i.j, 8
  %n.vec472 = and i64 %wide.trip.count273, 2147483640 ; 3 uses
  %cmp.n484 = icmp eq i64 %n.vec472, %wide.trip.count273
  %min.iters.check452 = icmp ult i32 %i.j, 8
  %n.vec454 = and i64 %wide.trip.count273, 2147483640 ; 3 uses
  %cmp.n466 = icmp eq i64 %n.vec454, %wide.trip.count273
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %._crit_edge152
  %indvars.iv292 = phi i64 [ 0, %.preheader113.lr.ph ], [ %indvars.iv.next293, %._crit_edge152 ] ; 3 uses
  %.041.i166 = phi ptr [ %i.k, %.preheader113.lr.ph ], [ %.us-phi, %._crit_edge152 ] ; 3 uses
  %i.fl = mul nsw i64 %indvars.iv292, %i.ez
  %invariant.gep = getelementptr [2 x i8], ptr %i.fb, i64 %i.fl ; 6 uses
  %.reass338 = mul i64 %indvars.iv292, %factor.op.mul337
  %i.fm = getelementptr [2 x i8], ptr %i.fb, i64 %.reass338
  br i1 %.not, label %.preheader.us, label %.preheader.lr.ph.split

.preheader.us:                                    ; preds = %.preheader113, %._crit_edge148.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %._crit_edge148.us ], [ 0, %.preheader113 ] ; 2 uses
  %.1.i96150.us = phi ptr [ %i.gg, %._crit_edge148.us ], [ %.041.i166, %.preheader113 ] ; 3 uses
  br i1 %i.fc, label %.lr.ph147.us.preheader, label %._crit_edge148.us

.lr.ph147.us.preheader:                           ; preds = %.preheader.us
  br i1 %min.iters.check452, label %.lr.ph147.us.preheader487, label %vector.body455

vector.body455:                                   ; preds = %.lr.ph147.us.preheader, %vector.body455
  %index456 = phi i64 [ %index.next463, %vector.body455 ], [ 0, %.lr.ph147.us.preheader ] ; 3 uses
  %vec.phi457 = phi <4 x i32> [ %i.fv, %vector.body455 ], [ zeroinitializer, %.lr.ph147.us.preheader ]
  %vec.phi458 = phi <4 x i32> [ %i.fw, %vector.body455 ], [ zeroinitializer, %.lr.ph147.us.preheader ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index456 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load459 = load <4 x i32>, ptr %i.fn, align 16, !tbaa !107
  %wide.load460 = load <4 x i32>, ptr %i.fo, align 16, !tbaa !107
  %i.fp = getelementptr inbounds nuw i8, ptr %.1.i96150.us, i64 %index456 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %wide.load461 = load <4 x i8>, ptr %i.fp, align 1, !tbaa !40
  %wide.load462 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !40
  %i.fr = zext <4 x i8> %wide.load461 to <4 x i32>
  %i.fs = zext <4 x i8> %wide.load462 to <4 x i32>
  %i.ft = mul nsw <4 x i32> %wide.load459, %i.fr
  %i.fu = mul nsw <4 x i32> %wide.load460, %i.fs
  %i.fv = add <4 x i32> %i.ft, %vec.phi457        ; 2 uses
  %i.fw = add <4 x i32> %i.fu, %vec.phi458        ; 2 uses
  %index.next463 = add nuw i64 %index456, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next463, %n.vec454
  br i1 %i.fx, label %middle.block464, label %vector.body455, !llvm.loop !742

middle.block464:                                  ; preds = %vector.body455
  %bin.rdx465 = add <4 x i32> %i.fw, %i.fv
  %i.fy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx465) ; 2 uses
  br i1 %cmp.n466, label %._crit_edge148.us, label %.lr.ph147.us.preheader487

.lr.ph147.us.preheader487:                        ; preds = %.lr.ph147.us.preheader, %middle.block464
  %indvars.iv281.ph = phi i64 [ 0, %.lr.ph147.us.preheader ], [ %n.vec454, %middle.block464 ]
  %.038.i145.us.ph = phi i32 [ 0, %.lr.ph147.us.preheader ], [ %i.fy, %middle.block464 ]
  br label %.lr.ph147.us

.lr.ph147.us:                                     ; preds = %.lr.ph147.us.preheader487, %.lr.ph147.us
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %.lr.ph147.us ], [ %indvars.iv281.ph, %.lr.ph147.us.preheader487 ] ; 3 uses
  %.038.i145.us = phi i32 [ %i.gf, %.lr.ph147.us ], [ %.038.i145.us.ph, %.lr.ph147.us.preheader487 ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv281
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !107
  %i.gb = getelementptr inbounds nuw i8, ptr %.1.i96150.us, i64 %indvars.iv281
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !40
  %i.gd = zext i8 %i.gc to i32
  %i.ge = mul nsw i32 %i.ga, %i.gd
  %i.gf = add nsw i32 %i.ge, %.038.i145.us        ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count284
  br i1 %exitcond285.not, label %._crit_edge148.us, label %.lr.ph147.us, !llvm.loop !743

._crit_edge148.us:                                ; preds = %.lr.ph147.us, %middle.block464, %.preheader.us
  %.038.i.lcssa.us = phi i32 [ 0, %.preheader.us ], [ %i.fy, %middle.block464 ], [ %i.gf, %.lr.ph147.us ]
  %i.gg = getelementptr inbounds i8, ptr %.1.i96150.us, i64 %i.fd ; 2 uses
  %i.gh = add i32 %reass.sub, %.038.i.lcssa.us
  %i.gi = ashr i32 %i.gh, 6
  %i.gj = add nsw i32 %i.gi, %i.ed
  %i.gk = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.gk, i32 4095)
  %i.gm = trunc nuw nsw i32 %i.gl to i16
  %i.gn = mul nsw i64 %indvars.iv286, %i.ez
  %i.go = getelementptr [2 x i8], ptr %i.fm, i64 %i.gn
  store i16 %i.gm, ptr %i.go, align 2, !tbaa !34
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count296
  br i1 %exitcond291.not, label %._crit_edge152, label %.preheader.us, !llvm.loop !744

.preheader.lr.ph.split:                           ; preds = %.preheader113
  br i1 %i.fc, label %.preheader.us154, label %.preheader

.preheader.us154:                                 ; preds = %.preheader.lr.ph.split, %._crit_edge148.us160
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %._crit_edge148.us160 ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %.1.i96150.us156 = phi ptr [ %i.hi, %._crit_edge148.us160 ], [ %.041.i166, %.preheader.lr.ph.split ] ; 3 uses
  br i1 %min.iters.check470, label %scalar.ph469.preheader, label %vector.body473

vector.body473:                                   ; preds = %.preheader.us154, %vector.body473
  %index474 = phi i64 [ %index.next481, %vector.body473 ], [ 0, %.preheader.us154 ] ; 3 uses
  %vec.phi475 = phi <4 x i32> [ %i.gx, %vector.body473 ], [ zeroinitializer, %.preheader.us154 ]
  %vec.phi476 = phi <4 x i32> [ %i.gy, %vector.body473 ], [ zeroinitializer, %.preheader.us154 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index474 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load477 = load <4 x i32>, ptr %i.gp, align 16, !tbaa !107
  %wide.load478 = load <4 x i32>, ptr %i.gq, align 16, !tbaa !107
  %i.gr = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %index474 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %wide.load479 = load <4 x i8>, ptr %i.gr, align 1, !tbaa !40
  %wide.load480 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !40
  %i.gt = zext <4 x i8> %wide.load479 to <4 x i32>
  %i.gu = zext <4 x i8> %wide.load480 to <4 x i32>
  %i.gv = mul nsw <4 x i32> %wide.load477, %i.gt
  %i.gw = mul nsw <4 x i32> %wide.load478, %i.gu
  %i.gx = add <4 x i32> %i.gv, %vec.phi475        ; 2 uses
  %i.gy = add <4 x i32> %i.gw, %vec.phi476        ; 2 uses
  %index.next481 = add nuw i64 %index474, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next481, %n.vec472
  br i1 %i.gz, label %middle.block482, label %vector.body473, !llvm.loop !745

middle.block482:                                  ; preds = %vector.body473
  %bin.rdx483 = add <4 x i32> %i.gy, %i.gx
  %i.ha = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx483) ; 2 uses
  br i1 %cmp.n484, label %._crit_edge148.us160, label %scalar.ph469.preheader

scalar.ph469.preheader:                           ; preds = %.preheader.us154, %middle.block482
  %indvars.iv270.ph = phi i64 [ 0, %.preheader.us154 ], [ %n.vec472, %middle.block482 ]
  %.038.i145.us159.ph = phi i32 [ 0, %.preheader.us154 ], [ %i.ha, %middle.block482 ]
  br label %scalar.ph469

scalar.ph469:                                     ; preds = %scalar.ph469.preheader, %scalar.ph469
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %scalar.ph469 ], [ %indvars.iv270.ph, %scalar.ph469.preheader ] ; 3 uses
  %.038.i145.us159 = phi i32 [ %i.hh, %scalar.ph469 ], [ %.038.i145.us159.ph, %scalar.ph469.preheader ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv270
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !107
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %indvars.iv270
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !40
  %i.hf = zext i8 %i.he to i32
  %i.hg = mul nsw i32 %i.hc, %i.hf
  %i.hh = add nsw i32 %i.hg, %.038.i145.us159     ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %._crit_edge148.us160, label %scalar.ph469, !llvm.loop !746

._crit_edge148.us160:                             ; preds = %scalar.ph469, %middle.block482
  %.lcssa347 = phi i32 [ %i.ha, %middle.block482 ], [ %i.hh, %scalar.ph469 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %i.fd ; 2 uses
  %i.hj = add i32 %reass.sub, %.lcssa347
  %i.hk = ashr i32 %i.hj, 6
  %i.hl = add nsw i32 %i.hk, %i.ed
  %i.hm = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 0)
  %i.hn = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 4095)
  %i.ho = trunc nuw nsw i32 %i.hn to i16
  %.reass336 = mul i64 %indvars.iv275, %factor.op.mul335
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass336
  store i16 %i.ho, ptr %gep.us, align 2, !tbaa !34
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count296
  br i1 %exitcond280.not, label %._crit_edge152, label %.preheader.us154, !llvm.loop !744

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.preheader
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.preheader ], [ 0, %.preheader.lr.ph.split ] ; 5 uses
  %.1.i96150 = phi ptr [ %i.hq, %.preheader ], [ %.041.i166, %.preheader.lr.ph.split ]
  %niter = phi i64 [ %niter.next.3, %.preheader ], [ 0, %.preheader.lr.ph.split ]
  %8 = getelementptr inbounds i8, ptr %.1.i96150, i64 %i.fd
  %.reass = mul i64 %indvars.iv264, %factor.op.mul
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass
  store i16 %i.fj, ptr %gep, align 2, !tbaa !34
  %indvars.iv.next265 = or disjoint i64 %indvars.iv264, 1
  %i.hp = getelementptr inbounds i8, ptr %8, i64 %i.fd
  %.reass.1 = mul i64 %indvars.iv.next265, %factor.op.mul
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.1
  store i16 %i.fj, ptr %gep.1, align 2, !tbaa !34
  %indvars.iv.next265.1 = or disjoint i64 %indvars.iv264, 2
  %9 = getelementptr inbounds i8, ptr %i.hp, i64 %i.fd
  %.reass.2 = mul i64 %indvars.iv.next265.1, %factor.op.mul
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.2
  store i16 %i.fj, ptr %gep.2, align 2, !tbaa !34
  %indvars.iv.next265.2 = or disjoint i64 %indvars.iv264, 3
  %i.hq = getelementptr inbounds i8, ptr %9, i64 %i.fd ; 3 uses
  %.reass.3 = mul i64 %indvars.iv.next265.2, %factor.op.mul
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.3
  store i16 %i.fj, ptr %gep.3, align 2, !tbaa !34
  %indvars.iv.next265.3 = add nuw nsw i64 %indvars.iv264, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge152.loopexit489.unr-lcssa, label %.preheader, !llvm.loop !744

._crit_edge152.loopexit489.unr-lcssa:             ; preds = %.preheader
  br i1 %lcmp.mod.not, label %._crit_edge152, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge152.loopexit489.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod516)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv264.epil = phi i64 [ %indvars.iv.next265.epil, %.preheader.epil ], [ %indvars.iv.next265.3, %.preheader.epil.preheader ] ; 2 uses
  %.1.i96150.epil = phi ptr [ %i.hr, %.preheader.epil ], [ %i.hq, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.hr = getelementptr inbounds i8, ptr %.1.i96150.epil, i64 %i.fd ; 2 uses
  %.reass.epil = mul i64 %indvars.iv264.epil, %factor.op.mul
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.epil
  store i16 %i.fj, ptr %gep.epil, align 2, !tbaa !34
  %indvars.iv.next265.epil = add nuw nsw i64 %indvars.iv264.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge152, label %.preheader.epil, !llvm.loop !747

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit489.unr-lcssa, %.preheader.epil, %._crit_edge148.us160, %._crit_edge148.us
  %.us-phi = phi ptr [ %i.gg, %._crit_edge148.us ], [ %i.hi, %._crit_edge148.us160 ], [ %i.hq, %._crit_edge152.loopexit489.unr-lcssa ], [ %i.hr, %.preheader.epil ]
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count296
  br i1 %exitcond297.not, label %mip_reduced_pred_12.exit, label %.preheader113, !llvm.loop !748

mip_reduced_pred_12.exit:                         ; preds = %._crit_edge152
  %i.hs = icmp sgt i32 %i.l, 1                    ; 2 uses
  %i.ht = icmp sgt i32 %i.m, 1                    ; 2 uses
  %or.cond = or i1 %i.hs, %i.ht
  br i1 %or.cond, label %bb.b, label %mip_upsampling_1d_12.exit

.lr.ph144:                                        ; preds = %.lr.ph144.preheader499, %.lr.ph144
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph144 ], [ %indvars.iv259.ph, %.lr.ph144.preheader499 ] ; 3 uses
  %.1142 = phi i32 [ %i.hx, %.lr.ph144 ], [ %.1142.ph, %.lr.ph144.preheader499 ]
  %gep334 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %indvars.iv259
  %i.hu = load i32, ptr %gep334, align 4, !tbaa !107
  %i.hv = sub nsw i32 %i.hu, %i.ed                ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv259
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !107
  %i.hx = add nsw i32 %i.hv, %.1142               ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.preheader113.lr.ph, label %.lr.ph144, !llvm.loop !749

bb.b:                                             ; preds = %mip_reduced_pred_12.exit
  br i1 %i.hs, label %.lr.ph179.preheader, label %mip_upsampling_1d_12.exit111

.lr.ph179.preheader:                              ; preds = %bb.b
  %i.hy = sext i32 %i.m to i64                    ; 2 uses
  %i.hz = trunc i64 %5 to i32
  %i.ia = mul i32 %i.m, %i.hz
  %i.ib = lshr i32 %i.l, 1                        ; 3 uses
  %i.ic = sext i32 %i.ia to i64
  %i.id = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hy
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -2
  %smax299 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.if = add nsw i32 %i.l, -1                    ; 3 uses
  %xtraiter517 = and i32 %i.if, 1
  %i.ig = icmp eq i32 %i.l, 2
  %unroll_iter522 = and i32 %i.if, -2
  %lcmp.mod519.not = icmp eq i32 %xtraiter517, 0
  %lcmp.mod521 = trunc i32 %i.if to i1
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %._crit_edge180
  %.0.i104184 = phi ptr [ %i.ij, %._crit_edge180 ], [ %i.ey, %.lr.ph179.preheader ] ; 3 uses
  %.038.i103183 = phi i32 [ %i.ik, %._crit_edge180 ], [ 0, %.lr.ph179.preheader ]
  %.039.i102181 = phi ptr [ %i.ii, %._crit_edge180 ], [ %i.ie, %.lr.ph179.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.0.i104184, i64 -2
  br label %.lr.ph171

._crit_edge180:                                   ; preds = %._crit_edge172
  %i.ii = getelementptr inbounds [2 x i8], ptr %.039.i102181, i64 %i.hy
  %i.ij = getelementptr inbounds [2 x i8], ptr %.0.i104184, i64 %i.ic
  %i.ik = add nuw nsw i32 %.038.i103183, 1        ; 2 uses
  %exitcond301.not = icmp eq i32 %i.ik, %smax299
  br i1 %exitcond301.not, label %mip_upsampling_1d_12.exit111, label %.lr.ph179, !llvm.loop !750

.lr.ph171:                                        ; preds = %.lr.ph179, %._crit_edge172
  %.034.i108177 = phi i32 [ 0, %.lr.ph179 ], [ %i.iz, %._crit_edge172 ]
  %.035.i107176 = phi ptr [ %.0.i104184, %.lr.ph179 ], [ %i.iy, %._crit_edge172 ] ; 2 uses
  %.036.i106175 = phi ptr [ %i.ih, %.lr.ph179 ], [ %i.il, %._crit_edge172 ]
  %.037.i105174 = phi ptr [ %.039.i102181, %.lr.ph179 ], [ %i.il, %._crit_edge172 ] ; 3 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.036.i106175, i64 %i.ez ; 5 uses
  br i1 %i.ig, label %.epil.preheader, label %.lr.ph171.new

._crit_edge172.unr-lcssa:                         ; preds = %.lr.ph171.new
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 2
  br i1 %lcmp.mod519.not, label %._crit_edge172, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge172.unr-lcssa, %.lr.ph171
  %.033.i110169.epil.init = phi i32 [ 1, %.lr.ph171 ], [ %i.jz, %._crit_edge172.unr-lcssa ] ; 2 uses
  %.1.i109168.epil.init = phi ptr [ %.035.i107176, %.lr.ph171 ], [ %i.jy, %._crit_edge172.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod521)
  %i.in = sub nuw nsw i32 %i.l, %.033.i110169.epil.init
  %i.io = load i16, ptr %.037.i105174, align 2, !tbaa !34
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.in, %i.ip
  %i.ir = load i16, ptr %i.il, align 2, !tbaa !34
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %.033.i110169.epil.init, %i.is
  %i.iu = add nuw nsw i32 %i.iq, %i.ib
  %i.iv = add nuw nsw i32 %i.iu, %i.it
  %i.iw = udiv i32 %i.iv, %i.l
  %i.ix = trunc i32 %i.iw to i16
  store i16 %i.ix, ptr %.1.i109168.epil.init, align 2, !tbaa !34
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.unr-lcssa, %.epil.preheader
  %.1.i109168.lcssa = phi ptr [ %i.im, %._crit_edge172.unr-lcssa ], [ %.1.i109168.epil.init, %.epil.preheader ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.1.i109168.lcssa, i64 4
  %i.iz = add nuw nsw i32 %.034.i108177, 1        ; 2 uses
  %exitcond300.not = icmp eq i32 %i.iz, %smax299
  br i1 %exitcond300.not, label %._crit_edge180, label %.lr.ph171, !llvm.loop !751

.lr.ph171.new:                                    ; preds = %.lr.ph171, %.lr.ph171.new
  %.033.i110169 = phi i32 [ %i.jz, %.lr.ph171.new ], [ 1, %.lr.ph171 ] ; 4 uses
  %.1.i109168 = phi ptr [ %i.jy, %.lr.ph171.new ], [ %.035.i107176, %.lr.ph171 ] ; 4 uses
  %niter523 = phi i32 [ %niter523.next.1, %.lr.ph171.new ], [ 0, %.lr.ph171 ]
  %i.ja = sub nuw nsw i32 %i.l, %.033.i110169
  %i.jb = load i16, ptr %.037.i105174, align 2, !tbaa !34
  %i.jc = zext i16 %i.jb to i32
  %i.jd = mul nuw nsw i32 %i.ja, %i.jc
  %i.je = load i16, ptr %i.il, align 2, !tbaa !34
  %i.jf = zext i16 %i.je to i32
  %i.jg = mul nuw nsw i32 %.033.i110169, %i.jf
  %i.jh = add nuw nsw i32 %i.jd, %i.ib
  %i.ji = add nuw nsw i32 %i.jh, %i.jg
  %i.jj = udiv i32 %i.ji, %i.l
  %i.jk = trunc i32 %i.jj to i16
  store i16 %i.jk, ptr %.1.i109168, align 2, !tbaa !34
  %i.jl = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 2
  %i.jm = add nuw nsw i32 %.033.i110169, 1        ; 2 uses
  %i.jn = sub nuw nsw i32 %i.l, %i.jm
  %i.jo = load i16, ptr %.037.i105174, align 2, !tbaa !34
  %i.jp = zext i16 %i.jo to i32
  %i.jq = mul nuw nsw i32 %i.jn, %i.jp
  %i.jr = load i16, ptr %i.il, align 2, !tbaa !34
  %i.js = zext i16 %i.jr to i32
  %i.jt = mul nuw nsw i32 %i.jm, %i.js
  %i.ju = add nuw nsw i32 %i.jq, %i.ib
  %i.jv = add nuw nsw i32 %i.ju, %i.jt
  %i.jw = udiv i32 %i.jv, %i.l
  %i.jx = trunc i32 %i.jw to i16
  store i16 %i.jx, ptr %i.jl, align 2, !tbaa !34
  %i.jy = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 4 ; 2 uses
  %i.jz = add nuw nsw i32 %.033.i110169, 2        ; 2 uses
  %niter523.next.1 = add i32 %niter523, 2         ; 2 uses
  %niter523.ncmp.1 = icmp eq i32 %niter523.next.1, %unroll_iter522
  br i1 %niter523.ncmp.1, label %._crit_edge172.unr-lcssa, label %.lr.ph171.new, !llvm.loop !752

mip_upsampling_1d_12.exit111:                     ; preds = %._crit_edge180, %bb.b
  %i.ka = icmp sgt i32 %3, 0
  %or.cond339 = and i1 %i.ht, %i.ka
  br i1 %or.cond339, label %.lr.ph200.preheader, label %mip_upsampling_1d_12.exit

.lr.ph200.preheader:                              ; preds = %mip_upsampling_1d_12.exit111
  %i.kb = trunc i64 %5 to i32
  %sext = shl i64 %5, 32
  %i.kc = ashr exact i64 %sext, 32                ; 5 uses
  %i.kd = sub nsw i64 0, %i.kc
  %i.ke = mul nsw i32 %i.m, %i.kb
  %i.kf = sext i32 %i.ke to i64
  %i.kg = lshr i32 %i.m, 1                        ; 3 uses
  %smax303 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %xtraiter525 = and i32 %i.ev, 1
  %i.kh = icmp eq i32 %i.m, 2
  %unroll_iter530 = and i32 %i.ev, -2
  %lcmp.mod527.not = icmp eq i32 %xtraiter525, 0
  %lcmp.mod529 = trunc i32 %i.ev to i1
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %._crit_edge201
  %.0.i100205 = phi ptr [ %i.kk, %._crit_edge201 ], [ %0, %.lr.ph200.preheader ] ; 3 uses
  %.038.i99204 = phi i32 [ %i.kl, %._crit_edge201 ], [ 0, %.lr.ph200.preheader ]
  %.039.i98202 = phi ptr [ %i.kj, %._crit_edge201 ], [ %1, %.lr.ph200.preheader ] ; 2 uses
  %i.ki = getelementptr inbounds [2 x i8], ptr %.0.i100205, i64 %i.kd
  br label %.lr.ph192

._crit_edge201:                                   ; preds = %._crit_edge193
  %i.kj = getelementptr inbounds nuw i8, ptr %.039.i98202, i64 2
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i100205, i64 2
  %i.kl = add nuw nsw i32 %.038.i99204, 1         ; 2 uses
  %exitcond305.not = icmp eq i32 %i.kl, %3
  br i1 %exitcond305.not, label %mip_upsampling_1d_12.exit, label %.lr.ph200, !llvm.loop !750

.lr.ph192:                                        ; preds = %.lr.ph200, %._crit_edge193
  %.034.i198 = phi i32 [ 0, %.lr.ph200 ], [ %i.kz, %._crit_edge193 ]
  %.035.i197 = phi ptr [ %.0.i100205, %.lr.ph200 ], [ %11, %._crit_edge193 ] ; 2 uses
  %.036.i196 = phi ptr [ %i.ki, %.lr.ph200 ], [ %i.km, %._crit_edge193 ]
  %.037.i195 = phi ptr [ %.039.i98202, %.lr.ph200 ], [ %i.km, %._crit_edge193 ] ; 3 uses
  %i.km = getelementptr inbounds [2 x i8], ptr %.036.i196, i64 %i.kf ; 5 uses
  br i1 %i.kh, label %.epil.preheader524, label %.lr.ph192.new

._crit_edge193.unr-lcssa:                         ; preds = %.lr.ph192.new
  br i1 %lcmp.mod527.not, label %._crit_edge193, label %.epil.preheader524

.epil.preheader524:                               ; preds = %._crit_edge193.unr-lcssa, %.lr.ph192
  %.033.i190.epil.init = phi i32 [ 1, %.lr.ph192 ], [ %i.lz, %._crit_edge193.unr-lcssa ] ; 2 uses
  %.1.i101189.epil.init = phi ptr [ %.035.i197, %.lr.ph192 ], [ %i.ly, %._crit_edge193.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.kn = sub nuw nsw i32 %i.m, %.033.i190.epil.init
  %i.ko = load i16, ptr %.037.i195, align 2, !tbaa !34
  %i.kp = zext i16 %i.ko to i32
  %i.kq = mul nuw nsw i32 %i.kn, %i.kp
  %i.kr = load i16, ptr %i.km, align 2, !tbaa !34
  %i.ks = zext i16 %i.kr to i32
  %i.kt = mul nuw nsw i32 %.033.i190.epil.init, %i.ks
  %i.ku = add nuw nsw i32 %i.kq, %i.kg
  %i.kv = add nuw nsw i32 %i.ku, %i.kt
  %i.kw = udiv i32 %i.kv, %i.m
  %i.kx = trunc i32 %i.kw to i16
  store i16 %i.kx, ptr %.1.i101189.epil.init, align 2, !tbaa !34
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.unr-lcssa, %.epil.preheader524
  %i.ky = phi ptr [ %i.ll, %._crit_edge193.unr-lcssa ], [ %.1.i101189.epil.init, %.epil.preheader524 ]
  %10 = getelementptr inbounds [2 x i8], ptr %i.ky, i64 %i.kc
  %11 = getelementptr inbounds [2 x i8], ptr %10, i64 %i.kc
  %i.kz = add nuw nsw i32 %.034.i198, 1           ; 2 uses
  %exitcond304.not = icmp eq i32 %i.kz, %smax303
  br i1 %exitcond304.not, label %._crit_edge201, label %.lr.ph192, !llvm.loop !751

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %.033.i190 = phi i32 [ %i.lz, %.lr.ph192.new ], [ 1, %.lr.ph192 ] ; 4 uses
  %.1.i101189 = phi ptr [ %i.ly, %.lr.ph192.new ], [ %.035.i197, %.lr.ph192 ] ; 2 uses
  %niter531 = phi i32 [ %niter531.next.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.la = sub nuw nsw i32 %i.m, %.033.i190
  %i.lb = load i16, ptr %.037.i195, align 2, !tbaa !34
  %i.lc = zext i16 %i.lb to i32
  %i.ld = mul nuw nsw i32 %i.la, %i.lc
  %i.le = load i16, ptr %i.km, align 2, !tbaa !34
  %i.lf = zext i16 %i.le to i32
  %i.lg = mul nuw nsw i32 %.033.i190, %i.lf
  %i.lh = add nuw nsw i32 %i.ld, %i.kg
  %i.li = add nuw nsw i32 %i.lh, %i.lg
  %i.lj = udiv i32 %i.li, %i.m
  %i.lk = trunc i32 %i.lj to i16
  store i16 %i.lk, ptr %.1.i101189, align 2, !tbaa !34
  %i.ll = getelementptr inbounds [2 x i8], ptr %.1.i101189, i64 %i.kc ; 3 uses
  %i.lm = add nuw nsw i32 %.033.i190, 1           ; 2 uses
  %i.ln = sub nuw nsw i32 %i.m, %i.lm
  %i.lo = load i16, ptr %.037.i195, align 2, !tbaa !34
  %i.lp = zext i16 %i.lo to i32
  %i.lq = mul nuw nsw i32 %i.ln, %i.lp
  %i.lr = load i16, ptr %i.km, align 2, !tbaa !34
  %i.ls = zext i16 %i.lr to i32
  %i.lt = mul nuw nsw i32 %i.lm, %i.ls
  %i.lu = add nuw nsw i32 %i.lq, %i.kg
  %i.lv = add nuw nsw i32 %i.lu, %i.lt
  %i.lw = udiv i32 %i.lv, %i.m
  %i.lx = trunc i32 %i.lw to i16
  store i16 %i.lx, ptr %i.ll, align 2, !tbaa !34
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.ll, i64 %i.kc ; 2 uses
  %i.lz = add nuw nsw i32 %.033.i190, 2           ; 2 uses
  %niter531.next.1 = add i32 %niter531, 2         ; 2 uses
  %niter531.ncmp.1 = icmp eq i32 %niter531.next.1, %unroll_iter530
  br i1 %niter531.ncmp.1, label %._crit_edge193.unr-lcssa, label %.lr.ph192.new, !llvm.loop !752

mip_upsampling_1d_12.exit:                        ; preds = %._crit_edge201, %mip_upsampling_1d_12.exit111, %mip_reduced_pred_12.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %i.a = icmp eq i32 %3, %4
  %i.b = shl i32 %3, 1
  %i.c = tail call i32 @llvm.smax.i32(i32 %3, i32 %4)
  %i.d = select i1 %i.a, i32 %i.b, i32 %i.c       ; 4 uses
  %.not.i = icmp sge i32 %3, %4
  %i.e = icmp sgt i32 %3, 0                       ; 2 uses
  %or.cond = and i1 %.not.i, %i.e
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load = load <4 x i16>, ptr %i.f, align 2, !tbaa !34
  %wide.load52 = load <4 x i16>, ptr %i.g, align 2, !tbaa !34
  %i.h = zext <4 x i16> %wide.load to <4 x i32>
  %i.i = zext <4 x i16> %wide.load52 to <4 x i32>
  %i.j = add <4 x i32> %vec.phi, %i.h             ; 2 uses
  %i.k = add <4 x i32> %vec.phi51, %i.i           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !753

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader83

.lr.ph.preheader83:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.029.i24.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 2 uses
  %.029.i24 = phi i32 [ %i.q, %.lr.ph ], [ %.029.i24.ph, %.lr.ph.preheader83 ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !34
  %i.p = zext i16 %i.o to i32
  %i.q = add nuw nsw i32 %.029.i24, %i.p          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !754

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a
  %.1.i = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %i.q, %.lr.ph ] ; 3 uses
  %.not35.i = icmp sle i32 %3, %4
  %i.r = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond36 = and i1 %.not35.i, %i.r
  br i1 %or.cond36, label %.lr.ph28.preheader, label %pred_dc_val_12.exit

.lr.ph28.preheader:                               ; preds = %.loopexit
  %wide.trip.count43 = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check54 = icmp ult i32 %4, 8
  br i1 %min.iters.check54, label %.lr.ph28.preheader80, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph28.preheader
  %n.vec56 = and i64 %wide.trip.count43, 2147483640 ; 3 uses
  %i.s = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1.i, i64 0
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next63, %vector.body57 ] ; 2 uses
  %vec.phi59 = phi <4 x i32> [ %i.s, %vector.ph55 ], [ %i.x, %vector.body57 ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph55 ], [ %i.y, %vector.body57 ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index58 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.load61 = load <4 x i16>, ptr %i.t, align 2, !tbaa !34
  %wide.load62 = load <4 x i16>, ptr %i.u, align 2, !tbaa !34
  %i.v = zext <4 x i16> %wide.load61 to <4 x i32>
  %i.w = zext <4 x i16> %wide.load62 to <4 x i32>
  %i.x = add <4 x i32> %vec.phi59, %i.v           ; 2 uses
  %i.y = add <4 x i32> %vec.phi60, %i.w           ; 2 uses
  %index.next63 = add nuw i64 %index58, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.z, label %middle.block64, label %vector.body57, !llvm.loop !755

middle.block64:                                   ; preds = %vector.body57
  %bin.rdx65 = add <4 x i32> %i.y, %i.x
  %i.aa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx65) ; 2 uses
  %cmp.n66 = icmp eq i64 %n.vec56, %wide.trip.count43
  br i1 %cmp.n66, label %pred_dc_val_12.exit, label %.lr.ph28.preheader80

.lr.ph28.preheader80:                             ; preds = %.lr.ph28.preheader, %middle.block64
  %indvars.iv40.ph = phi i64 [ 0, %.lr.ph28.preheader ], [ %n.vec56, %middle.block64 ]
  %.2.i26.ph = phi i32 [ %.1.i, %.lr.ph28.preheader ], [ %i.aa, %middle.block64 ]
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader80, %.lr.ph28
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph28 ], [ %indvars.iv40.ph, %.lr.ph28.preheader80 ] ; 2 uses
  %.2.i26 = phi i32 [ %i.ae, %.lr.ph28 ], [ %.2.i26.ph, %.lr.ph28.preheader80 ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv40
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !34
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nsw i32 %.2.i26, %i.ad              ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %pred_dc_val_12.exit, label %.lr.ph28, !llvm.loop !756

pred_dc_val_12.exit:                              ; preds = %.lr.ph28, %middle.block64, %.loopexit
  %.3.i = phi i32 [ %.1.i, %.loopexit ], [ %i.aa, %middle.block64 ], [ %i.ae, %.lr.ph28 ]
  %i.af = lshr i32 %i.d, 1
  %.not.i.i = icmp ult i32 %i.d, 65536            ; 2 uses
  %i.ag = lshr i32 %i.d, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.d, i32 %i.ag ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ah = lshr i32 %spec.select.i.i, 8
  %i.ai = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ah
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.ai
  %i.aj = zext nneg i32 %.110.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %.1.i.i, %i.am
  %i.ao = add i32 %.3.i, %i.af
  %i.ap = lshr i32 %i.ao, %i.an
  %i.aq = and i32 %i.ap, 65535
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw i64 %i.ar, 281479271743489      ; 2 uses
  %or.cond37 = and i1 %i.r, %i.e
  br i1 %or.cond37, label %.preheader.preheader, label %._crit_edge35.split

.preheader.preheader:                             ; preds = %pred_dc_val_12.exit
  %i.at = add nsw i32 %3, -1
  %i.au = lshr i32 %i.at, 2
  %narrow = add nuw nsw i32 %i.au, 1
  %i.av = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check70 = icmp ult i32 %3, 13
  %n.vec72 = and i64 %i.av, 2147483644            ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec72, 3
  %i.ax = trunc nuw nsw i64 %n.vec72 to i32
  %i.ay = shl i32 %i.ax, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n77 = icmp eq i64 %n.vec72, %i.av
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
end_hunk_0
begin_hunk_1_@pred_mip_10:bb.a
  %i.cp = trunc nuw i64 %n.vec406 to i32
  %i.cq = or disjoint i32 %i.cp, 1
  %cmp.n417 = icmp eq i64 %n.vec406, %i.cn
  br label %.lr.ph133.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us.preheader, %._crit_edge.us138
  %indvars.iv248 = phi i64 [ 0, %.lr.ph133.us.preheader ], [ %indvars.iv.next249, %._crit_edge.us138 ] ; 2 uses
  %.028.i135.us = phi ptr [ %2, %.lr.ph133.us.preheader ], [ %scevgep246, %._crit_edge.us138 ] ; 5 uses
  %i.cr = load i16, ptr %.028.i135.us, align 2, !tbaa !34
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph133.us
  %i.ct = getelementptr i8, ptr %.028.i135.us, i64 %i.co
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cs, i64 0
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next414, %vector.body407 ] ; 2 uses
  %vec.phi409 = phi <4 x i32> [ %i.cu, %vector.ph405 ], [ %i.da, %vector.body407 ]
  %vec.phi410 = phi <4 x i32> [ zeroinitializer, %vector.ph405 ], [ %i.db, %vector.body407 ]
  %i.cv = shl i64 %index408, 1
  %next.gep411 = getelementptr i8, ptr %.028.i135.us, i64 %i.cv ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep411, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep411, i64 10
  %wide.load412 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !34
  %wide.load413 = load <4 x i16>, ptr %i.cx, align 2, !tbaa !34
  %i.cy = zext <4 x i16> %wide.load412 to <4 x i32>
  %i.cz = zext <4 x i16> %wide.load413 to <4 x i32>
  %i.da = add <4 x i32> %vec.phi409, %i.cy        ; 2 uses
  %i.db = add <4 x i32> %vec.phi410, %i.cz        ; 2 uses
  %index.next414 = add nuw i64 %index408, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next414, %n.vec406
  br i1 %i.dc, label %middle.block415, label %vector.body407, !llvm.loop !1399

middle.block415:                                  ; preds = %vector.body407
  %bin.rdx416 = add <4 x i32> %i.db, %i.da
  %i.dd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx416) ; 2 uses
  br i1 %cmp.n417, label %._crit_edge.us138, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %.lr.ph133.us, %middle.block415
  %.028.i135.us.pn.ph = phi ptr [ %.028.i135.us, %.lr.ph133.us ], [ %i.ct, %middle.block415 ]
  %.0.i131.us.ph = phi i32 [ 1, %.lr.ph133.us ], [ %i.cq, %middle.block415 ]
  %.025.i130.us.ph = phi i32 [ %i.cs, %.lr.ph133.us ], [ %i.dd, %middle.block415 ]
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %.028.i135.us.pn = phi ptr [ %.1.i132.us, %scalar.ph403 ], [ %.028.i135.us.pn.ph, %scalar.ph403.preheader ]
  %.0.i131.us = phi i32 [ %i.dh, %scalar.ph403 ], [ %.0.i131.us.ph, %scalar.ph403.preheader ]
  %.025.i130.us = phi i32 [ %i.dg, %scalar.ph403 ], [ %.025.i130.us.ph, %scalar.ph403.preheader ]
  %.1.i132.us = getelementptr inbounds nuw i8, ptr %.028.i135.us.pn, i64 2 ; 2 uses
  %i.de = load i16, ptr %.1.i132.us, align 2, !tbaa !34
  %i.df = zext i16 %i.de to i32
  %i.dg = add nuw nsw i32 %.025.i130.us, %i.df    ; 2 uses
  %i.dh = add nuw nsw i32 %.0.i131.us, 1          ; 2 uses
  %exitcond247.not = icmp eq i32 %i.dh, %i.bw
  br i1 %exitcond247.not, label %._crit_edge.us138, label %scalar.ph403, !llvm.loop !1400

._crit_edge.us138:                                ; preds = %scalar.ph403, %middle.block415
  %.lcssa352 = phi i32 [ %i.dd, %middle.block415 ], [ %i.dg, %scalar.ph403 ]
  %i.di = getelementptr i8, ptr %.028.i135.us, i64 %i.cl
  %scevgep246 = getelementptr i8, ptr %i.di, i64 4
  %i.dj = add nuw nsw i32 %.lcssa352, %i.ci
  %i.dk = ashr i32 %i.dj, %i.ce
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv248
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !107
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %mip_downsampling_10.exit, label %.lr.ph133.us, !llvm.loop !1395

.preheader114:                                    ; preds = %mip_downsampling_10.exit95
  %i.dm = icmp sgt i32 %4, 0
  br i1 %i.dm, label %.lr.ph141.preheader, label %mip_downsampling_10.exit

.lr.ph141.preheader:                              ; preds = %.preheader114
  %wide.trip.count257 = zext nneg i32 %4 to i64   ; 3 uses
  %min.iters.check422 = icmp ult i32 %4, 8
  br i1 %min.iters.check422, label %.lr.ph141.preheader503, label %vector.ph423

vector.ph423:                                     ; preds = %.lr.ph141.preheader
  %n.vec424 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next429, %vector.body425 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index426 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %wide.load427 = load <4 x i16>, ptr %i.dn, align 2, !tbaa !34
  %wide.load428 = load <4 x i16>, ptr %i.do, align 2, !tbaa !34
  %i.dp = zext <4 x i16> %wide.load427 to <4 x i32>
  %i.dq = zext <4 x i16> %wide.load428 to <4 x i32>
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %index426 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !107
  store <4 x i32> %i.dq, ptr %i.ds, align 4, !tbaa !107
  %index.next429 = add nuw i64 %index426, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next429, %n.vec424
  br i1 %i.dt, label %middle.block430, label %vector.body425, !llvm.loop !1401

middle.block430:                                  ; preds = %vector.body425
  %cmp.n431 = icmp eq i64 %n.vec424, %wide.trip.count257
  br i1 %cmp.n431, label %mip_downsampling_10.exit, label %.lr.ph141.preheader503

.lr.ph141.preheader503:                           ; preds = %.lr.ph141.preheader, %middle.block430
  %indvars.iv254.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec424, %middle.block430 ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader503, %.lr.ph141
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph141 ], [ %indvars.iv254.ph, %.lr.ph141.preheader503 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv254
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !34
  %i.dw = zext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv254
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !107
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %mip_downsampling_10.exit, label %.lr.ph141, !llvm.loop !1402

.lr.ph137.split:                                  ; preds = %.lr.ph137.split.preheader, %.lr.ph137.split
  %indvars.iv240 = phi i64 [ 0, %.lr.ph137.split.preheader ], [ %indvars.iv.next241, %.lr.ph137.split ] ; 2 uses
  %.028.i135 = phi ptr [ %2, %.lr.ph137.split.preheader ], [ %.1.i129, %.lr.ph137.split ] ; 2 uses
  %i.dy = load i16, ptr %.028.i135, align 2, !tbaa !34
  %i.dz = zext i16 %i.dy to i32
  %.1.i129 = getelementptr inbounds nuw i8, ptr %.028.i135, i64 2
  %i.ea = add nuw nsw i32 %i.ci, %i.dz
  %i.eb = ashr i32 %i.ea, %i.ce
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv240
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !107
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count244
  br i1 %exitcond245.not, label %mip_downsampling_10.exit, label %.lr.ph137.split, !llvm.loop !1403

mip_downsampling_10.exit:                         ; preds = %.lr.ph137.split, %._crit_edge.us138, %.lr.ph141, %middle.block430, %.preheader114
  %i.ed = load i32, ptr %i.a, align 16, !tbaa !107 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ef = load i32, ptr %i.ee, align 4
  %.pn = select i1 %i.i, i32 %i.ef, i32 512
  %.073 = sub nsw i32 %.pn, %i.ed                 ; 4 uses
  store i32 %.073, ptr %i.a, align 16, !tbaa !107
  %i.eg = icmp sgt i32 %i.j, 1
  br i1 %i.eg, label %.lr.ph144.preheader, label %.preheader113.lr.ph

.lr.ph144.preheader:                              ; preds = %mip_downsampling_10.exit
  %wide.trip.count262 = zext nneg i32 %i.j to i64 ; 2 uses
  %.sroa.sel.idx = select i1 %i.i, i64 4, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx ; 2 uses
  %i.eh = add nsw i64 %wide.trip.count262, -1     ; 2 uses
  %min.iters.check434 = icmp ult i32 %i.j, 9
  br i1 %min.iters.check434, label %.lr.ph144.preheader499, label %vector.ph435

vector.ph435:                                     ; preds = %.lr.ph144.preheader
  %n.vec436 = and i64 %i.eh, -8                   ; 3 uses
  %i.ei = or disjoint i64 %n.vec436, 1
  %i.ej = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.073, i64 0
  %broadcast.splatinsert437 = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat438 = shufflevector <4 x i32> %broadcast.splatinsert437, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph435
  %index440 = phi i64 [ 0, %vector.ph435 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %vec.phi441 = phi <4 x i32> [ %i.ej, %vector.ph435 ], [ %i.er, %vector.body439 ]
  %vec.phi442 = phi <4 x i32> [ zeroinitializer, %vector.ph435 ], [ %i.es, %vector.body439 ]
  %i.ek = or disjoint i64 %index440, 1            ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load443 = load <4 x i32>, ptr %i.el, align 4, !tbaa !107
  %wide.load444 = load <4 x i32>, ptr %i.em, align 4, !tbaa !107
  %i.en = sub nsw <4 x i32> %wide.load443, %broadcast.splat438 ; 2 uses
  %i.eo = sub nsw <4 x i32> %wide.load444, %broadcast.splat438 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ek ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x i32> %i.en, ptr %i.ep, align 4, !tbaa !107
  store <4 x i32> %i.eo, ptr %i.eq, align 4, !tbaa !107
  %i.er = add <4 x i32> %i.en, %vec.phi441        ; 2 uses
  %i.es = add <4 x i32> %i.eo, %vec.phi442        ; 2 uses
  %index.next445 = add nuw i64 %index440, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next445, %n.vec436
  br i1 %i.et, label %middle.block446, label %vector.body439, !llvm.loop !1404

middle.block446:                                  ; preds = %vector.body439
  %bin.rdx447 = add <4 x i32> %i.es, %i.er
  %i.eu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx447) ; 2 uses
  %cmp.n448 = icmp eq i64 %i.eh, %n.vec436
  br i1 %cmp.n448, label %.preheader113.lr.ph, label %.lr.ph144.preheader499

.lr.ph144.preheader499:                           ; preds = %.lr.ph144.preheader, %middle.block446
  %indvars.iv259.ph = phi i64 [ 1, %.lr.ph144.preheader ], [ %i.ei, %middle.block446 ]
  %.1142.ph = phi i32 [ %.073, %.lr.ph144.preheader ], [ %i.eu, %middle.block446 ]
  br label %.lr.ph144

.preheader113.lr.ph:                              ; preds = %.lr.ph144, %middle.block446, %mip_downsampling_10.exit
  %.1.lcssa = phi i32 [ %.073, %mip_downsampling_10.exit ], [ %i.eu, %middle.block446 ], [ %i.hx, %.lr.ph144 ]
  %i.ev = add i32 %i.m, -1                        ; 4 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %5, %i.ew
  %i.ey = getelementptr [2 x i8], ptr %0, i64 %i.ex ; 2 uses
  %i.ez = sext i32 %i.l to i64                    ; 4 uses
  %i.fa = getelementptr [2 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -2     ; 2 uses
  %i.fc = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.fd = sext i32 %i.j to i64                    ; 7 uses
  %i.fe = shl i32 %.1.lcssa, 5
  %reass.sub = sub i32 32, %i.fe                  ; 3 uses
  %i.ff = ashr i32 %reass.sub, 6
  %i.fg = add nsw i32 %i.ff, %i.ed
  %i.fh = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 0)
  %i.fi = tail call i32 @llvm.umin.i32(i32 %i.fh, i32 1023)
  %i.fj = trunc nuw nsw i32 %i.fi to i16          ; 5 uses
  %i.fk = sext i32 %i.m to i64                    ; 3 uses
  %smax267 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count296 = zext nneg i32 %smax267 to i64 ; 5 uses
  %factor.op.mul337 = mul i64 %5, %i.fk
  %factor.op.mul = mul i64 %5, %i.fk              ; 5 uses
  %wide.trip.count273 = zext i32 %i.j to i64      ; 5 uses
  %factor.op.mul335 = mul i64 %5, %i.fk
  %wide.trip.count284 = zext nneg i32 %i.j to i64
  %xtraiter = and i64 %wide.trip.count296, 3      ; 3 uses
  %unroll_iter = and i64 %wide.trip.count296, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod516 = icmp ne i64 %xtraiter, 0
  %min.iters.check470 = icmp ult i32 %i.j, 8
  %n.vec472 = and i64 %wide.trip.count273, 2147483640 ; 3 uses
  %cmp.n484 = icmp eq i64 %n.vec472, %wide.trip.count273
  %min.iters.check452 = icmp ult i32 %i.j, 8
  %n.vec454 = and i64 %wide.trip.count273, 2147483640 ; 3 uses
  %cmp.n466 = icmp eq i64 %n.vec454, %wide.trip.count273
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %._crit_edge152
  %indvars.iv292 = phi i64 [ 0, %.preheader113.lr.ph ], [ %indvars.iv.next293, %._crit_edge152 ] ; 3 uses
  %.041.i166 = phi ptr [ %i.k, %.preheader113.lr.ph ], [ %.us-phi, %._crit_edge152 ] ; 3 uses
  %i.fl = mul nsw i64 %indvars.iv292, %i.ez
  %invariant.gep = getelementptr [2 x i8], ptr %i.fb, i64 %i.fl ; 6 uses
  %.reass338 = mul i64 %indvars.iv292, %factor.op.mul337
  %i.fm = getelementptr [2 x i8], ptr %i.fb, i64 %.reass338
  br i1 %.not, label %.preheader.us, label %.preheader.lr.ph.split

.preheader.us:                                    ; preds = %.preheader113, %._crit_edge148.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %._crit_edge148.us ], [ 0, %.preheader113 ] ; 2 uses
  %.1.i96150.us = phi ptr [ %i.gg, %._crit_edge148.us ], [ %.041.i166, %.preheader113 ] ; 3 uses
  br i1 %i.fc, label %.lr.ph147.us.preheader, label %._crit_edge148.us

.lr.ph147.us.preheader:                           ; preds = %.preheader.us
  br i1 %min.iters.check452, label %.lr.ph147.us.preheader487, label %vector.body455

vector.body455:                                   ; preds = %.lr.ph147.us.preheader, %vector.body455
  %index456 = phi i64 [ %index.next463, %vector.body455 ], [ 0, %.lr.ph147.us.preheader ] ; 3 uses
  %vec.phi457 = phi <4 x i32> [ %i.fv, %vector.body455 ], [ zeroinitializer, %.lr.ph147.us.preheader ]
  %vec.phi458 = phi <4 x i32> [ %i.fw, %vector.body455 ], [ zeroinitializer, %.lr.ph147.us.preheader ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index456 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load459 = load <4 x i32>, ptr %i.fn, align 16, !tbaa !107
  %wide.load460 = load <4 x i32>, ptr %i.fo, align 16, !tbaa !107
  %i.fp = getelementptr inbounds nuw i8, ptr %.1.i96150.us, i64 %index456 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %wide.load461 = load <4 x i8>, ptr %i.fp, align 1, !tbaa !40
  %wide.load462 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !40
  %i.fr = zext <4 x i8> %wide.load461 to <4 x i32>
  %i.fs = zext <4 x i8> %wide.load462 to <4 x i32>
  %i.ft = mul nsw <4 x i32> %wide.load459, %i.fr
  %i.fu = mul nsw <4 x i32> %wide.load460, %i.fs
  %i.fv = add <4 x i32> %i.ft, %vec.phi457        ; 2 uses
  %i.fw = add <4 x i32> %i.fu, %vec.phi458        ; 2 uses
  %index.next463 = add nuw i64 %index456, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next463, %n.vec454
  br i1 %i.fx, label %middle.block464, label %vector.body455, !llvm.loop !1405

middle.block464:                                  ; preds = %vector.body455
  %bin.rdx465 = add <4 x i32> %i.fw, %i.fv
  %i.fy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx465) ; 2 uses
  br i1 %cmp.n466, label %._crit_edge148.us, label %.lr.ph147.us.preheader487

.lr.ph147.us.preheader487:                        ; preds = %.lr.ph147.us.preheader, %middle.block464
  %indvars.iv281.ph = phi i64 [ 0, %.lr.ph147.us.preheader ], [ %n.vec454, %middle.block464 ]
  %.038.i145.us.ph = phi i32 [ 0, %.lr.ph147.us.preheader ], [ %i.fy, %middle.block464 ]
  br label %.lr.ph147.us

.lr.ph147.us:                                     ; preds = %.lr.ph147.us.preheader487, %.lr.ph147.us
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %.lr.ph147.us ], [ %indvars.iv281.ph, %.lr.ph147.us.preheader487 ] ; 3 uses
  %.038.i145.us = phi i32 [ %i.gf, %.lr.ph147.us ], [ %.038.i145.us.ph, %.lr.ph147.us.preheader487 ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv281
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !107
  %i.gb = getelementptr inbounds nuw i8, ptr %.1.i96150.us, i64 %indvars.iv281
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !40
  %i.gd = zext i8 %i.gc to i32
  %i.ge = mul nsw i32 %i.ga, %i.gd
  %i.gf = add nsw i32 %i.ge, %.038.i145.us        ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count284
  br i1 %exitcond285.not, label %._crit_edge148.us, label %.lr.ph147.us, !llvm.loop !1406

._crit_edge148.us:                                ; preds = %.lr.ph147.us, %middle.block464, %.preheader.us
  %.038.i.lcssa.us = phi i32 [ 0, %.preheader.us ], [ %i.fy, %middle.block464 ], [ %i.gf, %.lr.ph147.us ]
  %i.gg = getelementptr inbounds i8, ptr %.1.i96150.us, i64 %i.fd ; 2 uses
  %i.gh = add i32 %reass.sub, %.038.i.lcssa.us
  %i.gi = ashr i32 %i.gh, 6
  %i.gj = add nsw i32 %i.gi, %i.ed
  %i.gk = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 0)
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.gk, i32 1023)
  %i.gm = trunc nuw nsw i32 %i.gl to i16
  %i.gn = mul nsw i64 %indvars.iv286, %i.ez
  %i.go = getelementptr [2 x i8], ptr %i.fm, i64 %i.gn
  store i16 %i.gm, ptr %i.go, align 2, !tbaa !34
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count296
  br i1 %exitcond291.not, label %._crit_edge152, label %.preheader.us, !llvm.loop !1407

.preheader.lr.ph.split:                           ; preds = %.preheader113
  br i1 %i.fc, label %.preheader.us154, label %.preheader

.preheader.us154:                                 ; preds = %.preheader.lr.ph.split, %._crit_edge148.us160
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %._crit_edge148.us160 ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %.1.i96150.us156 = phi ptr [ %i.hi, %._crit_edge148.us160 ], [ %.041.i166, %.preheader.lr.ph.split ] ; 3 uses
  br i1 %min.iters.check470, label %scalar.ph469.preheader, label %vector.body473

vector.body473:                                   ; preds = %.preheader.us154, %vector.body473
  %index474 = phi i64 [ %index.next481, %vector.body473 ], [ 0, %.preheader.us154 ] ; 3 uses
  %vec.phi475 = phi <4 x i32> [ %i.gx, %vector.body473 ], [ zeroinitializer, %.preheader.us154 ]
  %vec.phi476 = phi <4 x i32> [ %i.gy, %vector.body473 ], [ zeroinitializer, %.preheader.us154 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index474 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load477 = load <4 x i32>, ptr %i.gp, align 16, !tbaa !107
  %wide.load478 = load <4 x i32>, ptr %i.gq, align 16, !tbaa !107
  %i.gr = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %index474 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %wide.load479 = load <4 x i8>, ptr %i.gr, align 1, !tbaa !40
  %wide.load480 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !40
  %i.gt = zext <4 x i8> %wide.load479 to <4 x i32>
  %i.gu = zext <4 x i8> %wide.load480 to <4 x i32>
  %i.gv = mul nsw <4 x i32> %wide.load477, %i.gt
  %i.gw = mul nsw <4 x i32> %wide.load478, %i.gu
  %i.gx = add <4 x i32> %i.gv, %vec.phi475        ; 2 uses
  %i.gy = add <4 x i32> %i.gw, %vec.phi476        ; 2 uses
  %index.next481 = add nuw i64 %index474, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next481, %n.vec472
  br i1 %i.gz, label %middle.block482, label %vector.body473, !llvm.loop !1408

middle.block482:                                  ; preds = %vector.body473
  %bin.rdx483 = add <4 x i32> %i.gy, %i.gx
  %i.ha = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx483) ; 2 uses
  br i1 %cmp.n484, label %._crit_edge148.us160, label %scalar.ph469.preheader

scalar.ph469.preheader:                           ; preds = %.preheader.us154, %middle.block482
  %indvars.iv270.ph = phi i64 [ 0, %.preheader.us154 ], [ %n.vec472, %middle.block482 ]
  %.038.i145.us159.ph = phi i32 [ 0, %.preheader.us154 ], [ %i.ha, %middle.block482 ]
  br label %scalar.ph469

scalar.ph469:                                     ; preds = %scalar.ph469.preheader, %scalar.ph469
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %scalar.ph469 ], [ %indvars.iv270.ph, %scalar.ph469.preheader ] ; 3 uses
  %.038.i145.us159 = phi i32 [ %i.hh, %scalar.ph469 ], [ %.038.i145.us159.ph, %scalar.ph469.preheader ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv270
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !107
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %indvars.iv270
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !40
  %i.hf = zext i8 %i.he to i32
  %i.hg = mul nsw i32 %i.hc, %i.hf
  %i.hh = add nsw i32 %i.hg, %.038.i145.us159     ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %._crit_edge148.us160, label %scalar.ph469, !llvm.loop !1409

._crit_edge148.us160:                             ; preds = %scalar.ph469, %middle.block482
  %.lcssa347 = phi i32 [ %i.ha, %middle.block482 ], [ %i.hh, %scalar.ph469 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %i.fd ; 2 uses
  %i.hj = add i32 %reass.sub, %.lcssa347
  %i.hk = ashr i32 %i.hj, 6
  %i.hl = add nsw i32 %i.hk, %i.ed
  %i.hm = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 0)
  %i.hn = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 1023)
  %i.ho = trunc nuw nsw i32 %i.hn to i16
  %.reass336 = mul i64 %indvars.iv275, %factor.op.mul335
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass336
  store i16 %i.ho, ptr %gep.us, align 2, !tbaa !34
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count296
  br i1 %exitcond280.not, label %._crit_edge152, label %.preheader.us154, !llvm.loop !1407

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.preheader
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.preheader ], [ 0, %.preheader.lr.ph.split ] ; 5 uses
  %.1.i96150 = phi ptr [ %i.hq, %.preheader ], [ %.041.i166, %.preheader.lr.ph.split ]
  %niter = phi i64 [ %niter.next.3, %.preheader ], [ 0, %.preheader.lr.ph.split ]
  %8 = getelementptr inbounds i8, ptr %.1.i96150, i64 %i.fd
  %.reass = mul i64 %indvars.iv264, %factor.op.mul
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass
  store i16 %i.fj, ptr %gep, align 2, !tbaa !34
  %indvars.iv.next265 = or disjoint i64 %indvars.iv264, 1
  %i.hp = getelementptr inbounds i8, ptr %8, i64 %i.fd
  %.reass.1 = mul i64 %indvars.iv.next265, %factor.op.mul
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.1
  store i16 %i.fj, ptr %gep.1, align 2, !tbaa !34
  %indvars.iv.next265.1 = or disjoint i64 %indvars.iv264, 2
  %9 = getelementptr inbounds i8, ptr %i.hp, i64 %i.fd
  %.reass.2 = mul i64 %indvars.iv.next265.1, %factor.op.mul
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.2
  store i16 %i.fj, ptr %gep.2, align 2, !tbaa !34
  %indvars.iv.next265.2 = or disjoint i64 %indvars.iv264, 3
  %i.hq = getelementptr inbounds i8, ptr %9, i64 %i.fd ; 3 uses
  %.reass.3 = mul i64 %indvars.iv.next265.2, %factor.op.mul
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.3
  store i16 %i.fj, ptr %gep.3, align 2, !tbaa !34
  %indvars.iv.next265.3 = add nuw nsw i64 %indvars.iv264, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge152.loopexit489.unr-lcssa, label %.preheader, !llvm.loop !1407

._crit_edge152.loopexit489.unr-lcssa:             ; preds = %.preheader
  br i1 %lcmp.mod.not, label %._crit_edge152, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge152.loopexit489.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod516)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv264.epil = phi i64 [ %indvars.iv.next265.epil, %.preheader.epil ], [ %indvars.iv.next265.3, %.preheader.epil.preheader ] ; 2 uses
  %.1.i96150.epil = phi ptr [ %i.hr, %.preheader.epil ], [ %i.hq, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.hr = getelementptr inbounds i8, ptr %.1.i96150.epil, i64 %i.fd ; 2 uses
  %.reass.epil = mul i64 %indvars.iv264.epil, %factor.op.mul
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %.reass.epil
  store i16 %i.fj, ptr %gep.epil, align 2, !tbaa !34
  %indvars.iv.next265.epil = add nuw nsw i64 %indvars.iv264.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge152, label %.preheader.epil, !llvm.loop !1410

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit489.unr-lcssa, %.preheader.epil, %._crit_edge148.us160, %._crit_edge148.us
  %.us-phi = phi ptr [ %i.gg, %._crit_edge148.us ], [ %i.hi, %._crit_edge148.us160 ], [ %i.hq, %._crit_edge152.loopexit489.unr-lcssa ], [ %i.hr, %.preheader.epil ]
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count296
  br i1 %exitcond297.not, label %mip_reduced_pred_10.exit, label %.preheader113, !llvm.loop !1411

mip_reduced_pred_10.exit:                         ; preds = %._crit_edge152
  %i.hs = icmp sgt i32 %i.l, 1                    ; 2 uses
  %i.ht = icmp sgt i32 %i.m, 1                    ; 2 uses
  %or.cond = or i1 %i.hs, %i.ht
  br i1 %or.cond, label %bb.b, label %mip_upsampling_1d_10.exit

.lr.ph144:                                        ; preds = %.lr.ph144.preheader499, %.lr.ph144
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph144 ], [ %indvars.iv259.ph, %.lr.ph144.preheader499 ] ; 3 uses
  %.1142 = phi i32 [ %i.hx, %.lr.ph144 ], [ %.1142.ph, %.lr.ph144.preheader499 ]
  %gep334 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %indvars.iv259
  %i.hu = load i32, ptr %gep334, align 4, !tbaa !107
  %i.hv = sub nsw i32 %i.hu, %i.ed                ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv259
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !107
  %i.hx = add nsw i32 %i.hv, %.1142               ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.preheader113.lr.ph, label %.lr.ph144, !llvm.loop !1412

bb.b:                                             ; preds = %mip_reduced_pred_10.exit
  br i1 %i.hs, label %.lr.ph179.preheader, label %mip_upsampling_1d_10.exit111

.lr.ph179.preheader:                              ; preds = %bb.b
  %i.hy = sext i32 %i.m to i64                    ; 2 uses
  %i.hz = trunc i64 %5 to i32
  %i.ia = mul i32 %i.m, %i.hz
  %i.ib = lshr i32 %i.l, 1                        ; 3 uses
  %i.ic = sext i32 %i.ia to i64
  %i.id = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hy
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -2
  %smax299 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.if = add nsw i32 %i.l, -1                    ; 3 uses
  %xtraiter517 = and i32 %i.if, 1
  %i.ig = icmp eq i32 %i.l, 2
  %unroll_iter522 = and i32 %i.if, -2
  %lcmp.mod519.not = icmp eq i32 %xtraiter517, 0
  %lcmp.mod521 = trunc i32 %i.if to i1
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %._crit_edge180
  %.0.i104184 = phi ptr [ %i.ij, %._crit_edge180 ], [ %i.ey, %.lr.ph179.preheader ] ; 3 uses
  %.038.i103183 = phi i32 [ %i.ik, %._crit_edge180 ], [ 0, %.lr.ph179.preheader ]
  %.039.i102181 = phi ptr [ %i.ii, %._crit_edge180 ], [ %i.ie, %.lr.ph179.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %.0.i104184, i64 -2
  br label %.lr.ph171

._crit_edge180:                                   ; preds = %._crit_edge172
  %i.ii = getelementptr inbounds [2 x i8], ptr %.039.i102181, i64 %i.hy
  %i.ij = getelementptr inbounds [2 x i8], ptr %.0.i104184, i64 %i.ic
  %i.ik = add nuw nsw i32 %.038.i103183, 1        ; 2 uses
  %exitcond301.not = icmp eq i32 %i.ik, %smax299
  br i1 %exitcond301.not, label %mip_upsampling_1d_10.exit111, label %.lr.ph179, !llvm.loop !1413

.lr.ph171:                                        ; preds = %.lr.ph179, %._crit_edge172
  %.034.i108177 = phi i32 [ 0, %.lr.ph179 ], [ %i.iz, %._crit_edge172 ]
  %.035.i107176 = phi ptr [ %.0.i104184, %.lr.ph179 ], [ %i.iy, %._crit_edge172 ] ; 2 uses
  %.036.i106175 = phi ptr [ %i.ih, %.lr.ph179 ], [ %i.il, %._crit_edge172 ]
  %.037.i105174 = phi ptr [ %.039.i102181, %.lr.ph179 ], [ %i.il, %._crit_edge172 ] ; 3 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.036.i106175, i64 %i.ez ; 5 uses
  br i1 %i.ig, label %.epil.preheader, label %.lr.ph171.new

._crit_edge172.unr-lcssa:                         ; preds = %.lr.ph171.new
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 2
  br i1 %lcmp.mod519.not, label %._crit_edge172, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge172.unr-lcssa, %.lr.ph171
  %.033.i110169.epil.init = phi i32 [ 1, %.lr.ph171 ], [ %i.jz, %._crit_edge172.unr-lcssa ] ; 2 uses
  %.1.i109168.epil.init = phi ptr [ %.035.i107176, %.lr.ph171 ], [ %i.jy, %._crit_edge172.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod521)
  %i.in = sub nuw nsw i32 %i.l, %.033.i110169.epil.init
  %i.io = load i16, ptr %.037.i105174, align 2, !tbaa !34
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.in, %i.ip
  %i.ir = load i16, ptr %i.il, align 2, !tbaa !34
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %.033.i110169.epil.init, %i.is
  %i.iu = add nuw nsw i32 %i.iq, %i.ib
  %i.iv = add nuw nsw i32 %i.iu, %i.it
  %i.iw = udiv i32 %i.iv, %i.l
  %i.ix = trunc i32 %i.iw to i16
  store i16 %i.ix, ptr %.1.i109168.epil.init, align 2, !tbaa !34
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.unr-lcssa, %.epil.preheader
  %.1.i109168.lcssa = phi ptr [ %i.im, %._crit_edge172.unr-lcssa ], [ %.1.i109168.epil.init, %.epil.preheader ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.1.i109168.lcssa, i64 4
  %i.iz = add nuw nsw i32 %.034.i108177, 1        ; 2 uses
  %exitcond300.not = icmp eq i32 %i.iz, %smax299
  br i1 %exitcond300.not, label %._crit_edge180, label %.lr.ph171, !llvm.loop !1414

.lr.ph171.new:                                    ; preds = %.lr.ph171, %.lr.ph171.new
  %.033.i110169 = phi i32 [ %i.jz, %.lr.ph171.new ], [ 1, %.lr.ph171 ] ; 4 uses
  %.1.i109168 = phi ptr [ %i.jy, %.lr.ph171.new ], [ %.035.i107176, %.lr.ph171 ] ; 4 uses
  %niter523 = phi i32 [ %niter523.next.1, %.lr.ph171.new ], [ 0, %.lr.ph171 ]
  %i.ja = sub nuw nsw i32 %i.l, %.033.i110169
  %i.jb = load i16, ptr %.037.i105174, align 2, !tbaa !34
  %i.jc = zext i16 %i.jb to i32
  %i.jd = mul nuw nsw i32 %i.ja, %i.jc
  %i.je = load i16, ptr %i.il, align 2, !tbaa !34
  %i.jf = zext i16 %i.je to i32
  %i.jg = mul nuw nsw i32 %.033.i110169, %i.jf
  %i.jh = add nuw nsw i32 %i.jd, %i.ib
  %i.ji = add nuw nsw i32 %i.jh, %i.jg
  %i.jj = udiv i32 %i.ji, %i.l
  %i.jk = trunc i32 %i.jj to i16
  store i16 %i.jk, ptr %.1.i109168, align 2, !tbaa !34
  %i.jl = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 2
  %i.jm = add nuw nsw i32 %.033.i110169, 1        ; 2 uses
  %i.jn = sub nuw nsw i32 %i.l, %i.jm
  %i.jo = load i16, ptr %.037.i105174, align 2, !tbaa !34
  %i.jp = zext i16 %i.jo to i32
  %i.jq = mul nuw nsw i32 %i.jn, %i.jp
  %i.jr = load i16, ptr %i.il, align 2, !tbaa !34
  %i.js = zext i16 %i.jr to i32
  %i.jt = mul nuw nsw i32 %i.jm, %i.js
  %i.ju = add nuw nsw i32 %i.jq, %i.ib
  %i.jv = add nuw nsw i32 %i.ju, %i.jt
  %i.jw = udiv i32 %i.jv, %i.l
  %i.jx = trunc i32 %i.jw to i16
  store i16 %i.jx, ptr %i.jl, align 2, !tbaa !34
  %i.jy = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 4 ; 2 uses
  %i.jz = add nuw nsw i32 %.033.i110169, 2        ; 2 uses
  %niter523.next.1 = add i32 %niter523, 2         ; 2 uses
  %niter523.ncmp.1 = icmp eq i32 %niter523.next.1, %unroll_iter522
  br i1 %niter523.ncmp.1, label %._crit_edge172.unr-lcssa, label %.lr.ph171.new, !llvm.loop !1415

mip_upsampling_1d_10.exit111:                     ; preds = %._crit_edge180, %bb.b
  %i.ka = icmp sgt i32 %3, 0
  %or.cond339 = and i1 %i.ht, %i.ka
  br i1 %or.cond339, label %.lr.ph200.preheader, label %mip_upsampling_1d_10.exit

.lr.ph200.preheader:                              ; preds = %mip_upsampling_1d_10.exit111
  %i.kb = trunc i64 %5 to i32
  %sext = shl i64 %5, 32
  %i.kc = ashr exact i64 %sext, 32                ; 5 uses
  %i.kd = sub nsw i64 0, %i.kc
  %i.ke = mul nsw i32 %i.m, %i.kb
  %i.kf = sext i32 %i.ke to i64
  %i.kg = lshr i32 %i.m, 1                        ; 3 uses
  %smax303 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %xtraiter525 = and i32 %i.ev, 1
  %i.kh = icmp eq i32 %i.m, 2
  %unroll_iter530 = and i32 %i.ev, -2
  %lcmp.mod527.not = icmp eq i32 %xtraiter525, 0
  %lcmp.mod529 = trunc i32 %i.ev to i1
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %._crit_edge201
  %.0.i100205 = phi ptr [ %i.kk, %._crit_edge201 ], [ %0, %.lr.ph200.preheader ] ; 3 uses
  %.038.i99204 = phi i32 [ %i.kl, %._crit_edge201 ], [ 0, %.lr.ph200.preheader ]
  %.039.i98202 = phi ptr [ %i.kj, %._crit_edge201 ], [ %1, %.lr.ph200.preheader ] ; 2 uses
  %i.ki = getelementptr inbounds [2 x i8], ptr %.0.i100205, i64 %i.kd
  br label %.lr.ph192

._crit_edge201:                                   ; preds = %._crit_edge193
  %i.kj = getelementptr inbounds nuw i8, ptr %.039.i98202, i64 2
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i100205, i64 2
  %i.kl = add nuw nsw i32 %.038.i99204, 1         ; 2 uses
  %exitcond305.not = icmp eq i32 %i.kl, %3
  br i1 %exitcond305.not, label %mip_upsampling_1d_10.exit, label %.lr.ph200, !llvm.loop !1413

.lr.ph192:                                        ; preds = %.lr.ph200, %._crit_edge193
  %.034.i198 = phi i32 [ 0, %.lr.ph200 ], [ %i.kz, %._crit_edge193 ]
  %.035.i197 = phi ptr [ %.0.i100205, %.lr.ph200 ], [ %11, %._crit_edge193 ] ; 2 uses
  %.036.i196 = phi ptr [ %i.ki, %.lr.ph200 ], [ %i.km, %._crit_edge193 ]
  %.037.i195 = phi ptr [ %.039.i98202, %.lr.ph200 ], [ %i.km, %._crit_edge193 ] ; 3 uses
  %i.km = getelementptr inbounds [2 x i8], ptr %.036.i196, i64 %i.kf ; 5 uses
  br i1 %i.kh, label %.epil.preheader524, label %.lr.ph192.new

._crit_edge193.unr-lcssa:                         ; preds = %.lr.ph192.new
  br i1 %lcmp.mod527.not, label %._crit_edge193, label %.epil.preheader524

.epil.preheader524:                               ; preds = %._crit_edge193.unr-lcssa, %.lr.ph192
  %.033.i190.epil.init = phi i32 [ 1, %.lr.ph192 ], [ %i.lz, %._crit_edge193.unr-lcssa ] ; 2 uses
  %.1.i101189.epil.init = phi ptr [ %.035.i197, %.lr.ph192 ], [ %i.ly, %._crit_edge193.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.kn = sub nuw nsw i32 %i.m, %.033.i190.epil.init
  %i.ko = load i16, ptr %.037.i195, align 2, !tbaa !34
  %i.kp = zext i16 %i.ko to i32
  %i.kq = mul nuw nsw i32 %i.kn, %i.kp
  %i.kr = load i16, ptr %i.km, align 2, !tbaa !34
  %i.ks = zext i16 %i.kr to i32
  %i.kt = mul nuw nsw i32 %.033.i190.epil.init, %i.ks
  %i.ku = add nuw nsw i32 %i.kq, %i.kg
  %i.kv = add nuw nsw i32 %i.ku, %i.kt
  %i.kw = udiv i32 %i.kv, %i.m
  %i.kx = trunc i32 %i.kw to i16
  store i16 %i.kx, ptr %.1.i101189.epil.init, align 2, !tbaa !34
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.unr-lcssa, %.epil.preheader524
  %i.ky = phi ptr [ %i.ll, %._crit_edge193.unr-lcssa ], [ %.1.i101189.epil.init, %.epil.preheader524 ]
  %10 = getelementptr inbounds [2 x i8], ptr %i.ky, i64 %i.kc
  %11 = getelementptr inbounds [2 x i8], ptr %10, i64 %i.kc
  %i.kz = add nuw nsw i32 %.034.i198, 1           ; 2 uses
  %exitcond304.not = icmp eq i32 %i.kz, %smax303
  br i1 %exitcond304.not, label %._crit_edge201, label %.lr.ph192, !llvm.loop !1414

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %.033.i190 = phi i32 [ %i.lz, %.lr.ph192.new ], [ 1, %.lr.ph192 ] ; 4 uses
  %.1.i101189 = phi ptr [ %i.ly, %.lr.ph192.new ], [ %.035.i197, %.lr.ph192 ] ; 2 uses
  %niter531 = phi i32 [ %niter531.next.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.la = sub nuw nsw i32 %i.m, %.033.i190
  %i.lb = load i16, ptr %.037.i195, align 2, !tbaa !34
  %i.lc = zext i16 %i.lb to i32
  %i.ld = mul nuw nsw i32 %i.la, %i.lc
  %i.le = load i16, ptr %i.km, align 2, !tbaa !34
  %i.lf = zext i16 %i.le to i32
  %i.lg = mul nuw nsw i32 %.033.i190, %i.lf
  %i.lh = add nuw nsw i32 %i.ld, %i.kg
  %i.li = add nuw nsw i32 %i.lh, %i.lg
  %i.lj = udiv i32 %i.li, %i.m
  %i.lk = trunc i32 %i.lj to i16
  store i16 %i.lk, ptr %.1.i101189, align 2, !tbaa !34
  %i.ll = getelementptr inbounds [2 x i8], ptr %.1.i101189, i64 %i.kc ; 3 uses
  %i.lm = add nuw nsw i32 %.033.i190, 1           ; 2 uses
  %i.ln = sub nuw nsw i32 %i.m, %i.lm
  %i.lo = load i16, ptr %.037.i195, align 2, !tbaa !34
  %i.lp = zext i16 %i.lo to i32
  %i.lq = mul nuw nsw i32 %i.ln, %i.lp
  %i.lr = load i16, ptr %i.km, align 2, !tbaa !34
  %i.ls = zext i16 %i.lr to i32
  %i.lt = mul nuw nsw i32 %i.lm, %i.ls
  %i.lu = add nuw nsw i32 %i.lq, %i.kg
  %i.lv = add nuw nsw i32 %i.lu, %i.lt
  %i.lw = udiv i32 %i.lv, %i.m
  %i.lx = trunc i32 %i.lw to i16
  store i16 %i.lx, ptr %i.ll, align 2, !tbaa !34
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.ll, i64 %i.kc ; 2 uses
  %i.lz = add nuw nsw i32 %.033.i190, 2           ; 2 uses
  %niter531.next.1 = add i32 %niter531, 2         ; 2 uses
  %niter531.ncmp.1 = icmp eq i32 %niter531.next.1, %unroll_iter530
  br i1 %niter531.ncmp.1, label %._crit_edge193.unr-lcssa, label %.lr.ph192.new, !llvm.loop !1415

mip_upsampling_1d_10.exit:                        ; preds = %._crit_edge201, %mip_upsampling_1d_10.exit111, %mip_reduced_pred_10.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %i.a = icmp eq i32 %3, %4
  %i.b = shl i32 %3, 1
  %i.c = tail call i32 @llvm.smax.i32(i32 %3, i32 %4)
  %i.d = select i1 %i.a, i32 %i.b, i32 %i.c       ; 4 uses
  %.not.i = icmp sge i32 %3, %4
  %i.e = icmp sgt i32 %3, 0                       ; 2 uses
  %or.cond = and i1 %.not.i, %i.e
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load = load <4 x i16>, ptr %i.f, align 2, !tbaa !34
  %wide.load52 = load <4 x i16>, ptr %i.g, align 2, !tbaa !34
  %i.h = zext <4 x i16> %wide.load to <4 x i32>
  %i.i = zext <4 x i16> %wide.load52 to <4 x i32>
  %i.j = add <4 x i32> %vec.phi, %i.h             ; 2 uses
  %i.k = add <4 x i32> %vec.phi51, %i.i           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1416

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader83

.lr.ph.preheader83:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.029.i24.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 2 uses
  %.029.i24 = phi i32 [ %i.q, %.lr.ph ], [ %.029.i24.ph, %.lr.ph.preheader83 ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i16, ptr %i.n, align 2, !tbaa !34
  %i.p = zext i16 %i.o to i32
  %i.q = add nuw nsw i32 %.029.i24, %i.p          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1417

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a
  %.1.i = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %i.q, %.lr.ph ] ; 3 uses
  %.not35.i = icmp sle i32 %3, %4
  %i.r = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond36 = and i1 %.not35.i, %i.r
  br i1 %or.cond36, label %.lr.ph28.preheader, label %pred_dc_val_10.exit

.lr.ph28.preheader:                               ; preds = %.loopexit
  %wide.trip.count43 = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check54 = icmp ult i32 %4, 8
  br i1 %min.iters.check54, label %.lr.ph28.preheader80, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph28.preheader
  %n.vec56 = and i64 %wide.trip.count43, 2147483640 ; 3 uses
  %i.s = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1.i, i64 0
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next63, %vector.body57 ] ; 2 uses
  %vec.phi59 = phi <4 x i32> [ %i.s, %vector.ph55 ], [ %i.x, %vector.body57 ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph55 ], [ %i.y, %vector.body57 ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index58 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.load61 = load <4 x i16>, ptr %i.t, align 2, !tbaa !34
  %wide.load62 = load <4 x i16>, ptr %i.u, align 2, !tbaa !34
  %i.v = zext <4 x i16> %wide.load61 to <4 x i32>
  %i.w = zext <4 x i16> %wide.load62 to <4 x i32>
  %i.x = add <4 x i32> %vec.phi59, %i.v           ; 2 uses
  %i.y = add <4 x i32> %vec.phi60, %i.w           ; 2 uses
  %index.next63 = add nuw i64 %index58, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.z, label %middle.block64, label %vector.body57, !llvm.loop !1418

middle.block64:                                   ; preds = %vector.body57
  %bin.rdx65 = add <4 x i32> %i.y, %i.x
  %i.aa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx65) ; 2 uses
  %cmp.n66 = icmp eq i64 %n.vec56, %wide.trip.count43
  br i1 %cmp.n66, label %pred_dc_val_10.exit, label %.lr.ph28.preheader80

.lr.ph28.preheader80:                             ; preds = %.lr.ph28.preheader, %middle.block64
  %indvars.iv40.ph = phi i64 [ 0, %.lr.ph28.preheader ], [ %n.vec56, %middle.block64 ]
  %.2.i26.ph = phi i32 [ %.1.i, %.lr.ph28.preheader ], [ %i.aa, %middle.block64 ]
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader80, %.lr.ph28
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph28 ], [ %indvars.iv40.ph, %.lr.ph28.preheader80 ] ; 2 uses
  %.2.i26 = phi i32 [ %i.ae, %.lr.ph28 ], [ %.2.i26.ph, %.lr.ph28.preheader80 ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv40
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !34
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nsw i32 %.2.i26, %i.ad              ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %pred_dc_val_10.exit, label %.lr.ph28, !llvm.loop !1419

pred_dc_val_10.exit:                              ; preds = %.lr.ph28, %middle.block64, %.loopexit
  %.3.i = phi i32 [ %.1.i, %.loopexit ], [ %i.aa, %middle.block64 ], [ %i.ae, %.lr.ph28 ]
  %i.af = lshr i32 %i.d, 1
  %.not.i.i = icmp ult i32 %i.d, 65536            ; 2 uses
  %i.ag = lshr i32 %i.d, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.d, i32 %i.ag ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ah = lshr i32 %spec.select.i.i, 8
  %i.ai = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ah
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.ai
  %i.aj = zext nneg i32 %.110.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %.1.i.i, %i.am
  %i.ao = add i32 %.3.i, %i.af
  %i.ap = lshr i32 %i.ao, %i.an
  %i.aq = and i32 %i.ap, 65535
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw i64 %i.ar, 281479271743489      ; 2 uses
  %or.cond37 = and i1 %i.r, %i.e
  br i1 %or.cond37, label %.preheader.preheader, label %._crit_edge35.split

.preheader.preheader:                             ; preds = %pred_dc_val_10.exit
  %i.at = add nsw i32 %3, -1
  %i.au = lshr i32 %i.at, 2
  %narrow = add nuw nsw i32 %i.au, 1
  %i.av = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check70 = icmp ult i32 %3, 13
  %n.vec72 = and i64 %i.av, 2147483644            ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec72, 3
  %i.ax = trunc nuw nsw i64 %n.vec72 to i32
  %i.ay = shl i32 %i.ax, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n77 = icmp eq i64 %n.vec72, %i.av
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
end_hunk_1
begin_hunk_2_@pred_mip_8:bb.a
  %min.iters.check404 = icmp ult i32 %i.br, 9
  %n.vec406 = and i64 %i.cg, 4294967288           ; 4 uses
  %i.ch = trunc nuw i64 %n.vec406 to i32
  %i.ci = or disjoint i32 %i.ch, 1
  %cmp.n417 = icmp eq i64 %n.vec406, %i.cg
  br label %.lr.ph133.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us.preheader, %._crit_edge.us138
  %indvars.iv248 = phi i64 [ 0, %.lr.ph133.us.preheader ], [ %indvars.iv.next249, %._crit_edge.us138 ] ; 2 uses
  %.028.i135.us = phi ptr [ %2, %.lr.ph133.us.preheader ], [ %scevgep246, %._crit_edge.us138 ] ; 5 uses
  %i.cj = load i8, ptr %.028.i135.us, align 1, !tbaa !40
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph133.us
  %i.cl = getelementptr i8, ptr %.028.i135.us, i64 %n.vec406
  %i.cm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ck, i64 0
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next414, %vector.body407 ] ; 2 uses
  %vec.phi409 = phi <4 x i32> [ %i.cm, %vector.ph405 ], [ %i.cr, %vector.body407 ]
  %vec.phi410 = phi <4 x i32> [ zeroinitializer, %vector.ph405 ], [ %i.cs, %vector.body407 ]
  %next.gep411 = getelementptr i8, ptr %.028.i135.us, i64 %index408 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %next.gep411, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep411, i64 5
  %wide.load412 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !40
  %wide.load413 = load <4 x i8>, ptr %i.co, align 1, !tbaa !40
  %i.cp = zext <4 x i8> %wide.load412 to <4 x i32>
  %i.cq = zext <4 x i8> %wide.load413 to <4 x i32>
  %i.cr = add <4 x i32> %vec.phi409, %i.cp        ; 2 uses
  %i.cs = add <4 x i32> %vec.phi410, %i.cq        ; 2 uses
  %index.next414 = add nuw i64 %index408, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next414, %n.vec406
  br i1 %i.ct, label %middle.block415, label %vector.body407, !llvm.loop !2090

middle.block415:                                  ; preds = %vector.body407
  %bin.rdx416 = add <4 x i32> %i.cs, %i.cr
  %i.cu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx416) ; 2 uses
  br i1 %cmp.n417, label %._crit_edge.us138, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %.lr.ph133.us, %middle.block415
  %.028.i135.us.pn.ph = phi ptr [ %.028.i135.us, %.lr.ph133.us ], [ %i.cl, %middle.block415 ]
  %.0.i131.us.ph = phi i32 [ 1, %.lr.ph133.us ], [ %i.ci, %middle.block415 ]
  %.025.i130.us.ph = phi i32 [ %i.ck, %.lr.ph133.us ], [ %i.cu, %middle.block415 ]
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %.028.i135.us.pn = phi ptr [ %.1.i132.us, %scalar.ph403 ], [ %.028.i135.us.pn.ph, %scalar.ph403.preheader ]
  %.0.i131.us = phi i32 [ %i.cy, %scalar.ph403 ], [ %.0.i131.us.ph, %scalar.ph403.preheader ]
  %.025.i130.us = phi i32 [ %i.cx, %scalar.ph403 ], [ %.025.i130.us.ph, %scalar.ph403.preheader ]
  %.1.i132.us = getelementptr inbounds nuw i8, ptr %.028.i135.us.pn, i64 1 ; 2 uses
  %i.cv = load i8, ptr %.1.i132.us, align 1, !tbaa !40
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %.025.i130.us, %i.cw    ; 2 uses
  %i.cy = add nuw nsw i32 %.0.i131.us, 1          ; 2 uses
  %exitcond247.not = icmp eq i32 %i.cy, %i.br
  br i1 %exitcond247.not, label %._crit_edge.us138, label %scalar.ph403, !llvm.loop !2091

._crit_edge.us138:                                ; preds = %scalar.ph403, %middle.block415
  %.lcssa352 = phi i32 [ %i.cu, %middle.block415 ], [ %i.cx, %scalar.ph403 ]
  %scevgep246 = getelementptr i8, ptr %.028.i135.us, i64 %i.ce
  %i.cz = add nuw nsw i32 %.lcssa352, %i.cd
  %i.da = ashr i32 %i.cz, %i.bz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv248
  store i32 %i.da, ptr %i.db, align 4, !tbaa !107
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %mip_downsampling_8.exit, label %.lr.ph133.us, !llvm.loop !2086

.preheader114:                                    ; preds = %mip_downsampling_8.exit95
  %i.dc = icmp sgt i32 %4, 0
  br i1 %i.dc, label %.lr.ph141.preheader, label %mip_downsampling_8.exit

.lr.ph141.preheader:                              ; preds = %.preheader114
  %wide.trip.count257 = zext nneg i32 %4 to i64   ; 3 uses
  %min.iters.check422 = icmp ult i32 %4, 8
  br i1 %min.iters.check422, label %.lr.ph141.preheader503, label %vector.ph423

vector.ph423:                                     ; preds = %.lr.ph141.preheader
  %n.vec424 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next429, %vector.body425 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %index426 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %wide.load427 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !40
  %wide.load428 = load <4 x i8>, ptr %i.de, align 1, !tbaa !40
  %i.df = zext <4 x i8> %wide.load427 to <4 x i32>
  %i.dg = zext <4 x i8> %wide.load428 to <4 x i32>
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %index426 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %i.df, ptr %i.dh, align 4, !tbaa !107
  store <4 x i32> %i.dg, ptr %i.di, align 4, !tbaa !107
  %index.next429 = add nuw i64 %index426, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next429, %n.vec424
  br i1 %i.dj, label %middle.block430, label %vector.body425, !llvm.loop !2092

middle.block430:                                  ; preds = %vector.body425
  %cmp.n431 = icmp eq i64 %n.vec424, %wide.trip.count257
  br i1 %cmp.n431, label %mip_downsampling_8.exit, label %.lr.ph141.preheader503

.lr.ph141.preheader503:                           ; preds = %.lr.ph141.preheader, %middle.block430
  %indvars.iv254.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec424, %middle.block430 ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader503, %.lr.ph141
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph141 ], [ %indvars.iv254.ph, %.lr.ph141.preheader503 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv254
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !40
  %i.dm = zext i8 %i.dl to i32
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv254
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !107
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %mip_downsampling_8.exit, label %.lr.ph141, !llvm.loop !2093

.lr.ph137.split:                                  ; preds = %.lr.ph137.split.preheader, %.lr.ph137.split
  %indvars.iv240 = phi i64 [ 0, %.lr.ph137.split.preheader ], [ %indvars.iv.next241, %.lr.ph137.split ] ; 2 uses
  %.028.i135 = phi ptr [ %2, %.lr.ph137.split.preheader ], [ %.1.i129, %.lr.ph137.split ] ; 2 uses
  %i.do = load i8, ptr %.028.i135, align 1, !tbaa !40
  %i.dp = zext i8 %i.do to i32
  %.1.i129 = getelementptr inbounds nuw i8, ptr %.028.i135, i64 1
  %i.dq = add nuw nsw i32 %i.cd, %i.dp
  %i.dr = ashr i32 %i.dq, %i.bz
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %spec.select81, i64 %indvars.iv240
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !107
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count244
  br i1 %exitcond245.not, label %mip_downsampling_8.exit, label %.lr.ph137.split, !llvm.loop !2094

mip_downsampling_8.exit:                          ; preds = %.lr.ph137.split, %._crit_edge.us138, %.lr.ph141, %middle.block430, %.preheader114
  %i.dt = load i32, ptr %i.a, align 16, !tbaa !107 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dv = load i32, ptr %i.du, align 4
  %.pn = select i1 %i.i, i32 %i.dv, i32 128
  %.073 = sub nsw i32 %.pn, %i.dt                 ; 4 uses
  store i32 %.073, ptr %i.a, align 16, !tbaa !107
  %i.dw = icmp sgt i32 %i.j, 1
  br i1 %i.dw, label %.lr.ph144.preheader, label %.preheader113.lr.ph

.lr.ph144.preheader:                              ; preds = %mip_downsampling_8.exit
  %wide.trip.count262 = zext nneg i32 %i.j to i64 ; 2 uses
  %.sroa.sel.idx = select i1 %i.i, i64 4, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx ; 2 uses
  %i.dx = add nsw i64 %wide.trip.count262, -1     ; 2 uses
  %min.iters.check434 = icmp ult i32 %i.j, 9
  br i1 %min.iters.check434, label %.lr.ph144.preheader499, label %vector.ph435

vector.ph435:                                     ; preds = %.lr.ph144.preheader
  %n.vec436 = and i64 %i.dx, -8                   ; 3 uses
  %i.dy = or disjoint i64 %n.vec436, 1
  %i.dz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.073, i64 0
  %broadcast.splatinsert437 = insertelement <4 x i32> poison, i32 %i.dt, i64 0
  %broadcast.splat438 = shufflevector <4 x i32> %broadcast.splatinsert437, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph435
  %index440 = phi i64 [ 0, %vector.ph435 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %vec.phi441 = phi <4 x i32> [ %i.dz, %vector.ph435 ], [ %i.eh, %vector.body439 ]
  %vec.phi442 = phi <4 x i32> [ zeroinitializer, %vector.ph435 ], [ %i.ei, %vector.body439 ]
  %i.ea = or disjoint i64 %index440, 1            ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load443 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !107
  %wide.load444 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !107
  %i.ed = sub nsw <4 x i32> %wide.load443, %broadcast.splat438 ; 2 uses
  %i.ee = sub nsw <4 x i32> %wide.load444, %broadcast.splat438 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ea ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <4 x i32> %i.ed, ptr %i.ef, align 4, !tbaa !107
  store <4 x i32> %i.ee, ptr %i.eg, align 4, !tbaa !107
  %i.eh = add <4 x i32> %i.ed, %vec.phi441        ; 2 uses
  %i.ei = add <4 x i32> %i.ee, %vec.phi442        ; 2 uses
  %index.next445 = add nuw i64 %index440, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next445, %n.vec436
  br i1 %i.ej, label %middle.block446, label %vector.body439, !llvm.loop !2095

middle.block446:                                  ; preds = %vector.body439
  %bin.rdx447 = add <4 x i32> %i.ei, %i.eh
  %i.ek = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx447) ; 2 uses
  %cmp.n448 = icmp eq i64 %i.dx, %n.vec436
  br i1 %cmp.n448, label %.preheader113.lr.ph, label %.lr.ph144.preheader499

.lr.ph144.preheader499:                           ; preds = %.lr.ph144.preheader, %middle.block446
  %indvars.iv259.ph = phi i64 [ 1, %.lr.ph144.preheader ], [ %i.dy, %middle.block446 ]
  %.1142.ph = phi i32 [ %.073, %.lr.ph144.preheader ], [ %i.ek, %middle.block446 ]
  br label %.lr.ph144

.preheader113.lr.ph:                              ; preds = %.lr.ph144, %middle.block446, %mip_downsampling_8.exit
  %.1.lcssa = phi i32 [ %.073, %mip_downsampling_8.exit ], [ %i.ek, %middle.block446 ], [ %i.hn, %.lr.ph144 ]
  %i.el = add i32 %i.m, -1                        ; 4 uses
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i64 %5, %i.em
  %i.eo = getelementptr i8, ptr %0, i64 %i.en     ; 2 uses
  %i.ep = sext i32 %i.l to i64                    ; 4 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -1     ; 2 uses
  %i.es = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.et = sext i32 %i.j to i64                    ; 7 uses
  %i.eu = shl i32 %.1.lcssa, 5
  %reass.sub = sub i32 32, %i.eu                  ; 3 uses
  %i.ev = ashr i32 %reass.sub, 6
  %i.ew = add nsw i32 %i.ev, %i.dt
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %i.ey = tail call i32 @llvm.umin.i32(i32 %i.ex, i32 255)
  %i.ez = trunc nuw i32 %i.ey to i8               ; 5 uses
  %i.fa = sext i32 %i.m to i64                    ; 3 uses
  %smax267 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count296 = zext nneg i32 %smax267 to i64 ; 5 uses
  %factor.op.mul337 = mul i64 %5, %i.fa
  %factor.op.mul = mul i64 %5, %i.fa              ; 5 uses
  %wide.trip.count273 = zext i32 %i.j to i64      ; 5 uses
  %factor.op.mul335 = mul i64 %5, %i.fa
  %wide.trip.count284 = zext nneg i32 %i.j to i64
  %xtraiter = and i64 %wide.trip.count296, 3      ; 3 uses
  %unroll_iter = and i64 %wide.trip.count296, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod516 = icmp ne i64 %xtraiter, 0
  %min.iters.check470 = icmp ult i32 %i.j, 8
  %n.vec472 = and i64 %wide.trip.count273, 2147483640 ; 3 uses
  %cmp.n484 = icmp eq i64 %n.vec472, %wide.trip.count273
  %min.iters.check452 = icmp ult i32 %i.j, 8
  %n.vec454 = and i64 %wide.trip.count273, 2147483640 ; 3 uses
  %cmp.n466 = icmp eq i64 %n.vec454, %wide.trip.count273
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %._crit_edge152
  %indvars.iv292 = phi i64 [ 0, %.preheader113.lr.ph ], [ %indvars.iv.next293, %._crit_edge152 ] ; 3 uses
  %.041.i166 = phi ptr [ %i.k, %.preheader113.lr.ph ], [ %.us-phi, %._crit_edge152 ] ; 3 uses
  %i.fb = mul nsw i64 %indvars.iv292, %i.ep
  %invariant.gep = getelementptr i8, ptr %i.er, i64 %i.fb ; 6 uses
  %.reass338 = mul i64 %indvars.iv292, %factor.op.mul337
  %i.fc = getelementptr i8, ptr %i.er, i64 %.reass338
  br i1 %.not, label %.preheader.us, label %.preheader.lr.ph.split

.preheader.us:                                    ; preds = %.preheader113, %._crit_edge148.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %._crit_edge148.us ], [ 0, %.preheader113 ] ; 2 uses
  %.1.i96150.us = phi ptr [ %i.fw, %._crit_edge148.us ], [ %.041.i166, %.preheader113 ] ; 3 uses
  br i1 %i.es, label %.lr.ph147.us.preheader, label %._crit_edge148.us

.lr.ph147.us.preheader:                           ; preds = %.preheader.us
  br i1 %min.iters.check452, label %.lr.ph147.us.preheader487, label %vector.body455

vector.body455:                                   ; preds = %.lr.ph147.us.preheader, %vector.body455
  %index456 = phi i64 [ %index.next463, %vector.body455 ], [ 0, %.lr.ph147.us.preheader ] ; 3 uses
  %vec.phi457 = phi <4 x i32> [ %i.fl, %vector.body455 ], [ zeroinitializer, %.lr.ph147.us.preheader ]
  %vec.phi458 = phi <4 x i32> [ %i.fm, %vector.body455 ], [ zeroinitializer, %.lr.ph147.us.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index456 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load459 = load <4 x i32>, ptr %i.fd, align 16, !tbaa !107
  %wide.load460 = load <4 x i32>, ptr %i.fe, align 16, !tbaa !107
  %i.ff = getelementptr inbounds nuw i8, ptr %.1.i96150.us, i64 %index456 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %wide.load461 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !40
  %wide.load462 = load <4 x i8>, ptr %i.fg, align 1, !tbaa !40
  %i.fh = zext <4 x i8> %wide.load461 to <4 x i32>
  %i.fi = zext <4 x i8> %wide.load462 to <4 x i32>
  %i.fj = mul nsw <4 x i32> %wide.load459, %i.fh
  %i.fk = mul nsw <4 x i32> %wide.load460, %i.fi
  %i.fl = add <4 x i32> %i.fj, %vec.phi457        ; 2 uses
  %i.fm = add <4 x i32> %i.fk, %vec.phi458        ; 2 uses
  %index.next463 = add nuw i64 %index456, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next463, %n.vec454
  br i1 %i.fn, label %middle.block464, label %vector.body455, !llvm.loop !2096

middle.block464:                                  ; preds = %vector.body455
  %bin.rdx465 = add <4 x i32> %i.fm, %i.fl
  %i.fo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx465) ; 2 uses
  br i1 %cmp.n466, label %._crit_edge148.us, label %.lr.ph147.us.preheader487

.lr.ph147.us.preheader487:                        ; preds = %.lr.ph147.us.preheader, %middle.block464
  %indvars.iv281.ph = phi i64 [ 0, %.lr.ph147.us.preheader ], [ %n.vec454, %middle.block464 ]
  %.038.i145.us.ph = phi i32 [ 0, %.lr.ph147.us.preheader ], [ %i.fo, %middle.block464 ]
  br label %.lr.ph147.us

.lr.ph147.us:                                     ; preds = %.lr.ph147.us.preheader487, %.lr.ph147.us
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %.lr.ph147.us ], [ %indvars.iv281.ph, %.lr.ph147.us.preheader487 ] ; 3 uses
  %.038.i145.us = phi i32 [ %i.fv, %.lr.ph147.us ], [ %.038.i145.us.ph, %.lr.ph147.us.preheader487 ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv281
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !107
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i96150.us, i64 %indvars.iv281
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !40
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nsw i32 %i.fq, %i.ft
  %i.fv = add nsw i32 %i.fu, %.038.i145.us        ; 2 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count284
  br i1 %exitcond285.not, label %._crit_edge148.us, label %.lr.ph147.us, !llvm.loop !2097

._crit_edge148.us:                                ; preds = %.lr.ph147.us, %middle.block464, %.preheader.us
  %.038.i.lcssa.us = phi i32 [ 0, %.preheader.us ], [ %i.fo, %middle.block464 ], [ %i.fv, %.lr.ph147.us ]
  %i.fw = getelementptr inbounds i8, ptr %.1.i96150.us, i64 %i.et ; 2 uses
  %i.fx = add i32 %reass.sub, %.038.i.lcssa.us
  %i.fy = ashr i32 %i.fx, 6
  %i.fz = add nsw i32 %i.fy, %i.dt
  %i.ga = tail call i32 @llvm.smax.i32(i32 %i.fz, i32 0)
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 255)
  %i.gc = trunc nuw i32 %i.gb to i8
  %i.gd = mul nsw i64 %indvars.iv286, %i.ep
  %i.ge = getelementptr i8, ptr %i.fc, i64 %i.gd
  store i8 %i.gc, ptr %i.ge, align 1, !tbaa !40
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count296
  br i1 %exitcond291.not, label %._crit_edge152, label %.preheader.us, !llvm.loop !2098

.preheader.lr.ph.split:                           ; preds = %.preheader113
  br i1 %i.es, label %.preheader.us154, label %.preheader

.preheader.us154:                                 ; preds = %.preheader.lr.ph.split, %._crit_edge148.us160
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %._crit_edge148.us160 ], [ 0, %.preheader.lr.ph.split ] ; 2 uses
  %.1.i96150.us156 = phi ptr [ %i.gy, %._crit_edge148.us160 ], [ %.041.i166, %.preheader.lr.ph.split ] ; 3 uses
  br i1 %min.iters.check470, label %scalar.ph469.preheader, label %vector.body473

vector.body473:                                   ; preds = %.preheader.us154, %vector.body473
  %index474 = phi i64 [ %index.next481, %vector.body473 ], [ 0, %.preheader.us154 ] ; 3 uses
  %vec.phi475 = phi <4 x i32> [ %i.gn, %vector.body473 ], [ zeroinitializer, %.preheader.us154 ]
  %vec.phi476 = phi <4 x i32> [ %i.go, %vector.body473 ], [ zeroinitializer, %.preheader.us154 ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index474 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load477 = load <4 x i32>, ptr %i.gf, align 16, !tbaa !107
  %wide.load478 = load <4 x i32>, ptr %i.gg, align 16, !tbaa !107
  %i.gh = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %index474 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %wide.load479 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !40
  %wide.load480 = load <4 x i8>, ptr %i.gi, align 1, !tbaa !40
  %i.gj = zext <4 x i8> %wide.load479 to <4 x i32>
  %i.gk = zext <4 x i8> %wide.load480 to <4 x i32>
  %i.gl = mul nsw <4 x i32> %wide.load477, %i.gj
  %i.gm = mul nsw <4 x i32> %wide.load478, %i.gk
  %i.gn = add <4 x i32> %i.gl, %vec.phi475        ; 2 uses
  %i.go = add <4 x i32> %i.gm, %vec.phi476        ; 2 uses
  %index.next481 = add nuw i64 %index474, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next481, %n.vec472
  br i1 %i.gp, label %middle.block482, label %vector.body473, !llvm.loop !2099

middle.block482:                                  ; preds = %vector.body473
  %bin.rdx483 = add <4 x i32> %i.go, %i.gn
  %i.gq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx483) ; 2 uses
  br i1 %cmp.n484, label %._crit_edge148.us160, label %scalar.ph469.preheader

scalar.ph469.preheader:                           ; preds = %.preheader.us154, %middle.block482
  %indvars.iv270.ph = phi i64 [ 0, %.preheader.us154 ], [ %n.vec472, %middle.block482 ]
  %.038.i145.us159.ph = phi i32 [ 0, %.preheader.us154 ], [ %i.gq, %middle.block482 ]
  br label %scalar.ph469

scalar.ph469:                                     ; preds = %scalar.ph469.preheader, %scalar.ph469
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %scalar.ph469 ], [ %indvars.iv270.ph, %scalar.ph469.preheader ] ; 3 uses
  %.038.i145.us159 = phi i32 [ %i.gx, %scalar.ph469 ], [ %.038.i145.us159.ph, %scalar.ph469.preheader ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv270
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !107
  %i.gt = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %indvars.iv270
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !40
  %i.gv = zext i8 %i.gu to i32
  %i.gw = mul nsw i32 %i.gs, %i.gv
  %i.gx = add nsw i32 %i.gw, %.038.i145.us159     ; 2 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %._crit_edge148.us160, label %scalar.ph469, !llvm.loop !2100

._crit_edge148.us160:                             ; preds = %scalar.ph469, %middle.block482
  %.lcssa347 = phi i32 [ %i.gq, %middle.block482 ], [ %i.gx, %scalar.ph469 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.1.i96150.us156, i64 %i.et ; 2 uses
  %i.gz = add i32 %reass.sub, %.lcssa347
  %i.ha = ashr i32 %i.gz, 6
  %i.hb = add nsw i32 %i.ha, %i.dt
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 255)
  %i.he = trunc nuw i32 %i.hd to i8
  %.reass336 = mul i64 %indvars.iv275, %factor.op.mul335
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %.reass336
  store i8 %i.he, ptr %gep.us, align 1, !tbaa !40
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count296
  br i1 %exitcond280.not, label %._crit_edge152, label %.preheader.us154, !llvm.loop !2098

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.preheader
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.preheader ], [ 0, %.preheader.lr.ph.split ] ; 5 uses
  %.1.i96150 = phi ptr [ %i.hg, %.preheader ], [ %.041.i166, %.preheader.lr.ph.split ]
  %niter = phi i64 [ %niter.next.3, %.preheader ], [ 0, %.preheader.lr.ph.split ]
  %8 = getelementptr inbounds i8, ptr %.1.i96150, i64 %i.et
  %.reass = mul i64 %indvars.iv264, %factor.op.mul
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass
  store i8 %i.ez, ptr %gep, align 1, !tbaa !40
  %indvars.iv.next265 = or disjoint i64 %indvars.iv264, 1
  %i.hf = getelementptr inbounds i8, ptr %8, i64 %i.et
  %.reass.1 = mul i64 %indvars.iv.next265, %factor.op.mul
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %.reass.1
  store i8 %i.ez, ptr %gep.1, align 1, !tbaa !40
  %indvars.iv.next265.1 = or disjoint i64 %indvars.iv264, 2
  %9 = getelementptr inbounds i8, ptr %i.hf, i64 %i.et
  %.reass.2 = mul i64 %indvars.iv.next265.1, %factor.op.mul
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %.reass.2
  store i8 %i.ez, ptr %gep.2, align 1, !tbaa !40
  %indvars.iv.next265.2 = or disjoint i64 %indvars.iv264, 3
  %i.hg = getelementptr inbounds i8, ptr %9, i64 %i.et ; 3 uses
  %.reass.3 = mul i64 %indvars.iv.next265.2, %factor.op.mul
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %.reass.3
  store i8 %i.ez, ptr %gep.3, align 1, !tbaa !40
  %indvars.iv.next265.3 = add nuw nsw i64 %indvars.iv264, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge152.loopexit489.unr-lcssa, label %.preheader, !llvm.loop !2098

._crit_edge152.loopexit489.unr-lcssa:             ; preds = %.preheader
  br i1 %lcmp.mod.not, label %._crit_edge152, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge152.loopexit489.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod516)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv264.epil = phi i64 [ %indvars.iv.next265.epil, %.preheader.epil ], [ %indvars.iv.next265.3, %.preheader.epil.preheader ] ; 2 uses
  %.1.i96150.epil = phi ptr [ %i.hh, %.preheader.epil ], [ %i.hg, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.hh = getelementptr inbounds i8, ptr %.1.i96150.epil, i64 %i.et ; 2 uses
  %.reass.epil = mul i64 %indvars.iv264.epil, %factor.op.mul
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.reass.epil
  store i8 %i.ez, ptr %gep.epil, align 1, !tbaa !40
  %indvars.iv.next265.epil = add nuw nsw i64 %indvars.iv264.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge152, label %.preheader.epil, !llvm.loop !2101

._crit_edge152:                                   ; preds = %._crit_edge152.loopexit489.unr-lcssa, %.preheader.epil, %._crit_edge148.us160, %._crit_edge148.us
  %.us-phi = phi ptr [ %i.fw, %._crit_edge148.us ], [ %i.gy, %._crit_edge148.us160 ], [ %i.hg, %._crit_edge152.loopexit489.unr-lcssa ], [ %i.hh, %.preheader.epil ]
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count296
  br i1 %exitcond297.not, label %mip_reduced_pred_8.exit, label %.preheader113, !llvm.loop !2102

mip_reduced_pred_8.exit:                          ; preds = %._crit_edge152
  %i.hi = icmp sgt i32 %i.l, 1                    ; 2 uses
  %i.hj = icmp sgt i32 %i.m, 1                    ; 2 uses
  %or.cond = or i1 %i.hi, %i.hj
  br i1 %or.cond, label %bb.b, label %mip_upsampling_1d_8.exit

.lr.ph144:                                        ; preds = %.lr.ph144.preheader499, %.lr.ph144
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph144 ], [ %indvars.iv259.ph, %.lr.ph144.preheader499 ] ; 3 uses
  %.1142 = phi i32 [ %i.hn, %.lr.ph144 ], [ %.1142.ph, %.lr.ph144.preheader499 ]
  %gep334 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %indvars.iv259
  %i.hk = load i32, ptr %gep334, align 4, !tbaa !107
  %i.hl = sub nsw i32 %i.hk, %i.dt                ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv259
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !107
  %i.hn = add nsw i32 %i.hl, %.1142               ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %.preheader113.lr.ph, label %.lr.ph144, !llvm.loop !2103

bb.b:                                             ; preds = %mip_reduced_pred_8.exit
  br i1 %i.hi, label %.lr.ph179.preheader, label %mip_upsampling_1d_8.exit111

.lr.ph179.preheader:                              ; preds = %bb.b
  %i.ho = sext i32 %i.m to i64                    ; 2 uses
  %i.hp = trunc i64 %5 to i32
  %i.hq = mul i32 %i.m, %i.hp
  %i.hr = lshr i32 %i.l, 1                        ; 3 uses
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds i8, ptr %2, i64 %i.ho
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -1
  %smax299 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.hv = add nsw i32 %i.l, -1                    ; 3 uses
  %xtraiter517 = and i32 %i.hv, 1
  %i.hw = icmp eq i32 %i.l, 2
  %unroll_iter522 = and i32 %i.hv, -2
  %lcmp.mod519.not = icmp eq i32 %xtraiter517, 0
  %lcmp.mod521 = trunc i32 %i.hv to i1
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %._crit_edge180
  %.0.i104184 = phi ptr [ %i.hz, %._crit_edge180 ], [ %i.eo, %.lr.ph179.preheader ] ; 3 uses
  %.038.i103183 = phi i32 [ %i.ia, %._crit_edge180 ], [ 0, %.lr.ph179.preheader ]
  %.039.i102181 = phi ptr [ %i.hy, %._crit_edge180 ], [ %i.hu, %.lr.ph179.preheader ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.0.i104184, i64 -1
  br label %.lr.ph171

._crit_edge180:                                   ; preds = %._crit_edge172
  %i.hy = getelementptr inbounds i8, ptr %.039.i102181, i64 %i.ho
  %i.hz = getelementptr inbounds i8, ptr %.0.i104184, i64 %i.hs
  %i.ia = add nuw nsw i32 %.038.i103183, 1        ; 2 uses
  %exitcond301.not = icmp eq i32 %i.ia, %smax299
  br i1 %exitcond301.not, label %mip_upsampling_1d_8.exit111, label %.lr.ph179, !llvm.loop !2104

.lr.ph171:                                        ; preds = %.lr.ph179, %._crit_edge172
  %.034.i108177 = phi i32 [ 0, %.lr.ph179 ], [ %i.ip, %._crit_edge172 ]
  %.035.i107176 = phi ptr [ %.0.i104184, %.lr.ph179 ], [ %i.io, %._crit_edge172 ] ; 2 uses
  %.036.i106175 = phi ptr [ %i.hx, %.lr.ph179 ], [ %i.ib, %._crit_edge172 ]
  %.037.i105174 = phi ptr [ %.039.i102181, %.lr.ph179 ], [ %i.ib, %._crit_edge172 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.036.i106175, i64 %i.ep ; 5 uses
  br i1 %i.hw, label %.epil.preheader, label %.lr.ph171.new

._crit_edge172.unr-lcssa:                         ; preds = %.lr.ph171.new
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 1
  br i1 %lcmp.mod519.not, label %._crit_edge172, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge172.unr-lcssa, %.lr.ph171
  %.033.i110169.epil.init = phi i32 [ 1, %.lr.ph171 ], [ %i.jp, %._crit_edge172.unr-lcssa ] ; 2 uses
  %.1.i109168.epil.init = phi ptr [ %.035.i107176, %.lr.ph171 ], [ %i.jo, %._crit_edge172.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod521)
  %i.id = sub nuw nsw i32 %i.l, %.033.i110169.epil.init
  %i.ie = load i8, ptr %.037.i105174, align 1, !tbaa !40
  %i.if = zext i8 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.id, %i.if
  %i.ih = load i8, ptr %i.ib, align 1, !tbaa !40
  %i.ii = zext i8 %i.ih to i32
  %i.ij = mul nuw nsw i32 %.033.i110169.epil.init, %i.ii
  %i.ik = add nuw nsw i32 %i.ig, %i.hr
  %i.il = add nuw nsw i32 %i.ik, %i.ij
  %i.im = udiv i32 %i.il, %i.l
  %i.in = trunc i32 %i.im to i8
  store i8 %i.in, ptr %.1.i109168.epil.init, align 1, !tbaa !40
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.unr-lcssa, %.epil.preheader
  %.1.i109168.lcssa = phi ptr [ %i.ic, %._crit_edge172.unr-lcssa ], [ %.1.i109168.epil.init, %.epil.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.1.i109168.lcssa, i64 2
  %i.ip = add nuw nsw i32 %.034.i108177, 1        ; 2 uses
  %exitcond300.not = icmp eq i32 %i.ip, %smax299
  br i1 %exitcond300.not, label %._crit_edge180, label %.lr.ph171, !llvm.loop !2105

.lr.ph171.new:                                    ; preds = %.lr.ph171, %.lr.ph171.new
  %.033.i110169 = phi i32 [ %i.jp, %.lr.ph171.new ], [ 1, %.lr.ph171 ] ; 4 uses
  %.1.i109168 = phi ptr [ %i.jo, %.lr.ph171.new ], [ %.035.i107176, %.lr.ph171 ] ; 4 uses
  %niter523 = phi i32 [ %niter523.next.1, %.lr.ph171.new ], [ 0, %.lr.ph171 ]
  %i.iq = sub nuw nsw i32 %i.l, %.033.i110169
  %i.ir = load i8, ptr %.037.i105174, align 1, !tbaa !40
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.iq, %i.is
  %i.iu = load i8, ptr %i.ib, align 1, !tbaa !40
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul nuw nsw i32 %.033.i110169, %i.iv
  %i.ix = add nuw nsw i32 %i.it, %i.hr
  %i.iy = add nuw nsw i32 %i.ix, %i.iw
  %i.iz = udiv i32 %i.iy, %i.l
  %i.ja = trunc i32 %i.iz to i8
  store i8 %i.ja, ptr %.1.i109168, align 1, !tbaa !40
  %i.jb = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 1
  %i.jc = add nuw nsw i32 %.033.i110169, 1        ; 2 uses
  %i.jd = sub nuw nsw i32 %i.l, %i.jc
  %i.je = load i8, ptr %.037.i105174, align 1, !tbaa !40
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jd, %i.jf
  %i.jh = load i8, ptr %i.ib, align 1, !tbaa !40
  %i.ji = zext i8 %i.jh to i32
  %i.jj = mul nuw nsw i32 %i.jc, %i.ji
  %i.jk = add nuw nsw i32 %i.jg, %i.hr
  %i.jl = add nuw nsw i32 %i.jk, %i.jj
  %i.jm = udiv i32 %i.jl, %i.l
  %i.jn = trunc i32 %i.jm to i8
  store i8 %i.jn, ptr %i.jb, align 1, !tbaa !40
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.i109168, i64 2 ; 2 uses
  %i.jp = add nuw nsw i32 %.033.i110169, 2        ; 2 uses
  %niter523.next.1 = add i32 %niter523, 2         ; 2 uses
  %niter523.ncmp.1 = icmp eq i32 %niter523.next.1, %unroll_iter522
  br i1 %niter523.ncmp.1, label %._crit_edge172.unr-lcssa, label %.lr.ph171.new, !llvm.loop !2106

mip_upsampling_1d_8.exit111:                      ; preds = %._crit_edge180, %bb.b
  %i.jq = icmp sgt i32 %3, 0
  %or.cond339 = and i1 %i.hj, %i.jq
  br i1 %or.cond339, label %.lr.ph200.preheader, label %mip_upsampling_1d_8.exit

.lr.ph200.preheader:                              ; preds = %mip_upsampling_1d_8.exit111
  %i.jr = trunc i64 %5 to i32
  %sext = shl i64 %5, 32
  %i.js = ashr exact i64 %sext, 32                ; 5 uses
  %i.jt = sub nsw i64 0, %i.js
  %i.ju = mul nsw i32 %i.m, %i.jr
  %i.jv = sext i32 %i.ju to i64
  %i.jw = lshr i32 %i.m, 1                        ; 3 uses
  %smax303 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %xtraiter525 = and i32 %i.el, 1
  %i.jx = icmp eq i32 %i.m, 2
  %unroll_iter530 = and i32 %i.el, -2
  %lcmp.mod527.not = icmp eq i32 %xtraiter525, 0
  %lcmp.mod529 = trunc i32 %i.el to i1
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %._crit_edge201
  %.0.i100205 = phi ptr [ %i.ka, %._crit_edge201 ], [ %0, %.lr.ph200.preheader ] ; 3 uses
  %.038.i99204 = phi i32 [ %i.kb, %._crit_edge201 ], [ 0, %.lr.ph200.preheader ]
  %.039.i98202 = phi ptr [ %i.jz, %._crit_edge201 ], [ %1, %.lr.ph200.preheader ] ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %.0.i100205, i64 %i.jt
  br label %.lr.ph192

._crit_edge201:                                   ; preds = %._crit_edge193
  %i.jz = getelementptr inbounds nuw i8, ptr %.039.i98202, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i100205, i64 1
  %i.kb = add nuw nsw i32 %.038.i99204, 1         ; 2 uses
  %exitcond305.not = icmp eq i32 %i.kb, %3
  br i1 %exitcond305.not, label %mip_upsampling_1d_8.exit, label %.lr.ph200, !llvm.loop !2104

.lr.ph192:                                        ; preds = %.lr.ph200, %._crit_edge193
  %.034.i198 = phi i32 [ 0, %.lr.ph200 ], [ %i.kq, %._crit_edge193 ]
  %.035.i197 = phi ptr [ %.0.i100205, %.lr.ph200 ], [ %i.kp, %._crit_edge193 ] ; 2 uses
  %.036.i196 = phi ptr [ %i.jy, %.lr.ph200 ], [ %i.kc, %._crit_edge193 ]
  %.037.i195 = phi ptr [ %.039.i98202, %.lr.ph200 ], [ %i.kc, %._crit_edge193 ] ; 3 uses
  %i.kc = getelementptr inbounds i8, ptr %.036.i196, i64 %i.jv ; 5 uses
  br i1 %i.jx, label %.epil.preheader524, label %.lr.ph192.new

._crit_edge193.unr-lcssa:                         ; preds = %.lr.ph192.new
  br i1 %lcmp.mod527.not, label %._crit_edge193, label %.epil.preheader524

.epil.preheader524:                               ; preds = %._crit_edge193.unr-lcssa, %.lr.ph192
  %.033.i190.epil.init = phi i32 [ 1, %.lr.ph192 ], [ %i.lq, %._crit_edge193.unr-lcssa ] ; 2 uses
  %.1.i101189.epil.init = phi ptr [ %.035.i197, %.lr.ph192 ], [ %i.lp, %._crit_edge193.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.kd = sub nuw nsw i32 %i.m, %.033.i190.epil.init
  %i.ke = load i8, ptr %.037.i195, align 1, !tbaa !40
  %i.kf = zext i8 %i.ke to i32
  %i.kg = mul nuw nsw i32 %i.kd, %i.kf
  %i.kh = load i8, ptr %i.kc, align 1, !tbaa !40
  %i.ki = zext i8 %i.kh to i32
  %i.kj = mul nuw nsw i32 %.033.i190.epil.init, %i.ki
  %i.kk = add nuw nsw i32 %i.kg, %i.jw
  %i.kl = add nuw nsw i32 %i.kk, %i.kj
  %i.km = udiv i32 %i.kl, %i.m
  %i.kn = trunc i32 %i.km to i8
  store i8 %i.kn, ptr %.1.i101189.epil.init, align 1, !tbaa !40
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.unr-lcssa, %.epil.preheader524
  %i.ko = phi ptr [ %i.lc, %._crit_edge193.unr-lcssa ], [ %.1.i101189.epil.init, %.epil.preheader524 ]
  %10 = getelementptr inbounds i8, ptr %i.ko, i64 %i.js
  %i.kp = getelementptr inbounds i8, ptr %10, i64 %i.js
  %i.kq = add nuw nsw i32 %.034.i198, 1           ; 2 uses
  %exitcond304.not = icmp eq i32 %i.kq, %smax303
  br i1 %exitcond304.not, label %._crit_edge201, label %.lr.ph192, !llvm.loop !2105

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %.033.i190 = phi i32 [ %i.lq, %.lr.ph192.new ], [ 1, %.lr.ph192 ] ; 4 uses
  %.1.i101189 = phi ptr [ %i.lp, %.lr.ph192.new ], [ %.035.i197, %.lr.ph192 ] ; 2 uses
  %niter531 = phi i32 [ %niter531.next.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.kr = sub nuw nsw i32 %i.m, %.033.i190
  %i.ks = load i8, ptr %.037.i195, align 1, !tbaa !40
  %i.kt = zext i8 %i.ks to i32
  %i.ku = mul nuw nsw i32 %i.kr, %i.kt
  %i.kv = load i8, ptr %i.kc, align 1, !tbaa !40
  %i.kw = zext i8 %i.kv to i32
  %i.kx = mul nuw nsw i32 %.033.i190, %i.kw
  %i.ky = add nuw nsw i32 %i.ku, %i.jw
  %i.kz = add nuw nsw i32 %i.ky, %i.kx
  %i.la = udiv i32 %i.kz, %i.m
  %i.lb = trunc i32 %i.la to i8
  store i8 %i.lb, ptr %.1.i101189, align 1, !tbaa !40
  %i.lc = getelementptr inbounds i8, ptr %.1.i101189, i64 %i.js ; 3 uses
  %i.ld = add nuw nsw i32 %.033.i190, 1           ; 2 uses
  %i.le = sub nuw nsw i32 %i.m, %i.ld
  %i.lf = load i8, ptr %.037.i195, align 1, !tbaa !40
  %i.lg = zext i8 %i.lf to i32
  %i.lh = mul nuw nsw i32 %i.le, %i.lg
  %i.li = load i8, ptr %i.kc, align 1, !tbaa !40
  %i.lj = zext i8 %i.li to i32
  %i.lk = mul nuw nsw i32 %i.ld, %i.lj
  %i.ll = add nuw nsw i32 %i.lh, %i.jw
  %i.lm = add nuw nsw i32 %i.ll, %i.lk
  %i.ln = udiv i32 %i.lm, %i.m
  %i.lo = trunc i32 %i.ln to i8
  store i8 %i.lo, ptr %i.lc, align 1, !tbaa !40
  %i.lp = getelementptr inbounds i8, ptr %i.lc, i64 %i.js ; 2 uses
  %i.lq = add nuw nsw i32 %.033.i190, 2           ; 2 uses
  %niter531.next.1 = add i32 %niter531, 2         ; 2 uses
  %niter531.ncmp.1 = icmp eq i32 %niter531.next.1, %unroll_iter530
  br i1 %niter531.ncmp.1, label %._crit_edge193.unr-lcssa, label %.lr.ph192.new, !llvm.loop !2106

mip_upsampling_1d_8.exit:                         ; preds = %._crit_edge201, %mip_upsampling_1d_8.exit111, %mip_reduced_pred_8.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #6 {
bb.a:
  %i.a = icmp eq i32 %3, %4
  %i.b = shl i32 %3, 1
  %i.c = tail call i32 @llvm.smax.i32(i32 %3, i32 %4)
  %i.d = select i1 %i.a, i32 %i.b, i32 %i.c       ; 4 uses
  %.not.i = icmp sge i32 %3, %4
  %i.e = icmp sgt i32 %3, 0                       ; 2 uses
  %or.cond = and i1 %.not.i, %i.e
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load = load <4 x i8>, ptr %i.f, align 1, !tbaa !40
  %wide.load52 = load <4 x i8>, ptr %i.g, align 1, !tbaa !40
  %i.h = zext <4 x i8> %wide.load to <4 x i32>
  %i.i = zext <4 x i8> %wide.load52 to <4 x i32>
  %i.j = add <4 x i32> %vec.phi, %i.h             ; 2 uses
  %i.k = add <4 x i32> %vec.phi51, %i.i           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !2107

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader83

.lr.ph.preheader83:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.029.i24.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader83, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 2 uses
  %.029.i24 = phi i32 [ %i.q, %.lr.ph ], [ %.029.i24.ph, %.lr.ph.preheader83 ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !40
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %.029.i24, %i.p          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2108

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.a
  %.1.i = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %i.q, %.lr.ph ] ; 3 uses
  %.not35.i = icmp sle i32 %3, %4
  %i.r = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond36 = and i1 %.not35.i, %i.r
  br i1 %or.cond36, label %.lr.ph28.preheader, label %pred_dc_val_8.exit

.lr.ph28.preheader:                               ; preds = %.loopexit
  %wide.trip.count43 = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check54 = icmp ult i32 %4, 8
  br i1 %min.iters.check54, label %.lr.ph28.preheader80, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph28.preheader
  %n.vec56 = and i64 %wide.trip.count43, 2147483640 ; 3 uses
  %i.s = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1.i, i64 0
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next63, %vector.body57 ] ; 2 uses
  %vec.phi59 = phi <4 x i32> [ %i.s, %vector.ph55 ], [ %i.x, %vector.body57 ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph55 ], [ %i.y, %vector.body57 ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %index58 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %wide.load61 = load <4 x i8>, ptr %i.t, align 1, !tbaa !40
  %wide.load62 = load <4 x i8>, ptr %i.u, align 1, !tbaa !40
  %i.v = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.w = zext <4 x i8> %wide.load62 to <4 x i32>
  %i.x = add <4 x i32> %vec.phi59, %i.v           ; 2 uses
  %i.y = add <4 x i32> %vec.phi60, %i.w           ; 2 uses
  %index.next63 = add nuw i64 %index58, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.z, label %middle.block64, label %vector.body57, !llvm.loop !2109

middle.block64:                                   ; preds = %vector.body57
  %bin.rdx65 = add <4 x i32> %i.y, %i.x
  %i.aa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx65) ; 2 uses
  %cmp.n66 = icmp eq i64 %n.vec56, %wide.trip.count43
  br i1 %cmp.n66, label %pred_dc_val_8.exit, label %.lr.ph28.preheader80

.lr.ph28.preheader80:                             ; preds = %.lr.ph28.preheader, %middle.block64
  %indvars.iv40.ph = phi i64 [ 0, %.lr.ph28.preheader ], [ %n.vec56, %middle.block64 ]
  %.2.i26.ph = phi i32 [ %.1.i, %.lr.ph28.preheader ], [ %i.aa, %middle.block64 ]
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader80, %.lr.ph28
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph28 ], [ %indvars.iv40.ph, %.lr.ph28.preheader80 ] ; 2 uses
  %.2.i26 = phi i32 [ %i.ae, %.lr.ph28 ], [ %.2.i26.ph, %.lr.ph28.preheader80 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv40
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !40
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %.2.i26, %i.ad              ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %pred_dc_val_8.exit, label %.lr.ph28, !llvm.loop !2110

pred_dc_val_8.exit:                               ; preds = %.lr.ph28, %middle.block64, %.loopexit
  %.3.i = phi i32 [ %.1.i, %.loopexit ], [ %i.aa, %middle.block64 ], [ %i.ae, %.lr.ph28 ]
  %i.af = lshr i32 %i.d, 1
  %.not.i.i = icmp ult i32 %i.d, 65536            ; 2 uses
  %i.ag = lshr i32 %i.d, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.d, i32 %i.ag ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.ah = lshr i32 %spec.select.i.i, 8
  %i.ai = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.ah
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.ai
  %i.aj = zext nneg i32 %.110.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  %i.am = zext i8 %i.al to i32
  %i.an = add nuw nsw i32 %.1.i.i, %i.am
  %i.ao = add i32 %.3.i, %i.af
  %i.ap = lshr i32 %i.ao, %i.an
  %i.aq = and i32 %i.ap, 255
  %i.ar = mul nuw i32 %i.aq, 16843009             ; 2 uses
  %or.cond37 = and i1 %i.r, %i.e
  br i1 %or.cond37, label %.preheader.preheader, label %._crit_edge35.split

.preheader.preheader:                             ; preds = %pred_dc_val_8.exit
  %i.as = add nsw i32 %3, -1
  %i.at = lshr i32 %i.as, 2
  %narrow = add nuw nsw i32 %i.at, 1
  %i.au = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check70 = icmp ult i32 %3, 29
  %n.vec72 = and i64 %i.au, 2147483640            ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec72, 2
  %i.aw = trunc nuw nsw i64 %n.vec72 to i32
  %i.ax = shl i32 %i.aw, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n77 = icmp eq i64 %n.vec72, %i.au
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01934 = phi ptr [ %i.bf, %._crit_edge ], [ %0, %.preheader.preheader ] ; 4 uses
end_hunk_2
