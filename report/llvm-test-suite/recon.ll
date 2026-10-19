Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/recon?download=true
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@form_component_prediction:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %.0182257, i64 %index565
  %wide.load567.a = load <4 x i8>, ptr %i.au, align 1, !tbaa !57, !alias.scope !59
  %i.av = zext <4 x i8> %wide.load567.a to <4 x i16>
  %i.aw = add nuw nsw <4 x i16> %i.at, splat (i16 1)
  %i.ax = add nuw nsw <4 x i16> %i.aw, %i.av
  %i.ay = lshr <4 x i16> %i.ax, splat (i16 1)
  %i.az = trunc nuw <4 x i16> %i.ay to <4 x i8>
  store <4 x i8> %i.az, ptr %i.as, align 1, !tbaa !57, !alias.scope !58, !noalias !59
  %index.next568 = add nuw i64 %index565, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next568, %n.vec563
  br i1 %i.ba, label %vec.epilog.middle.block569, label %vec.epilog.vector.body564, !llvm.loop !14

vec.epilog.middle.block569:                       ; preds = %vec.epilog.vector.body564
  br i1 %cmp.n570, label %.loopexit597, label %vec.epilog.scalar.ph559.preheader

vec.epilog.scalar.ph559.preheader:                ; preds = %vector.memcheck540, %vec.epilog.iter.check560, %vec.epilog.middle.block569
  %indvars.iv302.ph = phi i64 [ 0, %vector.memcheck540 ], [ %n.vec551.a, %vec.epilog.iter.check560 ], [ %n.vec563, %vec.epilog.middle.block569 ] ; 5 uses
  br i1 %lcmp.mod620.not, label %vec.epilog.scalar.ph559.prol.loopexit, label %vec.epilog.scalar.ph559.prol

vec.epilog.scalar.ph559.prol:                     ; preds = %vec.epilog.scalar.ph559.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv302.ph ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !57
  %i.bd = zext i8 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv302.ph
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !57
  %i.bg = zext i8 %i.bf to i16
  %i.bh = add nuw nsw i16 %i.bd, 1
  %i.bi = add nuw nsw i16 %i.bh, %i.bg
  %i.bj = lshr i16 %i.bi, 1
  %i.bk = trunc nuw i16 %i.bj to i8
  store i8 %i.bk, ptr %i.bb, align 1, !tbaa !57
  %indvars.iv.next303.prol = or disjoint i64 %indvars.iv302.ph, 1
  br label %vec.epilog.scalar.ph559.prol.loopexit

vec.epilog.scalar.ph559.prol.loopexit:            ; preds = %vec.epilog.scalar.ph559.prol, %vec.epilog.scalar.ph559.preheader
  %indvars.iv302.unr = phi i64 [ %indvars.iv302.ph, %vec.epilog.scalar.ph559.preheader ], [ %indvars.iv.next303.prol, %vec.epilog.scalar.ph559.prol ]
  %i.bl = icmp eq i64 %indvars.iv302.ph, %i.ag
  br i1 %i.bl, label %.loopexit597, label %vec.epilog.scalar.ph559

vec.epilog.scalar.ph559:                          ; preds = %vec.epilog.scalar.ph559.prol.loopexit, %vec.epilog.scalar.ph559
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.1, %vec.epilog.scalar.ph559 ], [ %indvars.iv302.unr, %vec.epilog.scalar.ph559.prol.loopexit ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv302 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !57
  %i.bo = zext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv302
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !57
  %i.br = zext i8 %i.bq to i16
  %i.bs = add nuw nsw i16 %i.bo, 1
  %i.bt = add nuw nsw i16 %i.bs, %i.br
  %i.bu = lshr i16 %i.bt, 1
  %i.bv = trunc nuw i16 %i.bu to i8
  store i8 %i.bv, ptr %i.bm, align 1, !tbaa !57
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0258, i64 %indvars.iv.next303 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !57
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %.0182257, i64 %indvars.iv.next303
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !57
  %i.cb = zext i8 %i.ca to i16
  %i.cc = add nuw nsw i16 %i.by, 1
  %i.cd = add nuw nsw i16 %i.cc, %i.cb
  %i.ce = lshr i16 %i.cd, 1
  %i.cf = trunc nuw i16 %i.ce to i8
  store i8 %i.cf, ptr %i.bw, align 1, !tbaa !57
  %indvars.iv.next303.1 = add nuw nsw i64 %indvars.iv302, 2 ; 2 uses
  %exitcond306.not.1 = icmp eq i64 %indvars.iv.next303.1, %wide.trip.count311
  br i1 %exitcond306.not.1, label %.loopexit597, label %vec.epilog.scalar.ph559, !llvm.loop !15

.loopexit597:                                     ; preds = %vec.epilog.scalar.ph559.prol.loopexit, %vec.epilog.scalar.ph559, %vec.epilog.middle.block569, %vector.ph550
  %i.cg = getelementptr inbounds i8, ptr %.0182257, i64 %i.t
  %i.ch = getelementptr inbounds i8, ptr %.0258, i64 %i.t
  %i.ci = add nuw nsw i32 %.0190256, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.ci, %5
  br i1 %exitcond307.not, label %.loopexit, label %vector.memcheck540, !llvm.loop !16

vector.memcheck572:                               ; preds = %.loopexit596, %.preheader.preheader
  %.1262 = phi ptr [ %i.de, %.loopexit596 ], [ %i.p, %.preheader.preheader ] ; 8 uses
  %.1183261 = phi ptr [ %i.dd, %.loopexit596 ], [ %i.l, %.preheader.preheader ] ; 8 uses
  %.1191260 = phi i32 [ %i.df, %.loopexit596 ], [ 0, %.preheader.preheader ]
  br i1 %diff.check573, label %vec.epilog.scalar.ph584.preheader, label %vector.main.loop.iter.check574

vector.main.loop.iter.check574:                   ; preds = %vector.memcheck572
  br i1 %min.iters.check575, label %vec.epilog.ph587, label %vector.ph576

vector.ph576:                                     ; preds = %vector.main.loop.iter.check574
  %wide.load579.a = load <16 x i8>, ptr %.1183261, align 1, !tbaa !57
  store <16 x i8> %wide.load579.a, ptr %.1262, align 1, !tbaa !57
  br i1 %cmp.n581, label %.loopexit596, label %vec.epilog.iter.check585

vec.epilog.iter.check585:                         ; preds = %vector.ph576
  br i1 %min.epilog.iters.check586, label %vec.epilog.scalar.ph584.preheader, label %vec.epilog.ph587, !prof !60

vec.epilog.ph587:                                 ; preds = %vector.main.loop.iter.check574, %vec.epilog.iter.check585
  %vec.epilog.resume.val582 = phi i64 [ %n.vec577, %vec.epilog.iter.check585 ], [ 0, %vector.main.loop.iter.check574 ]
  br label %vec.epilog.vector.body589

vec.epilog.vector.body589:                        ; preds = %vec.epilog.vector.body589, %vec.epilog.ph587
  %index590 = phi i64 [ %vec.epilog.resume.val582, %vec.epilog.ph587 ], [ %index.next592, %vec.epilog.vector.body589 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1183261, i64 %index590
  %wide.load591 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %.1262, i64 %index590
  store <4 x i8> %wide.load591, ptr %i.ck, align 1, !tbaa !57
  %index.next592 = add nuw i64 %index590, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next592, %n.vec588
  br i1 %i.cl, label %vec.epilog.middle.block593, label %vec.epilog.vector.body589, !llvm.loop !17

vec.epilog.middle.block593:                       ; preds = %vec.epilog.vector.body589
  br i1 %cmp.n594, label %.loopexit596, label %vec.epilog.scalar.ph584.preheader

vec.epilog.scalar.ph584.preheader:                ; preds = %vector.memcheck572, %vec.epilog.iter.check585, %vec.epilog.middle.block593
  %indvars.iv308.ph = phi i64 [ 0, %vector.memcheck572 ], [ %n.vec577, %vec.epilog.iter.check585 ], [ %n.vec588, %vec.epilog.middle.block593 ] ; 3 uses
  br i1 %lcmp.mod622.not, label %vec.epilog.scalar.ph584.prol.loopexit, label %vec.epilog.scalar.ph584.prol

vec.epilog.scalar.ph584.prol:                     ; preds = %vec.epilog.scalar.ph584.preheader, %vec.epilog.scalar.ph584.prol
  %indvars.iv308.prol = phi i64 [ %indvars.iv.next309.prol, %vec.epilog.scalar.ph584.prol ], [ %indvars.iv308.ph, %vec.epilog.scalar.ph584.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph584.prol ], [ 0, %vec.epilog.scalar.ph584.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv308.prol
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv308.prol
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !57
  %indvars.iv.next309.prol = add nuw nsw i64 %indvars.iv308.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter621
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph584.prol.loopexit, label %vec.epilog.scalar.ph584.prol, !llvm.loop !18

vec.epilog.scalar.ph584.prol.loopexit:            ; preds = %vec.epilog.scalar.ph584.prol, %vec.epilog.scalar.ph584.preheader
  %indvars.iv308.unr = phi i64 [ %indvars.iv308.ph, %vec.epilog.scalar.ph584.preheader ], [ %indvars.iv.next309.prol, %vec.epilog.scalar.ph584.prol ]
  %i.cp = sub nsw i64 %indvars.iv308.ph, %wide.trip.count311
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %.loopexit596, label %vec.epilog.scalar.ph584

vec.epilog.scalar.ph584:                          ; preds = %vec.epilog.scalar.ph584.prol.loopexit, %vec.epilog.scalar.ph584
  %indvars.iv308 = phi i64 [ %indvars.iv.next309.3, %vec.epilog.scalar.ph584 ], [ %indvars.iv308.unr, %vec.epilog.scalar.ph584.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv308
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv308
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !57
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !57
  %i.cw = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !57
  %indvars.iv.next309.1 = add nuw nsw i64 %indvars.iv308, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309.1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309.1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !57
  %indvars.iv.next309.2 = add nuw nsw i64 %indvars.iv308, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1183261, i64 %indvars.iv.next309.2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !57
  %i.dc = getelementptr inbounds nuw i8, ptr %.1262, i64 %indvars.iv.next309.2
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !57
  %indvars.iv.next309.3 = add nuw nsw i64 %indvars.iv308, 4 ; 2 uses
  %exitcond312.not.3 = icmp eq i64 %indvars.iv.next309.3, %wide.trip.count311
  br i1 %exitcond312.not.3, label %.loopexit596, label %vec.epilog.scalar.ph584, !llvm.loop !19

.loopexit596:                                     ; preds = %vec.epilog.scalar.ph584.prol.loopexit, %vec.epilog.scalar.ph584, %vec.epilog.middle.block593, %vector.ph576
  %i.dd = getelementptr inbounds i8, ptr %.1183261, i64 %i.t
  %i.de = getelementptr inbounds i8, ptr %.1262, i64 %i.t
  %i.df = add nuw nsw i32 %.1191260, 1            ; 2 uses
  %exitcond313.not = icmp eq i32 %i.df, %5
  br i1 %exitcond313.not, label %.loopexit, label %vector.memcheck572, !llvm.loop !20

bb.c:                                             ; preds = %bb.a
  %i.dg = and i32 %8, 1
  %i.dh = icmp eq i32 %i.dg, 0                    ; 2 uses
  %or.cond3 = and i1 %i.dh, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not208 = icmp eq i32 %10, 0
  %i.di = sext i32 %3 to i64                      ; 5 uses
  %i.dj = sext i32 %2 to i64                      ; 5 uses
  %wide.trip.count299 = zext nneg i32 %4 to i64   ; 19 uses
  br i1 %.not208, label %.preheader213.preheader, label %.preheader216.preheader

.preheader216.preheader:                          ; preds = %bb.d
  %i.dk = add nsw i32 %5, -1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.di, %i.dl                ; 2 uses
  %i.dn = getelementptr i8, ptr %1, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.n
  %scevgep472 = getelementptr i8, ptr %i.dp, i64 %wide.trip.count299 ; 2 uses
  %i.dq = getelementptr i8, ptr %0, i64 %i.k
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dj
  %scevgep473 = getelementptr i8, ptr %i.ds, i64 %i.g
  %i.dt = add i64 %i.dm, %i.k
  %i.du = add i64 %i.dt, %i.i                     ; 2 uses
  %i.dv = getelementptr i8, ptr %0, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.dj
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.g
  %scevgep474 = getelementptr i8, ptr %i.dx, i64 %wide.trip.count299
  %i.dy = getelementptr i8, ptr %0, i64 %i.du
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.g
  %scevgep475 = getelementptr i8, ptr %i.dz, i64 %wide.trip.count299
  %bound0476 = icmp ult ptr %i.p, %scevgep474
  %bound1477 = icmp ult ptr %scevgep473, %scevgep472
  %found.conflict478 = and i1 %bound0476, %bound1477
  %stride.check471 = icmp slt i32 %3, 0
  %11 = or i1 %found.conflict478, %stride.check471
  %bound0472 = icmp ult ptr %i.p, %scevgep475
  %bound1473 = icmp ult ptr %i.l, %scevgep472
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx486 = or i1 %11, %found.conflict474
  %min.iters.check488 = icmp samesign ult i32 %4, 16
  %n.vec490 = and i64 %wide.trip.count299, 16     ; 3 uses
  %cmp.n496 = icmp eq i64 %n.vec490, %wide.trip.count299
  %i.ea = and i64 %wide.trip.count299, 12
  %min.epilog.iters.check501 = icmp eq i64 %i.ea, 0
  %n.vec503 = and i64 %wide.trip.count299, 28     ; 3 uses
  %cmp.n511 = icmp eq i64 %n.vec503, %wide.trip.count299
  %xtraiter615 = and i64 %wide.trip.count299, 1
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  %i.eb = add nsw i64 %wide.trip.count299, -1
  br label %iter.check498

.preheader213.preheader:                          ; preds = %bb.d
  %i.ec = add i64 %i.b, %i.n                      ; 2 uses
  %i.ed = add i64 %i.a, %i.k                      ; 2 uses
  %i.ee = add i64 %i.ed, %i.dj
  %i.ef = add i64 %i.ee, %i.g
  %i.eg = add i64 %i.ed, %i.g
  %i.eh = sub i64 %i.ef, %i.ec
  %diff.check = icmp ugt i64 %i.eh, -16
  %i.ei = sub i64 %i.eg, %i.ec
  %diff.check514 = icmp ugt i64 %i.ei, -16
  %conflict.rdx515 = or i1 %diff.check, %diff.check514
  %min.iters.check517 = icmp samesign ult i32 %4, 16
  %n.vec519 = and i64 %wide.trip.count299, 16     ; 3 uses
  %cmp.n524 = icmp eq i64 %n.vec519, %wide.trip.count299
  %i.ej = and i64 %wide.trip.count299, 12
  %min.epilog.iters.check529 = icmp eq i64 %i.ej, 0
  %n.vec531 = and i64 %wide.trip.count299, 28     ; 3 uses
  %cmp.n538 = icmp eq i64 %n.vec531, %wide.trip.count299
  %xtraiter617 = and i64 %wide.trip.count299, 1
  %lcmp.mod618.not = icmp eq i64 %xtraiter617, 0
  %i.ek = add nsw i64 %wide.trip.count299, -1
  br label %iter.check526

iter.check498:                                    ; preds = %.preheader216.preheader, %.loopexit599
  %.2250 = phi ptr [ %i.he, %.loopexit599 ], [ %i.p, %.preheader216.preheader ] ; 7 uses
  %.2184249 = phi ptr [ %i.hd, %.loopexit599 ], [ %i.l, %.preheader216.preheader ] ; 7 uses
  %.2192248 = phi i32 [ %i.hf, %.loopexit599 ], [ 0, %.preheader216.preheader ]
  %invariant.gep330 = getelementptr i8, ptr %.2184249, i64 %i.dj ; 5 uses
  br i1 %conflict.rdx486, label %vec.epilog.scalar.ph499.preheader, label %vector.main.loop.iter.check487

vector.main.loop.iter.check487:                   ; preds = %iter.check498
  br i1 %min.iters.check488, label %vec.epilog.ph502, label %vector.ph489

vector.ph489:                                     ; preds = %vector.main.loop.iter.check487
  %wide.load492 = load <16 x i8>, ptr %.2250, align 1, !tbaa !57, !alias.scope !65, !noalias !66
  %i.el = zext <16 x i8> %wide.load492 to <16 x i16>
  %wide.load493 = load <16 x i8>, ptr %.2184249, align 1, !tbaa !57, !alias.scope !67
  %i.em = zext <16 x i8> %wide.load493 to <16 x i16>
  %wide.load494 = load <16 x i8>, ptr %invariant.gep330, align 1, !tbaa !57, !alias.scope !68
  %i.en = zext <16 x i8> %wide.load494 to <16 x i16>
  %i.eo = add nuw nsw <16 x i16> %i.em, splat (i16 1)
  %i.ep = add nuw nsw <16 x i16> %i.eo, %i.en
  %i.eq = lshr <16 x i16> %i.ep, splat (i16 1)
  %i.er = add nuw nsw <16 x i16> %i.el, splat (i16 1)
  %i.es = add nuw nsw <16 x i16> %i.er, %i.eq
  %i.et = lshr <16 x i16> %i.es, splat (i16 1)
  %i.eu = trunc nuw <16 x i16> %i.et to <16 x i8>
  store <16 x i8> %i.eu, ptr %.2250, align 1, !tbaa !57, !alias.scope !65, !noalias !66
  br i1 %cmp.n496, label %.loopexit599, label %vec.epilog.iter.check500

vec.epilog.iter.check500:                         ; preds = %vector.ph489
  br i1 %min.epilog.iters.check501, label %vec.epilog.scalar.ph499.preheader, label %vec.epilog.ph502, !prof !60

vec.epilog.ph502:                                 ; preds = %vector.main.loop.iter.check487, %vec.epilog.iter.check500
  %vec.epilog.resume.val497 = phi i64 [ %n.vec490, %vec.epilog.iter.check500 ], [ 0, %vector.main.loop.iter.check487 ]
  br label %vec.epilog.vector.body504

vec.epilog.vector.body504:                        ; preds = %vec.epilog.vector.body504, %vec.epilog.ph502
  %index505 = phi i64 [ %vec.epilog.resume.val497, %vec.epilog.ph502 ], [ %index.next509, %vec.epilog.vector.body504 ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.2250, i64 %index505 ; 2 uses
  %wide.load506 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !57, !alias.scope !65, !noalias !66
  %i.ew = zext <4 x i8> %wide.load506 to <4 x i16>
  %i.ex = getelementptr inbounds nuw i8, ptr %.2184249, i64 %index505
  %wide.load507 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !57, !alias.scope !67
  %i.ey = zext <4 x i8> %wide.load507 to <4 x i16>
  %i.ez = getelementptr i8, ptr %invariant.gep330, i64 %index505
  %wide.load508 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !57, !alias.scope !68
  %i.fa = zext <4 x i8> %wide.load508 to <4 x i16>
  %i.fb = add nuw nsw <4 x i16> %i.ey, splat (i16 1)
  %i.fc = add nuw nsw <4 x i16> %i.fb, %i.fa
  %i.fd = lshr <4 x i16> %i.fc, splat (i16 1)
  %i.fe = add nuw nsw <4 x i16> %i.ew, splat (i16 1)
  %i.ff = add nuw nsw <4 x i16> %i.fe, %i.fd
  %i.fg = lshr <4 x i16> %i.ff, splat (i16 1)
  %i.fh = trunc nuw <4 x i16> %i.fg to <4 x i8>
  store <4 x i8> %i.fh, ptr %i.ev, align 1, !tbaa !57, !alias.scope !65, !noalias !66
  %index.next509 = add nuw i64 %index505, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next509, %n.vec503
  br i1 %i.fi, label %vec.epilog.middle.block510, label %vec.epilog.vector.body504, !llvm.loop !25

vec.epilog.middle.block510:                       ; preds = %vec.epilog.vector.body504
  br i1 %cmp.n511, label %.loopexit599, label %vec.epilog.scalar.ph499.preheader

vec.epilog.scalar.ph499.preheader:                ; preds = %iter.check498, %vec.epilog.iter.check500, %vec.epilog.middle.block510
  %indvars.iv290.ph = phi i64 [ 0, %iter.check498 ], [ %n.vec490, %vec.epilog.iter.check500 ], [ %n.vec503, %vec.epilog.middle.block510 ] ; 6 uses
  br i1 %lcmp.mod616.not, label %vec.epilog.scalar.ph499.prol.loopexit, label %vec.epilog.scalar.ph499.prol

vec.epilog.scalar.ph499.prol:                     ; preds = %vec.epilog.scalar.ph499.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv290.ph ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !57
  %i.fl = zext i8 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv290.ph
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !57
  %i.fo = zext i8 %i.fn to i16
  %gep331.prol = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv290.ph
  %i.fp = load i8, ptr %gep331.prol, align 1, !tbaa !57
  %i.fq = zext i8 %i.fp to i16
  %i.fr = add nuw nsw i16 %i.fo, 1
  %i.fs = add nuw nsw i16 %i.fr, %i.fq
  %i.ft = lshr i16 %i.fs, 1
  %i.fu = add nuw nsw i16 %i.fl, 1
  %i.fv = add nuw nsw i16 %i.fu, %i.ft
  %i.fw = lshr i16 %i.fv, 1
  %i.fx = trunc nuw i16 %i.fw to i8
  store i8 %i.fx, ptr %i.fj, align 1, !tbaa !57
  %indvars.iv.next291.prol = or disjoint i64 %indvars.iv290.ph, 1
  br label %vec.epilog.scalar.ph499.prol.loopexit

vec.epilog.scalar.ph499.prol.loopexit:            ; preds = %vec.epilog.scalar.ph499.prol, %vec.epilog.scalar.ph499.preheader
  %indvars.iv290.unr = phi i64 [ %indvars.iv290.ph, %vec.epilog.scalar.ph499.preheader ], [ %indvars.iv.next291.prol, %vec.epilog.scalar.ph499.prol ]
  %i.fy = icmp eq i64 %indvars.iv290.ph, %i.eb
  br i1 %i.fy, label %.loopexit599, label %vec.epilog.scalar.ph499

vec.epilog.scalar.ph499:                          ; preds = %vec.epilog.scalar.ph499.prol.loopexit, %vec.epilog.scalar.ph499
  %indvars.iv290 = phi i64 [ %indvars.iv.next291.1, %vec.epilog.scalar.ph499 ], [ %indvars.iv290.unr, %vec.epilog.scalar.ph499.prol.loopexit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv290 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !57
  %i.gb = zext i8 %i.ga to i16
  %i.gc = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv290
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !57
  %i.ge = zext i8 %i.gd to i16
  %gep331 = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv290
  %i.gf = load i8, ptr %gep331, align 1, !tbaa !57
  %i.gg = zext i8 %i.gf to i16
  %i.gh = add nuw nsw i16 %i.ge, 1
  %i.gi = add nuw nsw i16 %i.gh, %i.gg
  %i.gj = lshr i16 %i.gi, 1
  %i.gk = add nuw nsw i16 %i.gb, 1
  %i.gl = add nuw nsw i16 %i.gk, %i.gj
  %i.gm = lshr i16 %i.gl, 1
  %i.gn = trunc nuw i16 %i.gm to i8
  store i8 %i.gn, ptr %i.fz, align 1, !tbaa !57
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.2250, i64 %indvars.iv.next291 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !57
  %i.gq = zext i8 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %.2184249, i64 %indvars.iv.next291
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !57
  %i.gt = zext i8 %i.gs to i16
  %gep331.1 = getelementptr i8, ptr %invariant.gep330, i64 %indvars.iv.next291
  %i.gu = load i8, ptr %gep331.1, align 1, !tbaa !57
  %i.gv = zext i8 %i.gu to i16
  %i.gw = add nuw nsw i16 %i.gt, 1
  %i.gx = add nuw nsw i16 %i.gw, %i.gv
  %i.gy = lshr i16 %i.gx, 1
  %i.gz = add nuw nsw i16 %i.gq, 1
  %i.ha = add nuw nsw i16 %i.gz, %i.gy
  %i.hb = lshr i16 %i.ha, 1
  %i.hc = trunc nuw i16 %i.hb to i8
  store i8 %i.hc, ptr %i.go, align 1, !tbaa !57
  %indvars.iv.next291.1 = add nuw nsw i64 %indvars.iv290, 2 ; 2 uses
  %exitcond294.not.1 = icmp eq i64 %indvars.iv.next291.1, %wide.trip.count299
  br i1 %exitcond294.not.1, label %.loopexit599, label %vec.epilog.scalar.ph499, !llvm.loop !26

.loopexit599:                                     ; preds = %vec.epilog.scalar.ph499.prol.loopexit, %vec.epilog.scalar.ph499, %vec.epilog.middle.block510, %vector.ph489
  %i.hd = getelementptr inbounds i8, ptr %.2184249, i64 %i.di
  %i.he = getelementptr inbounds i8, ptr %.2250, i64 %i.di
  %i.hf = add nuw nsw i32 %.2192248, 1            ; 2 uses
  %exitcond295.not = icmp eq i32 %i.hf, %5
  br i1 %exitcond295.not, label %.loopexit, label %iter.check498, !llvm.loop !27

iter.check526:                                    ; preds = %.preheader213.preheader, %.loopexit598
  %.3254 = phi ptr [ %i.jc, %.loopexit598 ], [ %i.p, %.preheader213.preheader ] ; 6 uses
  %.3185253 = phi ptr [ %i.jb, %.loopexit598 ], [ %i.l, %.preheader213.preheader ] ; 7 uses
  %.3193252 = phi i32 [ %i.jd, %.loopexit598 ], [ 0, %.preheader213.preheader ]
  %invariant.gep332 = getelementptr i8, ptr %.3185253, i64 %i.dj ; 5 uses
  br i1 %conflict.rdx515, label %vec.epilog.scalar.ph527.preheader, label %vector.main.loop.iter.check516

vector.main.loop.iter.check516:                   ; preds = %iter.check526
  br i1 %min.iters.check517, label %vec.epilog.ph530, label %vector.ph518

vector.ph518:                                     ; preds = %vector.main.loop.iter.check516
  %wide.load521 = load <16 x i8>, ptr %.3185253, align 1, !tbaa !57
  %i.hg = zext <16 x i8> %wide.load521 to <16 x i16>
  %wide.load522 = load <16 x i8>, ptr %invariant.gep332, align 1, !tbaa !57
  %i.hh = zext <16 x i8> %wide.load522 to <16 x i16>
  %i.hi = add nuw nsw <16 x i16> %i.hg, splat (i16 1)
  %i.hj = add nuw nsw <16 x i16> %i.hi, %i.hh
  %i.hk = lshr <16 x i16> %i.hj, splat (i16 1)
  %i.hl = trunc nuw <16 x i16> %i.hk to <16 x i8>
  store <16 x i8> %i.hl, ptr %.3254, align 1, !tbaa !57
  br i1 %cmp.n524, label %.loopexit598, label %vec.epilog.iter.check528

vec.epilog.iter.check528:                         ; preds = %vector.ph518
  br i1 %min.epilog.iters.check529, label %vec.epilog.scalar.ph527.preheader, label %vec.epilog.ph530, !prof !60

vec.epilog.ph530:                                 ; preds = %vector.main.loop.iter.check516, %vec.epilog.iter.check528
  %vec.epilog.resume.val525 = phi i64 [ %n.vec519, %vec.epilog.iter.check528 ], [ 0, %vector.main.loop.iter.check516 ]
end_hunk_0
begin_hunk_1_@form_component_prediction:bb.a
vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.lm = icmp eq i64 %indvars.iv.ph, %i.js
  br i1 %i.lm, label %.loopexit603, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !57
  %i.lp = zext i8 %i.lo to i16
  %i.lq = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !57
  %i.ls = zext i8 %i.lr to i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !57
  %i.lv = zext i8 %i.lu to i16
  %i.lw = add nuw nsw i16 %i.ls, 1
  %i.lx = add nuw nsw i16 %i.lw, %i.lv
  %i.ly = lshr i16 %i.lx, 1
  %i.lz = add nuw nsw i16 %i.lp, 1
  %i.ma = add nuw nsw i16 %i.lz, %i.ly
  %i.mb = lshr i16 %i.ma, 1
  %i.mc = trunc nuw i16 %i.mb to i8
  store i8 %i.mc, ptr %i.ln, align 1, !tbaa !57
  %i.md = getelementptr inbounds nuw i8, ptr %.4234, i64 %indvars.iv.next ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !57
  %i.mf = zext i8 %i.me to i16
  %i.mg = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !57
  %i.mi = zext i8 %i.mh to i16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.4186233, i64 %indvars.iv.next.1
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !57
  %i.ml = zext i8 %i.mk to i16
  %i.mm = add nuw nsw i16 %i.mi, 1
  %i.mn = add nuw nsw i16 %i.mm, %i.ml
  %i.mo = lshr i16 %i.mn, 1
  %i.mp = add nuw nsw i16 %i.mf, 1
  %i.mq = add nuw nsw i16 %i.mp, %i.mo
  %i.mr = lshr i16 %i.mq, 1
  %i.ms = trunc nuw i16 %i.mr to i8
  store i8 %i.ms, ptr %i.md, align 1, !tbaa !57
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count275
  br i1 %exitcond.not.1, label %.loopexit603, label %vec.epilog.scalar.ph, !llvm.loop !35

.loopexit603:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.mt = getelementptr inbounds i8, ptr %.4186233, i64 %i.je
  %i.mu = getelementptr inbounds i8, ptr %.4234, i64 %i.je
  %i.mv = add nuw nsw i32 %.4194232, 1            ; 2 uses
  %exitcond271.not = icmp eq i32 %i.mv, %5
  br i1 %exitcond271.not, label %.loopexit, label %vector.memcheck, !llvm.loop !36

vector.memcheck350:                               ; preds = %vector.memcheck350.preheader, %.loopexit602
  %.5238 = phi ptr [ %i.ox, %.loopexit602 ], [ %i.p, %vector.memcheck350.preheader ] ; 6 uses
  %.5187237 = phi ptr [ %i.ow, %.loopexit602 ], [ %i.l, %vector.memcheck350.preheader ] ; 11 uses
  %.5195236 = phi i32 [ %i.oy, %.loopexit602 ], [ 0, %vector.memcheck350.preheader ]
  br i1 %i.jt, label %vec.epilog.scalar.ph369.preheader, label %vector.main.loop.iter.check358

vector.main.loop.iter.check358:                   ; preds = %vector.memcheck350
  br i1 %min.iters.check359, label %vec.epilog.ph372, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check358
  %wide.load363 = load <16 x i8>, ptr %.5187237, align 1, !tbaa !57, !alias.scope !71
  %i.mw = zext <16 x i8> %wide.load363 to <16 x i16>
  %i.mx = getelementptr inbounds nuw i8, ptr %.5187237, i64 1
  %wide.load364 = load <16 x i8>, ptr %i.mx, align 1, !tbaa !57, !alias.scope !71
  %i.my = zext <16 x i8> %wide.load364 to <16 x i16>
  %i.mz = add nuw nsw <16 x i16> %i.mw, splat (i16 1)
  %i.na = add nuw nsw <16 x i16> %i.mz, %i.my
  %i.nb = lshr <16 x i16> %i.na, splat (i16 1)
  %i.nc = trunc nuw <16 x i16> %i.nb to <16 x i8>
  store <16 x i8> %i.nc, ptr %.5238, align 1, !tbaa !57, !alias.scope !72, !noalias !71
  br i1 %cmp.n366, label %.loopexit602, label %vec.epilog.iter.check370

vec.epilog.iter.check370:                         ; preds = %vector.ph360
  br i1 %min.epilog.iters.check371, label %vec.epilog.scalar.ph369.preheader, label %vec.epilog.ph372, !prof !60

vec.epilog.ph372:                                 ; preds = %vector.main.loop.iter.check358, %vec.epilog.iter.check370
  %vec.epilog.resume.val367 = phi i64 [ %n.vec361, %vec.epilog.iter.check370 ], [ 0, %vector.main.loop.iter.check358 ]
  br label %vec.epilog.vector.body374

vec.epilog.vector.body374:                        ; preds = %vec.epilog.vector.body374, %vec.epilog.ph372
  %index375 = phi i64 [ %vec.epilog.resume.val367, %vec.epilog.ph372 ], [ %index.next378, %vec.epilog.vector.body374 ] ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.5187237, i64 %index375
  %wide.load376 = load <4 x i8>, ptr %i.nd, align 1, !tbaa !57, !alias.scope !71
  %i.ne = zext <4 x i8> %wide.load376 to <4 x i16>
  %i.nf = getelementptr inbounds nuw i8, ptr %.5187237, i64 %index375
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  %wide.load377 = load <4 x i8>, ptr %i.ng, align 1, !tbaa !57, !alias.scope !71
  %i.nh = zext <4 x i8> %wide.load377 to <4 x i16>
  %i.ni = add nuw nsw <4 x i16> %i.ne, splat (i16 1)
  %i.nj = add nuw nsw <4 x i16> %i.ni, %i.nh
  %i.nk = lshr <4 x i16> %i.nj, splat (i16 1)
  %i.nl = trunc nuw <4 x i16> %i.nk to <4 x i8>
  %i.nm = getelementptr inbounds nuw i8, ptr %.5238, i64 %index375
  store <4 x i8> %i.nl, ptr %i.nm, align 1, !tbaa !57, !alias.scope !72, !noalias !71
  %index.next378 = add nuw i64 %index375, 4       ; 2 uses
  %i.nn = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.nn, label %vec.epilog.middle.block379, label %vec.epilog.vector.body374, !llvm.loop !40

vec.epilog.middle.block379:                       ; preds = %vec.epilog.vector.body374
  br i1 %cmp.n380, label %.loopexit602, label %vec.epilog.scalar.ph369.preheader

vec.epilog.scalar.ph369.preheader:                ; preds = %vector.memcheck350, %vec.epilog.iter.check370, %vec.epilog.middle.block379
  %indvars.iv272.ph = phi i64 [ 0, %vector.memcheck350 ], [ %n.vec361, %vec.epilog.iter.check370 ], [ %n.vec373, %vec.epilog.middle.block379 ] ; 5 uses
  br i1 %lcmp.mod612.not, label %vec.epilog.scalar.ph369.prol.loopexit, label %vec.epilog.scalar.ph369.prol

vec.epilog.scalar.ph369.prol:                     ; preds = %vec.epilog.scalar.ph369.preheader
  %i.no = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv272.ph
  %i.np = load i8, ptr %i.no, align 1, !tbaa !57
  %i.nq = zext i8 %i.np to i16
  %indvars.iv.next273.prol = or disjoint i64 %indvars.iv272.ph, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273.prol
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !57
  %i.nt = zext i8 %i.ns to i16
  %i.nu = add nuw nsw i16 %i.nq, 1
  %i.nv = add nuw nsw i16 %i.nu, %i.nt
  %i.nw = lshr i16 %i.nv, 1
  %i.nx = trunc nuw i16 %i.nw to i8
  %i.ny = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv272.ph
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !57
  br label %vec.epilog.scalar.ph369.prol.loopexit

vec.epilog.scalar.ph369.prol.loopexit:            ; preds = %vec.epilog.scalar.ph369.prol, %vec.epilog.scalar.ph369.preheader
  %indvars.iv272.unr = phi i64 [ %indvars.iv272.ph, %vec.epilog.scalar.ph369.preheader ], [ %indvars.iv.next273.prol, %vec.epilog.scalar.ph369.prol ]
  %i.nz = icmp eq i64 %indvars.iv272.ph, %i.jv
  br i1 %i.nz, label %.loopexit602, label %vec.epilog.scalar.ph369

vec.epilog.scalar.ph369:                          ; preds = %vec.epilog.scalar.ph369.prol.loopexit, %vec.epilog.scalar.ph369
  %indvars.iv272 = phi i64 [ %indvars.iv.next273.1, %vec.epilog.scalar.ph369 ], [ %indvars.iv272.unr, %vec.epilog.scalar.ph369.prol.loopexit ] ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv272
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !57
  %i.oc = zext i8 %i.ob to i16
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !57
  %i.of = zext i8 %i.oe to i16
  %i.og = add nuw nsw i16 %i.oc, 1
  %i.oh = add nuw nsw i16 %i.og, %i.of
  %i.oi = lshr i16 %i.oh, 1
  %i.oj = trunc nuw i16 %i.oi to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv272
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !57
  %i.ol = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !57
  %i.on = zext i8 %i.om to i16
  %indvars.iv.next273.1 = add nuw nsw i64 %indvars.iv272, 2 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.5187237, i64 %indvars.iv.next273.1
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !57
  %i.oq = zext i8 %i.op to i16
  %i.or = add nuw nsw i16 %i.on, 1
  %i.os = add nuw nsw i16 %i.or, %i.oq
  %i.ot = lshr i16 %i.os, 1
  %i.ou = trunc nuw i16 %i.ot to i8
  %i.ov = getelementptr inbounds nuw i8, ptr %.5238, i64 %indvars.iv.next273
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !57
  %exitcond276.not.1 = icmp eq i64 %indvars.iv.next273.1, %wide.trip.count275
  br i1 %exitcond276.not.1, label %.loopexit602, label %vec.epilog.scalar.ph369, !llvm.loop !41

.loopexit602:                                     ; preds = %vec.epilog.scalar.ph369.prol.loopexit, %vec.epilog.scalar.ph369, %vec.epilog.middle.block379, %vector.ph360
  %i.ow = getelementptr inbounds i8, ptr %.5187237, i64 %i.je
  %i.ox = getelementptr inbounds i8, ptr %.5238, i64 %i.je
  %i.oy = add nuw nsw i32 %.5195236, 1            ; 2 uses
  %exitcond277.not = icmp eq i32 %i.oy, %5
  br i1 %exitcond277.not, label %.loopexit, label %vector.memcheck350, !llvm.loop !42

bb.g:                                             ; preds = %bb.e
  %i.oz = sext i32 %2 to i64                      ; 4 uses
  %wide.trip.count287 = zext nneg i32 %4 to i64   ; 17 uses
  %i.pa = add nsw i32 %5, -1
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = mul nsw i64 %i.je, %i.pb                ; 3 uses
  %i.pd = getelementptr i8, ptr %1, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 %i.i
  %i.pf = getelementptr i8, ptr %i.pe, i64 %i.n
  %scevgep428 = getelementptr i8, ptr %i.pf, i64 %wide.trip.count287 ; 4 uses
  %i.pg = getelementptr i8, ptr %0, i64 %i.k
  %i.ph = getelementptr i8, ptr %i.pg, i64 %i.i
  %i.pi = getelementptr i8, ptr %i.ph, i64 %i.oz
  %scevgep429 = getelementptr i8, ptr %i.pi, i64 %i.g ; 2 uses
  %i.pj = getelementptr i8, ptr %0, i64 %i.pc
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.k
  %i.pl = getelementptr i8, ptr %i.pk, i64 %i.i
  %i.pm = getelementptr i8, ptr %i.pl, i64 %i.oz
  %i.pn = getelementptr i8, ptr %i.pm, i64 %i.g
  %i.po = getelementptr i8, ptr %i.pn, i64 %wide.trip.count287
  %scevgep430 = getelementptr i8, ptr %i.po, i64 1 ; 2 uses
  %i.pp = getelementptr i8, ptr %0, i64 %i.pc
  %i.pq = getelementptr i8, ptr %i.pp, i64 %i.k
  %i.pr = getelementptr i8, ptr %i.pq, i64 %i.i
  %i.ps = getelementptr i8, ptr %i.pr, i64 %i.g
  %i.pt = getelementptr i8, ptr %i.ps, i64 %wide.trip.count287
  %scevgep431 = getelementptr i8, ptr %i.pt, i64 1 ; 2 uses
  br i1 %.not207, label %iter.check455.preheader, label %iter.check410.preheader

iter.check410.preheader:                          ; preds = %bb.g
  %bound0387 = icmp ult ptr %i.p, %scevgep430
  %bound1388 = icmp ult ptr %scevgep429, %scevgep428
  %found.conflict389 = and i1 %bound0387, %bound1388
  %stride.check388 = icmp slt i32 %3, 0
  %12 = or i1 %found.conflict389, %stride.check388
  %bound0392 = icmp ult ptr %i.p, %scevgep431
  %bound1393 = icmp ult ptr %i.l, %scevgep428
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx = or i1 %12, %found.conflict394
  %min.iters.check398 = icmp samesign ult i32 %4, 16
  %n.vec400 = and i64 %wide.trip.count287, 16     ; 3 uses
  %cmp.n408 = icmp eq i64 %n.vec400, %wide.trip.count287
  %i.pu = and i64 %wide.trip.count287, 12
  %min.epilog.iters.check413 = icmp eq i64 %i.pu, 0
  %n.vec415 = and i64 %wide.trip.count287, 28     ; 3 uses
  %cmp.n425 = icmp eq i64 %n.vec415, %wide.trip.count287
  br label %iter.check410

iter.check455.preheader:                          ; preds = %bb.g
  %bound0432 = icmp ult ptr %i.p, %scevgep430
  %bound1433 = icmp ult ptr %scevgep429, %scevgep428
  %found.conflict434 = and i1 %bound0432, %bound1433
  %stride.check430 = icmp slt i32 %3, 0
  %13 = or i1 %found.conflict434, %stride.check430
  %bound0437 = icmp ult ptr %i.p, %scevgep431
  %bound1438 = icmp ult ptr %i.l, %scevgep428
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx442 = or i1 %13, %found.conflict439
  %min.iters.check444 = icmp samesign ult i32 %4, 16
  %n.vec446 = and i64 %wide.trip.count287, 16     ; 3 uses
  %cmp.n453 = icmp eq i64 %n.vec446, %wide.trip.count287
  %i.pv = and i64 %wide.trip.count287, 12
  %min.epilog.iters.check458 = icmp eq i64 %i.pv, 0
  %n.vec460 = and i64 %wide.trip.count287, 28     ; 3 uses
  %cmp.n469 = icmp eq i64 %n.vec460, %wide.trip.count287
  %xtraiter613 = and i64 %wide.trip.count287, 1
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  %i.pw = add nsw i64 %wide.trip.count287, -1
  br label %iter.check455

iter.check410:                                    ; preds = %iter.check410.preheader, %.loopexit601
  %.6242 = phi ptr [ %i.sg, %.loopexit601 ], [ %i.p, %iter.check410.preheader ] ; 5 uses
  %.6188241 = phi ptr [ %i.sf, %.loopexit601 ], [ %i.l, %iter.check410.preheader ] ; 8 uses
  %.6196240 = phi i32 [ %i.sh, %.loopexit601 ], [ 0, %iter.check410.preheader ]
  %invariant.gep = getelementptr i8, ptr %.6188241, i64 %i.oz ; 4 uses
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph411.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %iter.check410
  br i1 %min.iters.check398, label %vec.epilog.ph414, label %vector.ph399

vector.ph399:                                     ; preds = %vector.main.loop.iter.check397
  %wide.load402 = load <16 x i8>, ptr %.6242, align 1, !tbaa !57, !alias.scope !73, !noalias !74
  %i.px = zext <16 x i8> %wide.load402 to <16 x i16>
  %wide.load403 = load <16 x i8>, ptr %.6188241, align 1, !tbaa !57, !alias.scope !75
  %i.py = zext <16 x i8> %wide.load403 to <16 x i16>
  %i.pz = getelementptr inbounds nuw i8, ptr %.6188241, i64 1
  %wide.load404 = load <16 x i8>, ptr %i.pz, align 1, !tbaa !57, !alias.scope !75
  %i.qa = zext <16 x i8> %wide.load404 to <16 x i16>
  %wide.load405 = load <16 x i8>, ptr %invariant.gep, align 1, !tbaa !57, !alias.scope !76
  %i.qb = zext <16 x i8> %wide.load405 to <16 x i16>
  %i.qc = getelementptr i8, ptr %invariant.gep, i64 1
  %wide.load406 = load <16 x i8>, ptr %i.qc, align 1, !tbaa !57, !alias.scope !76
  %i.qd = zext <16 x i8> %wide.load406 to <16 x i16>
  %i.qe = add nuw nsw <16 x i16> %i.py, splat (i16 2)
  %i.qf = add nuw nsw <16 x i16> %i.qe, %i.qa
  %i.qg = add nuw nsw <16 x i16> %i.qf, %i.qb
  %i.qh = add nuw nsw <16 x i16> %i.qg, %i.qd
  %i.qi = lshr <16 x i16> %i.qh, splat (i16 2)
  %i.qj = add nuw nsw <16 x i16> %i.px, splat (i16 1)
  %i.qk = add nuw nsw <16 x i16> %i.qj, %i.qi
  %i.ql = lshr <16 x i16> %i.qk, splat (i16 1)
  %i.qm = trunc nuw <16 x i16> %i.ql to <16 x i8>
  store <16 x i8> %i.qm, ptr %.6242, align 1, !tbaa !57, !alias.scope !73, !noalias !74
  br i1 %cmp.n408, label %.loopexit601, label %vec.epilog.iter.check412

vec.epilog.iter.check412:                         ; preds = %vector.ph399
  br i1 %min.epilog.iters.check413, label %vec.epilog.scalar.ph411.preheader, label %vec.epilog.ph414, !prof !60

vec.epilog.ph414:                                 ; preds = %vector.main.loop.iter.check397, %vec.epilog.iter.check412
  %vec.epilog.resume.val409 = phi i64 [ %n.vec400, %vec.epilog.iter.check412 ], [ 0, %vector.main.loop.iter.check397 ]
  br label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %vec.epilog.vector.body416, %vec.epilog.ph414
  %index417 = phi i64 [ %vec.epilog.resume.val409, %vec.epilog.ph414 ], [ %index.next423, %vec.epilog.vector.body416 ] ; 5 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.6242, i64 %index417 ; 2 uses
  %wide.load418 = load <4 x i8>, ptr %i.qn, align 1, !tbaa !57, !alias.scope !73, !noalias !74
  %i.qo = zext <4 x i8> %wide.load418 to <4 x i16>
  %i.qp = getelementptr inbounds nuw i8, ptr %.6188241, i64 %index417
  %wide.load419 = load <4 x i8>, ptr %i.qp, align 1, !tbaa !57, !alias.scope !75
  %i.qq = zext <4 x i8> %wide.load419 to <4 x i16>
  %i.qr = getelementptr inbounds nuw i8, ptr %.6188241, i64 %index417
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 1
  %wide.load420 = load <4 x i8>, ptr %i.qs, align 1, !tbaa !57, !alias.scope !75
  %i.qt = zext <4 x i8> %wide.load420 to <4 x i16>
  %i.qu = getelementptr i8, ptr %invariant.gep, i64 %index417 ; 2 uses
  %wide.load421 = load <4 x i8>, ptr %i.qu, align 1, !tbaa !57, !alias.scope !76
  %i.qv = zext <4 x i8> %wide.load421 to <4 x i16>
  %i.qw = getelementptr i8, ptr %i.qu, i64 1
  %wide.load422 = load <4 x i8>, ptr %i.qw, align 1, !tbaa !57, !alias.scope !76
  %i.qx = zext <4 x i8> %wide.load422 to <4 x i16>
  %i.qy = add nuw nsw <4 x i16> %i.qq, splat (i16 2)
  %i.qz = add nuw nsw <4 x i16> %i.qy, %i.qt
  %i.ra = add nuw nsw <4 x i16> %i.qz, %i.qv
  %i.rb = add nuw nsw <4 x i16> %i.ra, %i.qx
  %i.rc = lshr <4 x i16> %i.rb, splat (i16 2)
  %i.rd = add nuw nsw <4 x i16> %i.qo, splat (i16 1)
  %i.re = add nuw nsw <4 x i16> %i.rd, %i.rc
  %i.rf = lshr <4 x i16> %i.re, splat (i16 1)
  %i.rg = trunc nuw <4 x i16> %i.rf to <4 x i8>
  store <4 x i8> %i.rg, ptr %i.qn, align 1, !tbaa !57, !alias.scope !73, !noalias !74
  %index.next423 = add nuw i64 %index417, 4       ; 2 uses
  %i.rh = icmp eq i64 %index.next423, %n.vec415
  br i1 %i.rh, label %vec.epilog.middle.block424, label %vec.epilog.vector.body416, !llvm.loop !47

vec.epilog.middle.block424:                       ; preds = %vec.epilog.vector.body416
  br i1 %cmp.n425, label %.loopexit601, label %vec.epilog.scalar.ph411.preheader

vec.epilog.scalar.ph411.preheader:                ; preds = %iter.check410, %vec.epilog.iter.check412, %vec.epilog.middle.block424
  %indvars.iv278.ph = phi i64 [ 0, %iter.check410 ], [ %n.vec400, %vec.epilog.iter.check412 ], [ %n.vec415, %vec.epilog.middle.block424 ]
  br label %vec.epilog.scalar.ph411

vec.epilog.scalar.ph411:                          ; preds = %vec.epilog.scalar.ph411.preheader, %vec.epilog.scalar.ph411
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %vec.epilog.scalar.ph411 ], [ %indvars.iv278.ph, %vec.epilog.scalar.ph411.preheader ] ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.6242, i64 %indvars.iv278 ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !57
  %i.rk = zext i8 %i.rj to i16
  %i.rl = getelementptr inbounds nuw i8, ptr %.6188241, i64 %indvars.iv278
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !57
  %i.rn = zext i8 %i.rm to i16
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.6188241, i64 %indvars.iv.next279
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !57
  %i.rq = zext i8 %i.rp to i16
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv278 ; 2 uses
  %i.rr = load i8, ptr %gep, align 1, !tbaa !57
  %i.rs = zext i8 %i.rr to i16
  %i.rt = getelementptr i8, ptr %gep, i64 1
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !57
  %i.rv = zext i8 %i.ru to i16
  %i.rw = add nuw nsw i16 %i.rn, 2
  %i.rx = add nuw nsw i16 %i.rw, %i.rq
  %i.ry = add nuw nsw i16 %i.rx, %i.rs
  %i.rz = add nuw nsw i16 %i.ry, %i.rv
  %i.sa = lshr i16 %i.rz, 2
  %i.sb = add nuw nsw i16 %i.rk, 1
  %i.sc = add nuw nsw i16 %i.sb, %i.sa
  %i.sd = lshr i16 %i.sc, 1
  %i.se = trunc nuw i16 %i.sd to i8
  store i8 %i.se, ptr %i.ri, align 1, !tbaa !57
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count287
  br i1 %exitcond282.not, label %.loopexit601, label %vec.epilog.scalar.ph411, !llvm.loop !48

.loopexit601:                                     ; preds = %vec.epilog.scalar.ph411, %vec.epilog.middle.block424, %vector.ph399
  %i.sf = getelementptr inbounds i8, ptr %.6188241, i64 %i.je
  %i.sg = getelementptr inbounds i8, ptr %.6242, i64 %i.je
  %i.sh = add nuw nsw i32 %.6196240, 1            ; 2 uses
  %exitcond283.not = icmp eq i32 %i.sh, %5
  br i1 %exitcond283.not, label %.loopexit, label %iter.check410, !llvm.loop !49

iter.check455:                                    ; preds = %iter.check455.preheader, %.loopexit600
  %.7246 = phi ptr [ %i.vp, %.loopexit600 ], [ %i.p, %iter.check455.preheader ] ; 6 uses
  %.7189245 = phi ptr [ %i.vo, %.loopexit600 ], [ %i.l, %iter.check455.preheader ] ; 12 uses
  %.7197244 = phi i32 [ %i.vq, %.loopexit600 ], [ 0, %iter.check455.preheader ]
  %invariant.gep328 = getelementptr i8, ptr %.7189245, i64 %i.oz ; 6 uses
  br i1 %conflict.rdx442, label %vec.epilog.scalar.ph456.preheader, label %vector.main.loop.iter.check443

vector.main.loop.iter.check443:                   ; preds = %iter.check455
  br i1 %min.iters.check444, label %vec.epilog.ph459, label %vector.ph445

vector.ph445:                                     ; preds = %vector.main.loop.iter.check443
  %wide.load448 = load <16 x i8>, ptr %.7189245, align 1, !tbaa !57, !alias.scope !77
  %i.si = zext <16 x i8> %wide.load448 to <16 x i16>
  %i.sj = getelementptr inbounds nuw i8, ptr %.7189245, i64 1
  %wide.load449 = load <16 x i8>, ptr %i.sj, align 1, !tbaa !57, !alias.scope !77
  %i.sk = zext <16 x i8> %wide.load449 to <16 x i16>
  %wide.load450 = load <16 x i8>, ptr %invariant.gep328, align 1, !tbaa !57, !alias.scope !78
  %i.sl = zext <16 x i8> %wide.load450 to <16 x i16>
  %i.sm = getelementptr i8, ptr %invariant.gep328, i64 1
  %wide.load451 = load <16 x i8>, ptr %i.sm, align 1, !tbaa !57, !alias.scope !78
  %i.sn = zext <16 x i8> %wide.load451 to <16 x i16>
  %i.so = add nuw nsw <16 x i16> %i.si, splat (i16 2)
  %i.sp = add nuw nsw <16 x i16> %i.so, %i.sk
  %i.sq = add nuw nsw <16 x i16> %i.sp, %i.sl
  %i.sr = add nuw nsw <16 x i16> %i.sq, %i.sn
  %i.ss = lshr <16 x i16> %i.sr, splat (i16 2)
  %i.st = trunc nuw <16 x i16> %i.ss to <16 x i8>
  store <16 x i8> %i.st, ptr %.7246, align 1, !tbaa !57, !alias.scope !79, !noalias !80
  br i1 %cmp.n453, label %.loopexit600, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %vector.ph445
  br i1 %min.epilog.iters.check458, label %vec.epilog.scalar.ph456.preheader, label %vec.epilog.ph459, !prof !60

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check443, %vec.epilog.iter.check457
  %vec.epilog.resume.val454 = phi i64 [ %n.vec446, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check443 ]
  br label %vec.epilog.vector.body461

vec.epilog.vector.body461:                        ; preds = %vec.epilog.vector.body461, %vec.epilog.ph459
  %index462 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph459 ], [ %index.next467, %vec.epilog.vector.body461 ] ; 5 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.7189245, i64 %index462
  %wide.load463 = load <4 x i8>, ptr %i.su, align 1, !tbaa !57, !alias.scope !77
  %i.sv = zext <4 x i8> %wide.load463 to <4 x i16>
  %i.sw = getelementptr inbounds nuw i8, ptr %.7189245, i64 %index462
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1
  %wide.load464 = load <4 x i8>, ptr %i.sx, align 1, !tbaa !57, !alias.scope !77
  %i.sy = zext <4 x i8> %wide.load464 to <4 x i16>
  %i.sz = getelementptr i8, ptr %invariant.gep328, i64 %index462 ; 2 uses
  %wide.load465 = load <4 x i8>, ptr %i.sz, align 1, !tbaa !57, !alias.scope !78
  %i.ta = zext <4 x i8> %wide.load465 to <4 x i16>
  %i.tb = getelementptr i8, ptr %i.sz, i64 1
  %wide.load466 = load <4 x i8>, ptr %i.tb, align 1, !tbaa !57, !alias.scope !78
  %i.tc = zext <4 x i8> %wide.load466 to <4 x i16>
  %i.td = add nuw nsw <4 x i16> %i.sv, splat (i16 2)
  %i.te = add nuw nsw <4 x i16> %i.td, %i.sy
  %i.tf = add nuw nsw <4 x i16> %i.te, %i.ta
  %i.tg = add nuw nsw <4 x i16> %i.tf, %i.tc
  %i.th = lshr <4 x i16> %i.tg, splat (i16 2)
  %i.ti = trunc nuw <4 x i16> %i.th to <4 x i8>
  %i.tj = getelementptr inbounds nuw i8, ptr %.7246, i64 %index462
  store <4 x i8> %i.ti, ptr %i.tj, align 1, !tbaa !57, !alias.scope !79, !noalias !80
  %index.next467 = add nuw i64 %index462, 4       ; 2 uses
  %i.tk = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.tk, label %vec.epilog.middle.block468, label %vec.epilog.vector.body461, !llvm.loop !54

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body461
  br i1 %cmp.n469, label %.loopexit600, label %vec.epilog.scalar.ph456.preheader

vec.epilog.scalar.ph456.preheader:                ; preds = %iter.check455, %vec.epilog.iter.check457, %vec.epilog.middle.block468
  %indvars.iv284.ph = phi i64 [ 0, %iter.check455 ], [ %n.vec446, %vec.epilog.iter.check457 ], [ %n.vec460, %vec.epilog.middle.block468 ] ; 6 uses
end_hunk_1
