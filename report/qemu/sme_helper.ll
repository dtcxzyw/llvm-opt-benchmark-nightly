Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_h:bb.a
  br i1 %i.dn, label %.loopexit199.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph237
  %.not = icmp slt i32 %i.dm, %i.l
  br i1 %.not, label %iter.check546, label %.loopexit199.sink.split

iter.check546:                                    ; preds = %bb.e
  %min.iters.check532 = icmp ult i32 %indvars.iv279, 4
  %or.cond561.a = or i1 %min.iters.check532, %diff.check534
  br i1 %or.cond561.a, label %.lr.ph233.preheader, label %vector.main.loop.iter.check535

vector.main.loop.iter.check535:                   ; preds = %iter.check546
  %min.iters.check536 = icmp ult i32 %indvars.iv279, 16
  br i1 %min.iters.check536, label %vec.epilog.ph550, label %vector.ph537

vector.ph537:                                     ; preds = %vector.main.loop.iter.check535
  %i.do = and i64 %i.df, 12
  %n.vec538 = and i64 %i.df, 4294967280           ; 4 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.ph537, %vector.body539
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next543, %vector.body539 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %index540 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load541.a = load <8 x i16>, ptr %i.dp, align 2
  %wide.load542 = load <8 x i16>, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %index540 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <8 x i16> %wide.load541.a, ptr %i.dr, align 2
  store <8 x i16> %wide.load542, ptr %i.ds, align 2
  %index.next543 = add nuw i64 %index540, 16      ; 2 uses
  %i.dt = icmp eq i64 %index.next543, %n.vec538
  br i1 %i.dt, label %middle.block544, label %vector.body539, !llvm.loop !1003

middle.block544:                                  ; preds = %vector.body539
  %cmp.n545 = icmp eq i64 %n.vec538, %i.df
  br i1 %cmp.n545, label %iter.check516, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block544
  %min.epilog.iters.check549 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check549, label %.lr.ph233.preheader, label %vec.epilog.ph550, !prof !56

vec.epilog.ph550:                                 ; preds = %vector.main.loop.iter.check535, %vec.epilog.iter.check547
  %vec.epilog.resume.val551 = phi i64 [ %n.vec538, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check535 ]
  %n.vec552 = and i64 %i.df, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body553

vec.epilog.vector.body553:                        ; preds = %vec.epilog.vector.body553, %vec.epilog.ph550
  %index554 = phi i64 [ %vec.epilog.resume.val551, %vec.epilog.ph550 ], [ %index.next556, %vec.epilog.vector.body553 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %index554
  %wide.load555 = load <4 x i16>, ptr %i.du, align 2
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %index554
  store <4 x i16> %wide.load555, ptr %i.dv, align 2
  %index.next556 = add nuw i64 %index554, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next556, %n.vec552
  br i1 %i.dw, label %vec.epilog.middle.block557, label %vec.epilog.vector.body553, !llvm.loop !1004

vec.epilog.middle.block557:                       ; preds = %vec.epilog.vector.body553
  %cmp.n558 = icmp eq i64 %n.vec552, %i.df
  br i1 %cmp.n558, label %iter.check516, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %iter.check546, %vec.epilog.iter.check547, %vec.epilog.middle.block557
  %indvars.iv276.ph = phi i64 [ 0, %iter.check546 ], [ %n.vec538, %vec.epilog.iter.check547 ], [ %n.vec552, %vec.epilog.middle.block557 ] ; 3 uses
  %xtraiter580 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  br i1 %lcmp.mod581.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol

.lr.ph233.prol:                                   ; preds = %.lr.ph233.preheader, %.lr.ph233.prol
  %indvars.iv276.prol = phi i64 [ %indvars.iv.next277.prol, %.lr.ph233.prol ], [ %indvars.iv276.ph, %.lr.ph233.preheader ] ; 3 uses
  %prol.iter582 = phi i64 [ %prol.iter582.next, %.lr.ph233.prol ], [ 0, %.lr.ph233.preheader ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv276.prol
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv276.prol
  store i16 %i.dy, ptr %i.dz, align 2
  %indvars.iv.next277.prol = add nuw nsw i64 %indvars.iv276.prol, 1 ; 2 uses
  %prol.iter582.next = add i64 %prol.iter582, 1   ; 2 uses
  %prol.iter582.cmp.not = icmp eq i64 %prol.iter582.next, %xtraiter580
  br i1 %prol.iter582.cmp.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol, !llvm.loop !1005

.lr.ph233.prol.loopexit:                          ; preds = %.lr.ph233.prol, %.lr.ph233.preheader
  %indvars.iv276.unr = phi i64 [ %indvars.iv276.ph, %.lr.ph233.preheader ], [ %indvars.iv.next277.prol, %.lr.ph233.prol ]
  %i.ea = sub nsw i64 %indvars.iv276.ph, %i.df
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %iter.check516, label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233
  %indvars.iv276 = phi i64 [ %indvars.iv.next277.3, %.lr.ph233 ], [ %indvars.iv276.unr, %.lr.ph233.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv276
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv276
  store i16 %i.ed, ptr %i.ee, align 2
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next277
  store i16 %i.eg, ptr %i.eh, align 2
  %indvars.iv.next277.1 = add nuw nsw i64 %indvars.iv276, 2 ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277.1
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next277.1
  store i16 %i.ej, ptr %i.ek, align 2
  %indvars.iv.next277.2 = add nuw nsw i64 %indvars.iv276, 3 ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277.2
  %i.em = load i16, ptr %i.el, align 2
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next277.2
  store i16 %i.em, ptr %i.en, align 2
  %indvars.iv.next277.3 = add nuw nsw i64 %indvars.iv276, 4 ; 2 uses
  %exitcond282.not.3 = icmp eq i64 %indvars.iv.next277.3, %i.df
  br i1 %exitcond282.not.3, label %iter.check516, label %.lr.ph233, !llvm.loop !1006

iter.check516:                                    ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233, %vec.epilog.middle.block557, %middle.block544
  %min.iters.check502 = icmp ult i32 %i.dc, 3
  %or.cond562.a = or i1 %min.iters.check502, %diff.check504
  br i1 %or.cond562.a, label %.lr.ph235.preheader, label %vector.main.loop.iter.check505

vector.main.loop.iter.check505:                   ; preds = %iter.check516
  %min.iters.check506 = icmp ult i32 %i.dc, 15
  br i1 %min.iters.check506, label %vec.epilog.ph520, label %vector.ph507

vector.ph507:                                     ; preds = %vector.main.loop.iter.check505
  %i.eo = and i64 %i.de, 12
  %n.vec508 = and i64 %i.de, 8589934576           ; 4 uses
  %i.ep = add nuw nsw i64 %n.vec508, %i.df
  br label %vector.body509

vector.body509:                                   ; preds = %vector.ph507, %vector.body509
  %index510 = phi i64 [ 0, %vector.ph507 ], [ %index.next513, %vector.body509 ] ; 2 uses
  %i.eq = add nuw i64 %index510, %i.df            ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load511.a = load <8 x i16>, ptr %i.er, align 2
  %wide.load512 = load <8 x i16>, ptr %i.es, align 2
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.eq ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <8 x i16> %wide.load511.a, ptr %i.et, align 2
  store <8 x i16> %wide.load512, ptr %i.eu, align 2
  %index.next513 = add nuw i64 %index510, 16      ; 2 uses
  %i.ev = icmp eq i64 %index.next513, %n.vec508
  br i1 %i.ev, label %middle.block514, label %vector.body509, !llvm.loop !1007

middle.block514:                                  ; preds = %vector.body509
  %cmp.n515 = icmp eq i64 %i.de, %n.vec508
  br i1 %cmp.n515, label %.loopexit199, label %vec.epilog.iter.check517

vec.epilog.iter.check517:                         ; preds = %middle.block514
  %min.epilog.iters.check519 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check519, label %.lr.ph235.preheader, label %vec.epilog.ph520, !prof !56

vec.epilog.ph520:                                 ; preds = %vector.main.loop.iter.check505, %vec.epilog.iter.check517
  %vec.epilog.resume.val521 = phi i64 [ %n.vec508, %vec.epilog.iter.check517 ], [ 0, %vector.main.loop.iter.check505 ]
  %n.vec522 = and i64 %i.de, 8589934588           ; 3 uses
  %i.ew = add nuw nsw i64 %n.vec522, %i.df
  br label %vec.epilog.vector.body523

vec.epilog.vector.body523:                        ; preds = %vec.epilog.vector.body523, %vec.epilog.ph520
  %index524 = phi i64 [ %vec.epilog.resume.val521, %vec.epilog.ph520 ], [ %index.next526, %vec.epilog.vector.body523 ] ; 2 uses
  %i.ex = add nuw i64 %index524, %i.df            ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ex
  %wide.load525 = load <4 x i16>, ptr %i.ey, align 2
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ex
  store <4 x i16> %wide.load525, ptr %i.ez, align 2
  %index.next526 = add nuw i64 %index524, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next526, %n.vec522
  br i1 %i.fa, label %vec.epilog.middle.block527, label %vec.epilog.vector.body523, !llvm.loop !1008

vec.epilog.middle.block527:                       ; preds = %vec.epilog.vector.body523
  %cmp.n528 = icmp eq i64 %i.de, %n.vec522
  br i1 %cmp.n528, label %.loopexit199, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check516, %vec.epilog.iter.check517, %vec.epilog.middle.block527
  %indvars.iv286.ph = phi i64 [ %i.df, %iter.check516 ], [ %i.ep, %vec.epilog.iter.check517 ], [ %i.ew, %vec.epilog.middle.block527 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph235 ], [ %indvars.iv286.ph, %.lr.ph235.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv286
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv286
  store i16 %i.fc, ptr %i.fd, align 2
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.fe = trunc nuw i64 %indvars.iv.next287 to i32
  %i.ff = icmp sgt i32 %i.l, %i.fe
  br i1 %i.ff, label %.lr.ph235, label %.loopexit199, !llvm.loop !1009

.loopexit199.sink.split:                          ; preds = %bb.e, %.lr.ph237
  %.sink336 = phi ptr [ %i.dj, %.lr.ph237 ], [ %i.di, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dh, ptr noundef nonnull align 1 dereferenceable(1) %.sink336, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit199

.loopexit199:                                     ; preds = %.lr.ph235, %middle.block514, %vec.epilog.middle.block527, %.loopexit199.sink.split
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %indvars.iv.next280 = sub i32 %indvars.iv279, %i.l
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %.loopexit197, label %.lr.ph237, !llvm.loop !1010

.preheader207:                                    ; preds = %decode_counter.exit
  br i1 %i.ah, label %.lr.ph215.split.us.preheader, label %.loopexit197

.lr.ph215.split.us.preheader:                     ; preds = %.preheader207
  %wide.trip.count260 = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 4 uses
  %wide.trip.count255 = zext nneg i32 %i.l to i64 ; 4 uses
  %i.fg = sub i64 %i.c, %i.a                      ; 2 uses
  %i.fh = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check472 = icmp ult i32 %i.ae, 3
  %i.fi = add i64 %i.fg, -1
  %diff.check474 = icmp ult i64 %i.fi, 31
  %invariant.op595 = or i1 %min.iters.check472, %diff.check474
  %min.iters.check476 = icmp ult i32 %i.ae, 5
  %i.fj = and i64 %i.fh, 12
  %n.vec478 = and i64 %i.fh, -16                  ; 4 uses
  %i.fk = or disjoint i64 %n.vec478, 1
  %cmp.n485 = icmp eq i64 %i.fh, %n.vec478
  %min.epilog.iters.check489 = icmp eq i64 %i.fj, 0
  %n.vec492 = and i64 %i.fh, -4                   ; 3 uses
  %i.fl = or disjoint i64 %n.vec492, 1
  %cmp.n498 = icmp eq i64 %i.fh, %n.vec492
  %i.fm = add i64 %i.fg, -1
  %diff.check443 = icmp ult i64 %i.fm, 31
  br label %.lr.ph215.split.us

.lr.ph215.split.us:                               ; preds = %.lr.ph215.split.us.preheader, %._crit_edge.us217
  %indvars.iv257 = phi i64 [ 0, %.lr.ph215.split.us.preheader ], [ %indvars.iv.next258, %._crit_edge.us217 ] ; 3 uses
  %i.fn = shl nuw nsw i64 %indvars.iv257, 8       ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %i.fn ; 15 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn ; 14 uses
  %i.fr = trunc i64 %indvars.iv257 to i32
  %i.fs = mul i32 %i.l, %i.fr
  %i.ft = sub i32 %i.af, %i.fs                    ; 2 uses
  %i.fu = tail call i32 @llvm.smin.i32(i32 %i.ft, i32 %i.l)
  %i.fv = icmp sgt i32 %i.ft, 0
  br i1 %i.fv, label %iter.check486, label %iter.check455

iter.check486:                                    ; preds = %.lr.ph215.split.us, %._crit_edge.us.us
  %.0168210.us.us = phi i32 [ %i.hu, %._crit_edge.us.us ], [ 0, %.lr.ph215.split.us ] ; 9 uses
  %i.fw = zext nneg i32 %.0168210.us.us to i64    ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fw
  store i16 %i.fy, ptr %i.fz, align 2
  br i1 %invariant.op595, label %vec.epilog.scalar.ph488.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %iter.check486
  br i1 %min.iters.check476, label %vec.epilog.ph490, label %vector.body479

vector.body479:                                   ; preds = %vector.main.loop.iter.check475, %vector.body479
  %index480 = phi i64 [ %index.next483, %vector.body479 ], [ 0, %vector.main.loop.iter.check475 ] ; 2 uses
  %i.ga = trunc i64 %index480 to i32
  %i.gb = or disjoint i32 %i.ga, 1
  %i.gc = add i32 %.0168210.us.us, %i.gb
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load481.a = load <8 x i16>, ptr %i.ge, align 2
  %wide.load482 = load <8 x i16>, ptr %i.gf, align 2
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.gd ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <8 x i16> %wide.load481.a, ptr %i.gg, align 2
  store <8 x i16> %wide.load482, ptr %i.gh, align 2
  %index.next483 = add nuw i64 %index480, 16      ; 2 uses
  %i.gi = icmp eq i64 %index.next483, %n.vec478
  br i1 %i.gi, label %middle.block484, label %vector.body479, !llvm.loop !1011

middle.block484:                                  ; preds = %vector.body479
  br i1 %cmp.n485, label %._crit_edge.us.us, label %vec.epilog.iter.check487

vec.epilog.iter.check487:                         ; preds = %middle.block484
  br i1 %min.epilog.iters.check489, label %vec.epilog.scalar.ph488.preheader, label %vec.epilog.ph490, !prof !56

vec.epilog.ph490:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check487
  %vec.epilog.resume.val491 = phi i64 [ %n.vec478, %vec.epilog.iter.check487 ], [ 0, %vector.main.loop.iter.check475 ]
  br label %vec.epilog.vector.body493

vec.epilog.vector.body493:                        ; preds = %vec.epilog.vector.body493, %vec.epilog.ph490
  %index494 = phi i64 [ %vec.epilog.resume.val491, %vec.epilog.ph490 ], [ %index.next496, %vec.epilog.vector.body493 ] ; 2 uses
  %i.gj = trunc i64 %index494 to i32
  %i.gk = or disjoint i32 %i.gj, 1
  %i.gl = add i32 %.0168210.us.us, %i.gk
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.gm
  %wide.load495 = load <4 x i16>, ptr %i.gn, align 2
  %i.go = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.gm
  store <4 x i16> %wide.load495, ptr %i.go, align 2
  %index.next496 = add nuw i64 %index494, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next496, %n.vec492
  br i1 %i.gp, label %vec.epilog.middle.block497, label %vec.epilog.vector.body493, !llvm.loop !1012

vec.epilog.middle.block497:                       ; preds = %vec.epilog.vector.body493
  br i1 %cmp.n498, label %._crit_edge.us.us, label %vec.epilog.scalar.ph488.preheader

vec.epilog.scalar.ph488.preheader:                ; preds = %iter.check486, %vec.epilog.iter.check487, %vec.epilog.middle.block497
  %indvars.iv.ph = phi i64 [ 1, %iter.check486 ], [ %i.fk, %vec.epilog.iter.check487 ], [ %i.fl, %vec.epilog.middle.block497 ] ; 4 uses
  %i.gq = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter574 = and i64 %i.gq, 3                 ; 2 uses
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575.not, label %vec.epilog.scalar.ph488.prol.loopexit, label %vec.epilog.scalar.ph488.prol

vec.epilog.scalar.ph488.prol:                     ; preds = %vec.epilog.scalar.ph488.preheader, %vec.epilog.scalar.ph488.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph488.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph488.preheader ] ; 2 uses
  %prol.iter576 = phi i64 [ %prol.iter576.next, %vec.epilog.scalar.ph488.prol ], [ 0, %vec.epilog.scalar.ph488.preheader ]
  %i.gr = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.gs = add i32 %.0168210.us.us, %i.gr
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.gt
  store i16 %i.gv, ptr %i.gw, align 2
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter576.next = add i64 %prol.iter576, 1   ; 2 uses
  %prol.iter576.cmp.not = icmp eq i64 %prol.iter576.next, %xtraiter574
  br i1 %prol.iter576.cmp.not, label %vec.epilog.scalar.ph488.prol.loopexit, label %vec.epilog.scalar.ph488.prol, !llvm.loop !1013

vec.epilog.scalar.ph488.prol.loopexit:            ; preds = %vec.epilog.scalar.ph488.prol, %vec.epilog.scalar.ph488.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph488.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph488.prol ]
  %i.gx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %._crit_edge.us.us, label %vec.epilog.scalar.ph488.preheader.new

vec.epilog.scalar.ph488.preheader.new:            ; preds = %vec.epilog.scalar.ph488.prol.loopexit
  %invariant.op589 = add i32 1, %.0168210.us.us
  %invariant.op591 = add i32 2, %.0168210.us.us
  %invariant.op593 = add i32 3, %.0168210.us.us
  br label %vec.epilog.scalar.ph488

vec.epilog.scalar.ph488:                          ; preds = %vec.epilog.scalar.ph488, %vec.epilog.scalar.ph488.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph488.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph488 ] ; 5 uses
  %i.gz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ha = add i32 %.0168210.us.us, %i.gz
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2
  %i.he = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.hb
  store i16 %i.hd, ptr %i.he, align 2
  %i.hf = trunc i64 %indvars.iv to i32
  %.reass590 = add i32 %i.hf, %invariant.op589
  %i.hg = sext i32 %.reass590 to i64              ; 2 uses
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.hg
  store i16 %i.hi, ptr %i.hj, align 2
  %i.hk = trunc i64 %indvars.iv to i32
  %.reass592 = add i32 %i.hk, %invariant.op591
  %i.hl = sext i32 %.reass592 to i64              ; 2 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.hl
  store i16 %i.hn, ptr %i.ho, align 2
  %i.hp = trunc i64 %indvars.iv to i32
  %.reass594 = add i32 %i.hp, %invariant.op593
  %i.hq = sext i32 %.reass594 to i64              ; 2 uses
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.hq
  store i16 %i.hs, ptr %i.ht, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph488, !llvm.loop !1014

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph488.prol.loopexit, %vec.epilog.scalar.ph488, %vec.epilog.middle.block497, %middle.block484
  %i.hu = add nuw nsw i32 %.0168210.us.us, %i.ag  ; 4 uses
  %i.hv = icmp slt i32 %i.hu, %i.fu
  br i1 %i.hv, label %iter.check486, label %.preheader206.us, !llvm.loop !1015

.preheader206.us:                                 ; preds = %._crit_edge.us.us
  %i.hw = icmp samesign ult i32 %i.hu, %i.l
  br i1 %i.hw, label %iter.check455, label %._crit_edge.us217

iter.check455:                                    ; preds = %.lr.ph215.split.us, %.preheader206.us
  %.0168.lcssa.us329 = phi i32 [ %i.hu, %.preheader206.us ], [ 0, %.lr.ph215.split.us ]
  %i.hx = zext i32 %.0168.lcssa.us329 to i64      ; 6 uses
  %i.hy = sub nsw i64 %wide.trip.count255, %i.hx  ; 7 uses
  %min.iters.check441 = icmp ult i64 %i.hy, 4
  %or.cond564.a = or i1 %min.iters.check441, %diff.check443
  br i1 %or.cond564.a, label %.lr.ph.us216.preheader, label %vector.main.loop.iter.check444

vector.main.loop.iter.check444:                   ; preds = %iter.check455
  %min.iters.check445 = icmp ult i64 %i.hy, 16
  br i1 %min.iters.check445, label %vec.epilog.ph459, label %vector.ph446

vector.ph446:                                     ; preds = %vector.main.loop.iter.check444
  %i.hz = and i64 %i.hy, 12
  %n.vec447 = and i64 %i.hy, -16                  ; 4 uses
  %i.ia = add nsw i64 %n.vec447, %i.hx
  br label %vector.body448

vector.body448:                                   ; preds = %vector.ph446, %vector.body448
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next452, %vector.body448 ] ; 2 uses
  %i.ib = add nuw i64 %index449, %i.hx            ; 2 uses
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load450 = load <8 x i16>, ptr %i.ic, align 2
  %wide.load451 = load <8 x i16>, ptr %i.id, align 2
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.ib ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <8 x i16> %wide.load450, ptr %i.ie, align 2
  store <8 x i16> %wide.load451, ptr %i.if, align 2
  %index.next452 = add nuw i64 %index449, 16      ; 2 uses
  %i.ig = icmp eq i64 %index.next452, %n.vec447
  br i1 %i.ig, label %middle.block453, label %vector.body448, !llvm.loop !1016

middle.block453:                                  ; preds = %vector.body448
  %cmp.n454 = icmp eq i64 %i.hy, %n.vec447
  br i1 %cmp.n454, label %._crit_edge.us217, label %vec.epilog.iter.check456

vec.epilog.iter.check456:                         ; preds = %middle.block453
  %min.epilog.iters.check458 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check458, label %.lr.ph.us216.preheader, label %vec.epilog.ph459, !prof !56

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check444, %vec.epilog.iter.check456
  %vec.epilog.resume.val460 = phi i64 [ %n.vec447, %vec.epilog.iter.check456 ], [ 0, %vector.main.loop.iter.check444 ]
  %n.vec461 = and i64 %i.hy, -4                   ; 3 uses
  %i.ih = add nsw i64 %n.vec461, %i.hx
  br label %vec.epilog.vector.body462

vec.epilog.vector.body462:                        ; preds = %vec.epilog.vector.body462, %vec.epilog.ph459
  %index463 = phi i64 [ %vec.epilog.resume.val460, %vec.epilog.ph459 ], [ %index.next465, %vec.epilog.vector.body462 ] ; 2 uses
  %i.ii = add nuw i64 %index463, %i.hx            ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.ii
  %wide.load464 = load <4 x i16>, ptr %i.ij, align 2
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.ii
  store <4 x i16> %wide.load464, ptr %i.ik, align 2
  %index.next465 = add nuw i64 %index463, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next465, %n.vec461
  br i1 %i.il, label %vec.epilog.middle.block466, label %vec.epilog.vector.body462, !llvm.loop !1017

vec.epilog.middle.block466:                       ; preds = %vec.epilog.vector.body462
  %cmp.n467 = icmp eq i64 %i.hy, %n.vec461
  br i1 %cmp.n467, label %._crit_edge.us217, label %.lr.ph.us216.preheader

.lr.ph.us216.preheader:                           ; preds = %iter.check455, %vec.epilog.iter.check456, %vec.epilog.middle.block466
  %indvars.iv252.ph = phi i64 [ %i.hx, %iter.check455 ], [ %i.ia, %vec.epilog.iter.check456 ], [ %i.ih, %vec.epilog.middle.block466 ] ; 4 uses
  %i.im = sub nsw i64 %wide.trip.count255, %indvars.iv252.ph
  %xtraiter577 = and i64 %i.im, 3                 ; 2 uses
  %lcmp.mod578.not = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol

.lr.ph.us216.prol:                                ; preds = %.lr.ph.us216.preheader, %.lr.ph.us216.prol
  %indvars.iv252.prol = phi i64 [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ], [ %indvars.iv252.ph, %.lr.ph.us216.preheader ] ; 3 uses
  %prol.iter579 = phi i64 [ %prol.iter579.next, %.lr.ph.us216.prol ], [ 0, %.lr.ph.us216.preheader ]
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv252.prol
  %i.io = load i16, ptr %i.in, align 2
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv252.prol
  store i16 %i.io, ptr %i.ip, align 2
  %indvars.iv.next253.prol = add nuw nsw i64 %indvars.iv252.prol, 1 ; 2 uses
  %prol.iter579.next = add i64 %prol.iter579, 1   ; 2 uses
  %prol.iter579.cmp.not = icmp eq i64 %prol.iter579.next, %xtraiter577
  br i1 %prol.iter579.cmp.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol, !llvm.loop !1018

.lr.ph.us216.prol.loopexit:                       ; preds = %.lr.ph.us216.prol, %.lr.ph.us216.preheader
  %indvars.iv252.unr = phi i64 [ %indvars.iv252.ph, %.lr.ph.us216.preheader ], [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ]
  %i.iq = sub nsw i64 %indvars.iv252.ph, %wide.trip.count255
  %i.ir = icmp ugt i64 %i.iq, -4
  br i1 %i.ir, label %._crit_edge.us217, label %.lr.ph.us216

.lr.ph.us216:                                     ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.3, %.lr.ph.us216 ], [ %indvars.iv252.unr, %.lr.ph.us216.prol.loopexit ] ; 6 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv252
  %i.it = load i16, ptr %i.is, align 2
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv252
  store i16 %i.it, ptr %i.iu, align 2
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv.next253
  %i.iw = load i16, ptr %i.iv, align 2
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv.next253
  store i16 %i.iw, ptr %i.ix, align 2
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv.next253.1
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv.next253.1
  store i16 %i.iz, ptr %i.ja, align 2
  %indvars.iv.next253.2 = add nuw nsw i64 %indvars.iv252, 3 ; 2 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %indvars.iv.next253.2
  %i.jc = load i16, ptr %i.jb, align 2
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv.next253.2
  store i16 %i.jc, ptr %i.jd, align 2
  %indvars.iv.next253.3 = add nuw nsw i64 %indvars.iv252, 4 ; 2 uses
  %exitcond256.not.3 = icmp eq i64 %indvars.iv.next253.3, %wide.trip.count255
  br i1 %exitcond256.not.3, label %._crit_edge.us217, label %.lr.ph.us216, !llvm.loop !1019

._crit_edge.us217:                                ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216, %middle.block453, %vec.epilog.middle.block466, %.preheader206.us
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit197, label %.lr.ph215.split.us, !llvm.loop !1020

.preheader204:                                    ; preds = %decode_counter.exit
  br i1 %i.ah, label %.lr.ph230.split.us.preheader, label %.loopexit197

.lr.ph230.split.us.preheader:                     ; preds = %.preheader204
  %wide.trip.count274 = zext nneg i32 %i.k to i64
  %wide.trip.count269 = zext nneg i32 %i.ag to i64 ; 5 uses
  %i.je = add nsw i64 %wide.trip.count269, -2     ; 2 uses
  %i.jf = sub i64 %i.c, %i.a                      ; 2 uses
end_hunk_0
