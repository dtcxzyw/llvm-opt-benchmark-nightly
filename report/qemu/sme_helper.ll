Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_h:bb.a
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
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 5 uses
  %wide.trip.count255 = zext nneg i32 %i.l to i64 ; 4 uses
  %i.fg = sub i64 %i.c, %i.a                      ; 2 uses
  %i.fh = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %i.fi = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check472 = icmp ult i32 %i.ae, 3
  %i.fj = trunc i64 %i.fh to i32
  %i.fk = icmp ugt i64 %i.fh, 4294967295
  %i.fl = add i64 %i.fg, -1
  %diff.check474 = icmp ult i64 %i.fl, 31
  %invariant.op595 = or i1 %i.fk, %diff.check474
  %min.iters.check476 = icmp ult i32 %i.ae, 5
  %i.fm = and i64 %i.fi, 12
  %n.vec478 = and i64 %i.fi, -16                  ; 4 uses
  %i.fn = or disjoint i64 %n.vec478, 1
  %cmp.n485 = icmp eq i64 %i.fi, %n.vec478
  %min.epilog.iters.check489 = icmp eq i64 %i.fm, 0
  %n.vec492 = and i64 %i.fi, -4                   ; 3 uses
  %i.fo = or disjoint i64 %n.vec492, 1
  %cmp.n498 = icmp eq i64 %i.fi, %n.vec492
  %i.fp = add i64 %i.fg, -1
  %diff.check443 = icmp ult i64 %i.fp, 31
  br label %.lr.ph215.split.us

.lr.ph215.split.us:                               ; preds = %.lr.ph215.split.us.preheader, %._crit_edge.us217
  %indvars.iv257 = phi i64 [ 0, %.lr.ph215.split.us.preheader ], [ %indvars.iv.next258, %._crit_edge.us217 ] ; 3 uses
  %i.fq = shl nuw nsw i64 %indvars.iv257, 8       ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq ; 15 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fq ; 14 uses
  %i.fu = trunc i64 %indvars.iv257 to i32
  %i.fv = mul i32 %i.l, %i.fu
  %i.fw = sub i32 %i.af, %i.fv                    ; 2 uses
  %i.fx = tail call i32 @llvm.smin.i32(i32 %i.fw, i32 %i.l)
  %i.fy = icmp sgt i32 %i.fw, 0
  br i1 %i.fy, label %iter.check486, label %iter.check455

iter.check486:                                    ; preds = %.lr.ph215.split.us, %._crit_edge.us.us
  %.0168210.us.us = phi i32 [ %i.ia, %._crit_edge.us.us ], [ 0, %.lr.ph215.split.us ] ; 10 uses
  %i.fz = zext nneg i32 %.0168210.us.us to i64    ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fz
  store i16 %i.gb, ptr %i.gc, align 2
  br i1 %min.iters.check472, label %vec.epilog.scalar.ph488.preheader, label %vector.scevcheck469

vector.scevcheck469:                              ; preds = %iter.check486
  %i.gd = add nuw i32 %.0168210.us.us, 1          ; 2 uses
  %i.ge = add i32 %i.gd, %i.fj
  %i.gf = icmp slt i32 %i.ge, %i.gd
  %or.cond563.reass = or i1 %i.gf, %invariant.op595
  br i1 %or.cond563.reass, label %vec.epilog.scalar.ph488.preheader, label %vector.main.loop.iter.check475

vector.main.loop.iter.check475:                   ; preds = %vector.scevcheck469
  br i1 %min.iters.check476, label %vec.epilog.ph490, label %vector.body479

vector.body479:                                   ; preds = %vector.main.loop.iter.check475, %vector.body479
  %index480 = phi i64 [ %index.next483, %vector.body479 ], [ 0, %vector.main.loop.iter.check475 ] ; 2 uses
  %i.gg = trunc i64 %index480 to i32
  %i.gh = or disjoint i32 %i.gg, 1
  %i.gi = add i32 %.0168210.us.us, %i.gh
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load481 = load <8 x i16>, ptr %i.gk, align 2
  %wide.load482 = load <8 x i16>, ptr %i.gl, align 2
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.gj ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <8 x i16> %wide.load481, ptr %i.gm, align 2
  store <8 x i16> %wide.load482, ptr %i.gn, align 2
  %index.next483 = add nuw i64 %index480, 16      ; 2 uses
  %i.go = icmp eq i64 %index.next483, %n.vec478
  br i1 %i.go, label %middle.block484, label %vector.body479, !llvm.loop !1011

middle.block484:                                  ; preds = %vector.body479
  br i1 %cmp.n485, label %._crit_edge.us.us, label %vec.epilog.iter.check487

vec.epilog.iter.check487:                         ; preds = %middle.block484
  br i1 %min.epilog.iters.check489, label %vec.epilog.scalar.ph488.preheader, label %vec.epilog.ph490, !prof !56

vec.epilog.ph490:                                 ; preds = %vector.main.loop.iter.check475, %vec.epilog.iter.check487
  %vec.epilog.resume.val491 = phi i64 [ %n.vec478, %vec.epilog.iter.check487 ], [ 0, %vector.main.loop.iter.check475 ]
  br label %vec.epilog.vector.body493

vec.epilog.vector.body493:                        ; preds = %vec.epilog.vector.body493, %vec.epilog.ph490
  %index494 = phi i64 [ %vec.epilog.resume.val491, %vec.epilog.ph490 ], [ %index.next496, %vec.epilog.vector.body493 ] ; 2 uses
  %i.gp = trunc i64 %index494 to i32
  %i.gq = or disjoint i32 %i.gp, 1
  %i.gr = add i32 %.0168210.us.us, %i.gq
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.gs
  %wide.load495 = load <4 x i16>, ptr %i.gt, align 2
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.gs
  store <4 x i16> %wide.load495, ptr %i.gu, align 2
  %index.next496 = add nuw i64 %index494, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next496, %n.vec492
  br i1 %i.gv, label %vec.epilog.middle.block497, label %vec.epilog.vector.body493, !llvm.loop !1012

vec.epilog.middle.block497:                       ; preds = %vec.epilog.vector.body493
  br i1 %cmp.n498, label %._crit_edge.us.us, label %vec.epilog.scalar.ph488.preheader

vec.epilog.scalar.ph488.preheader:                ; preds = %iter.check486, %vector.scevcheck469, %vec.epilog.iter.check487, %vec.epilog.middle.block497
  %indvars.iv.ph = phi i64 [ 1, %vector.scevcheck469 ], [ 1, %iter.check486 ], [ %i.fn, %vec.epilog.iter.check487 ], [ %i.fo, %vec.epilog.middle.block497 ] ; 4 uses
  %i.gw = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter574 = and i64 %i.gw, 3                 ; 2 uses
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575.not, label %vec.epilog.scalar.ph488.prol.loopexit, label %vec.epilog.scalar.ph488.prol

vec.epilog.scalar.ph488.prol:                     ; preds = %vec.epilog.scalar.ph488.preheader, %vec.epilog.scalar.ph488.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph488.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph488.preheader ] ; 2 uses
  %prol.iter576 = phi i64 [ %prol.iter576.next, %vec.epilog.scalar.ph488.prol ], [ 0, %vec.epilog.scalar.ph488.preheader ]
  %i.gx = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.gy = add i32 %.0168210.us.us, %i.gx
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.gz
  store i16 %i.hb, ptr %i.hc, align 2
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter576.next = add i64 %prol.iter576, 1   ; 2 uses
  %prol.iter576.cmp.not = icmp eq i64 %prol.iter576.next, %xtraiter574
  br i1 %prol.iter576.cmp.not, label %vec.epilog.scalar.ph488.prol.loopexit, label %vec.epilog.scalar.ph488.prol, !llvm.loop !1013

vec.epilog.scalar.ph488.prol.loopexit:            ; preds = %vec.epilog.scalar.ph488.prol, %vec.epilog.scalar.ph488.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph488.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph488.prol ]
  %i.hd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %._crit_edge.us.us, label %vec.epilog.scalar.ph488.preheader.new

vec.epilog.scalar.ph488.preheader.new:            ; preds = %vec.epilog.scalar.ph488.prol.loopexit
  %invariant.op589 = add i32 1, %.0168210.us.us
  %invariant.op591 = add i32 2, %.0168210.us.us
  %invariant.op593 = add i32 3, %.0168210.us.us
  br label %vec.epilog.scalar.ph488

vec.epilog.scalar.ph488:                          ; preds = %vec.epilog.scalar.ph488, %vec.epilog.scalar.ph488.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph488.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph488 ] ; 5 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32
  %i.hg = add i32 %.0168210.us.us, %i.hf
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hh
  store i16 %i.hj, ptr %i.hk, align 2
  %i.hl = trunc i64 %indvars.iv to i32
  %.reass590 = add i32 %i.hl, %invariant.op589
  %i.hm = sext i32 %.reass590 to i64              ; 2 uses
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hm
  store i16 %i.ho, ptr %i.hp, align 2
  %i.hq = trunc i64 %indvars.iv to i32
  %.reass592 = add i32 %i.hq, %invariant.op591
  %i.hr = sext i32 %.reass592 to i64              ; 2 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hr
  store i16 %i.ht, ptr %i.hu, align 2
  %i.hv = trunc i64 %indvars.iv to i32
  %.reass594 = add i32 %i.hv, %invariant.op593
  %i.hw = sext i32 %.reass594 to i64              ; 2 uses
  %i.hx = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hw
  store i16 %i.hy, ptr %i.hz, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph488, !llvm.loop !1014

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph488.prol.loopexit, %vec.epilog.scalar.ph488, %vec.epilog.middle.block497, %middle.block484
  %i.ia = add nuw nsw i32 %.0168210.us.us, %i.ag  ; 4 uses
  %i.ib = icmp slt i32 %i.ia, %i.fx
  br i1 %i.ib, label %iter.check486, label %.preheader206.us, !llvm.loop !1015

.preheader206.us:                                 ; preds = %._crit_edge.us.us
  %i.ic = icmp samesign ult i32 %i.ia, %i.l
  br i1 %i.ic, label %iter.check455, label %._crit_edge.us217

iter.check455:                                    ; preds = %.lr.ph215.split.us, %.preheader206.us
  %.0168.lcssa.us329 = phi i32 [ %i.ia, %.preheader206.us ], [ 0, %.lr.ph215.split.us ]
  %i.id = zext nneg i32 %.0168.lcssa.us329 to i64 ; 6 uses
  %i.ie = sub nsw i64 %wide.trip.count255, %i.id  ; 7 uses
  %min.iters.check441 = icmp ult i64 %i.ie, 4
  %or.cond564 = or i1 %min.iters.check441, %diff.check443
  br i1 %or.cond564, label %.lr.ph.us216.preheader, label %vector.main.loop.iter.check444

vector.main.loop.iter.check444:                   ; preds = %iter.check455
  %min.iters.check445 = icmp ult i64 %i.ie, 16
  br i1 %min.iters.check445, label %vec.epilog.ph459, label %vector.ph446

vector.ph446:                                     ; preds = %vector.main.loop.iter.check444
  %i.if = and i64 %i.ie, 12
  %n.vec447 = and i64 %i.ie, -16                  ; 4 uses
  %i.ig = add nsw i64 %n.vec447, %i.id
  br label %vector.body448

vector.body448:                                   ; preds = %vector.ph446, %vector.body448
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next452, %vector.body448 ] ; 2 uses
  %i.ih = add nuw i64 %index449, %i.id            ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load450 = load <8 x i16>, ptr %i.ii, align 2
  %wide.load451 = load <8 x i16>, ptr %i.ij, align 2
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.ih ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <8 x i16> %wide.load450, ptr %i.ik, align 2
  store <8 x i16> %wide.load451, ptr %i.il, align 2
  %index.next452 = add nuw i64 %index449, 16      ; 2 uses
  %i.im = icmp eq i64 %index.next452, %n.vec447
  br i1 %i.im, label %middle.block453, label %vector.body448, !llvm.loop !1016

middle.block453:                                  ; preds = %vector.body448
  %cmp.n454 = icmp eq i64 %i.ie, %n.vec447
  br i1 %cmp.n454, label %._crit_edge.us217, label %vec.epilog.iter.check456

vec.epilog.iter.check456:                         ; preds = %middle.block453
  %min.epilog.iters.check458 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check458, label %.lr.ph.us216.preheader, label %vec.epilog.ph459, !prof !56

vec.epilog.ph459:                                 ; preds = %vector.main.loop.iter.check444, %vec.epilog.iter.check456
  %vec.epilog.resume.val460 = phi i64 [ %n.vec447, %vec.epilog.iter.check456 ], [ 0, %vector.main.loop.iter.check444 ]
  %n.vec461 = and i64 %i.ie, -4                   ; 3 uses
  %i.in = add nsw i64 %n.vec461, %i.id
  br label %vec.epilog.vector.body462

vec.epilog.vector.body462:                        ; preds = %vec.epilog.vector.body462, %vec.epilog.ph459
  %index463 = phi i64 [ %vec.epilog.resume.val460, %vec.epilog.ph459 ], [ %index.next465, %vec.epilog.vector.body462 ] ; 2 uses
  %i.io = add nuw i64 %index463, %i.id            ; 2 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.io
  %wide.load464 = load <4 x i16>, ptr %i.ip, align 2
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.io
  store <4 x i16> %wide.load464, ptr %i.iq, align 2
  %index.next465 = add nuw i64 %index463, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next465, %n.vec461
  br i1 %i.ir, label %vec.epilog.middle.block466, label %vec.epilog.vector.body462, !llvm.loop !1017

vec.epilog.middle.block466:                       ; preds = %vec.epilog.vector.body462
  %cmp.n467 = icmp eq i64 %i.ie, %n.vec461
  br i1 %cmp.n467, label %._crit_edge.us217, label %.lr.ph.us216.preheader

.lr.ph.us216.preheader:                           ; preds = %iter.check455, %vec.epilog.iter.check456, %vec.epilog.middle.block466
  %indvars.iv252.ph = phi i64 [ %i.id, %iter.check455 ], [ %i.ig, %vec.epilog.iter.check456 ], [ %i.in, %vec.epilog.middle.block466 ] ; 4 uses
  %i.is = sub nsw i64 %wide.trip.count255, %indvars.iv252.ph
  %xtraiter577 = and i64 %i.is, 3                 ; 2 uses
  %lcmp.mod578.not = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod578.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol

.lr.ph.us216.prol:                                ; preds = %.lr.ph.us216.preheader, %.lr.ph.us216.prol
  %indvars.iv252.prol = phi i64 [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ], [ %indvars.iv252.ph, %.lr.ph.us216.preheader ] ; 3 uses
  %prol.iter579 = phi i64 [ %prol.iter579.next, %.lr.ph.us216.prol ], [ 0, %.lr.ph.us216.preheader ]
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv252.prol
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv252.prol
  store i16 %i.iu, ptr %i.iv, align 2
  %indvars.iv.next253.prol = add nuw nsw i64 %indvars.iv252.prol, 1 ; 2 uses
  %prol.iter579.next = add i64 %prol.iter579, 1   ; 2 uses
  %prol.iter579.cmp.not = icmp eq i64 %prol.iter579.next, %xtraiter577
  br i1 %prol.iter579.cmp.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol, !llvm.loop !1018

.lr.ph.us216.prol.loopexit:                       ; preds = %.lr.ph.us216.prol, %.lr.ph.us216.preheader
  %indvars.iv252.unr = phi i64 [ %indvars.iv252.ph, %.lr.ph.us216.preheader ], [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ]
  %i.iw = sub nsw i64 %indvars.iv252.ph, %wide.trip.count255
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %._crit_edge.us217, label %.lr.ph.us216

.lr.ph.us216:                                     ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.3, %.lr.ph.us216 ], [ %indvars.iv252.unr, %.lr.ph.us216.prol.loopexit ] ; 6 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv252
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv252
  store i16 %i.iz, ptr %i.ja, align 2
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next253
  %i.jc = load i16, ptr %i.jb, align 2
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253
  store i16 %i.jc, ptr %i.jd, align 2
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next253.1
  %i.jf = load i16, ptr %i.je, align 2
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253.1
  store i16 %i.jf, ptr %i.jg, align 2
  %indvars.iv.next253.2 = add nuw nsw i64 %indvars.iv252, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next253.2
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253.2
  store i16 %i.ji, ptr %i.jj, align 2
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
  %i.jk = add nsw i64 %wide.trip.count269, -2     ; 2 uses
  %i.jl = sub i64 %i.c, %i.a                      ; 2 uses
  %i.jm = add nsw i64 %wide.trip.count269, -1     ; 5 uses
  %i.jn = add i64 %i.jl, -1
  %diff.check413 = icmp ult i64 %i.jn, 31
  %min.iters.check381 = icmp ult i32 %i.ae, 3
  %i.jo = trunc i64 %i.jk to i32
  %i.jp = icmp ugt i64 %i.jk, 4294967295
  %i.jq = add i64 %i.jl, -1
  %diff.check383 = icmp ult i64 %i.jq, 31
  %invariant.op588 = or i1 %i.jp, %diff.check383
  %min.iters.check385 = icmp ult i32 %i.ae, 5
  %i.jr = and i64 %i.jm, 12
  %n.vec387 = and i64 %i.jm, -16                  ; 4 uses
  %i.js = or disjoint i64 %n.vec387, 1
  %cmp.n394 = icmp eq i64 %i.jm, %n.vec387
  %min.epilog.iters.check398 = icmp eq i64 %i.jr, 0
  %n.vec401 = and i64 %i.jm, -4                   ; 3 uses
  %i.jt = or disjoint i64 %n.vec401, 1
  %cmp.n407 = icmp eq i64 %i.jm, %n.vec401
  br label %.lr.ph230.split.us

.lr.ph230.split.us:                               ; preds = %.lr.ph230.split.us.preheader, %._crit_edge228.split.us.us
  %indvars.iv271 = phi i64 [ 0, %.lr.ph230.split.us.preheader ], [ %indvars.iv.next272, %._crit_edge228.split.us.us ] ; 4 uses
  %i.ju = trunc i64 %indvars.iv271 to i32
  %i.jv = mul i32 %i.l, %i.ju
  %i.jw = sub i32 %i.af, %i.jv
  %smin = tail call i32 @llvm.smin.i32(i32 %i.jw, i32 %i.l) ; 3 uses
  %i.jx = tail call i32 @llvm.umax.i32(i32 %smin, i32 1)
  %umax = zext i32 %i.jx to i64                   ; 5 uses
  %i.jy = shl nuw nsw i64 %indvars.iv271, 8       ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 %i.jy ; 11 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 %i.jy ; 10 uses
  %i.kc = trunc i64 %indvars.iv271 to i32
  %i.kd = mul i32 %i.l, %i.kc
  %i.ke = sub i32 %i.af, %i.kd                    ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %iter.check425, label %.lr.ph224.us.us.preheader

iter.check425:                                    ; preds = %.lr.ph230.split.us
  %i.kg = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.l)
  %i.kh = zext nneg i32 %i.kg to i64
  %min.iters.check411 = icmp ult i32 %smin, 4
  %or.cond565 = or i1 %min.iters.check411, %diff.check413
  br i1 %or.cond565, label %.lr.ph220.us.preheader, label %vector.main.loop.iter.check414

vector.main.loop.iter.check414:                   ; preds = %iter.check425
  %min.iters.check415 = icmp ult i32 %smin, 16
  br i1 %min.iters.check415, label %vec.epilog.ph429, label %vector.ph416

vector.ph416:                                     ; preds = %vector.main.loop.iter.check414
  %i.ki = and i64 %umax, 12
  %n.vec417 = and i64 %umax, 4294967280           ; 5 uses
  br label %vector.body418

vector.body418:                                   ; preds = %vector.ph416, %vector.body418
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next422, %vector.body418 ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %index419 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load420 = load <8 x i16>, ptr %i.kj, align 2
  %wide.load421 = load <8 x i16>, ptr %i.kk, align 2
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %index419 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store <8 x i16> %wide.load420, ptr %i.kl, align 2
  store <8 x i16> %wide.load421, ptr %i.km, align 2
  %index.next422 = add nuw i64 %index419, 16      ; 2 uses
  %i.kn = icmp eq i64 %index.next422, %n.vec417
  br i1 %i.kn, label %middle.block423, label %vector.body418, !llvm.loop !1021

middle.block423:                                  ; preds = %vector.body418
  %cmp.n424 = icmp eq i64 %n.vec417, %umax
  br i1 %cmp.n424, label %.preheader203.us, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block423
  %min.epilog.iters.check428 = icmp eq i64 %i.ki, 0
  br i1 %min.epilog.iters.check428, label %.lr.ph220.us.preheader, label %vec.epilog.ph429, !prof !56

vec.epilog.ph429:                                 ; preds = %vector.main.loop.iter.check414, %vec.epilog.iter.check426
  %vec.epilog.resume.val430 = phi i64 [ %n.vec417, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check414 ]
end_hunk_0
