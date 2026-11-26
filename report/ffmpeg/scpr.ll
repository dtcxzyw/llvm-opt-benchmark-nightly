Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/scpr?download=true
inline.NumInlined: 91
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 78
begin_hunk_0_@decode_unit3:bb.a
  %i.cd = icmp ugt i8 %.1139.val.i, %.val153.i
  br i1 %i.cd, label %bb.y, label %.critedge2.i

bb.y:                                             ; preds = %.lr.ph178.i
  %i.ce = getelementptr inbounds i8, ptr %.1139177.i, i64 -1 ; 3 uses
  %.not151.i = icmp ugt ptr %.1142.lcssa.i, %i.ce
  br i1 %.not151.i, label %.critedge152.i, label %.lr.ph178.i, !llvm.loop !149

.critedge2.i:                                     ; preds = %.lr.ph178.i
  %i.cf = load i8, ptr %.1142.lcssa.i, align 1, !tbaa !49
  store i8 %i.cf, ptr %.1139177.i, align 1, !tbaa !49
  store i8 %.1139.val.i, ptr %.1142.lcssa.i, align 1, !tbaa !49
  %i.cg = getelementptr inbounds nuw i8, ptr %.1142.lcssa.i, i64 1
  %i.ch = getelementptr inbounds i8, ptr %.1139177.i, i64 -1
  %.val154.pre.i = load i8, ptr %i.bm, align 1, !tbaa !49 ; 2 uses
  br label %.critedge152.i

.critedge152.i:                                   ; preds = %bb.y, %.critedge2.i, %.critedge.i198
  %.val153215.i = phi i8 [ %.val154.pre.i, %.critedge2.i ], [ %.val153.i, %.critedge.i198 ], [ %.val153.i, %bb.y ] ; 2 uses
  %.val154213.i = phi i8 [ %.val154.pre.i, %.critedge2.i ], [ %.val154.i, %.critedge.i198 ], [ %.val153.i, %bb.y ]
  %.2143.i = phi ptr [ %i.cg, %.critedge2.i ], [ %.1142.lcssa.i, %.critedge.i198 ], [ %.1142.lcssa.i, %bb.y ] ; 9 uses
  %.2140.i = phi ptr [ %i.ch, %.critedge2.i ], [ %.0138181.i, %.critedge.i198 ], [ %i.ce, %bb.y ] ; 4 uses
  %.not148.i = icmp ugt ptr %.2143.i, %.2140.i
  br i1 %.not148.i, label %._crit_edge182.i.loopexit, label %.preheader.i197, !llvm.loop !150

._crit_edge182.i.loopexit:                        ; preds = %.critedge152.i
  %i.ci = load i8, ptr %.2143.i, align 1, !tbaa !49
  store i8 %.val153215.i, ptr %.2143.i, align 1, !tbaa !49
  store i8 %i.ci, ptr %i.bm, align 1, !tbaa !49
  %.not149.i = icmp eq i32 %.1137.i, 0
  br i1 %.not149.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge182.i.loopexit
  %i.cj = getelementptr inbounds i8, ptr %.2143.i, i64 -1
  %i.ck = icmp eq ptr %i.bu, %i.cj
  %i.cl = icmp eq ptr %i.bu, %.2143.i
  %or.cond.i199 = or i1 %i.cl, %i.ck
  br i1 %or.cond.i199, label %.preheader168.i.preheader, label %bb.aa

.preheader168.i.preheader:                        ; preds = %bb.z
  %i.cm = icmp ult ptr %.0129186.i, %.0133185.i
  br i1 %i.cm, label %.lr.ph417, label %.critedge4.i

.preheader168.i:                                  ; preds = %.lr.ph417
  %i.cn = icmp ult ptr %i.co, %.0133185.i
  br i1 %i.cn, label %.lr.ph417, label %.critedge4.i, !llvm.loop !151

.lr.ph417:                                        ; preds = %.preheader168.i.preheader, %.preheader168.i
  %.0144.i416 = phi ptr [ %i.co, %.preheader168.i ], [ %.0129186.i, %.preheader168.i.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0144.i416, i64 1 ; 4 uses
  %.0144.val.i = load i8, ptr %.0144.i416, align 1, !tbaa !49
  %.val.i = load i8, ptr %i.co, align 1, !tbaa !49
  %.not167.i = icmp ugt i8 %.0144.val.i, %.val.i
  br i1 %.not167.i, label %..critedge4.i_crit_edge, label %.preheader168.i, !llvm.loop !151

..critedge4.i_crit_edge:                          ; preds = %.lr.ph417
  br label %.critedge4.i, !llvm.loop !151

.critedge4.i:                                     ; preds = %.preheader168.i, %..critedge4.i_crit_edge, %.preheader168.i.preheader
  %.0144.i.lcssa = phi ptr [ %.0144.i416, %..critedge4.i_crit_edge ], [ %.0129186.i, %.preheader168.i.preheader ], [ %i.co, %.preheader168.i ]
  %i.cp = icmp eq ptr %.0144.i.lcssa, %.0133185.i
  br i1 %i.cp, label %.thread.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %.critedge4.i, %bb.z, %._crit_edge182.i.loopexit
  %i.cq = ptrtoint ptr %.2143.i to i64            ; 2 uses
  %i.cr = sub i64 %i.bq, %i.cq
  %i.cs = sub i64 %i.cq, %i.br
  %i.ct = icmp slt i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i196 ; 2 uses
  store ptr %.0129186.i, ptr %i.cu, align 16, !tbaa !199
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %.2140.i, ptr %i.cv, align 8, !tbaa !199
  %i.cw = getelementptr inbounds nuw i8, ptr %.2143.i, i64 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %.2143.i, i64 1
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv.i196 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 16, !tbaa !199
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %.0133185.i, ptr %i.cz, align 8, !tbaa !199
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1134.i = phi ptr [ %.0133185.i, %bb.ab ], [ %.2140.i, %bb.ac ] ; 2 uses
  %.1130.i = phi ptr [ %i.cw, %bb.ab ], [ %.0129186.i, %bb.ac ] ; 2 uses
  %indvars.iv.next.i200 = add nsw i64 %indvars.iv.i196, 1 ; 2 uses
  %i.da = icmp ult ptr %.1130.i, %.1134.i
  br i1 %i.da, label %.lr.ph189.i, label %.thread.loopexit.i

bb.ae:                                            ; preds = %.lr.ph189.i
  %i.db = trunc nsw i64 %indvars.iv.i196 to i32   ; 2 uses
  %.0129.val.i = load i8, ptr %.0129186.i, align 1, !tbaa !49 ; 2 uses
  %.0133.val.i = load i8, ptr %.0133185.i, align 1, !tbaa !49 ; 2 uses
  %i.dc = icmp ugt i8 %.0129.val.i, %.0133.val.i
  br i1 %i.dc, label %bb.af, label %.thread.i192

bb.af:                                            ; preds = %bb.ae
  store i8 %.0129.val.i, ptr %.0133185.i, align 1, !tbaa !49
  store i8 %.0133.val.i, ptr %.0129186.i, align 1, !tbaa !49
  br label %.thread.i192

.thread.loopexit.i:                               ; preds = %bb.ad, %.critedge4.i, %bb.v
  %.1128171.ph.in.i = phi i64 [ %indvars.iv.i196, %.critedge4.i ], [ %indvars.iv.i196, %bb.v ], [ %indvars.iv.next.i200, %bb.ad ]
  %.1128171.ph.i = trunc i64 %.1128171.ph.in.i to i32
  br label %.thread.i192

.thread.i192:                                     ; preds = %.thread.loopexit.i, %bb.af, %bb.ae, %bb.m
  %.1128171.i = phi i32 [ %i.db, %bb.af ], [ %i.db, %bb.ae ], [ %i.bd, %bb.m ], [ %.1128171.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i193 = icmp eq i32 %.1128171.i, 0
  br i1 %.not.i193, label %bb.ag, label %bb.m, !llvm.loop !152

bb.ag:                                            ; preds = %.thread.i192
  %i.dd = icmp ult i16 %i.as, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.de = load i16, ptr %i.ay, align 4, !tbaa !66 ; 4 uses
  %.not200.i = icmp eq i16 %i.de, 0
  br i1 %.not200.i, label %update_model1_to_4.exit, label %iter.check583

iter.check583:                                    ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 268 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %wide.trip.count.i194 = zext i16 %i.de to i64   ; 10 uses
  %min.iters.check529 = icmp ult i16 %i.de, 4
  br i1 %min.iters.check529, label %vec.epilog.scalar.ph585.preheader, label %vector.memcheck530

vector.memcheck530:                               ; preds = %iter.check583
  %i.dh = shl nuw nsw i64 %wide.trip.count.i194, 1
  %i.di = getelementptr i8, ptr %4, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 268
  %i.dk = getelementptr i8, ptr %4, i64 %wide.trip.count.i194
  %i.dl = getelementptr i8, ptr %i.dk, i64 12
  %bound0537 = icmp ult ptr %i.df, %i.dl
  %bound1538 = icmp ult ptr %i.az, %i.dj
  %found.conflict539 = and i1 %bound0537, %bound1538
  br i1 %found.conflict539, label %vec.epilog.scalar.ph585.preheader, label %vector.main.loop.iter.check541

vector.main.loop.iter.check541:                   ; preds = %vector.memcheck530
  %min.iters.check542 = icmp ult i16 %i.de, 16
  br i1 %min.iters.check542, label %vec.epilog.ph587, label %vector.ph543

vector.ph543:                                     ; preds = %vector.main.loop.iter.check541
  %i.dm = and i64 %wide.trip.count.i194, 12
  %n.vec544 = and i64 %wide.trip.count.i194, 65520 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0.i80, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.ph543, %bb.ai
  %index546 = phi i64 [ 0, %vector.ph543 ], [ %index.next580, %bb.ai ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.az, i64 %index546 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %wide.load547 = load <8 x i8>, ptr %i.dn, align 4, !tbaa !49, !alias.scope !200
  %wide.load548 = load <8 x i8>, ptr %i.do, align 4, !tbaa !49, !alias.scope !200
  %i.dp = zext <8 x i8> %wide.load547 to <8 x i32>
  %i.dq = zext <8 x i8> %wide.load548 to <8 x i32>
  %i.dr = icmp eq <8 x i32> %broadcast.splat, %i.dp ; 9 uses
  %i.ds = icmp eq <8 x i32> %broadcast.splat, %i.dq ; 10 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %index546 ; 2 uses
  %i.du = shufflevector <8 x i1> %i.ds, <8 x i1> %i.dr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = bitcast <16 x i1> %i.du to i16
  %.not = icmp eq i16 %i.dv, 0
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %vector.body545
  %i.dw = extractelement <8 x i1> %i.ds, i64 7
  %i.dx = trunc i64 %index546 to i8
  %i.dy = extractelement <8 x i1> %i.ds, i64 6
  %i.dz = extractelement <8 x i1> %i.ds, i64 5
  %i.ea = extractelement <8 x i1> %i.ds, i64 4
  %i.eb = extractelement <8 x i1> %i.ds, i64 3
  %i.ec = extractelement <8 x i1> %i.ds, i64 2
  %i.ed = extractelement <8 x i1> %i.ds, i64 1
  %i.ee = extractelement <8 x i1> %i.ds, i64 0
  %i.ef = extractelement <8 x i1> %i.dr, i64 7
  %i.eg = extractelement <8 x i1> %i.dr, i64 6
  %i.eh = extractelement <8 x i1> %i.dr, i64 5
  %i.ei = extractelement <8 x i1> %i.dr, i64 4
  %i.ej = extractelement <8 x i1> %i.dr, i64 3
  %i.ek = extractelement <8 x i1> %i.dr, i64 2
  %i.el = extractelement <8 x i1> %i.dr, i64 1
  %i.em = zext i1 %i.el to i8
  %spec.select624.v.a = select i1 %i.ek, i8 2, i8 %i.em
  %spec.select625.v.a = select i1 %i.ej, i8 3, i8 %spec.select624.v.a
  %spec.select626.v = select i1 %i.ei, i8 4, i8 %spec.select625.v.a
  %spec.select627.v = select i1 %i.eh, i8 5, i8 %spec.select626.v
  %spec.select628.v = select i1 %i.eg, i8 6, i8 %spec.select627.v
  %spec.select629.v = select i1 %i.ef, i8 7, i8 %spec.select628.v
  %spec.select630.v = select i1 %i.ee, i8 8, i8 %spec.select629.v
  %spec.select631.v = select i1 %i.ed, i8 9, i8 %spec.select630.v
  %spec.select632.v = select i1 %i.ec, i8 10, i8 %spec.select631.v
  %spec.select633.v = select i1 %i.eb, i8 11, i8 %spec.select632.v
  %spec.select634.v = select i1 %i.ea, i8 12, i8 %spec.select633.v
  %spec.select635.v = select i1 %i.dz, i8 13, i8 %spec.select634.v
  %spec.select636.v = select i1 %i.dy, i8 14, i8 %spec.select635.v
  %spec.select637.v = select i1 %i.dw, i8 15, i8 %spec.select636.v
  %spec.select637 = or disjoint i8 %spec.select637.v, %i.dx
  store i8 %spec.select637, ptr %i.dg, align 2, !tbaa !67, !alias.scope !201
  br label %bb.ai

bb.ai:                                            ; preds = %vector.body545, %bb.ah
  %predphi = select <8 x i1> %i.dr, <8 x i16> splat (i16 100), <8 x i16> splat (i16 50)
  %predphi579 = select <8 x i1> %i.ds, <8 x i16> splat (i16 100), <8 x i16> splat (i16 50)
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <8 x i16> %predphi, ptr %i.dt, align 4, !tbaa !58, !alias.scope !202, !noalias !200
  store <8 x i16> %predphi579, ptr %i.en, align 4, !tbaa !58, !alias.scope !202, !noalias !200
  %index.next580 = add nuw i64 %index546, 16      ; 2 uses
  %i.eo = icmp eq i64 %index.next580, %n.vec544
  br i1 %i.eo, label %middle.block581, label %vector.body545, !llvm.loop !157

middle.block581:                                  ; preds = %bb.ai
  %cmp.n582 = icmp eq i64 %n.vec544, %wide.trip.count.i194
  br i1 %cmp.n582, label %update_model1_to_4.exit, label %vec.epilog.iter.check584

vec.epilog.iter.check584:                         ; preds = %middle.block581
  %min.epilog.iters.check586 = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check586, label %vec.epilog.scalar.ph585.preheader, label %vec.epilog.ph587, !prof !68

vec.epilog.ph587:                                 ; preds = %vector.main.loop.iter.check541, %vec.epilog.iter.check584
  %vec.epilog.resume.val588 = phi i64 [ %n.vec544, %vec.epilog.iter.check584 ], [ 0, %vector.main.loop.iter.check541 ]
  %n.vec589 = and i64 %wide.trip.count.i194, 65532 ; 3 uses
  %broadcast.splatinsert590 = insertelement <4 x i32> poison, i32 %.0.i80, i64 0
  %broadcast.splat591 = shufflevector <4 x i32> %broadcast.splatinsert590, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body592

vec.epilog.vector.body592:                        ; preds = %bb.ak, %vec.epilog.ph587
  %index593 = phi i64 [ %vec.epilog.resume.val588, %vec.epilog.ph587 ], [ %index.next604, %bb.ak ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 %index593
  %wide.load594 = load <4 x i8>, ptr %i.ep, align 4, !tbaa !49, !alias.scope !200
  %i.eq = zext <4 x i8> %wide.load594 to <4 x i32>
  %i.er = icmp eq <4 x i32> %broadcast.splat591, %i.eq ; 5 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %index593
  %i.et = extractelement <4 x i1> %i.er, i64 0
  %i.eu = extractelement <4 x i1> %i.er, i64 1    ; 2 uses
  %i.ev = or i1 %i.et, %i.eu
  %i.ew = extractelement <4 x i1> %i.er, i64 2    ; 2 uses
  %i.ex = or i1 %i.ev, %i.ew
  %i.ey = extractelement <4 x i1> %i.er, i64 3    ; 2 uses
  %i.ez = or i1 %i.ex, %i.ey
  br i1 %i.ez, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %vec.epilog.vector.body592
  %i.fa = trunc i64 %index593 to i8
  %i.fb = zext i1 %i.eu to i8
  %spec.select639.v = select i1 %i.ew, i8 2, i8 %i.fb
  %spec.select640.v = select i1 %i.ey, i8 3, i8 %spec.select639.v
  %spec.select640 = or disjoint i8 %spec.select640.v, %i.fa
  store i8 %spec.select640, ptr %i.dg, align 2, !tbaa !67, !alias.scope !201
  br label %bb.ak

bb.ak:                                            ; preds = %vec.epilog.vector.body592, %bb.aj
  %predphi603 = select <4 x i1> %i.er, <4 x i16> splat (i16 100), <4 x i16> splat (i16 50)
  store <4 x i16> %predphi603, ptr %i.es, align 4, !tbaa !58, !alias.scope !202, !noalias !200
  %index.next604 = add nuw i64 %index593, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next604, %n.vec589
  br i1 %i.fc, label %vec.epilog.middle.block605, label %vec.epilog.vector.body592, !llvm.loop !158

vec.epilog.middle.block605:                       ; preds = %bb.ak
  %cmp.n606.a = icmp eq i64 %n.vec589, %wide.trip.count.i194
  br i1 %cmp.n606.a, label %update_model1_to_4.exit, label %vec.epilog.scalar.ph585.preheader

vec.epilog.scalar.ph585.preheader:                ; preds = %iter.check583, %vector.memcheck530, %vec.epilog.iter.check584, %vec.epilog.middle.block605
  %indvars.iv208.i.ph = phi i64 [ 0, %iter.check583 ], [ 0, %vector.memcheck530 ], [ %n.vec544, %vec.epilog.iter.check584 ], [ %n.vec589, %vec.epilog.middle.block605 ] ; 6 uses
  %xtraiter706 = and i64 %wide.trip.count.i194, 1
  %lcmp.mod707.not = icmp eq i64 %xtraiter706, 0
  br i1 %lcmp.mod707.not, label %vec.epilog.scalar.ph585.prol.loopexit, label %vec.epilog.scalar.ph585.prol

vec.epilog.scalar.ph585.prol:                     ; preds = %vec.epilog.scalar.ph585.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv208.i.ph
  %i.fe = load i8, ptr %i.fd, align 4, !tbaa !49
  %i.ff = zext i8 %i.fe to i32
  %i.fg = icmp eq i32 %.0.i80, %i.ff
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv208.i.ph
  br i1 %i.fg, label %bb.al, label %vec.epilog.scalar.ph585.prol.loopexit.unr-lcssa

bb.al:                                            ; preds = %vec.epilog.scalar.ph585.prol
  %i.fi = trunc i64 %indvars.iv208.i.ph to i8
  store i8 %i.fi, ptr %i.dg, align 2, !tbaa !67
  br label %vec.epilog.scalar.ph585.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph585.prol.loopexit.unr-lcssa:  ; preds = %bb.al, %vec.epilog.scalar.ph585.prol
  %.sink.prol = phi i16 [ 100, %bb.al ], [ 50, %vec.epilog.scalar.ph585.prol ]
  store i16 %.sink.prol, ptr %i.fh, align 4, !tbaa !58
  %indvars.iv.next209.i.prol = or disjoint i64 %indvars.iv208.i.ph, 1
  br label %vec.epilog.scalar.ph585.prol.loopexit

vec.epilog.scalar.ph585.prol.loopexit:            ; preds = %vec.epilog.scalar.ph585.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph585.preheader
  %indvars.iv208.i.unr = phi i64 [ %indvars.iv208.i.ph, %vec.epilog.scalar.ph585.preheader ], [ %indvars.iv.next209.i.prol, %vec.epilog.scalar.ph585.prol.loopexit.unr-lcssa ]
  %i.fj = add nsw i64 %wide.trip.count.i194, -1
  %i.fk = icmp eq i64 %indvars.iv208.i.ph, %i.fj
  br i1 %i.fk, label %update_model1_to_4.exit, label %vec.epilog.scalar.ph585

vec.epilog.scalar.ph585:                          ; preds = %vec.epilog.scalar.ph585.prol.loopexit, %bb.ao
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i.1, %bb.ao ], [ %indvars.iv208.i.unr, %vec.epilog.scalar.ph585.prol.loopexit ] ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv208.i
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !49
  %i.fn = zext i8 %i.fm to i32
  %i.fo = icmp eq i32 %.0.i80, %i.fn
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv208.i
  br i1 %i.fo, label %bb.am, label %vec.epilog.scalar.ph585.1

bb.am:                                            ; preds = %vec.epilog.scalar.ph585
  %i.fq = trunc i64 %indvars.iv208.i to i8
  store i8 %i.fq, ptr %i.dg, align 2, !tbaa !67
  br label %vec.epilog.scalar.ph585.1

vec.epilog.scalar.ph585.1:                        ; preds = %vec.epilog.scalar.ph585, %bb.am
  %.sink = phi i16 [ 100, %bb.am ], [ 50, %vec.epilog.scalar.ph585 ]
  store i16 %.sink, ptr %i.fp, align 2, !tbaa !58
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next209.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !49
  %i.ft = zext i8 %i.fs to i32
  %i.fu = icmp eq i32 %.0.i80, %i.ft
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv.next209.i
  br i1 %i.fu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %vec.epilog.scalar.ph585.1
  %i.fw = trunc i64 %indvars.iv.next209.i to i8
  store i8 %i.fw, ptr %i.dg, align 2, !tbaa !67
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %vec.epilog.scalar.ph585.1
  %.sink.1 = phi i16 [ 100, %bb.an ], [ 50, %vec.epilog.scalar.ph585.1 ]
  store i16 %.sink.1, ptr %i.fv, align 2, !tbaa !58
  %indvars.iv.next209.i.1 = add nuw nsw i64 %indvars.iv208.i, 2 ; 2 uses
  %exitcond.not.i195.1 = icmp eq i64 %indvars.iv.next209.i.1, %wide.trip.count.i194
  br i1 %exitcond.not.i195.1, label %update_model1_to_4.exit, label %vec.epilog.scalar.ph585, !llvm.loop !159

update_model1_to_4.exit:                          ; preds = %vec.epilog.scalar.ph585.prol.loopexit, %bb.ao, %middle.block581, %vec.epilog.middle.block605, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %4, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.dd, label %decode_static1.exit, label %bb.ap

bb.ap:                                            ; preds = %update_model1_to_4.exit
  %i.fx = load i16, ptr %i.ar, align 4, !tbaa !66 ; 4 uses
  %i.fy = zext i16 %i.fx to i32
  %i.fz = sub nsw i32 256, %i.fy                  ; 3 uses
  %.not.i.i = icmp eq i16 %i.fx, 0
  br i1 %.not.i.i, label %update_model1_to_5.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %wide.trip.count.i.i = zext i16 %i.fx to i64    ; 3 uses
  %min.iters.check609 = icmp ult i16 %i.fx, 8
  br i1 %min.iters.check609, label %scalar.ph608.preheader, label %vector.ph610

vector.ph610:                                     ; preds = %.lr.ph.i.i
  %n.vec611 = and i64 %wide.trip.count.i.i, 65528 ; 3 uses
  %i.gb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fz, i64 0
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph610
  %index613 = phi i64 [ 0, %vector.ph610 ], [ %index.next618, %vector.body612 ] ; 2 uses
  %vec.phi614 = phi <4 x i32> [ %i.gb, %vector.ph610 ], [ %i.gg, %vector.body612 ]
  %vec.phi615 = phi <4 x i32> [ zeroinitializer, %vector.ph610 ], [ %i.gh, %vector.body612 ]
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index613 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %wide.load616 = load <4 x i16>, ptr %i.gc, align 2, !tbaa !58
  %wide.load617 = load <4 x i16>, ptr %i.gd, align 2, !tbaa !58
  %i.ge = zext <4 x i16> %wide.load616 to <4 x i32>
  %i.gf = zext <4 x i16> %wide.load617 to <4 x i32>
  %i.gg = add <4 x i32> %vec.phi614, %i.ge        ; 2 uses
  %i.gh = add <4 x i32> %vec.phi615, %i.gf        ; 2 uses
  %index.next618 = add nuw i64 %index613, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next618, %n.vec611
  br i1 %i.gi, label %middle.block619, label %vector.body612, !llvm.loop !160

middle.block619:                                  ; preds = %vector.body612
  %bin.rdx620 = add <4 x i32> %i.gh, %i.gg
  %i.gj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx620) ; 2 uses
  %cmp.n621 = icmp eq i64 %n.vec611, %wide.trip.count.i.i
  br i1 %cmp.n621, label %update_model1_to_5.exit.i, label %scalar.ph608.preheader

scalar.ph608.preheader:                           ; preds = %.lr.ph.i.i, %middle.block619
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec611, %middle.block619 ]
  %.015.i.i.ph = phi i32 [ %i.fz, %.lr.ph.i.i ], [ %i.gj, %middle.block619 ]
  br label %scalar.ph608

scalar.ph608:                                     ; preds = %scalar.ph608.preheader, %scalar.ph608
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph608 ], [ %indvars.iv.i.i.ph, %scalar.ph608.preheader ] ; 2 uses
  %.015.i.i = phi i32 [ %i.gn, %scalar.ph608 ], [ %.015.i.i.ph, %scalar.ph608.preheader ]
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.i.i
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !58
  %i.gm = zext i16 %i.gl to i32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gn = add i32 %.015.i.i, %i.gm                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %update_model1_to_5.exit.i, label %scalar.ph608, !llvm.loop !161

update_model1_to_5.exit.i:                        ; preds = %scalar.ph608, %middle.block619, %bb.ap
  %.0.lcssa.i.i = phi i32 [ %i.fz, %bb.ap ], [ %i.gj, %middle.block619 ], [ %i.gn, %scalar.ph608 ]
  store i8 5, ptr %1, align 4, !tbaa !56
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0.lcssa.i.i, ptr %i.go, align 4, !tbaa !203
  br label %decode_static1.exit

.critedge.i:                                      ; preds = %bb.k
  %i.gp = icmp ugt i16 %i.as, 13
  br i1 %i.gp, label %update_model1_to_2.exit.i, label %.critedge.thread.i

update_model1_to_2.exit.i:                        ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %11, i8 0, i64 1836, i1 false)
  store i8 2, ptr %11, align 4, !tbaa !56
  %i.gq = add nuw i16 %i.as, 1
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i16 %i.gq, ptr %i.gr, align 4, !tbaa !66
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr nonnull align 4 %i.at, i64 range(i64 0, 65536) %wide.trip.count.i, i1 false), !tbaa !49
  %i.gt = trunc nuw i32 %.0.i80 to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %wide.trip.count.i
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %11, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %decode_static1.exit

.critedge.thread.i:                               ; preds = %bytestream2_get_byte.exit81, %.critedge.i
  %.pre-phi = phi i64 [ %wide.trip.count.i, %.critedge.i ], [ 0, %bytestream2_get_byte.exit81 ]
  %i.gv = trunc nuw i32 %.0.i80 to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.pre-phi
  store i8 %i.gv, ptr %i.gx, align 1, !tbaa !49
  %i.gy = add nuw nsw i16 %i.as, 1
  store i16 %i.gy, ptr %i.ar, align 4, !tbaa !66
  br label %decode_static1.exit

decode_static1.exit:                              ; preds = %update_model1_to_4.exit, %update_model1_to_5.exit.i, %update_model1_to_2.exit.i, %.critedge.thread.i
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !53
  %i.hb = add i32 %i.ha, 1                        ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !53
  %i.hc = icmp eq i32 %i.hb, 131072
  br i1 %i.hc, label %bb.aq, label %sync_code3.exit

bb.aq:                                            ; preds = %decode_static1.exit
  %i.hd = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.he = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = icmp slt i64 %i.hh, 4
  br i1 %i.hi, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.hd, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_le32.exit.i84

bb.as:                                            ; preds = %bb.aq
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store ptr %i.hj, ptr %i.f, align 8, !tbaa !50
  %i.hk = load i32, ptr %i.he, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit.i84

bytestream2_get_le32.exit.i84:                    ; preds = %bb.as, %bb.ar
  %.0.i.i85 = phi i32 [ 0, %bb.ar ], [ %i.hk, %bb.as ]
  store i32 %.0.i.i85, ptr %i.g, align 8, !tbaa !52
  store i32 0, ptr %i.gz, align 8, !tbaa !53
  br label %sync_code3.exit

bb.at:                                            ; preds = %bb.a
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !48 ; 2 uses
  %i.hn = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = icmp slt i64 %i.hq, 1
  br i1 %i.hr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store ptr %i.hm, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_byte.exit79

bb.av:                                            ; preds = %bb.at
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store ptr %i.hs, ptr %i.f, align 8, !tbaa !50
  %i.ht = load i8, ptr %i.hn, align 1, !tbaa !49
  %i.hu = zext i8 %i.ht to i32
  br label %bytestream2_get_byte.exit79

bytestream2_get_byte.exit79:                      ; preds = %bb.au, %bb.av
  %.0.i78 = phi i32 [ 0, %bb.au ], [ %i.hu, %bb.av ] ; 5 uses
  store i32 %.0.i78, ptr %3, align 4, !tbaa !42
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.hw = load i16, ptr %i.hv, align 4, !tbaa !66 ; 9 uses
  %i.hx = zext i16 %i.hw to i32                   ; 2 uses
  %.not36.not.i = icmp eq i16 %i.hw, 0
  br i1 %.not36.not.i, label %.critedge.thread.i93, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bytestream2_get_byte.exit79
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %wide.trip.count.i88 = zext i16 %i.hw to i64    ; 6 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ax
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, %wide.trip.count.i88
  br i1 %exitcond.not.i91, label %.critedge.i92, label %bb.ax, !llvm.loop !162

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i87
  %indvars.iv.i89 = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i90, %bb.aw ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv.i89
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !49
  %i.ib = zext i8 %i.ia to i32
  %i.ic = icmp eq i32 %.0.i78, %i.ib
  br i1 %i.ic, label %bb.ay, label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  %i.id = icmp ult i16 %i.hw, 33
  %..i = select i1 %i.id, i32 32, i32 64          ; 2 uses
  %i.ie = trunc nuw i32 %.0.i78 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %10, i8 0, i64 1836, i1 false)
  store i8 6, ptr %10, align 4, !tbaa !56
  %i.if = trunc nuw nsw i32 %..i to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 2 uses
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !69
  %i.ih = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 5 uses
  %i.ii = zext nneg i32 %..i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ih, i8 1, i64 %i.ii, i1 false)
  %i.ij = icmp ult i16 %i.hw, 28
  br i1 %i.ij, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ay
  %i.ik = mul nuw nsw i32 %i.hx, 63
  %i.il = add nuw nsw i32 %i.ik, 320
  br label %.lr.ph.i.i98

.lr.ph.i.i98:                                     ; preds = %.lr.ph.i.i98, %.lr.ph.preheader.i.i
  %.0221.i.i = phi i32 [ %i.im, %.lr.ph.i.i98 ], [ %i.il, %.lr.ph.preheader.i.i ]
  %.0166220.i.i = phi i32 [ %i.in, %.lr.ph.i.i98 ], [ 0, %.lr.ph.preheader.i.i ]
  %i.im = shl i32 %.0221.i.i, 1                   ; 2 uses
  %i.in = add nuw nsw i32 %.0166220.i.i, 1        ; 2 uses
  %i.io = icmp slt i32 %i.im, 2049
  br i1 %i.io, label %.lr.ph.i.i98, label %._crit_edge.i.i, !llvm.loop !163

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i98, %bb.ay
  %.0166.lcssa.i.i = phi i32 [ 0, %bb.ay ], [ %i.in, %.lr.ph.i.i98 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr %i.hy, ptr %i.b, align 16, !tbaa !199
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hy, i64 %wide.trip.count.i88
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !199
  br label %bb.az

bb.az:                                            ; preds = %.thread.i.i, %._crit_edge.i.i
  %.0172242.i.i = phi i32 [ 1, %._crit_edge.i.i ], [ %.1173217.i.i, %.thread.i.i ] ; 2 uses
  %i.is = add nsw i32 %.0172242.i.i, -1           ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.it ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 16, !tbaa !199 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !199 ; 2 uses
  %i.iy = icmp ult ptr %i.iv, %i.ix
  br i1 %i.iy, label %.lr.ph237.preheader.i.i, label %.thread.i.i

.lr.ph237.preheader.i.i:                          ; preds = %bb.az
  %i.iz = sext i32 %.0172242.i.i to i64
  %i.ja = add nsw i64 %i.iz, -1
  br label %.lr.ph237.i.i

.lr.ph237.i.i:                                    ; preds = %bb.bq, %.lr.ph237.preheader.i.i
  %indvars.iv.i.i96 = phi i64 [ %i.ja, %.lr.ph237.preheader.i.i ], [ %indvars.iv.next.i.i97, %bb.bq ] ; 6 uses
  %.0175234.i.i = phi ptr [ %i.iv, %.lr.ph237.preheader.i.i ], [ %.1176.i.i, %bb.bq ] ; 14 uses
  %.0178233.i.i = phi ptr [ %i.ix, %.lr.ph237.preheader.i.i ], [ %.1179.i.i, %bb.bq ] ; 14 uses
  %i.jb = getelementptr inbounds i8, ptr %.0178233.i.i, i64 -1 ; 5 uses
  %i.jc = icmp ult ptr %.0175234.i.i, %i.jb
  br i1 %i.jc, label %bb.ba, label %bb.br

bb.ba:                                            ; preds = %.lr.ph237.i.i
  %i.jd = getelementptr inbounds i8, ptr %.0178233.i.i, i64 -2 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0175234.i.i, i64 1
  %i.jf = ptrtoint ptr %.0178233.i.i to i64       ; 2 uses
  %i.jg = ptrtoint ptr %.0175234.i.i to i64       ; 2 uses
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr i64 %i.jh, 1
  %i.jj = getelementptr inbounds i8, ptr %.0175234.i.i, i64 %i.ji ; 8 uses
  %.0175.val207.i.i = load i8, ptr %.0175234.i.i, align 1, !tbaa !49 ; 5 uses
  %.0178.val208.i.i = load i8, ptr %.0178233.i.i, align 1, !tbaa !49 ; 4 uses
  %i.jk = icmp ugt i8 %.0175.val207.i.i, %.0178.val208.i.i
  %.val206.i.i = load i8, ptr %i.jj, align 1, !tbaa !49 ; 5 uses
  br i1 %i.jk, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.jl = icmp ugt i8 %.0178.val208.i.i, %.val206.i.i
  br i1 %i.jl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i8 %.0175.val207.i.i, ptr %i.jj, align 1, !tbaa !49
  br label %.sink.split.i.i

bb.bd:                                            ; preds = %bb.bb
  store i8 %.0175.val207.i.i, ptr %.0178233.i.i, align 1, !tbaa !49
end_hunk_0
begin_hunk_1_@decode_unit3:bb.a
  store <8 x i16> splat (i16 1), ptr %i.qb, align 4, !tbaa !58
  %i.qc = getelementptr inbounds nuw i8, ptr %8, i64 1612
  %i.qd = getelementptr inbounds nuw i8, ptr %8, i64 1628
  store <8 x i16> splat (i16 1), ptr %i.qc, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qd, align 4, !tbaa !58
  %i.qe = getelementptr inbounds nuw i8, ptr %8, i64 620
  %i.qf = getelementptr inbounds nuw i8, ptr %8, i64 636
  store <8 x i16> splat (i16 1), ptr %i.qe, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qf, align 4, !tbaa !58
  %i.qg = getelementptr inbounds nuw i8, ptr %8, i64 1644
  %i.qh = getelementptr inbounds nuw i8, ptr %8, i64 1660
  store <8 x i16> splat (i16 1), ptr %i.qg, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qh, align 4, !tbaa !58
  %i.qi = getelementptr inbounds nuw i8, ptr %8, i64 652
  %i.qj = getelementptr inbounds nuw i8, ptr %8, i64 668
  store <8 x i16> splat (i16 1), ptr %i.qi, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qj, align 4, !tbaa !58
  %i.qk = getelementptr inbounds nuw i8, ptr %8, i64 1676
  %i.ql = getelementptr inbounds nuw i8, ptr %8, i64 1692
  store <8 x i16> splat (i16 1), ptr %i.qk, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.ql, align 4, !tbaa !58
  %i.qm = getelementptr inbounds nuw i8, ptr %8, i64 684
  %i.qn = getelementptr inbounds nuw i8, ptr %8, i64 700
  store <8 x i16> splat (i16 1), ptr %i.qm, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qn, align 4, !tbaa !58
  %i.qo = getelementptr inbounds nuw i8, ptr %8, i64 1708
  %i.qp = getelementptr inbounds nuw i8, ptr %8, i64 1724
  store <8 x i16> splat (i16 1), ptr %i.qo, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qp, align 4, !tbaa !58
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 716
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 732
  store <8 x i16> splat (i16 1), ptr %i.qq, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qr, align 4, !tbaa !58
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 1740
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 1756
  store <8 x i16> splat (i16 1), ptr %i.qs, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qt, align 4, !tbaa !58
  %i.qu = getelementptr inbounds nuw i8, ptr %8, i64 748
  %i.qv = getelementptr inbounds nuw i8, ptr %8, i64 764
  store <8 x i16> splat (i16 1), ptr %i.qu, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qv, align 4, !tbaa !58
  %i.qw = getelementptr inbounds nuw i8, ptr %8, i64 1772
  %i.qx = getelementptr inbounds nuw i8, ptr %8, i64 1788
  store <8 x i16> splat (i16 1), ptr %i.qw, align 4, !tbaa !58
  store <8 x i16> splat (i16 1), ptr %i.qx, align 4, !tbaa !58
  %i.qy = add nuw nsw i32 %i.og, 3840
  %i.qz = add nuw nsw i32 %i.og, 1
  %i.ra = udiv i32 %i.qy, %i.qz                   ; 3 uses
  %i.rb = lshr i32 %i.ra, 1
  %i.rc = sub nsw i32 %i.ra, %i.rb
  %i.rd = trunc nuw i32 %i.ra to i16              ; 6 uses
  %i.re = trunc i32 %i.rc to i16                  ; 5 uses
  %xtraiter701 = and i64 %wide.trip.count.i103, 3 ; 3 uses
  %i.rf = icmp ult i16 %i.of, 4
  br i1 %i.rf, label %.epil.preheader, label %vector.body495.new

vector.body495.new:                               ; preds = %vector.ph494
  %unroll_iter704 = and i64 %wide.trip.count.i103, 65532
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %vector.body495.new
  %indvars.iv58.i.i = phi i64 [ 0, %vector.body495.new ], [ %indvars.iv.next59.i.i.3, %bb.cd ] ; 5 uses
  %niter705 = phi i64 [ 0, %vector.body495.new ], [ %niter705.next.3, %bb.cd ]
  %i.rg = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv58.i.i
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !49
  %i.ri = zext i8 %i.rh to i64                    ; 2 uses
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ri
  store i16 %i.rd, ptr %i.rj, align 2, !tbaa !58
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.ri
  store i16 %i.re, ptr %i.rk, align 2, !tbaa !58
  %i.rl = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv58.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !49
  %i.ro = zext i8 %i.rn to i64                    ; 2 uses
  %i.rp = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ro
  store i16 %i.rd, ptr %i.rp, align 2, !tbaa !58
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.ro
  store i16 %i.re, ptr %i.rq, align 2, !tbaa !58
  %i.rr = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv58.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 2
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !49
  %i.ru = zext i8 %i.rt to i64                    ; 2 uses
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.ru
  store i16 %i.rd, ptr %i.rv, align 2, !tbaa !58
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.ru
  store i16 %i.re, ptr %i.rw, align 2, !tbaa !58
  %indvars.iv.next59.i.i.3 = add nuw nsw i64 %indvars.iv58.i.i, 4 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv58.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 3
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !49
  %i.sa = zext i8 %i.rz to i64                    ; 2 uses
  %i.sb = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.sa
  store i16 %i.rd, ptr %i.sb, align 2, !tbaa !58
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.sa
  store i16 %i.re, ptr %i.sc, align 2, !tbaa !58
  %niter705.next.3 = add i64 %niter705, 4         ; 2 uses
  %niter705.ncmp.3 = icmp eq i64 %niter705.next.3, %unroll_iter704
  br i1 %niter705.ncmp.3, label %._crit_edge.i.i112.unr-lcssa, label %bb.cd, !llvm.loop !173

._crit_edge.i.i112.unr-lcssa:                     ; preds = %bb.cd
  %lcmp.mod702.not = icmp eq i64 %xtraiter701, 0
  br i1 %lcmp.mod702.not, label %._crit_edge.i.i112, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i112.unr-lcssa, %vector.ph494
  %indvars.iv58.i.i.epil.init = phi i64 [ 0, %vector.ph494 ], [ %indvars.iv.next59.i.i.3, %._crit_edge.i.i112.unr-lcssa ]
  %lcmp.mod703 = icmp ne i64 %xtraiter701, 0
  tail call void @llvm.assume(i1 %lcmp.mod703)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.epil.preheader
  %indvars.iv58.i.i.epil = phi i64 [ %indvars.iv58.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next59.i.i.epil, %bb.ce ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ce ]
  %indvars.iv.next59.i.i.epil = add nuw nsw i64 %indvars.iv58.i.i.epil, 1
  %i.sd = getelementptr inbounds nuw i8, ptr %i.oh, i64 %indvars.iv58.i.i.epil
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !49
  %i.sf = zext i8 %i.se to i64                    ; 2 uses
  %i.sg = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.sf
  store i16 %i.rd, ptr %i.sg, align 2, !tbaa !58
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.sf
  store i16 %i.re, ptr %i.sh, align 2, !tbaa !58
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter701
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i112, label %bb.ce, !llvm.loop !174

._crit_edge.i.i112:                               ; preds = %bb.ce, %._crit_edge.i.i112.unr-lcssa
  %i.si = zext nneg i32 %.0.i to i64              ; 2 uses
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %i.si ; 2 uses
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !58
  %i.sl = add i16 %i.sk, %i.rd
  store i16 %i.sl, ptr %i.sj, align 2, !tbaa !58
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %i.si ; 2 uses
  %i.sn = load i16, ptr %i.sm, align 2, !tbaa !58
  %i.so = add i16 %i.sn, 16
  store i16 %i.so, ptr %i.sm, align 2, !tbaa !58
  %i.sp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %8, i64 780
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %8, i64 1804
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge51.i.i, %._crit_edge.i.i112
  %indvars.iv65.i.i = phi i64 [ 0, %._crit_edge.i.i112 ], [ %indvars.iv.next66.i.i, %._crit_edge51.i.i ] ; 5 uses
  %.153.i.i = phi i32 [ 0, %._crit_edge.i.i112 ], [ %i.tb, %._crit_edge51.i.i ] ; 3 uses
  %i.sr = phi i32 [ 0, %._crit_edge.i.i112 ], [ %i.sv, %._crit_edge51.i.i ]
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %indvars.iv65.i.i
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !58
  %i.su = zext i16 %i.st to i32
  %i.sv = add i32 %i.sr, %i.su                    ; 2 uses
  %i.sw = trunc i32 %.153.i.i to i16
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.sq, i64 %indvars.iv65.i.i
  store i16 %i.sw, ptr %i.sx, align 2, !tbaa !58
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %indvars.iv65.i.i
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !58
  %i.ta = zext i16 %i.sz to i32
  %i.tb = add nuw nsw i32 %.153.i.i, %i.ta        ; 2 uses
  %i.tc = add nsw i32 %i.tb, -1
  %i.td = ashr i32 %i.tc, 7                       ; 3 uses
  %i.te = add nsw i32 %i.td, -32
  %i.tf = icmp ult i32 %i.te, -33
  br i1 %i.tf, label %decode_static3.exit.thread202, label %bb.cg

decode_static3.exit.thread202:                    ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %decode_adaptive6.exit.thread.thread207

bb.cg:                                            ; preds = %bb.cf
  %i.tg = add nuw nsw i32 %.153.i.i, 127
  %i.th = lshr i32 %i.tg, 7                       ; 3 uses
  %.not47.i.i = icmp sgt i32 %i.th, %i.td
  br i1 %.not47.i.i, label %._crit_edge51.i.i, label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %bb.cg
  %i.ti = trunc i64 %indvars.iv65.i.i to i8
  %i.tj = zext nneg i32 %i.th to i64
  %scevgep62.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.tj
  %reass.sub = sub nsw i32 %i.td, %i.th
  %narrow70.i.i = add nuw nsw i32 %reass.sub, 1
  %i.tk = zext nneg i32 %narrow70.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep62.i.i, i8 %i.ti, i64 %i.tk, i1 false), !tbaa !49
  br label %._crit_edge51.i.i

._crit_edge51.i.i:                                ; preds = %.lr.ph50.i.i, %bb.cg
  %indvars.iv.next66.i.i = add nuw nsw i64 %indvars.iv65.i.i, 1 ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, 256
  br i1 %exitcond68.not.i.i, label %decode_static3.exit, label %bb.cf, !llvm.loop !175

.thread.i:                                        ; preds = %bb.cb
  %i.tl = icmp ugt i16 %i.of, 255
  br i1 %i.tl, label %decode_static3.exit.thread, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %bytestream2_get_byte.exit, %.thread.i
  %.pre-phi280 = phi i64 [ %wide.trip.count.i103, %.thread.i ], [ 0, %bytestream2_get_byte.exit ]
  %i.tm = trunc nuw i32 %.0.i to i8
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %.pre-phi280
  store i8 %i.tm, ptr %i.to, align 1, !tbaa !49
  %i.tp = add nuw nsw i16 %i.of, 1
  store i16 %i.tp, ptr %i.oe, align 4, !tbaa !66
  br label %decode_static3.exit.thread

decode_static3.exit:                              ; preds = %._crit_edge51.i.i
  store i32 %i.sv, ptr %i.sp, align 4, !tbaa !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %8, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %decode_static3.exit.thread

decode_static3.exit.thread:                       ; preds = %.thread.i, %.thread.thread.i, %decode_static3.exit
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !53
  %i.ts = add i32 %i.tr, 1                        ; 2 uses
  store i32 %i.ts, ptr %i.tq, align 8, !tbaa !53
  %i.tt = icmp eq i32 %i.ts, 131072
  br i1 %i.tt, label %bb.ch, label %sync_code3.exit

bb.ch:                                            ; preds = %decode_static3.exit.thread
  %i.tu = load ptr, ptr %i.nu, align 8, !tbaa !48 ; 2 uses
  %i.tv = load ptr, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = icmp slt i64 %i.ty, 4
  br i1 %i.tz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.tu, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_le32.exit.i113

bb.cj:                                            ; preds = %bb.ch
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  store ptr %i.ua, ptr %i.f, align 8, !tbaa !50
  %i.ub = load i32, ptr %i.tv, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit.i113

bytestream2_get_le32.exit.i113:                   ; preds = %bb.cj, %bb.ci
  %.0.i.i114 = phi i32 [ 0, %bb.ci ], [ %i.ub, %bb.cj ]
  store i32 %.0.i.i114, ptr %i.g, align 8, !tbaa !52
  store i32 0, ptr %i.tq, align 8, !tbaa !53
  br label %sync_code3.exit

bb.ck:                                            ; preds = %bb.a
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 6 uses
  %i.ud = load <4 x i16>, ptr %i.uc, align 4, !tbaa !58
  %i.ue = zext <4 x i16> %i.ud to <4 x i32>
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ug = load i16, ptr %i.uf, align 4, !tbaa !66
  %i.uh = zext i16 %i.ug to i32
  %i.ui = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ue)
  %op.rdx = add nuw nsw i32 %i.ui, 256
  %i.uj = sub nsw i32 %op.rdx, %i.uh
  store i32 %i.uj, ptr %i.e, align 4, !tbaa !42
  %i.uk = call fastcc i32 @decode_adaptive45(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 4)
  %.not77 = icmp eq i32 %i.uk, 0
  br i1 %.not77, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.ul = load i32, ptr %3, align 4, !tbaa !42    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %7, i8 0, i64 1836, i1 false)
  store i8 5, ptr %7, align 4, !tbaa !56
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.un = load i16, ptr %i.uf, align 4, !tbaa !66 ; 5 uses
  %i.uo = zext i16 %i.un to i32                   ; 2 uses
  %.not.i = icmp eq i16 %i.un, 0
  br i1 %.not.i, label %.critedge.i119, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %bb.cl
  %i.up = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.uq = getelementptr inbounds nuw i8, ptr %7, i64 268
  %wide.trip.count.i117 = zext i16 %i.un to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %.lr.ph.i116
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.i116 ], [ %indvars.iv.next.i126, %bb.cn ] ; 6 uses
  %.03147.i = phi i32 [ 0, %.lr.ph.i116 ], [ %i.va, %bb.cn ] ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv.i118
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !49  ; 2 uses
  %i.ut = zext i8 %i.us to i32
  %i.uu = icmp ugt i32 %i.ul, %i.ut
  br i1 %i.uu, label %bb.cn, label %.critedge.loopexit.split.loop.exit72.i

bb.cn:                                            ; preds = %bb.cm
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 %indvars.iv.i118
  store i8 %i.us, ptr %i.uv, align 1, !tbaa !49
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.uc, i64 %indvars.iv.i118
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !58 ; 2 uses
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.uq, i64 %indvars.iv.i118
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !58
  %i.uz = zext i16 %i.ux to i32
  %i.va = add nuw nsw i32 %.03147.i, %i.uz        ; 2 uses
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i127 = icmp eq i64 %indvars.iv.next.i126, %wide.trip.count.i117
  br i1 %exitcond.not.i127, label %.critedge.loopexit.i, label %bb.cm, !llvm.loop !176

.critedge.loopexit.split.loop.exit72.i:           ; preds = %bb.cm
  %i.vb = trunc nuw nsw i64 %indvars.iv.i118 to i32
  br label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %bb.cn, %.critedge.loopexit.split.loop.exit72.i
  %.032.lcssa.ph.i = phi i32 [ %i.vb, %.critedge.loopexit.split.loop.exit72.i ], [ %i.uo, %bb.cn ]
  %.031.lcssa.ph.i = phi i32 [ %.03147.i, %.critedge.loopexit.split.loop.exit72.i ], [ %i.va, %bb.cn ]
  %i.vc = add nuw nsw i32 %.031.lcssa.ph.i, 50
  br label %.critedge.i119

.critedge.i119:                                   ; preds = %.critedge.loopexit.i, %bb.cl
  %.032.lcssa.i = phi i32 [ 0, %bb.cl ], [ %.032.lcssa.ph.i, %.critedge.loopexit.i ] ; 2 uses
  %.031.lcssa.i = phi i32 [ 50, %bb.cl ], [ %i.vc, %.critedge.loopexit.i ] ; 4 uses
  %i.vd = trunc i32 %i.ul to i8
  %i.ve = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  %i.vf = zext nneg i32 %.032.lcssa.i to i64      ; 9 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vf
  store i8 %i.vd, ptr %i.vg, align 1, !tbaa !49
  %i.vh = getelementptr inbounds nuw i8, ptr %7, i64 268 ; 10 uses
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %i.vf
  store i16 50, ptr %i.vi, align 2, !tbaa !58
  %i.vj = icmp samesign ult i32 %.032.lcssa.i, %i.uo
  br i1 %i.vj, label %.lr.ph59.i, label %._crit_edge.i

.lr.ph59.i:                                       ; preds = %.critedge.i119
  %wide.trip.count68.i = zext i16 %i.un to i64    ; 6 uses
  %i.vk = sub nsw i64 %wide.trip.count68.i, %i.vf ; 3 uses
  %min.iters.check442 = icmp ult i64 %i.vk, 16
  br i1 %min.iters.check442, label %scalar.ph441.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph59.i
  %i.vl = getelementptr i8, ptr %7, i64 %i.vf
  %i.vm = getelementptr i8, ptr %i.vl, i64 13
  %i.vn = getelementptr i8, ptr %7, i64 %wide.trip.count68.i
  %i.vo = getelementptr i8, ptr %i.vn, i64 13
  %i.vp = shl nuw nsw i64 %i.vf, 1
  %i.vq = getelementptr i8, ptr %7, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 270
  %i.vs = shl nuw nsw i64 %wide.trip.count68.i, 1
  %i.vt = getelementptr i8, ptr %7, i64 %i.vs
  %i.vu = getelementptr i8, ptr %i.vt, i64 270
  %bound0 = icmp ult ptr %i.vm, %i.vu
  %bound1 = icmp ult ptr %i.vr, %i.vo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph441.preheader, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck
  %n.vec444 = and i64 %i.vk, -8                   ; 3 uses
  %i.vv = add nsw i64 %n.vec444, %i.vf
  %i.vw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.031.lcssa.i, i64 0
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next453, %vector.body445 ] ; 2 uses
  %vec.phi447 = phi <4 x i32> [ %i.vw, %vector.ph443 ], [ %i.wj, %vector.body445 ]
  %vec.phi448 = phi <4 x i32> [ zeroinitializer, %vector.ph443 ], [ %i.wk, %vector.body445 ]
  %i.vx = add nuw i64 %index446, %i.vf            ; 3 uses
  %i.vy = add nuw nsw i64 %i.vx, 1                ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.vx ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %wide.load449 = load <4 x i8>, ptr %i.vz, align 1, !tbaa !49
  %wide.load450 = load <4 x i8>, ptr %i.wa, align 1, !tbaa !49
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vy ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  store <4 x i8> %wide.load449, ptr %i.wb, align 1, !tbaa !49, !alias.scope !204, !noalias !205
  store <4 x i8> %wide.load450, ptr %i.wc, align 1, !tbaa !49, !alias.scope !204, !noalias !205
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.uc, i64 %i.vx ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %wide.load451 = load <4 x i16>, ptr %i.wd, align 2, !tbaa !58 ; 2 uses
  %wide.load452 = load <4 x i16>, ptr %i.we, align 2, !tbaa !58 ; 2 uses
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %i.vy ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  store <4 x i16> %wide.load451, ptr %i.wf, align 2, !tbaa !58, !alias.scope !205
  store <4 x i16> %wide.load452, ptr %i.wg, align 2, !tbaa !58, !alias.scope !205
  %i.wh = zext <4 x i16> %wide.load451 to <4 x i32>
  %i.wi = zext <4 x i16> %wide.load452 to <4 x i32>
  %i.wj = add <4 x i32> %vec.phi447, %i.wh        ; 2 uses
  %i.wk = add <4 x i32> %vec.phi448, %i.wi        ; 2 uses
  %index.next453 = add nuw i64 %index446, 8       ; 2 uses
  %i.wl = icmp eq i64 %index.next453, %n.vec444
  br i1 %i.wl, label %middle.block454, label %vector.body445, !llvm.loop !180

middle.block454:                                  ; preds = %vector.body445
  %bin.rdx455 = add <4 x i32> %i.wk, %i.wj
  %i.wm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx455) ; 2 uses
  %cmp.n456 = icmp eq i64 %i.vk, %n.vec444
  br i1 %cmp.n456, label %._crit_edge.i, label %scalar.ph441.preheader

scalar.ph441.preheader:                           ; preds = %vector.memcheck, %.lr.ph59.i, %middle.block454
  %indvars.iv63.i.ph = phi i64 [ %i.vf, %vector.memcheck ], [ %i.vf, %.lr.ph59.i ], [ %i.vv, %middle.block454 ] ; 6 uses
  %.157.i.ph = phi i32 [ %.031.lcssa.i, %vector.memcheck ], [ %.031.lcssa.i, %.lr.ph59.i ], [ %i.wm, %middle.block454 ] ; 2 uses
  %i.wn = sub nsw i64 %wide.trip.count68.i, %indvars.iv63.i.ph
  %xtraiter699 = and i64 %i.wn, 1
  %lcmp.mod700.not = icmp eq i64 %xtraiter699, 0
  br i1 %lcmp.mod700.not, label %scalar.ph441.prol.loopexit, label %scalar.ph441.prol

scalar.ph441.prol:                                ; preds = %scalar.ph441.preheader
  %indvars.iv.next64.i.prol = add nuw nsw i64 %indvars.iv63.i.ph, 1 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv63.i.ph
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !49
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ve, i64 %indvars.iv.next64.i.prol
  store i8 %i.wp, ptr %i.wq, align 1, !tbaa !49
  %i.wr = getelementptr inbounds nuw [2 x i8], ptr %i.uc, i64 %indvars.iv63.i.ph
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !58 ; 2 uses
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %indvars.iv.next64.i.prol
  store i16 %i.ws, ptr %i.wt, align 2, !tbaa !58
  %i.wu = zext i16 %i.ws to i32
  %i.wv = add nuw nsw i32 %.157.i.ph, %i.wu       ; 2 uses
  br label %scalar.ph441.prol.loopexit

scalar.ph441.prol.loopexit:                       ; preds = %scalar.ph441.prol, %scalar.ph441.preheader
  %.lcssa672.unr = phi i32 [ poison, %scalar.ph441.preheader ], [ %i.wv, %scalar.ph441.prol ]
  %indvars.iv63.i.unr = phi i64 [ %indvars.iv63.i.ph, %scalar.ph441.preheader ], [ %indvars.iv.next64.i.prol, %scalar.ph441.prol ]
  %.157.i.unr = phi i32 [ %.157.i.ph, %scalar.ph441.preheader ], [ %i.wv, %scalar.ph441.prol ]
  %i.ww = add nsw i64 %wide.trip.count68.i, -1
  %i.wx = icmp eq i64 %indvars.iv63.i.ph, %i.ww
  br i1 %i.wx, label %._crit_edge.i, label %scalar.ph441

scalar.ph441:                                     ; preds = %scalar.ph441.prol.loopexit, %scalar.ph441
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %scalar.ph441 ], [ %indvars.iv63.i.unr, %scalar.ph441.prol.loopexit ] ; 4 uses
  %.157.i = phi i32 [ %i.xn, %scalar.ph441 ], [ %.157.i.unr, %scalar.ph441.prol.loopexit ]
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv63.i
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !49
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ve, i64 %indvars.iv.next64.i
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !49
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.uc, i64 %indvars.iv63.i
  %i.xc = load i16, ptr %i.xb, align 2, !tbaa !58 ; 2 uses
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %indvars.iv.next64.i
  store i16 %i.xc, ptr %i.xd, align 2, !tbaa !58
  %i.xe = zext i16 %i.xc to i32
  %i.xf = add nuw nsw i32 %.157.i, %i.xe
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.um, i64 %indvars.iv.next64.i
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !49
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ve, i64 %indvars.iv.next64.i.1
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !49
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.uc, i64 %indvars.iv.next64.i
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !58 ; 2 uses
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %indvars.iv.next64.i.1
  store i16 %i.xk, ptr %i.xl, align 2, !tbaa !58
  %i.xm = zext i16 %i.xk to i32
  %i.xn = add nuw nsw i32 %i.xf, %i.xm            ; 2 uses
  %exitcond69.not.i.1 = icmp eq i64 %indvars.iv.next64.i.1, %wide.trip.count68.i
  br i1 %exitcond69.not.i.1, label %._crit_edge.i, label %scalar.ph441, !llvm.loop !181

._crit_edge.i:                                    ; preds = %scalar.ph441.prol.loopexit, %scalar.ph441, %middle.block454, %.critedge.i119
  %.1.lcssa.i = phi i32 [ %.031.lcssa.i, %.critedge.i119 ], [ %i.wm, %middle.block454 ], [ %.lcssa672.unr, %scalar.ph441.prol.loopexit ], [ %i.xn, %scalar.ph441 ]
  %i.xo = add i16 %i.un, 1                        ; 9 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 %i.xo, ptr %i.xp, align 4, !tbaa !66
  %i.xq = icmp samesign ugt i32 %.1.lcssa.i, 4096
  br i1 %i.xq, label %bb.co, label %rescale.exit.i

bb.co:                                            ; preds = %._crit_edge.i
  %.not.i.i120 = icmp eq i16 %i.xo, 0
  br i1 %.not.i.i120, label %update_model4_to_5.exit, label %iter.check

iter.check:                                       ; preds = %bb.co
  %wide.trip.count.i.i122 = zext i16 %i.xo to i64 ; 7 uses
  %min.iters.check460 = icmp ult i16 %i.xo, 4
  br i1 %min.iters.check460, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check461 = icmp ult i16 %i.xo, 16
  br i1 %min.iters.check461, label %vec.epilog.ph, label %vector.ph462

vector.ph462:                                     ; preds = %vector.main.loop.iter.check
  %i.xr = and i64 %wide.trip.count.i.i122, 12
  %n.vec463 = and i64 %wide.trip.count.i.i122, 65520 ; 4 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.ph462, %vector.body464
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next468, %vector.body464 ] ; 2 uses
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %index465 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16 ; 2 uses
  %wide.load466 = load <8 x i16>, ptr %i.xs, align 4, !tbaa !58 ; 2 uses
  %wide.load467 = load <8 x i16>, ptr %i.xt, align 4, !tbaa !58 ; 2 uses
  %i.xu = lshr <8 x i16> %wide.load466, splat (i16 1)
  %i.xv = lshr <8 x i16> %wide.load467, splat (i16 1)
  %i.xw = sub <8 x i16> %wide.load466, %i.xu
  %i.xx = sub <8 x i16> %wide.load467, %i.xv
  store <8 x i16> %i.xw, ptr %i.xs, align 4, !tbaa !58
  store <8 x i16> %i.xx, ptr %i.xt, align 4, !tbaa !58
  %index.next468 = add nuw i64 %index465, 16      ; 2 uses
  %i.xy = icmp eq i64 %index.next468, %n.vec463
  br i1 %i.xy, label %middle.block469, label %vector.body464, !llvm.loop !182

middle.block469:                                  ; preds = %vector.body464
  %cmp.n470 = icmp eq i64 %n.vec463, %wide.trip.count.i.i122
  br i1 %cmp.n470, label %rescale.exit.thread42.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block469
  %min.epilog.iters.check = icmp eq i64 %i.xr, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec463, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec471 = and i64 %wide.trip.count.i.i122, 65532 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index472 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next474, %vec.epilog.vector.body ] ; 2 uses
  %i.xz = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %index472 ; 2 uses
  %wide.load473 = load <4 x i16>, ptr %i.xz, align 4, !tbaa !58 ; 2 uses
  %i.ya = lshr <4 x i16> %wide.load473, splat (i16 1)
  %i.yb = sub <4 x i16> %wide.load473, %i.ya
  store <4 x i16> %i.yb, ptr %i.xz, align 4, !tbaa !58
  %index.next474 = add nuw i64 %index472, 4       ; 2 uses
  %i.yc = icmp eq i64 %index.next474, %n.vec471
  br i1 %i.yc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n475 = icmp eq i64 %n.vec471, %wide.trip.count.i.i122
  br i1 %cmp.n475, label %rescale.exit.thread42.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i123.ph = phi i64 [ 0, %iter.check ], [ %n.vec463, %vec.epilog.iter.check ], [ %n.vec471, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i123 = phi i64 [ %indvars.iv.next.i.i124, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i123.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.yd = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %indvars.iv.i.i123 ; 2 uses
  %i.ye = load i16, ptr %i.yd, align 2, !tbaa !58 ; 2 uses
  %i.yf = lshr i16 %i.ye, 1
  %i.yg = sub i16 %i.ye, %i.yf
  store i16 %i.yg, ptr %i.yd, align 2, !tbaa !58
  %indvars.iv.next.i.i124 = add nuw nsw i64 %indvars.iv.i.i123, 1 ; 2 uses
  %exitcond.not.i.i125 = icmp eq i64 %indvars.iv.next.i.i124, %wide.trip.count.i.i122
  br i1 %exitcond.not.i.i125, label %rescale.exit.thread42.i, label %vec.epilog.scalar.ph, !llvm.loop !184

rescale.exit.thread42.i:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block469
  %i.yh = zext i16 %i.xo to i32
  %i.yi = sub nsw i32 256, %i.yh
  br label %.lr.ph.i36.i

rescale.exit.i:                                   ; preds = %._crit_edge.i
  %i.yj = zext i16 %i.xo to i32
  %i.yk = sub nsw i32 256, %i.yj                  ; 2 uses
  %.not.i35.i = icmp eq i16 %i.xo, 0
  br i1 %.not.i35.i, label %update_model4_to_5.exit, label %rescale.exit..lr.ph.i36_crit_edge.i

rescale.exit..lr.ph.i36_crit_edge.i:              ; preds = %rescale.exit.i
  %.pre.i = zext i16 %i.xo to i64
  br label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %rescale.exit..lr.ph.i36_crit_edge.i, %rescale.exit.thread42.i
  %wide.trip.count.i37.pre-phi.i = phi i64 [ %.pre.i, %rescale.exit..lr.ph.i36_crit_edge.i ], [ %wide.trip.count.i.i122, %rescale.exit.thread42.i ] ; 4 uses
  %i.yl = phi i32 [ %i.yk, %rescale.exit..lr.ph.i36_crit_edge.i ], [ %i.yi, %rescale.exit.thread42.i ] ; 2 uses
  %min.iters.check478 = icmp samesign ult i64 %wide.trip.count.i37.pre-phi.i, 8
  br i1 %min.iters.check478, label %scalar.ph477.preheader, label %vector.ph479

vector.ph479:                                     ; preds = %.lr.ph.i36.i
  %n.vec480 = and i64 %wide.trip.count.i37.pre-phi.i, 65528 ; 3 uses
  %i.ym = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.yl, i64 0
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph479
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next487, %vector.body481 ] ; 2 uses
  %vec.phi483 = phi <4 x i32> [ %i.ym, %vector.ph479 ], [ %i.yr, %vector.body481 ]
  %vec.phi484 = phi <4 x i32> [ zeroinitializer, %vector.ph479 ], [ %i.ys, %vector.body481 ]
  %i.yn = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %index482 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %wide.load485 = load <4 x i16>, ptr %i.yn, align 4, !tbaa !58
  %wide.load486 = load <4 x i16>, ptr %i.yo, align 4, !tbaa !58
  %i.yp = zext <4 x i16> %wide.load485 to <4 x i32>
  %i.yq = zext <4 x i16> %wide.load486 to <4 x i32>
  %i.yr = add <4 x i32> %vec.phi483, %i.yp        ; 2 uses
  %i.ys = add <4 x i32> %vec.phi484, %i.yq        ; 2 uses
  %index.next487 = add nuw i64 %index482, 8       ; 2 uses
  %i.yt = icmp eq i64 %index.next487, %n.vec480
  br i1 %i.yt, label %middle.block488, label %vector.body481, !llvm.loop !185

middle.block488:                                  ; preds = %vector.body481
  %bin.rdx489 = add <4 x i32> %i.ys, %i.yr
  %i.yu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx489) ; 2 uses
  %cmp.n490 = icmp eq i64 %wide.trip.count.i37.pre-phi.i, %n.vec480
  br i1 %cmp.n490, label %update_model4_to_5.exit, label %scalar.ph477.preheader

scalar.ph477.preheader:                           ; preds = %.lr.ph.i36.i, %middle.block488
  %indvars.iv.i38.i.ph = phi i64 [ 0, %.lr.ph.i36.i ], [ %n.vec480, %middle.block488 ]
  %.089.i.i.ph = phi i32 [ %i.yl, %.lr.ph.i36.i ], [ %i.yu, %middle.block488 ]
  br label %scalar.ph477

scalar.ph477:                                     ; preds = %scalar.ph477.preheader, %scalar.ph477
  %indvars.iv.i38.i = phi i64 [ %indvars.iv.next.i39.i, %scalar.ph477 ], [ %indvars.iv.i38.i.ph, %scalar.ph477.preheader ] ; 2 uses
  %.089.i.i = phi i32 [ %i.yy, %scalar.ph477 ], [ %.089.i.i.ph, %scalar.ph477.preheader ]
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %indvars.iv.i38.i
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !58
  %i.yx = zext i16 %i.yw to i32
  %i.yy = add i32 %.089.i.i, %i.yx                ; 2 uses
  %indvars.iv.next.i39.i = add nuw nsw i64 %indvars.iv.i38.i, 1 ; 2 uses
  %exitcond.not.i40.i = icmp eq i64 %indvars.iv.next.i39.i, %wide.trip.count.i37.pre-phi.i
  br i1 %exitcond.not.i40.i, label %update_model4_to_5.exit, label %scalar.ph477, !llvm.loop !186

update_model4_to_5.exit:                          ; preds = %scalar.ph477, %middle.block488, %bb.co, %rescale.exit.i
  %.08.lcssa.i.i = phi i32 [ %i.yk, %rescale.exit.i ], [ 256, %bb.co ], [ %i.yu, %middle.block488 ], [ %i.yy, %scalar.ph477 ]
  %i.yz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.08.lcssa.i.i, ptr %i.yz, align 4, !tbaa !203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %7, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.cp

bb.cp:                                            ; preds = %update_model4_to_5.exit, %bb.ck
  %i.za = load i16, ptr %i.c, align 2, !tbaa !58
  %i.zb = zext i16 %i.za to i32
  %i.zc = load i16, ptr %i.d, align 2, !tbaa !58
  %i.zd = zext i16 %i.zc to i32
  %i.ze = load i32, ptr %i.g, align 4, !tbaa !52  ; 2 uses
  %i.zf = lshr i32 %i.ze, 12
  %i.zg = mul i32 %i.zf, %i.zb
  %i.zh = and i32 %i.ze, 4095
  %i.zi = sub nsw i32 %i.zh, %i.zd
  %i.zj = add i32 %i.zi, %i.zg                    ; 4 uses
  %i.zk = icmp ult i32 %i.zj, 8388608
  br i1 %i.zk, label %.lr.ph.i129, label %decode3.exit

.lr.ph.i129:                                      ; preds = %bb.cp
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !48
  %i.zn = ptrtoint ptr %i.zm to i64               ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.zo = ptrtoint ptr %.promoted.i to i64
  %i.zp = sub i64 %i.zn, %i.zo
  %i.zq = trunc i64 %i.zp to i32
  %i.zr = icmp sgt i32 %i.zq, 0
  br i1 %i.zr, label %.lr.ph408, label %decode3.exit

bb.cq:                                            ; preds = %.lr.ph408
  %i.zs = ptrtoint ptr %i.zx to i64
  %i.zt = sub i64 %i.zn, %i.zs
  %i.zu = trunc i64 %i.zt to i32
  %i.zv = icmp sgt i32 %i.zu, 0
  br i1 %i.zv, label %.lr.ph408, label %decode3.exit, !llvm.loop !1

.lr.ph408:                                        ; preds = %.lr.ph.i129, %bb.cq
  %.09.i407 = phi i32 [ %i.aab, %bb.cq ], [ %i.zj, %.lr.ph.i129 ] ; 2 uses
  %i.zw = phi ptr [ %i.zx, %bb.cq ], [ %.promoted.i, %.lr.ph.i129 ] ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 1 ; 3 uses
  store ptr %i.zx, ptr %i.f, align 8, !tbaa !50
  %i.zy = load i8, ptr %i.zw, align 1, !tbaa !49
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = shl nuw nsw i32 %.09.i407, 8
  %i.aab = or disjoint i32 %i.aaa, %i.zz          ; 3 uses
  %i.aac = icmp ult i32 %.09.i407, 32768
  br i1 %i.aac, label %bb.cq, label %.decode3.exit.loopexit_crit_edge, !llvm.loop !1

.decode3.exit.loopexit_crit_edge:                 ; preds = %.lr.ph408
  br label %decode3.exit, !llvm.loop !1

decode3.exit:                                     ; preds = %bb.cq, %.lr.ph.i129, %.decode3.exit.loopexit_crit_edge, %bb.cp
  %.0.lcssa.i = phi i32 [ %i.zj, %bb.cp ], [ %i.aab, %.decode3.exit.loopexit_crit_edge ], [ %i.zj, %.lr.ph.i129 ], [ %i.aab, %bb.cq ]
  store i32 %.0.lcssa.i, ptr %i.g, align 4, !tbaa !52
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !53
  %i.aaf = add i32 %i.aae, 1                      ; 2 uses
  store i32 %i.aaf, ptr %i.aad, align 4, !tbaa !53
  %i.aag = icmp eq i32 %i.aaf, 131072
  br i1 %i.aag, label %bb.cr, label %sync_code3.exit

bb.cr:                                            ; preds = %decode3.exit
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !48 ; 2 uses
  %i.aaj = load ptr, ptr %i.f, align 8, !tbaa !47 ; 3 uses
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = ptrtoint ptr %i.aaj to i64
  %i.aam = sub i64 %i.aak, %i.aal
  %i.aan = icmp slt i64 %i.aam, 4
  br i1 %i.aan, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.aai, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_le32.exit.i130

bb.ct:                                            ; preds = %bb.cr
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaj, i64 4
  store ptr %i.aao, ptr %i.f, align 8, !tbaa !50
  %i.aap = load i32, ptr %i.aaj, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit.i130

bytestream2_get_le32.exit.i130:                   ; preds = %bb.ct, %bb.cs
  %.0.i.i131 = phi i32 [ 0, %bb.cs ], [ %i.aap, %bb.ct ]
  store i32 %.0.i.i131, ptr %i.g, align 8, !tbaa !52
  store i32 0, ptr %i.aad, align 8, !tbaa !53
  br label %sync_code3.exit

bb.cu:                                            ; preds = %bb.a
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aar = call fastcc i32 @decode_adaptive45(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.aaq, i32 noundef 16)
  %.not76 = icmp eq i32 %i.aar, 0
  br i1 %.not76, label %bb.cv, label %bb.dj

bb.cv:                                            ; preds = %bb.cu
  %i.aas = load i32, ptr %3, align 4, !tbaa !42   ; 3 uses
  %i.aat = trunc i32 %i.aas to i8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %6, i8 0, i64 1836, i1 false)
  store i8 6, ptr %6, align 4, !tbaa !56
  %i.aau = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  store i8 32, ptr %i.aau, align 1, !tbaa !69
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aaw = load i16, ptr %i.aav, align 4, !tbaa !66 ; 7 uses
  %i.aax = zext i16 %i.aaw to i32                 ; 2 uses
  %i.aay = sub nsw i32 256, %i.aax                ; 3 uses
  %.not142.i = icmp eq i16 %i.aaw, 0              ; 2 uses
  br i1 %.not142.i, label %.lr.ph121.i.preheader, label %.lr.ph.i133

.lr.ph121.i.preheader:                            ; preds = %.preheader116.i, %bb.cv
  %.1120.i.ph = phi i32 [ %i.aay, %bb.cv ], [ %.lcssa392, %.preheader116.i ]
  br label %.lr.ph121.i

.lr.ph.i133:                                      ; preds = %bb.cv
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %wide.trip.count.i134 = zext i16 %i.aaw to i64  ; 4 uses
  %min.iters.check = icmp ult i16 %i.aaw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i133
  %n.vec = and i64 %wide.trip.count.i134, 65528   ; 3 uses
  %i.aba = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aay, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aba, %vector.ph ], [ %i.abf, %vector.body ]
  %vec.phi420 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.abg, %vector.body ]
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %index ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %wide.load = load <4 x i16>, ptr %i.abb, align 2, !tbaa !58
  %wide.load421 = load <4 x i16>, ptr %i.abc, align 2, !tbaa !58
  %i.abd = zext <4 x i16> %wide.load to <4 x i32>
  %i.abe = zext <4 x i16> %wide.load421 to <4 x i32>
  %i.abf = add <4 x i32> %vec.phi, %i.abd         ; 2 uses
  %i.abg = add <4 x i32> %vec.phi420, %i.abe      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.abh = icmp eq i64 %index.next, %n.vec
  br i1 %i.abh, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.abg, %i.abf
  %i.abi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i134
  br i1 %cmp.n, label %.preheader116.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i133, %middle.block
  %indvars.iv.i135.ph = phi i64 [ 0, %.lr.ph.i133 ], [ %n.vec, %middle.block ]
  %.0100118.i.ph = phi i32 [ %i.aay, %.lr.ph.i133 ], [ %i.abi, %middle.block ]
  br label %scalar.ph

.preheader116.i:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa392 = phi i32 [ %i.abi, %middle.block ], [ %i.abn, %scalar.ph ] ; 2 uses
  %i.abj = icmp slt i32 %.lcssa392, 2049
  br i1 %i.abj, label %.lr.ph121.i.preheader, label %.lr.ph126.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i136, %scalar.ph ], [ %indvars.iv.i135.ph, %scalar.ph.preheader ] ; 2 uses
  %.0100118.i = phi i32 [ %i.abn, %scalar.ph ], [ %.0100118.i.ph, %scalar.ph.preheader ]
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %indvars.iv.i135
  %i.abl = load i16, ptr %i.abk, align 2, !tbaa !58
  %i.abm = zext i16 %i.abl to i32
  %i.abn = add nsw i32 %.0100118.i, %i.abm        ; 2 uses
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %exitcond.not.i137 = icmp eq i64 %indvars.iv.next.i136, %wide.trip.count.i134
  br i1 %exitcond.not.i137, label %.preheader116.i, label %scalar.ph, !llvm.loop !188

.preheader115.i:                                  ; preds = %.lr.ph121.i
  br i1 %.not142.i, label %._crit_edge.i146, label %.preheader115.i..lr.ph126.i_crit_edge

.preheader115.i..lr.ph126.i_crit_edge:            ; preds = %.preheader115.i
  %.pre281 = zext i16 %i.aaw to i64
  br label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %.preheader115.i..lr.ph126.i_crit_edge, %.preheader116.i
  %wide.trip.count151.i.pre-phi = phi i64 [ %.pre281, %.preheader115.i..lr.ph126.i_crit_edge ], [ %wide.trip.count.i134, %.preheader116.i ] ; 5 uses
  %.1102.lcssa186.i = phi i32 [ %i.abu, %.preheader115.i..lr.ph126.i_crit_edge ], [ 0, %.preheader116.i ] ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.abq = getelementptr inbounds nuw i8, ptr %6, i64 268 ; 4 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %6, i64 1292
  %i.abs = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  br label %bb.cw

.lr.ph121.i:                                      ; preds = %.lr.ph121.i.preheader, %.lr.ph121.i
  %.1120.i = phi i32 [ %i.abt, %.lr.ph121.i ], [ %.1120.i.ph, %.lr.ph121.i.preheader ]
  %.1102119.i = phi i32 [ %i.abu, %.lr.ph121.i ], [ 0, %.lr.ph121.i.preheader ]
  %i.abt = shl i32 %.1120.i, 1                    ; 2 uses
  %i.abu = add nuw nsw i32 %.1102119.i, 1         ; 4 uses
  %i.abv = icmp slt i32 %i.abt, 2049
  br i1 %i.abv, label %.lr.ph121.i, label %.preheader115.i, !llvm.loop !189

bb.cw:                                            ; preds = %bb.cw, %.lr.ph126.i
  %indvars.iv148.i = phi i64 [ 0, %.lr.ph126.i ], [ %indvars.iv.next149.i, %bb.cw ] ; 6 uses
  %.2125.i = phi i32 [ 0, %.lr.ph126.i ], [ %i.acp, %bb.cw ]
  %.0106124.i = phi i32 [ 0, %.lr.ph126.i ], [ %i.acq, %bb.cw ]
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abo, i64 %indvars.iv148.i
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !49 ; 2 uses
  %i.aby = zext i8 %i.abx to i32                  ; 2 uses
  %i.abz = sub nsw i32 %i.aby, %.0106124.i
  %i.aca = add nsw i32 %i.abz, %.2125.i           ; 2 uses
end_hunk_1
begin_hunk_2_@decode_unit3:bb.a
  %i.aku = add nsw i32 %i.aks, -1                 ; 2 uses
  %i.akv = zext nneg i32 %i.aku to i64            ; 2 uses
  %i.akw = getelementptr inbounds nuw [2 x i8], ptr %i.akj, i64 %i.akv ; 2 uses
  %i.akx = load i16, ptr %i.akw, align 2, !tbaa !58 ; 2 uses
  %i.aky = icmp ugt i16 %i.akt, %i.akx
  br i1 %i.aky, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i16 %i.akt, ptr %i.akw, align 2, !tbaa !58
  store i16 %i.akx, ptr %i.akk, align 2, !tbaa !58
  %i.akz = shl nuw nsw i32 %i.aku, 1
  %i.ala = zext nneg i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [2 x i8], ptr %i.ajr, i64 %i.ala ; 2 uses
  %i.alc = load <2 x i16>, ptr %i.ajt, align 2, !tbaa !58
  %i.ald = load <2 x i16>, ptr %i.alb, align 2, !tbaa !58
  store <2 x i16> %i.ald, ptr %i.ajt, align 2, !tbaa !58
  store <2 x i16> %i.alc, ptr %i.alb, align 2, !tbaa !58
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.akv ; 2 uses
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !49
  %i.alg = load i8, ptr %i.aka, align 1, !tbaa !49
  store i8 %i.alg, ptr %i.ale, align 1, !tbaa !49
  store i8 %i.alf, ptr %i.aka, align 1, !tbaa !49
  %.pre.i.i = load i16, ptr %i.akp, align 2, !tbaa !58
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %i.alh = phi i16 [ %.pre.i.i, %bb.dt ], [ %i.akr, %bb.ds ], [ %i.akr, %bb.dr ]
  %i.ali = zext i16 %i.alh to i32
  %i.alj = add nuw nsw i32 %i.akg, %i.ali
  %i.alk = icmp sgt i32 %i.alj, 4096
  br i1 %i.alk, label %.critedge.sink.split.i, label %decode_adaptive6.exit.thread.thread

bb.dv:                                            ; preds = %bb.dq
  %.not91.i = icmp ugt i32 %.072115.i, %i.ajw
  br i1 %.not91.i, label %incr_cntdec.exit.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.all = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %indvars.iv.i159
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !49
  %i.aln = zext i8 %i.alm to i32
  br label %incr_cntdec.exit.i

incr_cntdec.exit.i:                               ; preds = %bb.dw, %bb.dv, %bb.dp
  %.481.i = phi i32 [ %.077114.i, %bb.dp ], [ %.077114.i, %bb.dv ], [ %i.ajy, %bb.dw ] ; 3 uses
  %.476.i = phi i32 [ %.072115.i, %bb.dp ], [ %.072115.i, %bb.dv ], [ %i.ajw, %bb.dw ] ; 2 uses
  %.4.i162 = phi i32 [ %.070116.i, %bb.dp ], [ %.070116.i, %bb.dv ], [ %i.aln, %bb.dw ] ; 2 uses
  %indvars.iv.next.i163 = add nuw nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %exitcond.not.i164 = icmp eq i64 %indvars.iv.next.i163, %wide.trip.count.i158
  br i1 %exitcond.not.i164, label %._crit_edge.i165, label %bb.dp, !llvm.loop !196

._crit_edge.i165:                                 ; preds = %incr_cntdec.exit.i
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.alp = load i8, ptr %i.alo, align 1, !tbaa !70 ; 3 uses
  %i.alq = zext i8 %i.alp to i32                  ; 5 uses
  %i.alr = shl nuw i32 1, %i.alq                  ; 2 uses
  %.not156.i = icmp eq i32 %.481.i, 0
  br i1 %.not156.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i165
  %i.als = add nuw nsw i32 %.4.i162, 1
  %i.alt = add nuw nsw i32 %.476.i, %.481.i       ; 2 uses
  %i.alu = sub nsw i32 %2, %i.alt
  %i.alv = lshr i32 %i.alu, %i.alq                ; 2 uses
  %i.alw = add i32 %i.als, %i.alv
  %i.alx = shl i32 %i.alv, %i.alq
  %i.aly = add nsw i32 %i.alx, %i.alt
  br label %bb.dz

bb.dy:                                            ; preds = %._crit_edge.i165, %._crit_edge.thread.i170
  %i.alz = phi i8 [ %i.ajo, %._crit_edge.thread.i170 ], [ %i.alp, %._crit_edge.i165 ]
  %i.ama = phi i32 [ %i.ajq, %._crit_edge.thread.i170 ], [ %i.alr, %._crit_edge.i165 ]
  %i.amb = phi i32 [ %i.ajp, %._crit_edge.thread.i170 ], [ %i.alq, %._crit_edge.i165 ] ; 3 uses
  %i.amc = lshr i32 %2, %i.amb                    ; 2 uses
  %i.amd = shl i32 %i.amc, %i.amb
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.ame = phi i8 [ %i.alp, %bb.dx ], [ %i.alz, %bb.dy ]
  %i.amf = phi i32 [ %i.alr, %bb.dx ], [ %i.ama, %bb.dy ] ; 3 uses
  %i.amg = phi i32 [ %i.alq, %bb.dx ], [ %i.amb, %bb.dy ]
  %.069.i = phi i32 [ %i.aly, %bb.dx ], [ %i.amd, %bb.dy ]
  %.067.i = phi i32 [ %i.alw, %bb.dx ], [ %i.amc, %bb.dy ] ; 2 uses
  %i.amh = trunc i32 %i.amf to i16                ; 4 uses
  %i.ami = trunc i32 %.069.i to i16               ; 4 uses
  store i32 %.067.i, ptr %3, align 4, !tbaa !42
  %i.amj = zext i16 %i.ajm to i32                 ; 2 uses
  %i.amk = icmp ult i16 %i.ajm, 40                ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.pre.i166 = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !69 ; 5 uses
  %i.aml = zext i8 %.pre.i166 to i16
  %.not.i.i167 = icmp samesign ult i16 %i.ajm, %i.aml
  %or.cond148.i = select i1 %i.amk, i1 %.not.i.i167, i1 false
  br i1 %or.cond148.i, label %add_dec.exit.i, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.dz
  %i.amm = icmp eq i8 %.pre.i166, 64
  br i1 %i.amm, label %.lr.ph.i171, label %bb.ea

bb.ea:                                            ; preds = %._crit_edge127.i
  %i.amn = zext i8 %.pre.i166 to i32
  %i.amo = shl nuw nsw i32 %i.amn, 1              ; 3 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %1, i64 1292 ; 2 uses
  %i.amq = zext i8 %.pre.i166 to i64
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %i.amp, i64 %i.amq
  %i.ams = load i16, ptr %i.amr, align 2, !tbaa !58
  %i.amt = zext nneg i32 %i.amo to i64
  %i.amu = getelementptr inbounds nuw [2 x i8], ptr %i.amp, i64 %i.amt
  store i16 %i.ams, ptr %i.amu, align 2, !tbaa !58
  %i.amv = trunc i32 %i.amo to i8                 ; 2 uses
  store i8 %i.amv, ptr %.phi.trans.insert.i, align 1, !tbaa !69
  %i.amw = trunc nuw nsw i32 %i.amo to i16
  %i.amx = and i16 %i.amw, 254
  %.not.i93.i = icmp samesign ult i16 %i.ajm, %i.amx
  %or.cond.i168 = select i1 %i.amk, i1 %.not.i93.i, i1 false
  br i1 %or.cond.i168, label %add_dec.exit.i, label %decode_adaptive6.exit.thread.thread207

add_dec.exit.i:                                   ; preds = %bb.ea, %bb.dz
  %i.amy = phi i8 [ %.pre.i166, %bb.dz ], [ %i.amv, %bb.ea ]
  %i.amz = trunc i32 %.067.i to i8
  %i.ana = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.anb = zext nneg i16 %i.ajm to i64            ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ana, i64 %i.anb ; 3 uses
  store i8 %i.amz, ptr %i.anc, align 1, !tbaa !49
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %i.ane = shl nuw nsw i32 %i.amj, 1
  %i.anf = zext nneg i32 %i.ane to i64
  %i.ang = getelementptr inbounds nuw [2 x i8], ptr %i.and, i64 %i.anf ; 4 uses
  store i16 %i.amh, ptr %i.ang, align 2, !tbaa !58
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 2
  store i16 %i.ami, ptr %i.anh, align 2, !tbaa !58
  %i.ani = lshr i32 %i.amf, 1
  %i.anj = sub nuw i32 %i.amf, %i.ani
  %i.ank = trunc i32 %i.anj to i16
  %storemerge.i = add nuw nsw i16 %i.ajm, 1
  store i16 %storemerge.i, ptr %i.ajl, align 4, !tbaa !66
  %i.anl = shl i32 25, %i.amg                     ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %1, i64 1292 ; 3 uses
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.anm, i64 %i.anb ; 3 uses
  %i.ano = trunc i32 %i.anl to i16                ; 2 uses
  %i.anp = add i16 %i.ank, %i.ano
  store i16 %i.anp, ptr %i.ann, align 2, !tbaa !58
  %i.anq = zext i8 %i.amy to i64
  %i.anr = getelementptr inbounds nuw [2 x i8], ptr %i.anm, i64 %i.anq ; 3 uses
  %i.ans = load i16, ptr %i.anr, align 2, !tbaa !58
  %i.ant = add i16 %i.ans, %i.ano                 ; 3 uses
  store i16 %i.ant, ptr %i.anr, align 2, !tbaa !58
  br i1 %.not120.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %add_dec.exit.i
  %i.anu = load i16, ptr %i.ann, align 2, !tbaa !58 ; 2 uses
  %i.anv = add nsw i32 %i.amj, -1                 ; 2 uses
  %i.anw = zext nneg i32 %i.anv to i64            ; 2 uses
  %i.anx = getelementptr inbounds nuw [2 x i8], ptr %i.anm, i64 %i.anw ; 2 uses
  %i.any = load i16, ptr %i.anx, align 2, !tbaa !58 ; 2 uses
  %i.anz = icmp ugt i16 %i.anu, %i.any
  br i1 %i.anz, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i16 %i.anu, ptr %i.anx, align 2, !tbaa !58
  store i16 %i.any, ptr %i.ann, align 2, !tbaa !58
  %i.aoa = shl nuw nsw i32 %i.anv, 1
  %i.aob = zext nneg i32 %i.aoa to i64
  %i.aoc = getelementptr inbounds nuw [2 x i8], ptr %i.and, i64 %i.aob ; 2 uses
  %i.aod = load <2 x i16>, ptr %i.ang, align 2, !tbaa !58
  %i.aoe = load <2 x i16>, ptr %i.aoc, align 2, !tbaa !58
  store <2 x i16> %i.aoe, ptr %i.ang, align 2, !tbaa !58
  store <2 x i16> %i.aod, ptr %i.aoc, align 2, !tbaa !58
  %i.aof = getelementptr inbounds nuw i8, ptr %i.ana, i64 %i.anw ; 2 uses
  %i.aog = load i8, ptr %i.aof, align 1, !tbaa !49
  %i.aoh = load i8, ptr %i.anc, align 1, !tbaa !49
  store i8 %i.aoh, ptr %i.aof, align 1, !tbaa !49
  store i8 %i.aog, ptr %i.anc, align 1, !tbaa !49
  %.pre.i96.i = load i16, ptr %i.anr, align 2, !tbaa !58
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %add_dec.exit.i
  %i.aoi = phi i16 [ %.pre.i96.i, %bb.ec ], [ %i.ant, %bb.eb ], [ %i.ant, %add_dec.exit.i ]
  %i.aoj = zext i16 %i.aoi to i32
  %i.aok = add nuw nsw i32 %i.anl, %i.aoj
  %i.aol = icmp sgt i32 %i.aok, 4096
  br i1 %i.aol, label %.critedge.sink.split.i, label %decode_adaptive6.exit.thread.thread

.critedge.sink.split.i:                           ; preds = %bb.ed, %bb.du
  %i.aom = phi i16 [ %i.ami, %bb.ed ], [ %i.ajv, %bb.du ]
  %i.aon = phi i16 [ %i.amh, %bb.ed ], [ %i.ajx, %bb.du ]
  tail call fastcc void @rescale_dec(ptr noundef nonnull %1)
  br label %decode_adaptive6.exit.thread.thread

.lr.ph.i171:                                      ; preds = %._crit_edge127.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %5, i8 0, i64 1836, i1 false)
  store i8 7, ptr %5, align 4, !tbaa !56
  %i.aoo = getelementptr inbounds nuw i8, ptr %5, i64 268 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %5, i64 780 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %5, i64 1292 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 1292
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 1420
  %i.aot = load i16, ptr %i.aos, align 4, !tbaa !58
  %i.aou = zext i16 %i.aot to i32
  %i.aov = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.aou, ptr %i.aov, align 4, !tbaa !203
  %i.aow = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 268
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eg, %.lr.ph.i171
  %indvars.iv.i173 = phi i64 [ 0, %.lr.ph.i171 ], [ %indvars.iv.next.i175, %bb.eg ] ; 4 uses
  %i.aoy = getelementptr inbounds nuw [2 x i8], ptr %i.aor, i64 %indvars.iv.i173
  %i.aoz = load i16, ptr %i.aoy, align 2, !tbaa !58 ; 2 uses
  %.not59.i = icmp eq i16 %i.aoz, 0
  br i1 %.not59.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 %indvars.iv.i173
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !49
  %.idx.i174 = shl nuw nsw i64 %indvars.iv.i173, 2
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aox, i64 %.idx.i174 ; 2 uses
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !58
  %i.ape = zext i8 %i.apb to i64                  ; 3 uses
  %i.apf = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %i.ape
  store i16 %i.apd, ptr %i.apf, align 2, !tbaa !58
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 2
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !58
  %i.api = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %i.ape
  store i16 %i.aph, ptr %i.api, align 2, !tbaa !58
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %i.ape
  store i16 %i.aoz, ptr %i.apj, align 2, !tbaa !58
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %indvars.iv.next.i175 = add nuw nsw i64 %indvars.iv.i173, 1 ; 2 uses
  %exitcond.not.i176 = icmp eq i64 %indvars.iv.next.i175, 64
  br i1 %exitcond.not.i176, label %._crit_edge.i177, label %bb.ee, !llvm.loop !197

._crit_edge.i177:                                 ; preds = %bb.eg
  %i.apk = zext nneg i8 %i.ame to i32
  %i.apl = shl nuw i32 1, %i.apk                  ; 4 uses
  %i.apm = lshr i32 %i.apl, 1
  %i.apn = sub i32 %i.apl, %i.apm
  %i.apo = trunc i32 %i.apl to i16
  %i.app = trunc i32 %i.apn to i16
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 1804
  br label %bb.eh

bb.eh:                                            ; preds = %._crit_edge63.i, %._crit_edge.i177
  %indvars.iv72.i = phi i64 [ 0, %._crit_edge.i177 ], [ %indvars.iv.next73.i, %._crit_edge63.i ] ; 5 uses
  %.05664.i = phi i32 [ 0, %._crit_edge.i177 ], [ %i.apy, %._crit_edge63.i ] ; 3 uses
  %i.apq = getelementptr inbounds nuw [2 x i8], ptr %i.aoo, i64 %indvars.iv72.i ; 2 uses
  %i.apr = load i16, ptr %i.apq, align 2, !tbaa !58 ; 2 uses
  %i.aps = zext i16 %i.apr to i32
  %.not.i178 = icmp eq i16 %i.apr, 0
  br i1 %.not.i178, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i16 %i.apo, ptr %i.apq, align 2, !tbaa !58
  %i.apt = trunc i32 %.05664.i to i16
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %indvars.iv72.i
  store i16 %i.apt, ptr %i.apu, align 2, !tbaa !58
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.aoq, i64 %indvars.iv72.i
  store i16 %i.app, ptr %i.apv, align 2, !tbaa !58
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.055.i = phi i32 [ %i.aps, %bb.eh ], [ %i.apl, %bb.ei ]
  %i.apw = add nsw i32 %.05664.i, 127
  %i.apx = ashr i32 %i.apw, 7                     ; 2 uses
  %i.apy = add nsw i32 %.055.i, %.05664.i         ; 2 uses
  %i.apz = add nsw i32 %i.apy, -1
  %i.aqa = ashr i32 %i.apz, 7
  %i.aqb = add nsw i32 %i.aqa, 1                  ; 2 uses
  %i.aqc = icmp ugt i32 %i.aqb, 32
  br i1 %i.aqc, label %decode_adaptive6.exit.thread.thread209, label %.preheader.i

decode_adaptive6.exit.thread.thread209:           ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %decode_adaptive6.exit.thread.thread207

.preheader.i:                                     ; preds = %bb.ej
  %i.aqd = sub nsw i32 %i.aqb, %i.apx             ; 2 uses
  %i.aqe = icmp sgt i32 %i.aqd, 0
  br i1 %i.aqe, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.aqf = trunc i64 %indvars.iv72.i to i8
  %i.aqg = sext i32 %i.apx to i64
  %scevgep68.i = getelementptr i8, ptr %scevgep.i, i64 %i.aqg
  %i.aqh = zext nneg i32 %i.aqd to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep68.i, i8 %i.aqf, i64 %i.aqh, i1 false), !tbaa !49
  br label %._crit_edge63.i

._crit_edge63.i:                                  ; preds = %.lr.ph62.i, %.preheader.i
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, 256
  br i1 %exitcond75.not.i, label %decode_adaptive6.exit.thread, label %bb.eh, !llvm.loop !198

decode_adaptive6.exit.thread:                     ; preds = %._crit_edge63.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1836) %1, ptr noundef nonnull align 4 dereferenceable(1836) %5, i64 1836, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %decode_adaptive6.exit.thread.thread

decode_adaptive6.exit.thread.thread:              ; preds = %bb.du, %bb.ed, %.critedge.sink.split.i, %decode_adaptive6.exit.thread
  %i.aqi = phi i16 [ %i.ajv, %bb.du ], [ %i.ami, %bb.ed ], [ %i.aom, %.critedge.sink.split.i ], [ %i.ami, %decode_adaptive6.exit.thread ]
  %i.aqj = phi i16 [ %i.ajx, %bb.du ], [ %i.amh, %bb.ed ], [ %i.aon, %.critedge.sink.split.i ], [ %i.amh, %decode_adaptive6.exit.thread ]
  %i.aqk = zext i16 %i.aqj to i32
  %i.aql = zext i16 %i.aqi to i32
  %i.aqm = load i32, ptr %i.g, align 4, !tbaa !52 ; 2 uses
  %i.aqn = lshr i32 %i.aqm, 12
  %i.aqo = mul i32 %i.aqn, %i.aqk
  %i.aqp = and i32 %i.aqm, 4095
  %i.aqq = sub nsw i32 %i.aqp, %i.aql
  %i.aqr = add i32 %i.aqq, %i.aqo                 ; 4 uses
  %i.aqs = icmp ult i32 %i.aqr, 8388608
  br i1 %i.aqs, label %.lr.ph.i182, label %decode3.exit185

.lr.ph.i182:                                      ; preds = %decode_adaptive6.exit.thread.thread
  %i.aqt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !48
  %i.aqv = ptrtoint ptr %i.aqu to i64             ; 2 uses
  %.promoted.i183 = load ptr, ptr %i.f, align 8, !tbaa !50 ; 2 uses
  %i.aqw = ptrtoint ptr %.promoted.i183 to i64
  %i.aqx = sub i64 %i.aqv, %i.aqw
  %i.aqy = trunc i64 %i.aqx to i32
  %i.aqz = icmp sgt i32 %i.aqy, 0
  br i1 %i.aqz, label %.lr.ph, label %decode3.exit185

bb.ek:                                            ; preds = %.lr.ph
  %i.ara = ptrtoint ptr %i.arf to i64
  %i.arb = sub i64 %i.aqv, %i.ara
  %i.arc = trunc i64 %i.arb to i32
  %i.ard = icmp sgt i32 %i.arc, 0
  br i1 %i.ard, label %.lr.ph, label %decode3.exit185, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i182, %bb.ek
  %.09.i184399 = phi i32 [ %i.arj, %bb.ek ], [ %i.aqr, %.lr.ph.i182 ] ; 2 uses
  %i.are = phi ptr [ %i.arf, %bb.ek ], [ %.promoted.i183, %.lr.ph.i182 ] ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 1 ; 3 uses
  store ptr %i.arf, ptr %i.f, align 8, !tbaa !50
  %i.arg = load i8, ptr %i.are, align 1, !tbaa !49
  %i.arh = zext i8 %i.arg to i32
  %i.ari = shl nuw nsw i32 %.09.i184399, 8
  %i.arj = or disjoint i32 %i.ari, %i.arh         ; 3 uses
  %i.ark = icmp ult i32 %.09.i184399, 32768
  br i1 %i.ark, label %bb.ek, label %.decode3.exit185.loopexit_crit_edge, !llvm.loop !1

.decode3.exit185.loopexit_crit_edge:              ; preds = %.lr.ph
  br label %decode3.exit185, !llvm.loop !1

decode3.exit185:                                  ; preds = %bb.ek, %.lr.ph.i182, %.decode3.exit185.loopexit_crit_edge, %decode_adaptive6.exit.thread.thread
  %.0.lcssa.i181 = phi i32 [ %i.aqr, %decode_adaptive6.exit.thread.thread ], [ %i.arj, %.decode3.exit185.loopexit_crit_edge ], [ %i.aqr, %.lr.ph.i182 ], [ %i.arj, %bb.ek ]
  store i32 %.0.lcssa.i181, ptr %i.g, align 4, !tbaa !52
  %i.arl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !53
  %i.arn = add i32 %i.arm, 1                      ; 2 uses
  store i32 %i.arn, ptr %i.arl, align 4, !tbaa !53
  %i.aro = icmp eq i32 %i.arn, 131072
  br i1 %i.aro, label %bb.el, label %sync_code3.exit

bb.el:                                            ; preds = %decode3.exit185
  %i.arp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !48 ; 2 uses
  %i.arr = load ptr, ptr %i.f, align 8, !tbaa !47 ; 3 uses
  %i.ars = ptrtoint ptr %i.arq to i64
  %i.art = ptrtoint ptr %i.arr to i64
  %i.aru = sub i64 %i.ars, %i.art
  %i.arv = icmp slt i64 %i.aru, 4
  br i1 %i.arv, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store ptr %i.arq, ptr %i.f, align 8, !tbaa !47
  br label %bytestream2_get_le32.exit.i186

bb.en:                                            ; preds = %bb.el
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  store ptr %i.arw, ptr %i.f, align 8, !tbaa !50
  %i.arx = load i32, ptr %i.arr, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit.i186

bytestream2_get_le32.exit.i186:                   ; preds = %bb.en, %bb.em
  %.0.i.i187 = phi i32 [ 0, %bb.em ], [ %i.arx, %bb.en ]
  store i32 %.0.i.i187, ptr %i.g, align 8, !tbaa !52
  store i32 0, ptr %i.arl, align 8, !tbaa !53
  br label %sync_code3.exit

bb.eo:                                            ; preds = %bb.a
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 780
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 1292
  %i.asc = getelementptr inbounds nuw i8, ptr %1, i64 1804
  %i.asd = tail call fastcc i32 @decode_value3(ptr noundef %0, i32 noundef 255, ptr noundef nonnull %i.ary, ptr noundef nonnull %i.arz, ptr noundef nonnull %i.asa, ptr noundef nonnull %i.asb, ptr noundef nonnull %i.asc, ptr noundef %3)
  br label %decode_adaptive6.exit.thread.thread207

sync_code3.exit:                                  ; preds = %bytestream2_get_le32.exit.i186, %decode3.exit185, %bytestream2_get_le32.exit.i154, %decode3.exit153, %bytestream2_get_le32.exit.i130, %decode3.exit, %bytestream2_get_le32.exit.i113, %decode_static3.exit.thread, %bytestream2_get_le32.exit.i99, %decode_static2.exit, %bytestream2_get_le32.exit.i84, %decode_static1.exit, %bytestream2_get_le32.exit.i, %bytestream2_get_byte.exit83, %bb.a
  %i.ase = load i32, ptr %3, align 4, !tbaa !42
  %i.asf = icmp ugt i32 %i.ase, 255
  %. = select i1 %i.asf, i32 -1094995529, i32 0
  br label %decode_adaptive6.exit.thread.thread207

decode_adaptive6.exit.thread.thread207:           ; preds = %bb.ea, %decode_adaptive6.exit.thread.thread209, %decode_static3.exit.thread202, %sync_code3.exit, %bb.eo
  %.074 = phi i32 [ %., %sync_code3.exit ], [ -1094995529, %decode_adaptive6.exit.thread.thread209 ], [ %i.asd, %bb.eo ], [ -1094995529, %decode_static3.exit.thread202 ], [ -1094995529, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i32 %.074
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @decode_adaptive45(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4096) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef range(i32 4, 17) %6) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !42     ; 11 uses
  %i.b = icmp ult i32 %i.a, 2049
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.098173 = phi i32 [ %i.c, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.099172 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.c = shl nuw nsw i32 %.098173, 1              ; 2 uses
  %i.d = add i32 %.099172, 1                      ; 2 uses
  %i.e = icmp samesign ult i32 %.098173, 1025
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.099.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ] ; 8 uses
  %.098.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.c, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.g = load i8, ptr %i.f, align 2, !tbaa !67    ; 4 uses
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = lshr i32 %1, %.099.lcssa                 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 23 uses
  %i.k = zext i8 %i.g to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k ; 6 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !58   ; 3 uses
  %i.n = zext i16 %i.m to i32
  store i32 %i.n, ptr %5, align 4, !tbaa !42
  %i.o = sub i32 4096, %.098.lcssa
  %i.p = lshr i32 %i.o, %.099.lcssa
  %i.q = trunc i32 %i.p to i16
  %i.r = add i16 %i.m, %i.q
  store i16 %i.r, ptr %i.l, align 2, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !66   ; 3 uses
  %.not186 = icmp eq i16 %i.t, 0
  br i1 %.not186, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %._crit_edge
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %wide.trip.count = zext i16 %i.t to i64
  %i.w = load i8, ptr %i.v, align 4, !tbaa !49
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %i.y = icmp samesign ult i32 %i.i, %i.x
  br i1 %i.y, label %._crit_edge281, label %.lr.ph280

bb.b:                                             ; preds = %bb.k
  %.0100.neg = xor i32 %i.dy, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !49
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = add nsw i32 %i.ec, %.0100.neg
  %i.ad = add nsw i32 %i.ac, %i.ab                ; 2 uses
  %i.ae = icmp ult i32 %i.i, %i.ad
  br i1 %i.ae, label %._crit_edge281.loopexit, label %.lr.ph280, !llvm.loop !207

._crit_edge281.loopexit:                          ; preds = %bb.b
  %i.af = add nuw nsw i32 %i.dy, 1
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.lr.ph181
  %indvars.iv.lcssa = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next, %._crit_edge281.loopexit ] ; 8 uses
  %.1178.lcssa = phi i32 [ 0, %.lr.ph181 ], [ %i.ec, %._crit_edge281.loopexit ]
  %.0100177.lcssa = phi i32 [ 0, %.lr.ph181 ], [ %i.af, %._crit_edge281.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.lcssa
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.lcssa
  %i.ai = trunc nuw nsw i64 %indvars.iv.lcssa to i32 ; 2 uses
  %i.aj = sub nsw i32 %i.i, %.1178.lcssa
  %i.ak = add nsw i32 %i.aj, %.0100177.lcssa      ; 2 uses
  store i32 %i.ak, ptr %2, align 4, !tbaa !42
  %i.al = shl i32 %i.i, %.099.lcssa
  %i.am = trunc i32 %i.al to i16
  store i16 %i.am, ptr %4, align 2, !tbaa !58
  %i.an = shl nuw i32 1, %.099.lcssa
  %i.ao = trunc i32 %i.an to i16
  store i16 %i.ao, ptr %3, align 2, !tbaa !58
  %i.ap = load i32, ptr %5, align 4, !tbaa !42
  %i.aq = trunc i32 %i.ap to i16
  store i16 %i.aq, ptr %i.l, align 2, !tbaa !58
  %i.ar = load i16, ptr %i.s, align 4, !tbaa !66  ; 3 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = icmp eq i32 %6, %i.as
  br i1 %i.at, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge281
  %.not.not30.i = icmp samesign ult i32 %i.ai, %i.as
  br i1 %.not.not30.i, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.au = zext i16 %i.ar to i64                   ; 10 uses
  %i.av = sub i64 %i.au, %indvars.iv.lcssa        ; 7 uses
  %min.iters.check309.a = icmp ult i64 %i.av, 4
  br i1 %min.iters.check309.a, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = getelementptr i8, ptr %0, i64 %indvars.iv.lcssa
  %i.ax = getelementptr i8, ptr %i.aw, i64 13     ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.au
  %i.az = getelementptr i8, ptr %i.ay, i64 13     ; 2 uses
  %i.ba = shl nuw nsw i64 %indvars.iv.lcssa, 1    ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 270    ; 2 uses
  %i.bd = shl nuw nsw i64 %i.au, 1                ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 270    ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 %i.ba
  %i.bh = getelementptr i8, ptr %i.bg, i64 268
  %i.bi = getelementptr i8, ptr %0, i64 %i.bd
  %i.bj = getelementptr i8, ptr %i.bi, i64 268
  %i.bk = getelementptr i8, ptr %0, i64 %indvars.iv.lcssa
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  %i.bm = getelementptr i8, ptr %0, i64 %i.au
  %i.bn = getelementptr i8, ptr %i.bm, i64 12
  %bound0313 = icmp ult ptr %i.ax, %i.bf
  %bound1314 = icmp ult ptr %i.bc, %i.az
  %found.conflict315 = and i1 %bound0313, %bound1314
  %bound0317 = icmp ult ptr %i.ax, %i.bj
  %bound1318 = icmp ult ptr %i.bh, %i.az
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %found.conflict315, %found.conflict319
  %bound0321 = icmp ult ptr %i.bc, %i.bn
  %bound1322 = icmp ult ptr %i.bl, %i.bf
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check325 = icmp ult i64 %i.av, 16
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph326

vector.ph326:                                     ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.av, 12
  %n.vec327 = and i64 %i.av, -16                  ; 4 uses
  %i.bp = sub i64 %i.au, %n.vec327
  br label %vector.body328

vector.body328:                                   ; preds = %vector.ph326, %vector.body328
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.bq = sub i64 %i.au, %index329                ; 3 uses
  %i.br = add nsw i64 %i.bq, -1                   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.v, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -7
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -15
  %wide.load330 = load <8 x i8>, ptr %i.bt, align 1, !tbaa !49, !alias.scope !230
  %wide.load331 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !49, !alias.scope !230
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bq ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -7
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -15
  store <8 x i8> %wide.load330, ptr %i.bw, align 1, !tbaa !49, !alias.scope !231, !noalias !232
  store <8 x i8> %wide.load331, ptr %i.bx, align 1, !tbaa !49, !alias.scope !231, !noalias !232
  %i.by = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.br ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -14
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -30
  %wide.load332 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !58, !alias.scope !233
  %wide.load333 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !58, !alias.scope !233
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bq ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -14
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -30
  store <8 x i16> %wide.load332, ptr %i.cc, align 2, !tbaa !58, !alias.scope !234, !noalias !230
  store <8 x i16> %wide.load333, ptr %i.cd, align 2, !tbaa !58, !alias.scope !234, !noalias !230
  %index.next334 = add nuw i64 %index329, 16      ; 2 uses
  %i.ce = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.ce, label %middle.block335, label %vector.body328, !llvm.loop !213

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.av, %n.vec327
  br i1 %cmp.n336, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block335
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec327, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec337 = and i64 %i.av, -4                   ; 3 uses
  %i.cf = sub i64 %i.au, %n.vec337
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index338 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next341, %vec.epilog.vector.body ] ; 2 uses
  %i.cg = sub i64 %i.au, %index338                ; 3 uses
  %i.ch = add nsw i64 %i.cg, -1                   ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.v, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -3
  %wide.load339 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !49, !alias.scope !230
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cg
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -3
  store <4 x i8> %wide.load339, ptr %i.cl, align 1, !tbaa !49, !alias.scope !231, !noalias !232
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ch
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -6
  %wide.load340 = load <4 x i16>, ptr %i.cn, align 2, !tbaa !58, !alias.scope !233
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.cg
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -6
  store <4 x i16> %wide.load340, ptr %i.cp, align 2, !tbaa !58, !alias.scope !234, !noalias !230
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next341, %n.vec337
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !214

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n342 = icmp eq i64 %i.av, %n.vec337
  br i1 %cmp.n342, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.au, %iter.check ], [ %i.au, %vector.memcheck ], [ %i.bp, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %middle.block335, %vec.epilog.middle.block, %.preheader.i
  %i.cr = trunc i32 %i.ak to i8
  store i8 %i.cr, ptr %i.ag, align 1, !tbaa !49
  store i16 50, ptr %i.ah, align 2, !tbaa !58
  %i.cs = add i16 %i.ar, 1                        ; 5 uses
  store i16 %i.cs, ptr %i.s, align 4, !tbaa !66
  %.not.i = icmp samesign ugt i32 %i.ai, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %i.v, i64 %indvars.iv.next.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !49
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !58
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !58
  %.not.not.i = icmp sgt i64 %indvars.iv.next.i, %indvars.iv.lcssa
  br i1 %.not.not.i, label %vec.epilog.scalar.ph, label %._crit_edge.i, !llvm.loop !215

bb.c:                                             ; preds = %._crit_edge.i
  %i.cz = add i8 %i.g, 1
  store i8 %i.cz, ptr %i.f, align 2, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.da = add nsw i32 %i.a, 50
  %i.db = icmp sgt i32 %i.a, 3996
  br i1 %i.db, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.dc = zext i16 %i.cs to i32
  %i.dd = sub nsw i32 256, %i.dc                  ; 3 uses
  %.not.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %wide.trip.count.i.i = zext i16 %i.cs to i64    ; 3 uses
  %min.iters.check345 = icmp ult i16 %i.cs, 8
  br i1 %min.iters.check345, label %scalar.ph344.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %.lr.ph.i.i
  %n.vec347 = and i64 %wide.trip.count.i.i, 65528 ; 3 uses
  %i.de = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dd, i64 0
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %vec.phi350 = phi <4 x i32> [ %i.de, %vector.ph346 ], [ %i.dn, %vector.body348 ]
  %vec.phi351 = phi <4 x i32> [ zeroinitializer, %vector.ph346 ], [ %i.do, %vector.body348 ]
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index349 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %wide.load352 = load <4 x i16>, ptr %i.df, align 2, !tbaa !58 ; 2 uses
  %wide.load353 = load <4 x i16>, ptr %i.dg, align 2, !tbaa !58 ; 2 uses
  %i.dh = lshr <4 x i16> %wide.load352, splat (i16 1)
  %i.di = lshr <4 x i16> %wide.load353, splat (i16 1)
  %i.dj = sub <4 x i16> %wide.load352, %i.dh      ; 2 uses
  %i.dk = sub <4 x i16> %wide.load353, %i.di      ; 2 uses
  store <4 x i16> %i.dj, ptr %i.df, align 2, !tbaa !58
  store <4 x i16> %i.dk, ptr %i.dg, align 2, !tbaa !58
  %i.dl = zext <4 x i16> %i.dj to <4 x i32>
  %i.dm = zext <4 x i16> %i.dk to <4 x i32>
  %i.dn = add <4 x i32> %vec.phi350, %i.dl        ; 2 uses
  %i.do = add <4 x i32> %vec.phi351, %i.dm        ; 2 uses
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.dp, label %middle.block355, label %vector.body348, !llvm.loop !216

middle.block355:                                  ; preds = %vector.body348
  %bin.rdx356 = add <4 x i32> %i.do, %i.dn
  %i.dq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx356) ; 2 uses
  %cmp.n357 = icmp eq i64 %n.vec347, %wide.trip.count.i.i
  br i1 %cmp.n357, label %.thread, label %scalar.ph344.preheader

scalar.ph344.preheader:                           ; preds = %.lr.ph.i.i, %middle.block355
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec347, %middle.block355 ]
  %.01213.i.i.ph = phi i32 [ %i.dd, %.lr.ph.i.i ], [ %i.dq, %middle.block355 ]
  br label %scalar.ph344

scalar.ph344:                                     ; preds = %scalar.ph344.preheader, %scalar.ph344
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph344 ], [ %indvars.iv.i.i.ph, %scalar.ph344.preheader ] ; 2 uses
  %.01213.i.i = phi i32 [ %i.dw, %scalar.ph344 ], [ %.01213.i.i.ph, %scalar.ph344.preheader ]
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !58 ; 2 uses
  %i.dt = lshr i16 %i.ds, 1
  %i.du = sub i16 %i.ds, %i.dt                    ; 2 uses
  store i16 %i.du, ptr %i.dr, align 2, !tbaa !58
  %i.dv = zext i16 %i.du to i32
  %i.dw = add i32 %.01213.i.i, %i.dv              ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread, label %scalar.ph344, !llvm.loop !217

.lr.ph280:                                        ; preds = %.lr.ph181, %bb.b
  %i.dx = phi i32 [ %i.ad, %bb.b ], [ %i.x, %.lr.ph181 ] ; 2 uses
  %i.dy = phi i32 [ %i.ab, %bb.b ], [ %i.x, %.lr.ph181 ] ; 4 uses
  %indvars.iv279 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph181 ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv279
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !58
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = add nuw nsw i32 %i.dx, %i.eb            ; 4 uses
  %i.ed = icmp samesign ugt i32 %i.ec, %i.i
  br i1 %i.ed, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph280
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv279 ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv279 to i32
  store i32 %i.dy, ptr %2, align 4, !tbaa !42
  %i.eg = shl i32 %i.dx, %.099.lcssa
  %i.eh = trunc i32 %i.eg to i16
  store i16 %i.eh, ptr %4, align 2, !tbaa !58
  %i.ei = shl i32 %i.eb, %.099.lcssa
  %i.ej = trunc i32 %i.ei to i16
  store i16 %i.ej, ptr %3, align 2, !tbaa !58
  %i.ek = load i32, ptr %5, align 4, !tbaa !42
  %i.el = trunc i32 %i.ek to i16
  store i16 %i.el, ptr %i.l, align 2, !tbaa !58
  %i.em = load i16, ptr %i.ee, align 2, !tbaa !58
  %i.en = add i16 %i.em, 50                       ; 2 uses
  store i16 %i.en, ptr %i.ee, align 2, !tbaa !58
  %i.eo = add nsw i32 %i.a, 50
  %.not = icmp eq i32 %i.ef, %i.h
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ep = load i16, ptr %i.l, align 2, !tbaa !58
  %i.eq = icmp ugt i16 %i.en, %i.ep
  br i1 %i.eq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.er = trunc i64 %indvars.iv279 to i8
  store i8 %i.er, ptr %i.f, align 2, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.es = add i32 %i.a, -3997
  %i.et = icmp ult i32 %i.es, -4097
  br i1 %i.et, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.eu = load i16, ptr %i.s, align 4, !tbaa !66  ; 4 uses
  %i.ev = zext i16 %i.eu to i32
  %i.ew = sub nsw i32 256, %i.ev                  ; 3 uses
  %.not.i109 = icmp eq i16 %i.eu, 0
  br i1 %.not.i109, label %.thread, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.j
  %wide.trip.count.i = zext i16 %i.eu to i64      ; 3 uses
  %min.iters.check = icmp ult i16 %i.eu, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i110
  %n.vec = and i64 %wide.trip.count.i, 65528      ; 3 uses
  %i.ex = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ew, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ex, %vector.ph ], [ %i.fg, %vector.body ]
  %vec.phi284 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fh, %vector.body ]
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.ey, align 2, !tbaa !58 ; 2 uses
  %wide.load285 = load <4 x i16>, ptr %i.ez, align 2, !tbaa !58 ; 2 uses
  %i.fa = lshr <4 x i16> %wide.load, splat (i16 1)
  %i.fb = lshr <4 x i16> %wide.load285, splat (i16 1)
  %i.fc = sub <4 x i16> %wide.load, %i.fa         ; 2 uses
  %i.fd = sub <4 x i16> %wide.load285, %i.fb      ; 2 uses
  store <4 x i16> %i.fc, ptr %i.ey, align 2, !tbaa !58
  store <4 x i16> %i.fd, ptr %i.ez, align 2, !tbaa !58
  %i.fe = zext <4 x i16> %i.fc to <4 x i32>
  %i.ff = zext <4 x i16> %i.fd to <4 x i32>
  %i.fg = add <4 x i32> %vec.phi, %i.fe           ; 2 uses
  %i.fh = add <4 x i32> %vec.phi284, %i.ff        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fh, %i.fg
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i110, %middle.block
  %indvars.iv.i111.ph = phi i64 [ 0, %.lr.ph.i110 ], [ %n.vec, %middle.block ]
  %.01213.i.ph = phi i32 [ %i.ew, %.lr.ph.i110 ], [ %i.fj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %scalar.ph ], [ %indvars.iv.i111.ph, %scalar.ph.preheader ] ; 2 uses
  %.01213.i = phi i32 [ %i.fp, %scalar.ph ], [ %.01213.i.ph, %scalar.ph.preheader ]
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i111 ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !58 ; 2 uses
  %i.fm = lshr i16 %i.fl, 1
  %i.fn = sub i16 %i.fl, %i.fm                    ; 2 uses
  store i16 %i.fn, ptr %i.fk, align 2, !tbaa !58
  %i.fo = zext i16 %i.fn to i32
  %i.fp = add i32 %.01213.i, %i.fo                ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread, label %scalar.ph, !llvm.loop !219

bb.k:                                             ; preds = %.lr.ph280
  %indvars.iv.next = add nuw nsw i64 %indvars.iv279, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge182.loopexit, label %bb.b, !llvm.loop !207

._crit_edge182.loopexit:                          ; preds = %bb.k
  %i.fq = add nuw nsw i32 %i.dy, 1
  br label %._crit_edge182

._crit_edge182:                                   ; preds = %._crit_edge182.loopexit, %._crit_edge
  %.0102.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.u, %._crit_edge182.loopexit ] ; 4 uses
  %.0100.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.fq, %._crit_edge182.loopexit ]
  %.1.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ec, %._crit_edge182.loopexit ]
  store i16 %i.m, ptr %i.l, align 2, !tbaa !58
  %i.fr = add nuw nsw i32 %.0100.lcssa, %i.i
  %i.fs = sub nsw i32 %i.fr, %.1.lcssa            ; 2 uses
  store i32 %i.fs, ptr %2, align 4, !tbaa !42
  %i.ft = shl i32 %i.i, %.099.lcssa
  %i.fu = trunc i32 %i.ft to i16
  store i16 %i.fu, ptr %4, align 2, !tbaa !58
  %i.fv = shl nuw i32 1, %.099.lcssa
  %i.fw = trunc i32 %i.fv to i16
  store i16 %i.fw, ptr %3, align 2, !tbaa !58
  %i.fx = load i16, ptr %i.s, align 4, !tbaa !66  ; 3 uses
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = icmp eq i32 %6, %i.fy
  br i1 %i.fz, label %.thread, label %.preheader.i114

.preheader.i114:                                  ; preds = %._crit_edge182
  %.not.not30.i115 = icmp samesign ult i32 %.0102.lcssa, %i.fy
  br i1 %.not.not30.i115, label %iter.check422, label %.preheader.._crit_edge_crit_edge.i116

.preheader.._crit_edge_crit_edge.i116:            ; preds = %.preheader.i114
  %.pre.i117 = zext nneg i32 %.0102.lcssa to i64
  br label %._crit_edge.i118

iter.check422:                                    ; preds = %.preheader.i114
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.gb = zext i16 %i.fx to i64                   ; 10 uses
  %i.gc = zext nneg i32 %.0102.lcssa to i64       ; 8 uses
  %i.gd = sub nsw i64 %i.gb, %i.gc                ; 7 uses
  %min.iters.check388 = icmp ult i64 %i.gd, 4
  br i1 %min.iters.check388, label %vec.epilog.scalar.ph424.preheader, label %vector.memcheck389

vector.memcheck389:                               ; preds = %iter.check422
  %i.ge = getelementptr i8, ptr %0, i64 %i.gc
  %i.gf = getelementptr i8, ptr %i.ge, i64 13     ; 2 uses
  %i.gg = getelementptr i8, ptr %0, i64 %i.gb
  %i.gh = getelementptr i8, ptr %i.gg, i64 13     ; 2 uses
  %i.gi = shl nuw nsw i64 %i.gc, 1                ; 2 uses
  %i.gj = getelementptr i8, ptr %0, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 270    ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gb, 1                ; 2 uses
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 270    ; 2 uses
  %i.go = getelementptr i8, ptr %0, i64 %i.gi
  %i.gp = getelementptr i8, ptr %i.go, i64 268
  %i.gq = getelementptr i8, ptr %0, i64 %i.gl
  %i.gr = getelementptr i8, ptr %i.gq, i64 268
  %i.gs = getelementptr i8, ptr %0, i64 %i.gc
  %i.gt = getelementptr i8, ptr %i.gs, i64 12
  %i.gu = getelementptr i8, ptr %0, i64 %i.gb
  %i.gv = getelementptr i8, ptr %i.gu, i64 12
  %bound0397 = icmp ult ptr %i.gf, %i.gn
  %bound1398 = icmp ult ptr %i.gk, %i.gh
  %found.conflict399 = and i1 %bound0397, %bound1398
  %bound0401 = icmp ult ptr %i.gf, %i.gr
  %bound1402 = icmp ult ptr %i.gp, %i.gh
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %found.conflict399, %found.conflict403
  %bound0405 = icmp ult ptr %i.gk, %i.gv
  %bound1406 = icmp ult ptr %i.gt, %i.gn
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  br i1 %conflict.rdx408, label %vec.epilog.scalar.ph424.preheader, label %vector.main.loop.iter.check409

vector.main.loop.iter.check409:                   ; preds = %vector.memcheck389
  %min.iters.check410 = icmp ult i64 %i.gd, 16
  br i1 %min.iters.check410, label %vec.epilog.ph426, label %vector.ph411

vector.ph411:                                     ; preds = %vector.main.loop.iter.check409
  %i.gw = and i64 %i.gd, 12
  %n.vec412 = and i64 %i.gd, -16                  ; 4 uses
  %i.gx = sub nsw i64 %i.gb, %n.vec412
  br label %vector.body413

vector.body413:                                   ; preds = %vector.ph411, %vector.body413
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next419, %vector.body413 ] ; 2 uses
  %i.gy = sub i64 %i.gb, %index414                ; 3 uses
  %i.gz = add nsw i64 %i.gy, -1                   ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.ga, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -7
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -15
  %wide.load415 = load <8 x i8>, ptr %i.hb, align 1, !tbaa !49, !alias.scope !235
  %wide.load416 = load <8 x i8>, ptr %i.hc, align 1, !tbaa !49, !alias.scope !235
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gy ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -7
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -15
  store <8 x i8> %wide.load415, ptr %i.he, align 1, !tbaa !49, !alias.scope !236, !noalias !237
  store <8 x i8> %wide.load416, ptr %i.hf, align 1, !tbaa !49, !alias.scope !236, !noalias !237
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.gz ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -14
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 -30
  %wide.load417 = load <8 x i16>, ptr %i.hh, align 2, !tbaa !58, !alias.scope !238
  %wide.load418 = load <8 x i16>, ptr %i.hi, align 2, !tbaa !58, !alias.scope !238
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gy ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -14
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -30
  store <8 x i16> %wide.load417, ptr %i.hk, align 2, !tbaa !58, !alias.scope !239, !noalias !235
  store <8 x i16> %wide.load418, ptr %i.hl, align 2, !tbaa !58, !alias.scope !239, !noalias !235
  %index.next419 = add nuw i64 %index414, 16      ; 2 uses
  %i.hm = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.hm, label %middle.block420, label %vector.body413, !llvm.loop !225

middle.block420:                                  ; preds = %vector.body413
  %cmp.n421 = icmp eq i64 %i.gd, %n.vec412
  br i1 %cmp.n421, label %._crit_edge.i118, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block420
  %min.epilog.iters.check425 = icmp eq i64 %i.gw, 0
  br i1 %min.epilog.iters.check425, label %vec.epilog.scalar.ph424.preheader, label %vec.epilog.ph426, !prof !68

vec.epilog.ph426:                                 ; preds = %vector.main.loop.iter.check409, %vec.epilog.iter.check423
  %vec.epilog.resume.val427 = phi i64 [ %n.vec412, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check409 ]
  %n.vec428 = and i64 %i.gd, -4                   ; 3 uses
  %i.hn = sub nsw i64 %i.gb, %n.vec428
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph426
  %index430 = phi i64 [ %vec.epilog.resume.val427, %vec.epilog.ph426 ], [ %index.next433, %vec.epilog.vector.body429 ] ; 2 uses
  %i.ho = sub i64 %i.gb, %index430                ; 3 uses
  %i.hp = add nsw i64 %i.ho, -1                   ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.ga, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -3
  %wide.load431 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !49, !alias.scope !235
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ho
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -3
  store <4 x i8> %wide.load431, ptr %i.ht, align 1, !tbaa !49, !alias.scope !236, !noalias !237
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.hp
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -6
  %wide.load432 = load <4 x i16>, ptr %i.hv, align 2, !tbaa !58, !alias.scope !238
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ho
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -6
  store <4 x i16> %wide.load432, ptr %i.hx, align 2, !tbaa !58, !alias.scope !239, !noalias !235
  %index.next433 = add nuw i64 %index430, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next433, %n.vec428
  br i1 %i.hy, label %vec.epilog.middle.block434, label %vec.epilog.vector.body429, !llvm.loop !226

vec.epilog.middle.block434:                       ; preds = %vec.epilog.vector.body429
  %cmp.n435 = icmp eq i64 %i.gd, %n.vec428
  br i1 %cmp.n435, label %._crit_edge.i118, label %vec.epilog.scalar.ph424.preheader

vec.epilog.scalar.ph424.preheader:                ; preds = %iter.check422, %vector.memcheck389, %vec.epilog.iter.check423, %vec.epilog.middle.block434
  %indvars.iv.i132.ph = phi i64 [ %i.gb, %iter.check422 ], [ %i.gb, %vector.memcheck389 ], [ %i.gx, %vec.epilog.iter.check423 ], [ %i.hn, %vec.epilog.middle.block434 ]
  br label %vec.epilog.scalar.ph424

._crit_edge.i118:                                 ; preds = %vec.epilog.scalar.ph424, %middle.block420, %vec.epilog.middle.block434, %.preheader.._crit_edge_crit_edge.i116
  %.pre-phi.i119 = phi i64 [ %.pre.i117, %.preheader.._crit_edge_crit_edge.i116 ], [ %i.gc, %middle.block420 ], [ %i.gc, %vec.epilog.middle.block434 ], [ %i.gc, %vec.epilog.scalar.ph424 ] ; 2 uses
  %i.hz = trunc i32 %i.fs to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.pre-phi.i119
  store i8 %i.hz, ptr %i.ib, align 1, !tbaa !49
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.pre-phi.i119
  store i16 50, ptr %i.ic, align 2, !tbaa !58
  %i.id = add i16 %i.fx, 1                        ; 5 uses
  store i16 %i.id, ptr %i.s, align 4, !tbaa !66
  %.not.i120 = icmp samesign ugt i32 %.0102.lcssa, %i.h
  br i1 %.not.i120, label %bb.m, label %bb.l

vec.epilog.scalar.ph424:                          ; preds = %vec.epilog.scalar.ph424.preheader, %vec.epilog.scalar.ph424
  %indvars.iv.i132 = phi i64 [ %indvars.iv.next.i133, %vec.epilog.scalar.ph424 ], [ %indvars.iv.i132.ph, %vec.epilog.scalar.ph424.preheader ] ; 3 uses
  %indvars.iv.next.i133 = add nsw i64 %indvars.iv.i132, -1 ; 4 uses
  %i.ie = getelementptr inbounds i8, ptr %i.ga, i64 %indvars.iv.next.i133
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !49
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.i132
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !49
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv.next.i133
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !58
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i132
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !58
  %.not.not.i134 = icmp sgt i64 %indvars.iv.next.i133, %i.gc
  br i1 %.not.not.i134, label %vec.epilog.scalar.ph424, label %._crit_edge.i118, !llvm.loop !227

bb.l:                                             ; preds = %._crit_edge.i118
  %i.ik = add i8 %i.g, 1
  store i8 %i.ik, ptr %i.f, align 2, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i118
  %i.il = add nsw i32 %i.a, 50
  %i.im = icmp sgt i32 %i.a, 3996
  br i1 %i.im, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.in = zext i16 %i.id to i32
  %i.io = sub nsw i32 256, %i.in                  ; 3 uses
  %.not.i.i122 = icmp eq i16 %i.id, 0
  br i1 %.not.i.i122, label %.thread, label %.lr.ph.i.i123

.lr.ph.i.i123:                                    ; preds = %bb.n
  %wide.trip.count.i.i124 = zext i16 %i.id to i64 ; 3 uses
  %min.iters.check438 = icmp ult i16 %i.id, 8
  br i1 %min.iters.check438, label %scalar.ph437.preheader, label %vector.ph439

vector.ph439:                                     ; preds = %.lr.ph.i.i123
  %n.vec440 = and i64 %wide.trip.count.i.i124, 65528 ; 3 uses
  %i.ip = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.io, i64 0
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph439
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next447, %vector.body441 ] ; 2 uses
  %vec.phi443 = phi <4 x i32> [ %i.ip, %vector.ph439 ], [ %i.iy, %vector.body441 ]
  %vec.phi444 = phi <4 x i32> [ zeroinitializer, %vector.ph439 ], [ %i.iz, %vector.body441 ]
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index442 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %wide.load445 = load <4 x i16>, ptr %i.iq, align 2, !tbaa !58 ; 2 uses
  %wide.load446 = load <4 x i16>, ptr %i.ir, align 2, !tbaa !58 ; 2 uses
  %i.is = lshr <4 x i16> %wide.load445, splat (i16 1)
  %i.it = lshr <4 x i16> %wide.load446, splat (i16 1)
  %i.iu = sub <4 x i16> %wide.load445, %i.is      ; 2 uses
  %i.iv = sub <4 x i16> %wide.load446, %i.it      ; 2 uses
  store <4 x i16> %i.iu, ptr %i.iq, align 2, !tbaa !58
  store <4 x i16> %i.iv, ptr %i.ir, align 2, !tbaa !58
  %i.iw = zext <4 x i16> %i.iu to <4 x i32>
  %i.ix = zext <4 x i16> %i.iv to <4 x i32>
  %i.iy = add <4 x i32> %vec.phi443, %i.iw        ; 2 uses
  %i.iz = add <4 x i32> %vec.phi444, %i.ix        ; 2 uses
  %index.next447 = add nuw i64 %index442, 8       ; 2 uses
  %i.ja = icmp eq i64 %index.next447, %n.vec440
  br i1 %i.ja, label %middle.block448, label %vector.body441, !llvm.loop !228

middle.block448:                                  ; preds = %vector.body441
  %bin.rdx449 = add <4 x i32> %i.iz, %i.iy
  %i.jb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx449) ; 2 uses
  %cmp.n450 = icmp eq i64 %n.vec440, %wide.trip.count.i.i124
  br i1 %cmp.n450, label %.thread, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %.lr.ph.i.i123, %middle.block448
  %indvars.iv.i.i125.ph = phi i64 [ 0, %.lr.ph.i.i123 ], [ %n.vec440, %middle.block448 ]
  %.01213.i.i126.ph = phi i32 [ %i.io, %.lr.ph.i.i123 ], [ %i.jb, %middle.block448 ]
  br label %scalar.ph437

scalar.ph437:                                     ; preds = %scalar.ph437.preheader, %scalar.ph437
  %indvars.iv.i.i125 = phi i64 [ %indvars.iv.next.i.i127, %scalar.ph437 ], [ %indvars.iv.i.i125.ph, %scalar.ph437.preheader ] ; 2 uses
  %.01213.i.i126 = phi i32 [ %i.jh, %scalar.ph437 ], [ %.01213.i.i126.ph, %scalar.ph437.preheader ]
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i.i125 ; 2 uses
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !58 ; 2 uses
  %i.je = lshr i16 %i.jd, 1
  %i.jf = sub i16 %i.jd, %i.je                    ; 2 uses
  store i16 %i.jf, ptr %i.jc, align 2, !tbaa !58
  %i.jg = zext i16 %i.jf to i32
  %i.jh = add i32 %.01213.i.i126, %i.jg           ; 2 uses
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i125, 1 ; 2 uses
  %exitcond.not.i.i128 = icmp eq i64 %indvars.iv.next.i.i127, %wide.trip.count.i.i124
  br i1 %exitcond.not.i.i128, label %.thread, label %scalar.ph437, !llvm.loop !229

.thread:                                          ; preds = %scalar.ph, %scalar.ph344, %scalar.ph437, %middle.block, %middle.block355, %middle.block448, %bb.m, %._crit_edge182, %bb.n, %bb.i, %bb.j, %bb.d, %._crit_edge281, %bb.e
  %.1142.sink = phi i32 [ %i.dw, %scalar.ph344 ], [ %i.jh, %scalar.ph437 ], [ %i.a, %._crit_edge281 ], [ %i.da, %bb.d ], [ %i.dd, %bb.e ], [ %i.eo, %bb.i ], [ %i.ew, %bb.j ], [ %i.a, %._crit_edge182 ], [ %i.il, %bb.m ], [ %i.io, %bb.n ], [ %i.jb, %middle.block448 ], [ %i.dq, %middle.block355 ], [ %i.fj, %middle.block ], [ %i.fp, %scalar.ph ]
  %.2105 = phi i32 [ 1, %scalar.ph344 ], [ 1, %scalar.ph437 ], [ 0, %._crit_edge281 ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %._crit_edge182 ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %middle.block448 ], [ 1, %middle.block355 ], [ 1, %middle.block ], [ 1, %scalar.ph ]
  store i32 %.1142.sink, ptr %5, align 4, !tbaa !42
  ret i32 %.2105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @rescale_dec(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
vector.ph:
  %i.a = alloca [256 x i16], align 16             ; 42 uses
  %i.b = alloca [512 x i16], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !70
  %.fr82 = freeze i8 %i.d                         ; 3 uses
  %.not = icmp eq i8 %.fr82, 0                    ; 2 uses
  %i.e = zext i8 %.fr82 to i32
  %i.f = add nsw i32 %i.e, -1
  %i.g = shl nuw i32 1, %i.f
  %i.h = trunc i32 %i.g to i16
  %i.i = select i1 %.not, i16 1, i16 %i.h
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.a, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.j, align 16, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> %broadcast.splat, ptr %i.k, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.l, align 16, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> %broadcast.splat, ptr %i.m, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.n, align 16, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> %broadcast.splat, ptr %i.o, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.p, align 16, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <8 x i16> %broadcast.splat, ptr %i.q, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.r, align 16, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <8 x i16> %broadcast.splat, ptr %i.s, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.t, align 16, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <8 x i16> %broadcast.splat, ptr %i.u, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.v, align 16, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <8 x i16> %broadcast.splat, ptr %i.w, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.x, align 16, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <8 x i16> %broadcast.splat, ptr %i.y, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.z, align 16, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <8 x i16> %broadcast.splat, ptr %i.aa, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.ab, align 16, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <8 x i16> %broadcast.splat, ptr %i.ac, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.ad, align 16, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <8 x i16> %broadcast.splat, ptr %i.ae, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.af, align 16, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.ah, align 16, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <8 x i16> %broadcast.splat, ptr %i.ai, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.aj, align 16, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <8 x i16> %broadcast.splat, ptr %i.ak, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.al, align 16, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <8 x i16> %broadcast.splat, ptr %i.am, align 16, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.an, align 16, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !66 ; 5 uses
  %i.aq = zext i16 %i.ap to i32
  %.not63 = icmp eq i16 %i.ap, 0                  ; 2 uses
  br i1 %.not63, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %vector.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1292 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %wide.trip.count = zext i16 %i.ap to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.at = icmp ult i16 %i.ap, 4
  br i1 %i.at, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next67.3, %bb.a ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.a ]
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv66
  %i.av = load i16, ptr %i.au, align 2, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv66
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !49
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ay
  store i16 %i.av, ptr %i.az, align 2, !tbaa !58
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next67
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next67
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !49
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.be
  store i16 %i.bb, ptr %i.bf, align 2, !tbaa !58
  %indvars.iv.next67.1 = or disjoint i64 %indvars.iv66, 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next67.1
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next67.1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !49
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bk
  store i16 %i.bh, ptr %i.bl, align 2, !tbaa !58
  %indvars.iv.next67.2 = or disjoint i64 %indvars.iv66, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next67.2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next67.2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !49
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bq
  store i16 %i.bn, ptr %i.br, align 2, !tbaa !58
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.preheader.loopexit.unr-lcssa, label %bb.a, !llvm.loop !240

.preheader.preheader.loopexit.unr-lcssa:          ; preds = %bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next67.3, %.preheader.preheader.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv66.epil = phi i64 [ %indvars.iv66.epil.init, %.epil.preheader ], [ %indvars.iv.next67.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv66.epil
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv66.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !49
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bw
  store i16 %i.bt, ptr %i.bx, align 2, !tbaa !58
  %indvars.iv.next67.epil = add nuw nsw i64 %indvars.iv66.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.preheader, label %bb.b, !llvm.loop !241

.preheader.preheader:                             ; preds = %.preheader.preheader.loopexit.unr-lcssa, %bb.b, %vector.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %indvars.iv70 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next71.1, %.preheader ] ; 4 uses
  %.159 = phi i16 [ 0, %.preheader.preheader ], [ %i.ch, %.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv70
  %i.bz = load i16, ptr %i.by, align 4, !tbaa !58 ; 2 uses
  %.idx78 = shl nuw nsw i64 %indvars.iv70, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx78 ; 2 uses
  store i16 %i.bz, ptr %i.ca, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i16 %.159, ptr %i.cb, align 2, !tbaa !58
  %i.cc = add i16 %i.bz, %.159                    ; 2 uses
  %indvars.iv.next71 = or disjoint i64 %indvars.iv70, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next71
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !58 ; 2 uses
  %.idx78.1 = shl nuw nsw i64 %indvars.iv.next71, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx78.1 ; 2 uses
  store i16 %i.ce, ptr %i.cf, align 4, !tbaa !58
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %i.cc, ptr %i.cg, align 2, !tbaa !58
  %i.ch = add i16 %i.ce, %i.cc
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %exitcond72.not.1 = icmp eq i64 %indvars.iv.next71.1, 256
  br i1 %exitcond72.not.1, label %bb.c, label %.preheader, !llvm.loop !242

bb.c:                                             ; preds = %.preheader
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = add i8 %.fr82, -1                       ; 3 uses
  store i8 %i.ci, ptr %i.c, align 1, !tbaa !70
  %.not55 = icmp eq i8 %i.ci, 0
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -1
  %spec.select = select i1 %.not55, i32 0, i32 %i.ck
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.cl = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.c ]
  %i.cm = sub nsw i32 256, %i.aq
  %i.cn = shl i32 %i.cm, %i.cl                    ; 2 uses
  br i1 %.not63, label %._crit_edge, label %.lr.ph62

.lr.ph62:                                         ; preds = %.thread
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 268
  %wide.trip.count76 = zext i16 %i.ap to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph62, %bb.e
  %indvars.iv73 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next74, %bb.e ] ; 4 uses
  %.261 = phi i32 [ %i.cn, %.lr.ph62 ], [ %i.cw, %bb.e ]
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv73 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !58 ; 2 uses
  %i.ct = lshr i16 %i.cs, 1
  %i.cu = sub i16 %i.cs, %i.ct                    ; 2 uses
  store i16 %i.cu, ptr %i.cr, align 2, !tbaa !58
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add i32 %.261, %i.cv                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv73
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !49
  %i.cz = zext i8 %i.cy to i64
  %.idx = shl nuw nsw i64 %i.cz, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.idx79 = shl nuw nsw i64 %indvars.iv73, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx79
  %i.dc = load <2 x i16>, ptr %i.da, align 4, !tbaa !58
  store <2 x i16> %i.dc, ptr %i.db, align 2, !tbaa !58
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge, label %bb.e, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.e, %.thread
  %.2.lcssa = phi i32 [ %i.cn, %.thread ], [ %i.cw, %bb.e ]
  %i.dd = trunc i32 %.2.lcssa to i16
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !69
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dh
  store i16 %i.dd, ptr %i.di, align 2, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_run_p(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, -2147483648) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 -536870912, 536870912) %7, i32 noundef range(i32 -536870912, 536870912) %8, ptr nofree noundef nonnull captures(none) %9, ptr nofree noundef nonnull captures(none) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr nofree noundef nonnull writeonly captures(none) %14, ptr nofree noundef nonnull writeonly captures(none) %15) unnamed_addr #7 {
bb.a:
  switch i32 %1, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader243
    i32 2, label %.preheader246
    i32 3, label %.preheader249
    i32 4, label %.preheader252
    i32 5, label %.preheader255
  ]

.preheader255:                                    ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = xor i32 %11, -1
  %i.c = shl nsw i32 %3, 4                        ; 2 uses
  %i.d = add nsw i32 %13, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = add nsw i32 %12, %i.c
  br label %bb.ag

.preheader252:                                    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = xor i32 %11, -1
  %i.i = shl nsw i32 %3, 4                        ; 2 uses
  %i.j = add nsw i32 %13, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = add nsw i32 %12, %i.i
  br label %bb.y

.preheader249:                                    ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = shl nsw i32 %3, 4                        ; 2 uses
  %i.o = add nsw i32 %13, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = add nsw i32 %12, %i.n
  br label %bb.t

.preheader246:                                    ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = shl nsw i32 %3, 4                        ; 2 uses
  %i.t = add nsw i32 %13, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = add nsw i32 %12, %i.s
  br label %bb.n

.preheader243:                                    ; preds = %bb.a
  %i.w = xor i32 %11, -1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.y = shl nsw i32 %3, 4                        ; 2 uses
  %i.z = add nsw i32 %13, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = add nsw i32 %12, %i.y
  %.pre282 = load i32, ptr %9, align 4, !tbaa !42
  br label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ad = shl nsw i32 %3, 4                       ; 2 uses
  %i.ae = add nsw i32 %13, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = add nsw i32 %12, %i.ad
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.in267 = phi i32 [ %2, %.preheader ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ah = add nsw i32 %.in267, -1
  %i.ai = load i32, ptr %10, align 4, !tbaa !42   ; 2 uses
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !59
  %.not238 = icmp ult i32 %i.ai, %i.aj
  br i1 %.not238, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ak = mul i32 %i.ai, %7
  %i.al = load i32, ptr %9, align 4, !tbaa !42
  %i.am = add i32 %i.al, %i.ak
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.an
  store i32 %4, ptr %i.ao, align 4, !tbaa !42
  %i.ap = load i32, ptr %9, align 4, !tbaa !42
  %i.aq = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.aq, ptr %9, align 4, !tbaa !42
  %.not239 = icmp ult i32 %i.aq, %i.ae
  br i1 %.not239, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !51
  %.not240 = icmp ult i32 %i.aq, %i.ar
  br i1 %.not240, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.ag, ptr %9, align 4, !tbaa !42
  %i.as = load i32, ptr %10, align 4, !tbaa !42
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %10, align 4, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = icmp samesign ugt i32 %.in267, 1
  br i1 %i.au, label %bb.b, label %.loopexit, !llvm.loop !244

bb.g:                                             ; preds = %.preheader243, %bb.m
  %i.av = phi i32 [ %.pre282, %.preheader243 ], [ %i.bn, %bb.m ] ; 2 uses
  %.in266 = phi i32 [ %2, %.preheader243 ], [ %i.aw, %bb.m ] ; 2 uses
  %i.aw = add nsw i32 %.in266, -1
  %i.ax = icmp eq i32 %i.av, 0
  %.pre283 = load i32, ptr %10, align 4, !tbaa !42 ; 3 uses
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp eq i32 %.pre283, 0
  br i1 %i.ay, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0195 = phi i32 [ -1, %bb.g ], [ %i.w, %bb.h ]
  %i.az = load i32, ptr %i.x, align 4, !tbaa !59
  %.not235 = icmp ult i32 %.pre283, %i.az
  br i1 %.not235, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ba = mul i32 %.pre283, %7
  %i.bb = add i32 %i.ba, %i.av                    ; 2 uses
  %i.bc = add i32 %i.bb, %.0195
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42 ; 2 uses
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !42
  %i.bi = load i32, ptr %9, align 4, !tbaa !42
  %i.bj = add i32 %i.bi, 1                        ; 4 uses
  store i32 %i.bj, ptr %9, align 4, !tbaa !42
  %.not236 = icmp ult i32 %i.bj, %i.z
  br i1 %.not236, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr %i.aa, align 8, !tbaa !51
  %.not237 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not237, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %i.ab, ptr %9, align 4, !tbaa !42
  %i.bl = load i32, ptr %10, align 4, !tbaa !42
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %10, align 4, !tbaa !42
  %.pre = load i32, ptr %9, align 4, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = phi i32 [ %.pre, %bb.l ], [ %i.bj, %bb.k ]
  %i.bo = icmp samesign ugt i32 %.in266, 1
  br i1 %i.bo, label %bb.g, label %.loopexit, !llvm.loop !245

bb.n:                                             ; preds = %.preheader246, %bb.s
  %.in265 = phi i32 [ %2, %.preheader246 ], [ %i.bp, %bb.s ] ; 2 uses
  %i.bp = add nsw i32 %.in265, -1
  %i.bq = load i32, ptr %10, align 4, !tbaa !42   ; 4 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !59
  %.not232 = icmp ult i32 %i.bq, %i.bs
  br i1 %.not232, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bt = add i32 %i.bq, -1
  %i.bu = mul i32 %i.bt, %7
  %i.bv = load i32, ptr %9, align 4, !tbaa !42    ; 2 uses
  %i.bw = add i32 %i.bv, %i.bu
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !42 ; 2 uses
  %i.ca = mul i32 %i.bq, %7
  %i.cb = add i32 %i.bv, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cc
  store i32 %i.bz, ptr %i.cd, align 4, !tbaa !42
  %i.ce = load i32, ptr %9, align 4, !tbaa !42
  %i.cf = add i32 %i.ce, 1                        ; 3 uses
  store i32 %i.cf, ptr %9, align 4, !tbaa !42
  %.not233 = icmp ult i32 %i.cf, %i.t
  br i1 %.not233, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = load i32, ptr %i.u, align 8, !tbaa !51
  %.not234 = icmp ult i32 %i.cf, %i.cg
  br i1 %.not234, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.v, ptr %9, align 4, !tbaa !42
  %i.ch = load i32, ptr %10, align 4, !tbaa !42
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %10, align 4, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cj = icmp samesign ugt i32 %.in265, 1
  br i1 %i.cj, label %bb.n, label %.loopexit, !llvm.loop !246

bb.t:                                             ; preds = %.preheader249, %bb.x
  %.in264 = phi i32 [ %2, %.preheader249 ], [ %i.ck, %bb.x ] ; 2 uses
  %i.ck = add nsw i32 %.in264, -1
  %i.cl = load i32, ptr %10, align 4, !tbaa !42   ; 3 uses
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !59
  %.not229 = icmp ult i32 %i.cl, %i.cm
  br i1 %.not229, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.cn = mul i32 %i.cl, %8
  %i.co = load i32, ptr %9, align 4, !tbaa !42    ; 2 uses
  %i.cp = add i32 %i.co, %i.cn
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !42 ; 2 uses
  %i.ct = mul i32 %i.cl, %7
  %i.cu = add i32 %i.co, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cv
  store i32 %i.cs, ptr %i.cw, align 4, !tbaa !42
  %i.cx = load i32, ptr %9, align 4, !tbaa !42
  %i.cy = add i32 %i.cx, 1                        ; 3 uses
  store i32 %i.cy, ptr %9, align 4, !tbaa !42
  %.not230 = icmp ult i32 %i.cy, %i.o
  br i1 %.not230, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = load i32, ptr %i.p, align 8, !tbaa !51
  %.not231 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not231, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 %i.q, ptr %9, align 4, !tbaa !42
  %i.da = load i32, ptr %10, align 4, !tbaa !42
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %10, align 4, !tbaa !42
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dc = icmp samesign ugt i32 %.in264, 1
  br i1 %i.dc, label %bb.t, label %.loopexit, !llvm.loop !247

bb.y:                                             ; preds = %.preheader252, %bb.af
  %.in263 = phi i32 [ %2, %.preheader252 ], [ %i.dd, %bb.af ] ; 2 uses
  %i.dd = add nsw i32 %.in263, -1
  %i.de = load i32, ptr %10, align 4, !tbaa !42   ; 5 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = load i32, ptr %i.g, align 4, !tbaa !59
  %.not222 = icmp ult i32 %i.de, %i.dg
  br i1 %.not222, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i32, ptr %9, align 4, !tbaa !42    ; 3 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dj = icmp eq i32 %i.de, 1
  br i1 %i.dj, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1 = phi i32 [ -1, %bb.aa ], [ %i.h, %bb.ab ]  ; 2 uses
  %i.dk = add i32 %i.de, -1
  %i.dl = mul i32 %i.dk, %7
  %i.dm = add i32 %i.dh, %i.dl                    ; 2 uses
  %i.dn = shl i32 %i.dm, 2                        ; 3 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !49
  %i.dr = mul i32 %i.de, %7
  %i.ds = add i32 %i.dh, %i.dr                    ; 2 uses
  %i.dt = add i32 %.1, %i.ds
  %i.du = shl i32 %i.dt, 2                        ; 3 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !49
  %.tr225 = add i8 %i.dx, %i.dq
  %i.dy = add i32 %.1, %i.dm
  %i.dz = shl i32 %i.dy, 2                        ; 3 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !49
  %i.ed = or disjoint i32 %i.dn, 1
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !49
  %i.eh = or disjoint i32 %i.du, 1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !49
  %.tr223 = add i8 %i.ek, %i.eg
  %i.el = or disjoint i32 %i.dz, 1
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !49
  %i.ep = or disjoint i32 %i.dn, 2
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !49
  %i.et = or disjoint i32 %i.du, 2
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !49
  %.tr = add i8 %i.ew, %i.es
  %i.ex = or disjoint i32 %i.dz, 2
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !49
  %.narrow = sub i8 %.tr, %i.fa
  %i.fb = zext i8 %.narrow to i32
  %i.fc = shl nuw nsw i32 %i.fb, 16
  %.narrow224 = sub i8 %.tr223, %i.eo
  %i.fd = zext i8 %.narrow224 to i32
  %i.fe = shl nuw nsw i32 %i.fd, 8
  %i.ff = or disjoint i32 %i.fc, %i.fe
  %.narrow226 = sub i8 %.tr225, %i.ec
  %i.fg = zext i8 %.narrow226 to i32
  %i.fh = or disjoint i32 %i.ff, %i.fg            ; 2 uses
  %i.fi = zext i32 %i.ds to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fi
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !42
  %i.fk = load i32, ptr %9, align 4, !tbaa !42
  %i.fl = add i32 %i.fk, 1                        ; 3 uses
  store i32 %i.fl, ptr %9, align 4, !tbaa !42
  %.not227 = icmp ult i32 %i.fl, %i.j
  br i1 %.not227, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fm = load i32, ptr %i.k, align 8, !tbaa !51
  %.not228 = icmp ult i32 %i.fl, %i.fm
  br i1 %.not228, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 %i.l, ptr %9, align 4, !tbaa !42
  %i.fn = load i32, ptr %10, align 4, !tbaa !42
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %10, align 4, !tbaa !42
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.fp = icmp samesign ugt i32 %.in263, 1
  br i1 %i.fp, label %bb.y, label %.loopexit, !llvm.loop !248

bb.ag:                                            ; preds = %.preheader255, %bb.an
  %.in = phi i32 [ %2, %.preheader255 ], [ %i.fq, %bb.an ] ; 2 uses
  %i.fq = add nsw i32 %.in, -1
  %i.fr = load i32, ptr %10, align 4, !tbaa !42   ; 5 uses
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = load i32, ptr %i.a, align 4, !tbaa !59
  %.not = icmp ult i32 %i.fr, %i.ft
  br i1 %.not, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.fu = load i32, ptr %9, align 4, !tbaa !42    ; 3 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fw = icmp eq i32 %i.fr, 1
  br i1 %i.fw, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2 = phi i32 [ -1, %bb.ai ], [ %i.b, %bb.aj ]
  %i.fx = add i32 %i.fr, -1
  %i.fy = mul i32 %i.fx, %7
  %i.fz = add i32 %i.fu, %i.fy
  %i.ga = add i32 %i.fz, %.2
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !42 ; 2 uses
  %i.ge = mul i32 %i.fr, %7
  %i.gf = add i32 %i.fu, %i.ge
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.gg
  store i32 %i.gd, ptr %i.gh, align 4, !tbaa !42
  %i.gi = load i32, ptr %9, align 4, !tbaa !42
  %i.gj = add i32 %i.gi, 1                        ; 3 uses
  store i32 %i.gj, ptr %9, align 4, !tbaa !42
  %.not220 = icmp ult i32 %i.gj, %i.d
  br i1 %.not220, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gk = load i32, ptr %i.e, align 8, !tbaa !51
  %.not221 = icmp ult i32 %i.gj, %i.gk
  br i1 %.not221, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i32 %i.f, ptr %9, align 4, !tbaa !42
  %i.gl = load i32, ptr %10, align 4, !tbaa !42
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %10, align 4, !tbaa !42
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gn = icmp samesign ugt i32 %.in, 1
  br i1 %i.gn, label %bb.ag, label %.loopexit, !llvm.loop !249

.loopexit:                                        ; preds = %bb.an, %bb.af, %bb.x, %bb.s, %bb.m, %bb.f, %bb.a
  %.6 = phi i32 [ %4, %bb.a ], [ %4, %bb.f ], [ %i.bf, %bb.m ], [ %i.bz, %bb.s ], [ %i.cs, %bb.x ], [ %i.fh, %bb.af ], [ %i.gd, %bb.an ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !31
  %i.gq = icmp eq i32 %i.gp, 16                   ; 2 uses
  %. = select i1 %i.gq, i32 2, i32 4
  %.310 = select i1 %i.gq, i32 16, i32 18
  %i.gr = lshr i32 %.6, %.
  %i.gs = lshr i32 %.6, %.310
  %.sink = and i32 %i.gr, 4032
  store i32 %.sink, ptr %15, align 4, !tbaa !42
  %storemerge = and i32 %i.gs, 63
  store i32 %storemerge, ptr %14, align 4, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %bb.ag, %bb.ah, %bb.ab, %bb.y, %bb.z, %bb.t, %bb.n, %bb.o, %bb.i, %bb.h, %bb.b, %.loopexit
  %.2198 = phi i32 [ 0, %.loopexit ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.n ], [ -1094995529, %bb.b ], [ -1094995529, %bb.t ], [ -1094995529, %bb.i ], [ -1094995529, %bb.h ], [ -1094995529, %bb.o ], [ -1094995529, %bb.z ], [ -1094995529, %bb.y ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.aj ]
  ret i32 %.2198
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"AVRational", !8, i64 0, !8, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !11, i64 0}
!20 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"p2 _ZTS15AVFrameSideData", !27, i64 0}
!29 = !{!"AVCodecContext", !12, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !14, i64 40, !11, i64 48, !15, i64 56, !8, i64 64, !8, i64 68, !16, i64 72, !8, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !17, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !20, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !18, i64 428, !18, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !8, i64 488, !8, i64 492, !16, i64 496, !16, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !22, i64 536, !11, i64 544, !23, i64 552, !23, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !24, i64 728, !16, i64 736, !8, i64 744, !8, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !8, i64 784, !8, i64 788, !15, i64 792, !8, i64 800, !8, i64 804, !15, i64 808, !11, i64 816, !15, i64 824, !26, i64 832, !8, i64 840, !28, i64 848, !8, i64 856, !8, i64 860}
!30 = !{!29, !11, i64 32}
!31 = !{!29, !8, i64 648}
!32 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!33 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!34 = !{!"RangeCoder", !8, i64 0, !8, i64 4, !8, i64 8}
!35 = !{!"RunModel3", !8, i64 0, !7, i64 4, !7, i64 1028, !7, i64 1540}
!36 = !{!"FillModel3", !8, i64 0, !7, i64 4, !7, i64 24, !7, i64 34}
!37 = !{!"SCPRContext", !8, i64 0, !32, i64 8, !32, i64 16, !33, i64 24, !34, i64 48, !7, i64 60, !7, i64 13418556, !7, i64 13418724, !7, i64 13424892, !7, i64 13425920, !7, i64 13426948, !7, i64 13426972, !7, i64 13427244, !8, i64 13431348, !8, i64 13431352, !8, i64 13431356, !26, i64 13431360, !8, i64 13431368, !8, i64 13431372, !7, i64 13431376, !7, i64 35992144, !35, i64 36001576, !35, i64 36003148, !36, i64 36004720, !7, i64 36004788, !7, i64 36005316, !7, i64 36011532, !11, i64 36011968, !11, i64 36011976}
!38 = !{!37, !11, i64 36011968}
!39 = !{!37, !11, i64 36011976}
!40 = !{!37, !8, i64 13431372}
!41 = !{!37, !8, i64 13431368}
!42 = !{!8, !8, i64 0}
!43 = !{!37, !8, i64 13431356}
!44 = !{!37, !26, i64 13431360}
!45 = !{!37, !32, i64 8}
!46 = !{!37, !32, i64 16}
!47 = !{!33, !16, i64 0}
!48 = !{!33, !16, i64 8}
!49 = !{!7, !7, i64 0}
!50 = !{!16, !16, i64 0}
!51 = !{!29, !8, i64 112}
!52 = !{!34, !8, i64 0}
!53 = !{!34, !8, i64 8}
!54 = !{!"short", !7, i64 0}
!55 = !{!"PixelModel3", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !54, i64 4, !8, i64 8, !7, i64 12, !7, i64 268, !7, i64 780, !7, i64 1292, !7, i64 1804}
!56 = !{!55, !7, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!54, !54, i64 0}
!59 = !{!29, !8, i64 116}
!60 = !{!34, !8, i64 4}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"PixelModel", !7, i64 0, !7, i64 1024, !8, i64 1088}
!64 = !{!63, !8, i64 1088}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!55, !54, i64 4}
!67 = !{!55, !7, i64 2}
!68 = !{!"branch_weights", i32 4, i32 12}
!69 = !{!55, !7, i64 1}
!70 = !{!55, !7, i64 3}
!71 = !{!29, !8, i64 136}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !57}
!75 = distinct !{!75, !57}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !57}
!78 = distinct !{null, null}
!79 = distinct !{!79, !57, !61, !62}
!80 = distinct !{!80, !57, !61, !62}
!81 = distinct !{!81, !57, !61, !62}
!82 = distinct !{!82, !57, !61, !62}
!83 = distinct !{!83, !57}
!84 = distinct !{!84, !57, !61, !62}
!85 = distinct !{!85, !57}
!86 = distinct !{!86, !57, !61, !62}
!87 = distinct !{!87, !57, !61, !62}
!88 = distinct !{!88, !57}
!89 = distinct !{!89, !57}
!90 = distinct !{!90, !57, !61, !62}
!91 = distinct !{!91, !57}
!92 = distinct !{!92, !57}
!93 = distinct !{!93, !57, !118}
!94 = distinct !{!94, !57}
!95 = distinct !{!95, !57}
!96 = distinct !{!96, !57}
!97 = distinct !{!97, !57}
!98 = distinct !{!98, !57}
!99 = distinct !{!99, !57}
!100 = distinct !{!100, !57}
!101 = distinct !{!101, !57, !118}
!102 = distinct !{!102, !57, !61, !62}
!103 = distinct !{!103, !57, !62, !61}
!104 = distinct !{!104, !57}
!105 = distinct !{!105, !57}
!106 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !25, i64 48, !8, i64 56, !15, i64 64, !15, i64 72, !11, i64 80, !23, i64 88, !17, i64 96}
!107 = !{!106, !16, i64 24}
!108 = !{!106, !8, i64 32}
!109 = !{!33, !16, i64 16}
!110 = !{!37, !8, i64 0}
!111 = !{!"p2 omnipotent char", !27, i64 0}
!112 = !{!"p2 _ZTS11AVBufferRef", !27, i64 0}
!113 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!114 = !{!"AVFrame", !7, i64 0, !7, i64 64, !111, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !8, i64 160, !11, i64 168, !8, i64 176, !8, i64 180, !7, i64 184, !112, i64 248, !8, i64 256, !28, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !15, i64 304, !113, i64 312, !8, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !11, i64 376, !20, i64 384, !15, i64 408, !8, i64 416}
!115 = !{!114, !8, i64 276}
!116 = !{!37, !8, i64 13431352}
!117 = !{!37, !8, i64 13431348}
!118 = !{!"llvm.loop.unswitch.partial.disable"}
!119 = !{!37, !8, i64 48}
!120 = !{!15, !15, i64 0}
!121 = !{!114, !8, i64 120}
!122 = !{!32, !32, i64 0}
!123 = distinct !{!123, !57}
!124 = distinct !{!124, !57}
!125 = distinct !{!125, !57, !61, !62}
!126 = distinct !{!126, !57}
!127 = distinct !{null}
!128 = distinct !{!128, !57, !61, !62}
!129 = distinct !{!129, !57}
!130 = distinct !{!130, !57, !61, !62}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, !57}
!133 = distinct !{!133, !57}
!134 = distinct !{!134, !57}
!135 = distinct !{!135, !57}
!136 = distinct !{!136, !57}
!137 = distinct !{!137, !57}
!138 = distinct !{!138, !57}
!139 = distinct !{!139, !57, !61, !62}
!140 = distinct !{!140, !57}
!141 = distinct !{!141, !57, !61, !62}
!142 = distinct !{!142, !57, !61, !62}
!143 = distinct !{!143, !65}
!144 = distinct !{!144, !57, !61}
!145 = distinct !{!145, !57}
!146 = !{!"branch_weights", i32 4, i32 28}
!147 = distinct !{!147, !57}
!148 = distinct !{!148, !57}
!149 = distinct !{!149, !57}
!150 = distinct !{!150, !57}
!151 = distinct !{!151, !57}
!152 = distinct !{!152, !57}
!153 = distinct !{!153, i1 false, !"LVerDomain"}
!154 = distinct !{!154, !153}
!155 = distinct !{!155, !153}
!156 = distinct !{!156, !153}
!157 = distinct !{!157, !57, !61, !62}
!158 = distinct !{!158, !57, !61, !62}
!159 = distinct !{!159, !57, !61}
!160 = distinct !{!160, !57, !61, !62}
!161 = distinct !{!161, !57, !62, !61}
!162 = distinct !{!162, !57}
!163 = distinct !{!163, !57}
!164 = distinct !{!164, !57}
!165 = distinct !{!165, !57}
!166 = distinct !{!166, !57}
!167 = distinct !{!167, !57}
!168 = distinct !{!168, !57}
!169 = distinct !{!169, !57}
!170 = distinct !{!170, !57, !61, !62}
!171 = distinct !{!171, !57, !62, !61}
!172 = distinct !{!172, !57}
!173 = distinct !{!173, !57}
!174 = distinct !{!174, !65}
!175 = distinct !{!175, !57}
!176 = distinct !{!176, !57}
!177 = distinct !{!177, i1 false, !"LVerDomain"}
!178 = distinct !{!178, !177}
!179 = distinct !{!179, !177}
!180 = distinct !{!180, !57, !61, !62}
!181 = distinct !{!181, !57, !61}
!182 = distinct !{!182, !57, !61, !62}
!183 = distinct !{!183, !57, !61, !62}
!184 = distinct !{!184, !57, !62, !61}
!185 = distinct !{!185, !57, !61, !62}
!186 = distinct !{!186, !57, !62, !61}
!187 = distinct !{!187, !57, !61, !62}
!188 = distinct !{!188, !57, !62, !61}
!189 = distinct !{!189, !57}
!190 = distinct !{!190, !57}
!191 = distinct !{!191, !57}
!192 = distinct !{!192, !57, !61, !62}
!193 = distinct !{!193, !57, !62, !61}
!194 = distinct !{!194, !57}
!195 = distinct !{!195, !57}
!196 = distinct !{!196, !57}
!197 = distinct !{!197, !57}
!198 = distinct !{!198, !57}
!199 = !{!11, !11, i64 0}
!200 = !{!154}
!201 = !{!155}
!202 = !{!156}
!203 = !{!55, !8, i64 8}
!204 = !{!178}
!205 = !{!179}
!206 = distinct !{!206, !57}
!207 = distinct !{!207, !57}
!208 = distinct !{!208, i1 false, !"LVerDomain"}
!209 = distinct !{!209, !208}
!210 = distinct !{!210, !208}
!211 = distinct !{!211, !208}
!212 = distinct !{!212, !208}
!213 = distinct !{!213, !57, !61, !62}
!214 = distinct !{!214, !57, !61, !62}
!215 = distinct !{!215, !57, !61}
!216 = distinct !{!216, !57, !61, !62}
!217 = distinct !{!217, !57, !62, !61}
!218 = distinct !{!218, !57, !61, !62}
!219 = distinct !{!219, !57, !62, !61}
!220 = distinct !{!220, i1 false, !"LVerDomain"}
!221 = distinct !{!221, !220}
!222 = distinct !{!222, !220}
!223 = distinct !{!223, !220}
!224 = distinct !{!224, !220}
!225 = distinct !{!225, !57, !61, !62}
!226 = distinct !{!226, !57, !61, !62}
!227 = distinct !{!227, !57, !61}
!228 = distinct !{!228, !57, !61, !62}
!229 = distinct !{!229, !57, !62, !61}
!230 = !{!209}
!231 = !{!210}
!232 = !{!212, !211}
!233 = !{!211}
!234 = !{!212}
!235 = !{!221}
!236 = !{!222}
!237 = !{!224, !223}
!238 = !{!223}
!239 = !{!224}
!240 = distinct !{!240, !57}
!241 = distinct !{!241, !65}
!242 = distinct !{!242, !57}
!243 = distinct !{!243, !57}
!244 = distinct !{!244, !57}
!245 = distinct !{!245, !57}
!246 = distinct !{!246, !57}
!247 = distinct !{!247, !57}
!248 = distinct !{!248, !57}
!249 = distinct !{!249, !57}
end_hunk_2
