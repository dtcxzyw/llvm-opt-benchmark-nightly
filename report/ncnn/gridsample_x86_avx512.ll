inline.NumInlined: 683
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit123
  %i.cm = icmp slt i32 %i.cl, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cm, label %bb.a, label %..preheader_crit_edge.us, !llvm.loop !302

.lr.ph252.us:                                     ; preds = %.lr.ph252.us.preheader, %bb.c
  %.2251.us = phi ptr [ %i.dl, %bb.c ], [ %.2251.us.ph, %.lr.ph252.us.preheader ] ; 2 uses
  %.1118250.us = phi ptr [ %i.dk, %bb.c ], [ %.1118250.us.ph, %.lr.ph252.us.preheader ] ; 2 uses
  %.1120249.us = phi i32 [ %i.dm, %bb.c ], [ %.1120249.us.ph, %.lr.ph252.us.preheader ]
  %i.cn = load <2 x float>, ptr %.1118250.us, align 4, !tbaa !64
  %i.co = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 3 uses
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>
  %i.cq = fmul fast <2 x float> %i.cn, splat (float 5.000000e-01)
  %i.cr = fadd fast <2 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = fmul fast <2 x float> %i.cr, %i.cp
  %i.ct = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cs)
  %i.cu = fptosi <2 x float> %i.ct to <2 x i32>   ; 3 uses
  %i.cv = extractelement <2 x i32> %i.cu, i64 0   ; 2 uses
  %i.cw = extractelement <2 x i32> %i.cu, i64 1   ; 2 uses
  %i.cx = or i32 %i.cw, %i.cv
  %i.cy = icmp sgt i32 %i.cx, -1
  %i.cz = icmp sgt <2 x i32> %i.co, %i.cu         ; 2 uses
  %i.da = extractelement <2 x i1> %i.cz, i64 0
  %i.db = and i1 %i.da, %i.cy
  %i.dc = extractelement <2 x i1> %i.cz, i64 1
  %i.dd = and i1 %i.dc, %i.db
  br i1 %i.dd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph252.us
  %i.de = extractelement <2 x i32> %i.co, i64 0
  %i.df = mul nsw i32 %i.de, %i.cw
  %i.dg = add nsw i32 %i.df, %i.cv
  %i.dh = load i32, ptr %i.p, align 8, !tbaa !13
  %i.di = mul nsw i32 %i.dh, %i.dg
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph252.us
  %i.dj = phi i32 [ %i.di, %bb.b ], [ -1, %.lr.ph252.us ]
  store i32 %i.dj, ptr %.2251.us, align 4, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %.1118250.us, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.2251.us, i64 4 ; 2 uses
  %i.dm = add nuw nsw i32 %.1120249.us, 2         ; 2 uses
  %i.dn = icmp slt i32 %i.dm, %i.e
  br i1 %i.dn, label %.lr.ph252.us, label %._crit_edge.us, !llvm.loop !303

._crit_edge.us:                                   ; preds = %bb.c, %middle.block437, %vec.epilog.middle.block464, %..preheader_crit_edge.us
  %.2.lcssa.us = phi ptr [ %i.cj, %..preheader_crit_edge.us ], [ %i.fa, %vec.epilog.middle.block464 ], [ %i.dy, %middle.block437 ], [ %i.dl, %bb.c ]
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.do = load i32, ptr %i.h, align 8, !tbaa !18
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next268, %i.dp
  br i1 %i.dq, label %_ZN4ncnn3MatD2Ev.exit122.us, label %.loopexit, !llvm.loop !304

..preheader_crit_edge.us:                         ; preds = %bb.a
  br i1 %i.r, label %iter.check442, label %._crit_edge.us

iter.check442:                                    ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check416, label %.lr.ph252.us.preheader, label %vector.memcheck404

vector.memcheck404:                               ; preds = %iter.check442
  %i.dr = ptrtoaddr ptr %i.cj to i64
  %reass.sub = sub i64 %i.dr, %.0255.us405
  %i.ds = getelementptr i8, ptr %.0255.us, i64 %i.w
  %i.dt = getelementptr i8, ptr %i.ds, i64 %reass.sub
  %scevgep406 = getelementptr i8, ptr %i.dt, i64 4 ; 2 uses
  %i.du = shl nuw nsw i64 %indvar, 6
  %i.dv = getelementptr i8, ptr %i.an, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.x
  %i.dx = getelementptr i8, ptr %i.dw, i64 72
  %scevgep408 = getelementptr i8, ptr %i.dx, i64 %i.ar
  %bound0409 = icmp ult ptr %i.cj, %scevgep407.a
  %bound1410 = icmp ult ptr %i.p, %scevgep406
  %found.conflict411 = and i1 %bound0409, %bound1410
  %bound0412 = icmp ult ptr %i.cj, %scevgep408
  %bound1413 = icmp ult ptr %i.ci, %scevgep406
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %found.conflict411, %found.conflict414
  br i1 %conflict.rdx415, label %.lr.ph252.us.preheader, label %vector.main.loop.iter.check417

vector.main.loop.iter.check417:                   ; preds = %vector.memcheck404
  br i1 %min.iters.check418, label %vec.epilog.ph446, label %vector.ph419

vector.ph419:                                     ; preds = %vector.main.loop.iter.check417
  %i.dy = getelementptr i8, ptr %i.cj, i64 %i.ad  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ci, i64 %i.ae
  %i.ea = load i32, ptr %i.n, align 4, !tbaa !53, !alias.scope !305
  %broadcast.splatinsert421 = insertelement <16 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat422 = shufflevector <16 x i32> %broadcast.splatinsert421, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.eb = sitofp fast <16 x i32> %broadcast.splat422 to <16 x float>
  %i.ec = load i32, ptr %i.o, align 8, !tbaa !54, !alias.scope !305
  %broadcast.splatinsert423 = insertelement <16 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat424 = shufflevector <16 x i32> %broadcast.splatinsert423, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ed = sitofp fast <16 x i32> %broadcast.splat424 to <16 x float>
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph419
  %index428 = phi i64 [ 0, %vector.ph419 ], [ %index.next436, %vector.body427 ] ; 3 uses
  %i.ee = shl i64 %index428, 2
  %next.gep429.a = getelementptr i8, ptr %i.cj, i64 %i.ee
  %i.ef = shl i64 %index428, 3
  %next.gep430 = getelementptr i8, ptr %i.ci, i64 %i.ef
  %wide.vec431 = load <32 x float>, ptr %next.gep430, align 4, !tbaa !64, !alias.scope !308 ; 2 uses
  %strided.vec432.a = shufflevector <32 x float> %wide.vec431, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec433 = shufflevector <32 x float> %wide.vec431, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.eg = fmul fast <16 x float> %strided.vec432.a, splat (float 5.000000e-01)
  %i.eh = fadd fast <16 x float> %i.eg, splat (float 5.000000e-01)
  %i.ei = fmul fast <16 x float> %i.eh, %i.eb
  %i.ej = fmul fast <16 x float> %strided.vec433, splat (float 5.000000e-01)
  %i.ek = fadd fast <16 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fmul fast <16 x float> %i.ek, %i.ed
  %i.em = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.ei)
  %i.en = fptosi <16 x float> %i.em to <16 x i32> ; 3 uses
  %i.eo = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.el)
  %i.ep = fptosi <16 x float> %i.eo to <16 x i32> ; 3 uses
  %i.eq = icmp sgt <16 x i32> %broadcast.splat422, %i.en
  %i.er = or <16 x i32> %i.ep, %i.en
  %i.es = icmp sgt <16 x i32> %i.er, splat (i32 -1)
  %i.et = and <16 x i1> %i.eq, %i.es
  %i.eu = icmp sgt <16 x i32> %broadcast.splat424, %i.ep
  %i.ev = and <16 x i1> %i.eu, %i.et              ; 2 uses
  %i.ew = mul nsw <16 x i32> %broadcast.splat422, %i.ep
  %i.ex = add nsw <16 x i32> %i.ew, %i.en
  %wide.masked.gather434 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat426, <16 x i1> %i.ev, <16 x i32> poison), !tbaa !13, !alias.scope !305
  %i.ey = mul nsw <16 x i32> %wide.masked.gather434, %i.ex
  %predphi435 = select <16 x i1> %i.ev, <16 x i32> %i.ey, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi435, ptr %next.gep429.a, align 4, !tbaa !29, !alias.scope !310, !noalias !312
  %index.next436 = add nuw i64 %index428, 16      ; 2 uses
  %i.ez = icmp eq i64 %index.next436, %n.vec420
  br i1 %i.ez, label %middle.block437, label %vector.body427, !llvm.loop !313

middle.block437:                                  ; preds = %vector.body427
  br i1 %cmp.n438, label %._crit_edge.us, label %vec.epilog.iter.check444

vec.epilog.iter.check444:                         ; preds = %middle.block437
  br i1 %min.epilog.iters.check445, label %.lr.ph252.us.preheader, label %vec.epilog.ph446, !prof !76

vec.epilog.ph446:                                 ; preds = %vector.main.loop.iter.check417, %vec.epilog.iter.check444
  %vec.epilog.resume.val439 = phi i64 [ %n.vec420, %vec.epilog.iter.check444 ], [ 0, %vector.main.loop.iter.check417 ]
  %i.fa = getelementptr i8, ptr %i.cj, i64 %i.ai  ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ci, i64 %i.aj
  %i.fc = load i32, ptr %i.n, align 4, !tbaa !53, !alias.scope !305
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fd = sitofp fast <4 x i32> %broadcast.splat449 to <4 x float>
  %i.fe = load i32, ptr %i.o, align 8, !tbaa !54, !alias.scope !305
  %broadcast.splatinsert450 = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat451 = shufflevector <4 x i32> %broadcast.splatinsert450, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ff = sitofp fast <4 x i32> %broadcast.splat451 to <4 x float>
  br label %vec.epilog.vector.body454

vec.epilog.vector.body454:                        ; preds = %vec.epilog.vector.body454, %vec.epilog.ph446
  %index455 = phi i64 [ %vec.epilog.resume.val439, %vec.epilog.ph446 ], [ %index.next463, %vec.epilog.vector.body454 ] ; 3 uses
  %i.fg = shl i64 %index455, 2
  %next.gep456.a = getelementptr i8, ptr %i.cj, i64 %i.fg
  %i.fh = shl i64 %index455, 3
  %next.gep457 = getelementptr i8, ptr %i.ci, i64 %i.fh
  %wide.vec458 = load <8 x float>, ptr %next.gep457, align 4, !tbaa !64, !alias.scope !308 ; 2 uses
  %strided.vec459.a = shufflevector <8 x float> %wide.vec458, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec460 = shufflevector <8 x float> %wide.vec458, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fi = fmul fast <4 x float> %strided.vec459.a, splat (float 5.000000e-01)
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 5.000000e-01)
  %i.fk = fmul fast <4 x float> %i.fj, %i.fd
  %i.fl = fmul fast <4 x float> %strided.vec460, splat (float 5.000000e-01)
  %i.fm = fadd fast <4 x float> %i.fl, splat (float 5.000000e-01)
  %i.fn = fmul fast <4 x float> %i.fm, %i.ff
  %i.fo = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.fk)
  %i.fp = fptosi <4 x float> %i.fo to <4 x i32>   ; 3 uses
  %i.fq = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.fn)
  %i.fr = fptosi <4 x float> %i.fq to <4 x i32>   ; 3 uses
  %i.fs = icmp sgt <4 x i32> %broadcast.splat449, %i.fp
  %i.ft = or <4 x i32> %i.fr, %i.fp
  %i.fu = icmp sgt <4 x i32> %i.ft, splat (i32 -1)
  %i.fv = and <4 x i1> %i.fs, %i.fu
  %i.fw = icmp sgt <4 x i32> %broadcast.splat451, %i.fr
  %i.fx = and <4 x i1> %i.fw, %i.fv               ; 2 uses
  %i.fy = mul nsw <4 x i32> %broadcast.splat449, %i.fr
  %i.fz = add nsw <4 x i32> %i.fy, %i.fp
  %wide.masked.gather461 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat453, <4 x i1> %i.fx, <4 x i32> poison), !tbaa !13, !alias.scope !305
  %i.ga = mul nsw <4 x i32> %wide.masked.gather461, %i.fz
  %predphi462 = select <4 x i1> %i.fx, <4 x i32> %i.ga, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi462, ptr %next.gep456.a, align 4, !tbaa !29, !alias.scope !310, !noalias !312
  %index.next463 = add nuw i64 %index455, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next463, %n.vec447
  br i1 %i.gb, label %vec.epilog.middle.block464, label %vec.epilog.vector.body454, !llvm.loop !314

vec.epilog.middle.block464:                       ; preds = %vec.epilog.vector.body454
  br i1 %cmp.n465, label %._crit_edge.us, label %.lr.ph252.us.preheader

.lr.ph252.us.preheader:                           ; preds = %vector.memcheck404, %iter.check442, %vec.epilog.iter.check444, %vec.epilog.middle.block464
  %.2251.us.ph = phi ptr [ %i.cj, %iter.check442 ], [ %i.cj, %vector.memcheck404 ], [ %i.dy, %vec.epilog.iter.check444 ], [ %i.fa, %vec.epilog.middle.block464 ]
  %.1118250.us.ph = phi ptr [ %i.ci, %iter.check442 ], [ %i.ci, %vector.memcheck404 ], [ %i.dz, %vec.epilog.iter.check444 ], [ %i.fb, %vec.epilog.middle.block464 ]
  %.1120249.us.ph = phi i32 [ %i.q, %iter.check442 ], [ %i.q, %vector.memcheck404 ], [ %i.ah, %vec.epilog.iter.check444 ], [ %i.am, %vec.epilog.middle.block464 ]
  br label %.lr.ph252.us

_ZN4ncnn3MatD2Ev.exit122.lr.ph.split:             ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.gc = icmp sgt i32 %i.e, 0
  br i1 %i.gc, label %_ZN4ncnn3MatD2Ev.exit122.preheader, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  %.pre = load i64, ptr %i.k, align 8, !tbaa !21, !noalias !299 ; 2 uses
  %.pre270 = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !299 ; 2 uses
  %i.gd = load ptr, ptr %1, align 8, !tbaa !24, !noalias !299 ; 3 uses
  %factor.op.mul = mul i64 %.pre, %.pre270
  %i.ge = add nsw i32 %i.e, -1
  %i.gf = lshr i32 %i.ge, 1
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %i.gh = shl nuw nsw i64 %i.gg, 2
  %scevgep344 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %4 = mul i64 %.pre, %.pre270
  %5 = shl nuw nsw i64 %i.gg, 3
  %i.gi = add nsw i32 %i.e, -1
  %i.gj = lshr i32 %i.gi, 1
  %narrow = add nuw i32 %i.gj, 1
  %i.gk = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check354 = icmp ult i32 %i.e, 7
  %i.gl = getelementptr i8, ptr %i.gd, i64 %5
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %n.vec382 = and i64 %i.gk, 4294967292           ; 5 uses
  %i.gn = shl nuw nsw i64 %n.vec382, 2
  %i.go = shl nuw nsw i64 %n.vec382, 3
  %i.gp = trunc nuw i64 %n.vec382 to i32
  %i.gq = shl i32 %i.gp, 1
  %broadcast.splatinsert387 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat388 = shufflevector <4 x ptr> %broadcast.splatinsert387, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gr = icmp eq i64 %n.vec382, 4
  %cmp.n400 = icmp eq i64 %n.vec382, %i.gk
  br label %iter.check377

iter.check377:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit122.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %.lcssa296, %._crit_edge ] ; 8 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass ; 5 uses
  br i1 %min.iters.check354, label %vec.epilog.scalar.ph378.preheader, label %vector.memcheck342

vector.memcheck342:                               ; preds = %iter.check377
  %i.gt = mul i64 %4, %indvars.iv                 ; 2 uses
  %scevgep346 = getelementptr i8, ptr %i.gm, i64 %i.gt
  %scevgep345 = getelementptr i8, ptr %i.gd, i64 %i.gt
  %i.gu = getelementptr i8, ptr %.0255, i64 %i.gh
  %scevgep343 = getelementptr i8, ptr %i.gu, i64 4 ; 2 uses
  %bound0347 = icmp ult ptr %.0255, %scevgep344
  %bound1348 = icmp ult ptr %i.p, %scevgep343
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0350 = icmp ult ptr %.0255, %scevgep346
  %bound1351 = icmp ult ptr %scevgep345, %scevgep343
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %found.conflict349, %found.conflict352
  br i1 %conflict.rdx353, label %vec.epilog.scalar.ph378.preheader, label %vec.epilog.ph381

vec.epilog.ph381:                                 ; preds = %vector.memcheck342
  %i.gv = getelementptr i8, ptr %.0255, i64 %i.gn ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gs, i64 %i.go
  %i.gx = load i32, ptr %i.n, align 4, !tbaa !53, !alias.scope !315
  %broadcast.splatinsert383 = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %broadcast.splat384 = shufflevector <4 x i32> %broadcast.splatinsert383, <4 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.gy = sitofp fast <4 x i32> %broadcast.splat384 to <4 x float> ; 2 uses
  %i.gz = load i32, ptr %i.o, align 8, !tbaa !54, !alias.scope !315
  %broadcast.splatinsert385 = insertelement <4 x i32> poison, i32 %i.gz, i64 0
  %broadcast.splat386 = shufflevector <4 x i32> %broadcast.splatinsert385, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ha = sitofp fast <4 x i32> %broadcast.splat386 to <4 x float> ; 2 uses
  %wide.vec393 = load <8 x float>, ptr %i.gs, align 4, !tbaa !64, !alias.scope !318 ; 2 uses
  %strided.vec394.a = shufflevector <8 x float> %wide.vec393, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec395 = shufflevector <8 x float> %wide.vec393, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hb = fmul fast <4 x float> %strided.vec394.a, splat (float 5.000000e-01)
  %i.hc = fadd fast <4 x float> %i.hb, splat (float 5.000000e-01)
  %i.hd = fmul fast <4 x float> %i.hc, %i.gy
  %i.he = fmul fast <4 x float> %strided.vec395, splat (float 5.000000e-01)
  %i.hf = fadd fast <4 x float> %i.he, splat (float 5.000000e-01)
  %i.hg = fmul fast <4 x float> %i.hf, %i.ha
  %i.hh = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.hd)
  %i.hi = fptosi <4 x float> %i.hh to <4 x i32>   ; 3 uses
  %i.hj = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.hg)
  %i.hk = fptosi <4 x float> %i.hj to <4 x i32>   ; 3 uses
  %i.hl = icmp sgt <4 x i32> %broadcast.splat384, %i.hi
  %i.hm = or <4 x i32> %i.hk, %i.hi
  %i.hn = icmp sgt <4 x i32> %i.hm, splat (i32 -1)
  %i.ho = and <4 x i1> %i.hl, %i.hn
  %i.hp = icmp sgt <4 x i32> %broadcast.splat386, %i.hk
  %i.hq = and <4 x i1> %i.hp, %i.ho               ; 2 uses
  %i.hr = mul nsw <4 x i32> %broadcast.splat384, %i.hk
  %i.hs = add nsw <4 x i32> %i.hr, %i.hi
  %wide.masked.gather396 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat388, <4 x i1> %i.hq, <4 x i32> poison), !tbaa !13, !alias.scope !315
  %i.ht = mul nsw <4 x i32> %wide.masked.gather396, %i.hs
  %predphi397 = select <4 x i1> %i.hq, <4 x i32> %i.ht, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi397, ptr %.0255, align 4, !tbaa !29, !alias.scope !320, !noalias !322
  br i1 %i.gr, label %vec.epilog.middle.block399, label %vec.epilog.vector.body389.1

vec.epilog.vector.body389.1:                      ; preds = %vec.epilog.ph381
  %next.gep391.1.a = getelementptr i8, ptr %.0255, i64 16
  %next.gep392.1 = getelementptr i8, ptr %i.gs, i64 32
  %wide.vec393.1 = load <8 x float>, ptr %next.gep392.1, align 4, !tbaa !64, !alias.scope !318 ; 2 uses
  %strided.vec394.1.a = shufflevector <8 x float> %wide.vec393.1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec395.1 = shufflevector <8 x float> %wide.vec393.1, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hu = fmul fast <4 x float> %strided.vec394.1.a, splat (float 5.000000e-01)
  %i.hv = fadd fast <4 x float> %i.hu, splat (float 5.000000e-01)
  %i.hw = fmul fast <4 x float> %i.hv, %i.gy
  %i.hx = fmul fast <4 x float> %strided.vec395.1, splat (float 5.000000e-01)
  %i.hy = fadd fast <4 x float> %i.hx, splat (float 5.000000e-01)
  %i.hz = fmul fast <4 x float> %i.hy, %i.ha
  %i.ia = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.hw)
  %i.ib = fptosi <4 x float> %i.ia to <4 x i32>   ; 3 uses
  %i.ic = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.hz)
  %i.id = fptosi <4 x float> %i.ic to <4 x i32>   ; 3 uses
  %i.ie = icmp sgt <4 x i32> %broadcast.splat384, %i.ib
  %i.if = or <4 x i32> %i.id, %i.ib
  %i.ig = icmp sgt <4 x i32> %i.if, splat (i32 -1)
  %i.ih = and <4 x i1> %i.ie, %i.ig
  %i.ii = icmp sgt <4 x i32> %broadcast.splat386, %i.id
  %i.ij = and <4 x i1> %i.ii, %i.ih               ; 2 uses
  %i.ik = mul nsw <4 x i32> %broadcast.splat384, %i.id
  %i.il = add nsw <4 x i32> %i.ik, %i.ib
  %wide.masked.gather396.1 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat388, <4 x i1> %i.ij, <4 x i32> poison), !tbaa !13, !alias.scope !315
  %i.im = mul nsw <4 x i32> %wide.masked.gather396.1, %i.il
  %predphi397.1 = select <4 x i1> %i.ij, <4 x i32> %i.im, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi397.1, ptr %next.gep391.1.a, align 4, !tbaa !29, !alias.scope !320, !noalias !322
  br label %vec.epilog.middle.block399

vec.epilog.middle.block399:                       ; preds = %vec.epilog.vector.body389.1, %vec.epilog.ph381
  br i1 %cmp.n400, label %._crit_edge, label %vec.epilog.scalar.ph378.preheader

vec.epilog.scalar.ph378.preheader:                ; preds = %vector.memcheck342, %iter.check377, %vec.epilog.middle.block399
  %.2251.ph = phi ptr [ %.0255, %vector.memcheck342 ], [ %.0255, %iter.check377 ], [ %i.gv, %vec.epilog.middle.block399 ]
  %.1118250.ph = phi ptr [ %i.gs, %vector.memcheck342 ], [ %i.gs, %iter.check377 ], [ %i.gw, %vec.epilog.middle.block399 ]
  %.1120249.ph = phi i32 [ 0, %vector.memcheck342 ], [ 0, %iter.check377 ], [ %i.gq, %vec.epilog.middle.block399 ]
  br label %vec.epilog.scalar.ph378

vec.epilog.scalar.ph378:                          ; preds = %vec.epilog.scalar.ph378.preheader, %bb.e
  %.2251 = phi ptr [ %i.jl, %bb.e ], [ %.2251.ph, %vec.epilog.scalar.ph378.preheader ] ; 2 uses
  %.1118250 = phi ptr [ %i.jk, %bb.e ], [ %.1118250.ph, %vec.epilog.scalar.ph378.preheader ] ; 2 uses
  %.1120249 = phi i32 [ %i.jm, %bb.e ], [ %.1120249.ph, %vec.epilog.scalar.ph378.preheader ]
  %i.in = load <2 x float>, ptr %.1118250, align 4, !tbaa !64
  %i.io = load <2 x i32>, ptr %i.n, align 4, !tbaa !29 ; 3 uses
  %i.ip = sitofp <2 x i32> %i.io to <2 x float>
  %i.iq = fmul fast <2 x float> %i.in, splat (float 5.000000e-01)
  %i.ir = fadd fast <2 x float> %i.iq, splat (float 5.000000e-01)
  %i.is = fmul fast <2 x float> %i.ir, %i.ip
  %i.it = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.is)
  %i.iu = fptosi <2 x float> %i.it to <2 x i32>   ; 3 uses
  %i.iv = extractelement <2 x i32> %i.iu, i64 0   ; 2 uses
  %i.iw = extractelement <2 x i32> %i.iu, i64 1   ; 2 uses
  %i.ix = or i32 %i.iw, %i.iv
  %i.iy = icmp sgt i32 %i.ix, -1
  %i.iz = icmp sgt <2 x i32> %i.io, %i.iu         ; 2 uses
  %i.ja = extractelement <2 x i1> %i.iz, i64 0
  %i.jb = and i1 %i.ja, %i.iy
  %i.jc = extractelement <2 x i1> %i.iz, i64 1
  %i.jd = and i1 %i.jc, %i.jb
  br i1 %i.jd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vec.epilog.scalar.ph378
  %i.je = extractelement <2 x i32> %i.io, i64 0
  %i.jf = mul nsw i32 %i.je, %i.iw
  %i.jg = add nsw i32 %i.jf, %i.iv
  %i.jh = load i32, ptr %i.p, align 8, !tbaa !13
  %i.ji = mul nsw i32 %i.jh, %i.jg
  br label %bb.e

bb.e:                                             ; preds = %vec.epilog.scalar.ph378, %bb.d
  %i.jj = phi i32 [ %i.ji, %bb.d ], [ -1, %vec.epilog.scalar.ph378 ]
  store i32 %i.jj, ptr %.2251, align 4, !tbaa !29
  %i.jk = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.jm = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.jn = icmp slt i32 %i.jm, %i.e
  br i1 %i.jn, label %vec.epilog.scalar.ph378, label %._crit_edge, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.e, %vec.epilog.middle.block399
  %.lcssa296 = phi ptr [ %i.gv, %vec.epilog.middle.block399 ], [ %i.jl, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jo = load i32, ptr %i.h, align 8, !tbaa !18
  %i.jp = sext i32 %i.jo to i64
  %i.jq = icmp slt i64 %indvars.iv.next, %i.jp
  br i1 %i.jq, label %iter.check377, label %.loopexit, !llvm.loop !304

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.jr = load ptr, ptr %1, align 8, !tbaa !24, !noalias !324 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !21, !noalias !327
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !20, !noalias !327
  %i.jw = mul i64 %i.jv, %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jw ; 2 uses
  %i.jy = icmp sgt i32 %i.e, 7
  br i1 %i.jy, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

.preheader228.loopexit:                           ; preds = %bb.f
  %i.kc = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.jr, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ol, %.preheader228.loopexit ] ; 8 uses
  %.0112.lcssa = phi ptr [ %i.jx, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.om, %.preheader228.loopexit ] ; 8 uses
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.kc, %.preheader228.loopexit ] ; 7 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.on, %.preheader228.loopexit ] ; 10 uses
  %i.kd = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.kd, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader228
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.kh = xor i32 %.0110.lcssa, -1
  %i.ki = add i32 %i.e, %i.kh                     ; 3 uses
  %i.kj = zext i32 %i.ki to i64
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ki, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kl = xor i32 %.0110.lcssa, -1
  %i.km = add i32 %i.e, %i.kl
  %i.kn = zext i32 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = add nuw nsw i64 %i.ko, 4                ; 3 uses
  %scevgep = getelementptr i8, ptr %.3.lcssa, i64 %i.kp ; 3 uses
  %scevgep300 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %scevgep301 = getelementptr i8, ptr %.0112.lcssa, i64 %i.kp
  %scevgep302 = getelementptr i8, ptr %.0114.lcssa, i64 %i.kp
  %bound0 = icmp ult ptr %.3.lcssa, %scevgep300
  %bound1 = icmp ult ptr %i.kg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0303 = icmp ult ptr %.3.lcssa, %scevgep301
  %bound1304 = icmp ult ptr %.0112.lcssa, %scevgep
  %found.conflict305 = and i1 %bound0303, %bound1304
  %conflict.rdx = or i1 %found.conflict, %found.conflict305
  %bound0306 = icmp ult ptr %.3.lcssa, %scevgep302
  %bound1307 = icmp ult ptr %.0114.lcssa, %scevgep
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx, %found.conflict308
  br i1 %conflict.rdx309, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check310 = icmp ult i32 %i.ki, 15
  br i1 %min.iters.check310, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kq = and i64 %i.kk, 12
  %n.vec = and i64 %i.kk, 8589934576              ; 5 uses
  %i.kr = shl nuw nsw i64 %n.vec, 2               ; 3 uses
end_hunk_0
