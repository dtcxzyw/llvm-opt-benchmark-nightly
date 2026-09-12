Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifSat?download=true
inline.NumInlined: 77
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 60
begin_hunk_0_@If_ManSatCheckXYall_int:bb.a
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  br i1 %i.f, label %.lr.ph850, label %.loopexit461

.loopexit469.loopexit:                            ; preds = %.loopexit468
  store i32 %i.eb, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit469

.loopexit469:                                     ; preds = %.loopexit469.loopexit, %.lr.ph850
  %i.du = phi i32 [ %i.ed, %.loopexit469.loopexit ], [ %i.dw, %.lr.ph850 ]
  store i32 %i.dw, ptr %.sroa.0, align 16, !tbaa !8
  %exitcond1507.not = icmp eq i32 %i.dw, %3
  br i1 %exitcond1507.not, label %.loopexit461.loopexit1678, label %.lr.ph850, !llvm.loop !67

.lr.ph850:                                        ; preds = %.preheader470, %.loopexit469
  %i.dv = phi i32 [ %i.dw, %.loopexit469 ], [ 0, %.preheader470 ] ; 2 uses
  %i.dw = add nuw nsw i32 %i.dv, 1                ; 6 uses
  %i.dx = icmp slt i32 %i.dw, %3
  br i1 %i.dx, label %.lr.ph848, label %.loopexit469

.lr.ph848:                                        ; preds = %.lr.ph850
  %i.dy = shl nuw nsw i32 %i.dv, 1                ; 2 uses
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = shl i32 3, %i.dy                        ; 3 uses
  br label %bb.y

.loopexit468.loopexit:                            ; preds = %.loopexit467
  store i32 %i.em, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit468

.loopexit468:                                     ; preds = %.loopexit468.loopexit, %bb.y
  %i.eb = phi i32 [ %i.eo, %.loopexit468.loopexit ], [ %i.ed, %bb.y ]
  %exitcond1506.not = icmp eq i32 %i.ed, %3
  br i1 %exitcond1506.not, label %.loopexit469.loopexit, label %bb.y, !llvm.loop !68

bb.y:                                             ; preds = %.lr.ph848, %.loopexit468
  %i.ec = phi i32 [ %i.dw, %.lr.ph848 ], [ %i.ed, %.loopexit468 ] ; 4 uses
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 6 uses
  %i.ee = icmp slt i32 %i.ed, %3
  br i1 %i.ee, label %.lr.ph845, label %.loopexit468

.lr.ph845:                                        ; preds = %bb.y
  %i.ef = shl nuw nsw i32 %i.ec, 1                ; 2 uses
  %i.eg = shl nuw i32 1, %i.ef
  %i.eh = or i32 %i.eg, %i.dz
  %i.ei = shl nuw nsw i32 %i.ec, 1
  %i.ej = shl i32 3, %i.ei
  %i.ek = or i32 %i.ea, %i.ej
  %i.el = shl i32 3, %i.ef                        ; 2 uses
  br label %bb.z

.loopexit467:                                     ; preds = %.loopexit466.3, %bb.z
  %i.em = phi i32 [ %i.eo, %bb.z ], [ %i.fi, %.loopexit466.3 ]
  %exitcond1505.not = icmp eq i32 %i.eo, %3
  br i1 %exitcond1505.not, label %.loopexit468.loopexit, label %bb.z, !llvm.loop !69

bb.z:                                             ; preds = %.lr.ph845, %.loopexit467
  %i.en = phi i32 [ %i.ed, %.lr.ph845 ], [ %i.eo, %.loopexit467 ] ; 3 uses
  %i.eo = add nuw nsw i32 %i.en, 1                ; 6 uses
  %i.ep = icmp slt i32 %i.eo, %3
  br i1 %i.ep, label %.lr.ph842, label %.loopexit467

.lr.ph842:                                        ; preds = %bb.z
  %i.eq = shl nuw nsw i32 %i.en, 1                ; 4 uses
  %i.er = shl nuw i32 1, %i.eq
  %i.es = or i32 %i.eh, %i.er
  %i.et = shl i32 3, %i.eq
  %i.eu = or i32 %i.ea, %i.et
  %i.ev = shl i32 3, %i.eq
  %i.ew = or i32 %i.el, %i.ev
  %i.ex = shl i32 3, %i.eq
  br label %.lr.ph838

.lr.ph838.1:                                      ; preds = %bb.ac
  %i.ey = or i32 %i.ew, %i.fm
  %i.ez = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef %3, i32 noundef %i.ey, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not436.1 = icmp eq i32 %i.ez, 0
  br i1 %.not436.1, label %bb.aa, label %.loopexit1489

bb.aa:                                            ; preds = %.lr.ph838.1
  %i.fa = shl i32 3, %i.fk
  %i.fb = or i32 %i.el, %i.fa
  %i.fc = or i32 %i.fb, %i.fm
  %i.fd = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef %3, i32 noundef %i.fc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not436.1.1 = icmp eq i32 %i.fd, 0
  br i1 %.not436.1.1, label %.lr.ph838.2, label %.loopexit1489

.lr.ph838.2:                                      ; preds = %bb.aa
  %i.fe = shl i32 3, %i.fk
  %i.ff = or i32 %i.ex, %i.fe
  %i.fg = or i32 %i.ff, %i.fm
  %i.fh = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef %3, i32 noundef %i.fg, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not436.2 = icmp eq i32 %i.fh, 0
  br i1 %.not436.2, label %.loopexit466.3, label %.loopexit1489

.loopexit466.3:                                   ; preds = %.lr.ph838.2
  %i.fi = add i32 %i.fj, 1                        ; 3 uses
  %exitcond1504.not = icmp eq i32 %i.fi, %3
  br i1 %exitcond1504.not, label %.loopexit467, label %.lr.ph838, !llvm.loop !70

.lr.ph838:                                        ; preds = %.loopexit466.3, %.lr.ph842
  %i.fj = phi i32 [ %i.eo, %.lr.ph842 ], [ %i.fi, %.loopexit466.3 ] ; 3 uses
  %i.fk = shl nsw i32 %i.fj, 1                    ; 4 uses
  %i.fl = shl nuw i32 1, %i.fk
  %i.fm = or i32 %i.es, %i.fl                     ; 7 uses
  %i.fn = or i32 %i.ek, %i.fm
  %i.fo = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef %3, i32 noundef %i.fn, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not436 = icmp eq i32 %i.fo, 0
  br i1 %.not436, label %bb.ab, label %.loopexit1489

bb.ab:                                            ; preds = %.lr.ph838
  %i.fp = or i32 %i.eu, %i.fm
  %i.fq = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef %3, i32 noundef %i.fp, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not436.11502 = icmp eq i32 %i.fq, 0
  br i1 %.not436.11502, label %bb.ac, label %.loopexit1489

bb.ac:                                            ; preds = %bb.ab
  %i.fr = shl i32 3, %i.fk
  %i.fs = or i32 %i.ea, %i.fr
  %i.ft = or i32 %i.fs, %i.fm
  %i.fu = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef %3, i32 noundef %i.ft, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not436.21503 = icmp eq i32 %i.fu, 0
  br i1 %.not436.21503, label %.lr.ph838.1, label %.loopexit1489

.loopexit1489:                                    ; preds = %.lr.ph838.2, %.lr.ph838.1, %bb.aa, %.lr.ph838, %bb.ab, %bb.ac
  %.lcssa913.sroa.phi = phi ptr [ %.sroa.84, %.lr.ph838.1 ], [ %.sroa.0, %.lr.ph838 ], [ %.sroa.0, %bb.ac ], [ %.sroa.0, %bb.ab ], [ %.sroa.84, %bb.aa ], [ %.sroa.170, %.lr.ph838.2 ]
  %.lcssa911.sroa.phi = phi ptr [ %.sroa.170, %.lr.ph838.1 ], [ %.sroa.84, %.lr.ph838 ], [ %.sroa.256, %bb.ac ], [ %.sroa.170, %bb.ab ], [ %.sroa.256, %bb.aa ], [ %.sroa.256, %.lr.ph838.2 ]
  store i32 %i.ec, ptr %.sroa.84, align 4, !tbaa !8
  store i32 %i.en, ptr %.sroa.170, align 8, !tbaa !8
  store i32 %i.fj, ptr %.sroa.256, align 4, !tbaa !8
  %i.fv = load i32, ptr %.lcssa913.sroa.phi, align 4, !tbaa !8
  %i.fw = shl nsw i32 %i.fv, 1
  %i.fx = shl i32 3, %i.fw
  %i.fy = load i32, ptr %.lcssa911.sroa.phi, align 4, !tbaa !8
  %i.fz = shl nsw i32 %i.fy, 1
  %i.ga = shl i32 3, %i.fz
  %i.gb = or i32 %i.fx, %i.ga
  %i.gc = or i32 %i.gb, %i.fm
  br label %.loopexit461

.loopexit504:                                     ; preds = %.loopexit503, %.lr.ph732
  %storemerge425.lcssa = phi i32 [ %i.gd, %.lr.ph732 ], [ %3, %.loopexit503 ]
  store i32 %storemerge425.lcssa, ptr %.sroa.84, align 4, !tbaa !8
  %exitcond1344.not = icmp eq i32 %i.gd, %3
  br i1 %exitcond1344.not, label %._crit_edge733, label %.lr.ph732, !llvm.loop !71

.lr.ph732:                                        ; preds = %.preheader505, %.loopexit504
  %storemerge406731 = phi i32 [ %i.gd, %.loopexit504 ], [ 0, %.preheader505 ] ; 2 uses
  %i.gd = add nuw nsw i32 %storemerge406731, 1    ; 5 uses
  %i.ge = icmp slt i32 %i.gd, %3
  br i1 %i.ge, label %.lr.ph728, label %.loopexit504

.lr.ph728:                                        ; preds = %.lr.ph732
  %i.gf = shl nuw nsw i32 %storemerge406731, 1
  %i.gg = shl nuw i32 1, %i.gf
  br label %bb.ad

.loopexit503:                                     ; preds = %.loopexit502, %bb.ad
  %storemerge426.lcssa = phi i32 [ %i.gh, %bb.ad ], [ %3, %.loopexit502 ]
  store i32 %storemerge426.lcssa, ptr %.sroa.170, align 8, !tbaa !8
  %exitcond1343.not = icmp eq i32 %i.gh, %3
  br i1 %exitcond1343.not, label %.loopexit504, label %bb.ad, !llvm.loop !72

bb.ad:                                            ; preds = %.lr.ph728, %.loopexit503
  %storemerge425726 = phi i32 [ %i.gd, %.lr.ph728 ], [ %i.gh, %.loopexit503 ] ; 2 uses
  %i.gh = add nuw nsw i32 %storemerge425726, 1    ; 5 uses
  %i.gi = icmp slt i32 %i.gh, %3
  br i1 %i.gi, label %.lr.ph722, label %.loopexit503

.lr.ph722:                                        ; preds = %bb.ad
  %i.gj = shl nuw nsw i32 %storemerge425726, 1
  %i.gk = shl nuw i32 1, %i.gj
  %i.gl = or i32 %i.gk, %i.gg
  br label %bb.ae

.loopexit502:                                     ; preds = %.loopexit500, %bb.ae
  %storemerge427.lcssa = phi i32 [ %i.gm, %bb.ae ], [ %3, %.loopexit500 ]
  store i32 %storemerge427.lcssa, ptr %.sroa.256, align 4, !tbaa !8
  %exitcond1342.not = icmp eq i32 %i.gm, %3
  br i1 %exitcond1342.not, label %.loopexit503, label %bb.ae, !llvm.loop !73

bb.ae:                                            ; preds = %.lr.ph722, %.loopexit502
  %storemerge426720 = phi i32 [ %i.gh, %.lr.ph722 ], [ %i.gm, %.loopexit502 ] ; 2 uses
  %i.gm = add nuw nsw i32 %storemerge426720, 1    ; 5 uses
  %i.gn = icmp slt i32 %i.gm, %3
  br i1 %i.gn, label %.lr.ph716, label %.loopexit502

.lr.ph716:                                        ; preds = %bb.ae
  %i.go = shl nuw nsw i32 %storemerge426720, 1
  %i.gp = shl nuw i32 1, %i.go
  %i.gq = or i32 %i.gl, %i.gp
  br label %bb.af

.loopexit500:                                     ; preds = %bb.ah, %bb.af
  %storemerge428.lcssa = phi i32 [ %i.gr, %bb.af ], [ %3, %bb.ah ]
  store i32 %storemerge428.lcssa, ptr %.sroa.340, align 16, !tbaa !8
  %exitcond1341.not = icmp eq i32 %i.gr, %3
  br i1 %exitcond1341.not, label %.loopexit502, label %bb.af, !llvm.loop !74

bb.af:                                            ; preds = %.lr.ph716, %.loopexit500
  %storemerge427714 = phi i32 [ %i.gm, %.lr.ph716 ], [ %i.gr, %.loopexit500 ] ; 2 uses
  %i.gr = add nsw i32 %storemerge427714, 1        ; 5 uses
  %i.gs = icmp slt i32 %i.gr, %3
  br i1 %i.gs, label %.lr.ph710, label %.loopexit500

.lr.ph710:                                        ; preds = %bb.af
  %i.gt = shl nuw nsw i32 %storemerge427714, 1
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = or i32 %i.gq, %i.gu
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph710, %bb.ah
  %storemerge428708 = phi i32 [ %i.gr, %.lr.ph710 ], [ %i.ha, %bb.ah ] ; 2 uses
  %i.gw = shl nuw nsw i32 %storemerge428708, 1
  %i.gx = shl nuw i32 1, %i.gw
  %i.gy = or i32 %i.gv, %i.gx                     ; 2 uses
  %i.gz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.gy, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not429 = icmp eq i32 %i.gz, 0
  br i1 %.not429, label %bb.ah, label %.loopexit461

bb.ah:                                            ; preds = %bb.ag
  %i.ha = add nsw i32 %storemerge428708, 1        ; 2 uses
  %i.hb = icmp slt i32 %i.ha, %3
  br i1 %i.hb, label %bb.ag, label %.loopexit500, !llvm.loop !75

._crit_edge733:                                   ; preds = %.loopexit504
  %i.hc = icmp slt i32 %i.c, 1
  br i1 %i.hc, label %.loopexit461, label %.preheader499

._crit_edge733.thread:                            ; preds = %.preheader505
  %or.cond1873 = icmp slt i32 %i.c, 2
  br i1 %or.cond1873, label %.loopexit461, label %.preheader494

.preheader499:                                    ; preds = %._crit_edge733
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  br label %.lr.ph750

.loopexit498.loopexit:                            ; preds = %.loopexit497
  store i32 %i.hk, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit498

.loopexit498:                                     ; preds = %.loopexit498.loopexit, %.lr.ph750
  %i.hd = phi i32 [ %i.hm, %.loopexit498.loopexit ], [ %i.hf, %.lr.ph750 ]
  store i32 %i.hf, ptr %.sroa.0, align 16, !tbaa !8
  %exitcond1350.not = icmp eq i32 %i.hf, %3
  br i1 %exitcond1350.not, label %._crit_edge751.loopexit, label %.lr.ph750, !llvm.loop !76

.lr.ph750:                                        ; preds = %.preheader499, %.loopexit498
  %i.he = phi i32 [ %i.hf, %.loopexit498 ], [ 0, %.preheader499 ] ; 2 uses
  %i.hf = add nuw nsw i32 %i.he, 1                ; 6 uses
  %i.hg = icmp slt i32 %i.hf, %3
  br i1 %i.hg, label %.lr.ph748, label %.loopexit498

.lr.ph748:                                        ; preds = %.lr.ph750
  %i.hh = shl nuw nsw i32 %i.he, 1                ; 2 uses
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = shl i32 3, %i.hh
  br label %bb.ai

.loopexit497.loopexit:                            ; preds = %.loopexit496
  store i32 %i.hs, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit497

.loopexit497:                                     ; preds = %.loopexit497.loopexit, %bb.ai
  %i.hk = phi i32 [ %i.hu, %.loopexit497.loopexit ], [ %i.hm, %bb.ai ]
  %exitcond1349.not = icmp eq i32 %i.hm, %3
  br i1 %exitcond1349.not, label %.loopexit498.loopexit, label %bb.ai, !llvm.loop !77

bb.ai:                                            ; preds = %.lr.ph748, %.loopexit497
  %i.hl = phi i32 [ %i.hf, %.lr.ph748 ], [ %i.hm, %.loopexit497 ] ; 3 uses
  %i.hm = add nuw nsw i32 %i.hl, 1                ; 6 uses
  %i.hn = icmp slt i32 %i.hm, %3
  br i1 %i.hn, label %.lr.ph745, label %.loopexit497

.lr.ph745:                                        ; preds = %bb.ai
  %i.ho = shl nuw nsw i32 %i.hl, 1                ; 2 uses
  %i.hp = shl nuw i32 1, %i.ho
  %i.hq = or i32 %i.hp, %i.hi
  %i.hr = shl i32 3, %i.ho
  br label %bb.aj

.loopexit496.loopexit:                            ; preds = %.loopexit495
  store i32 %i.ia, ptr %.sroa.340, align 16, !tbaa !8
  br label %.loopexit496

.loopexit496:                                     ; preds = %.loopexit496.loopexit, %bb.aj
  %i.hs = phi i32 [ %i.ic, %.loopexit496.loopexit ], [ %i.hu, %bb.aj ]
  %exitcond1348.not = icmp eq i32 %i.hu, %3
  br i1 %exitcond1348.not, label %.loopexit497.loopexit, label %bb.aj, !llvm.loop !78

bb.aj:                                            ; preds = %.lr.ph745, %.loopexit496
  %i.ht = phi i32 [ %i.hm, %.lr.ph745 ], [ %i.hu, %.loopexit496 ] ; 3 uses
  %i.hu = add nuw nsw i32 %i.ht, 1                ; 6 uses
  %i.hv = icmp slt i32 %i.hu, %3
  br i1 %i.hv, label %.lr.ph742, label %.loopexit496

.lr.ph742:                                        ; preds = %bb.aj
  %i.hw = shl nuw nsw i32 %i.ht, 1                ; 2 uses
  %i.hx = shl nuw i32 1, %i.hw
  %i.hy = or i32 %i.hq, %i.hx
  %i.hz = shl i32 3, %i.hw
  br label %bb.ak

.loopexit495:                                     ; preds = %bb.aq, %bb.ak
  %i.ia = phi i32 [ %i.ic, %bb.ak ], [ %i.ix, %bb.aq ]
  %exitcond1347.not = icmp eq i32 %i.ic, %3
  br i1 %exitcond1347.not, label %.loopexit496.loopexit, label %bb.ak, !llvm.loop !79

bb.ak:                                            ; preds = %.lr.ph742, %.loopexit495
  %i.ib = phi i32 [ %i.hu, %.lr.ph742 ], [ %i.ic, %.loopexit495 ] ; 3 uses
  %i.ic = add nsw i32 %i.ib, 1                    ; 6 uses
  %i.id = icmp slt i32 %i.ic, %3
  br i1 %i.id, label %.lr.ph739, label %.loopexit495

.lr.ph739:                                        ; preds = %bb.ak
  %i.ie = shl nsw i32 %i.ib, 1                    ; 2 uses
  %i.if = shl nuw i32 1, %i.ie
  %i.ig = or i32 %i.hy, %i.if
  %i.ih = shl i32 3, %i.ie
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph739, %bb.aq
  %i.ii = phi i32 [ %i.ic, %.lr.ph739 ], [ %i.ix, %bb.aq ] ; 3 uses
  %i.ij = shl nsw i32 %i.ii, 1                    ; 2 uses
  %i.ik = shl nuw i32 1, %i.ij
  %i.il = or i32 %i.ig, %i.ik                     ; 6 uses
  %i.im = or i32 %i.hj, %i.il
  %i.in = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.im, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not424 = icmp eq i32 %i.in, 0
  br i1 %.not424, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.io = or i32 %i.hr, %i.il
  %i.ip = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.io, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not424.1 = icmp eq i32 %i.ip, 0
  br i1 %.not424.1, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.iq = or i32 %i.hz, %i.il
  %i.ir = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.iq, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not424.2 = icmp eq i32 %i.ir, 0
  br i1 %.not424.2, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.is = or i32 %i.ih, %i.il
  %i.it = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.is, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not424.3 = icmp eq i32 %i.it, 0
  br i1 %.not424.3, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.iu = shl i32 3, %i.ij
  %i.iv = or i32 %i.iu, %i.il
  %i.iw = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.iv, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not424.4 = icmp eq i32 %i.iw, 0
  br i1 %.not424.4, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ix = add nsw i32 %i.ii, 1                    ; 3 uses
  %i.iy = icmp slt i32 %i.ix, %3
  br i1 %i.iy, label %bb.al, label %.loopexit495, !llvm.loop !80

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.lcssa944.sroa.phi = phi ptr [ %.sroa.0, %bb.al ], [ %.sroa.84, %bb.am ], [ %.sroa.170, %bb.an ], [ %.sroa.256, %bb.ao ], [ %.sroa.340, %bb.ap ]
  store i32 %i.hl, ptr %.sroa.84, align 4, !tbaa !8
  store i32 %i.ht, ptr %.sroa.170, align 8, !tbaa !8
  store i32 %i.ib, ptr %.sroa.256, align 4, !tbaa !8
  store i32 %i.ii, ptr %.sroa.340, align 16, !tbaa !8
  %i.iz = load i32, ptr %.lcssa944.sroa.phi, align 4, !tbaa !8
  %i.ja = shl nsw i32 %i.iz, 1
  %i.jb = shl i32 3, %i.ja
  %i.jc = or i32 %i.jb, %i.il
  br label %.loopexit461

._crit_edge751.loopexit:                          ; preds = %.loopexit498
  store i32 %i.hd, ptr %.sroa.84, align 4, !tbaa !8
  %.old1872 = icmp eq i32 %i.c, 1
  br i1 %.old1872, label %.loopexit461, label %.preheader494

.preheader494:                                    ; preds = %._crit_edge733.thread, %._crit_edge751.loopexit
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  br i1 %i.e, label %.lr.ph771, label %.loopexit461

.loopexit493.loopexit:                            ; preds = %.loopexit492
  store i32 %i.jk, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit493

.loopexit493:                                     ; preds = %.loopexit493.loopexit, %.lr.ph771
  %i.jd = phi i32 [ %i.jm, %.loopexit493.loopexit ], [ %i.jf, %.lr.ph771 ]
  store i32 %i.jf, ptr %.sroa.0, align 16, !tbaa !8
  %exitcond1382.not = icmp eq i32 %i.jf, %3
  br i1 %exitcond1382.not, label %._crit_edge772, label %.lr.ph771, !llvm.loop !81

.lr.ph771:                                        ; preds = %.preheader494, %.loopexit493
  %i.je = phi i32 [ %i.jf, %.loopexit493 ], [ 0, %.preheader494 ] ; 2 uses
  %i.jf = add nuw nsw i32 %i.je, 1                ; 6 uses
  %i.jg = icmp slt i32 %i.jf, %3
  br i1 %i.jg, label %.lr.ph769, label %.loopexit493

.lr.ph769:                                        ; preds = %.lr.ph771
  %i.jh = shl nuw nsw i32 %i.je, 1                ; 2 uses
  %i.ji = shl nuw i32 1, %i.jh
  %i.jj = shl i32 3, %i.jh                        ; 4 uses
  br label %bb.as

.loopexit492.loopexit:                            ; preds = %.loopexit491
  store i32 %i.jv, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit492

.loopexit492:                                     ; preds = %.loopexit492.loopexit, %bb.as
  %i.jk = phi i32 [ %i.jx, %.loopexit492.loopexit ], [ %i.jm, %bb.as ]
  %exitcond1381.not = icmp eq i32 %i.jm, %3
  br i1 %exitcond1381.not, label %.loopexit493.loopexit, label %bb.as, !llvm.loop !82

bb.as:                                            ; preds = %.lr.ph769, %.loopexit492
  %i.jl = phi i32 [ %i.jf, %.lr.ph769 ], [ %i.jm, %.loopexit492 ] ; 4 uses
  %i.jm = add nuw nsw i32 %i.jl, 1                ; 6 uses
  %i.jn = icmp slt i32 %i.jm, %3
  br i1 %i.jn, label %.lr.ph766, label %.loopexit492

.lr.ph766:                                        ; preds = %bb.as
  %i.jo = shl nuw nsw i32 %i.jl, 1                ; 2 uses
  %i.jp = shl nuw i32 1, %i.jo
  %i.jq = or i32 %i.jp, %i.ji
  %i.jr = shl nuw nsw i32 %i.jl, 1
  %i.js = shl i32 3, %i.jr
  %i.jt = or i32 %i.jj, %i.js
  %i.ju = shl i32 3, %i.jo                        ; 3 uses
  br label %bb.at

.loopexit491.loopexit:                            ; preds = %.loopexit490
  store i32 %i.kj, ptr %.sroa.340, align 16, !tbaa !8
  br label %.loopexit491

.loopexit491:                                     ; preds = %.loopexit491.loopexit, %bb.at
  %i.jv = phi i32 [ %i.kl, %.loopexit491.loopexit ], [ %i.jx, %bb.at ]
  %exitcond1380.not = icmp eq i32 %i.jx, %3
  br i1 %exitcond1380.not, label %.loopexit492.loopexit, label %bb.at, !llvm.loop !83

bb.at:                                            ; preds = %.lr.ph766, %.loopexit491
  %i.jw = phi i32 [ %i.jm, %.lr.ph766 ], [ %i.jx, %.loopexit491 ] ; 5 uses
  %i.jx = add nuw nsw i32 %i.jw, 1                ; 6 uses
  %i.jy = icmp slt i32 %i.jx, %3
  br i1 %i.jy, label %.lr.ph763, label %.loopexit491

.lr.ph763:                                        ; preds = %bb.at
  %i.jz = shl nuw nsw i32 %i.jw, 1                ; 2 uses
  %i.ka = shl nuw i32 1, %i.jz
  %i.kb = or i32 %i.jq, %i.ka
  %i.kc = shl nuw nsw i32 %i.jw, 1
  %i.kd = shl i32 3, %i.kc
  %i.ke = or i32 %i.jj, %i.kd
  %i.kf = shl nuw nsw i32 %i.jw, 1
  %i.kg = shl i32 3, %i.kf
  %i.kh = or i32 %i.ju, %i.kg
  %i.ki = shl i32 3, %i.jz                        ; 2 uses
  br label %bb.au

.loopexit490:                                     ; preds = %.loopexit489.4, %bb.au
  %i.kj = phi i32 [ %i.kl, %bb.au ], [ %i.lp, %.loopexit489.4 ]
  %exitcond1379.not = icmp eq i32 %i.kl, %3
  br i1 %exitcond1379.not, label %.loopexit491.loopexit, label %bb.au, !llvm.loop !84

bb.au:                                            ; preds = %.lr.ph763, %.loopexit490
  %i.kk = phi i32 [ %i.jx, %.lr.ph763 ], [ %i.kl, %.loopexit490 ] ; 3 uses
  %i.kl = add nsw i32 %i.kk, 1                    ; 6 uses
  %i.km = icmp slt i32 %i.kl, %3
  br i1 %i.km, label %.lr.ph760, label %.loopexit490

.lr.ph760:                                        ; preds = %bb.au
  %i.kn = shl nsw i32 %i.kk, 1                    ; 5 uses
  %i.ko = shl nuw i32 1, %i.kn
  %i.kp = or i32 %i.kb, %i.ko
  %i.kq = shl i32 3, %i.kn
  %i.kr = or i32 %i.jj, %i.kq
  %i.ks = shl i32 3, %i.kn
  %i.kt = or i32 %i.ju, %i.ks
  %i.ku = shl i32 3, %i.kn
  %i.kv = or i32 %i.ki, %i.ku
  %i.kw = shl i32 3, %i.kn
  br label %.lr.ph756

.lr.ph756.1:                                      ; preds = %bb.ba
  %i.kx = or i32 %i.kh, %i.lu
  %i.ky = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.kx, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.1 = icmp eq i32 %i.ky, 0
  br i1 %.not419.1, label %bb.av, label %.loopexit1359

bb.av:                                            ; preds = %.lr.ph756.1
  %i.kz = or i32 %i.kt, %i.lu
  %i.la = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.kz, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.1.1 = icmp eq i32 %i.la, 0
  br i1 %.not419.1.1, label %bb.aw, label %.loopexit1359

bb.aw:                                            ; preds = %bb.av
  %i.lb = shl i32 3, %i.ls
  %i.lc = or i32 %i.ju, %i.lb
  %i.ld = or i32 %i.lc, %i.lu
  %i.le = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.ld, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.1.2 = icmp eq i32 %i.le, 0
  br i1 %.not419.1.2, label %.lr.ph756.2, label %.loopexit1359

.lr.ph756.2:                                      ; preds = %bb.aw
  %i.lf = or i32 %i.kv, %i.lu
  %i.lg = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.lf, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.2 = icmp eq i32 %i.lg, 0
  br i1 %.not419.2, label %bb.ax, label %.loopexit1359

bb.ax:                                            ; preds = %.lr.ph756.2
  %i.lh = shl i32 3, %i.ls
  %i.li = or i32 %i.ki, %i.lh
  %i.lj = or i32 %i.li, %i.lu
  %i.lk = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.lj, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.2.1 = icmp eq i32 %i.lk, 0
  br i1 %.not419.2.1, label %.lr.ph756.3, label %.loopexit1359

.lr.ph756.3:                                      ; preds = %bb.ax
  %i.ll = shl i32 3, %i.ls
  %i.lm = or i32 %i.kw, %i.ll
  %i.ln = or i32 %i.lm, %i.lu
  %i.lo = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.ln, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.3 = icmp eq i32 %i.lo, 0
  br i1 %.not419.3, label %.loopexit489.4, label %.loopexit1359

.loopexit489.4:                                   ; preds = %.lr.ph756.3
  %i.lp = add nsw i32 %i.lr, 1                    ; 3 uses
  %i.lq = icmp slt i32 %i.lp, %3
  br i1 %i.lq, label %.lr.ph756, label %.loopexit490, !llvm.loop !85

.lr.ph756:                                        ; preds = %.loopexit489.4, %.lr.ph760
  %i.lr = phi i32 [ %i.kl, %.lr.ph760 ], [ %i.lp, %.loopexit489.4 ] ; 3 uses
  %i.ls = shl nsw i32 %i.lr, 1                    ; 5 uses
  %i.lt = shl nuw i32 1, %i.ls
  %i.lu = or i32 %i.kp, %i.lt                     ; 11 uses
  %i.lv = or i32 %i.jt, %i.lu
  %i.lw = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.lv, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419 = icmp eq i32 %i.lw, 0
  br i1 %.not419, label %bb.ay, label %.loopexit1359

bb.ay:                                            ; preds = %.lr.ph756
  %i.lx = or i32 %i.ke, %i.lu
  %i.ly = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.lx, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.11376 = icmp eq i32 %i.ly, 0
  br i1 %.not419.11376, label %bb.az, label %.loopexit1359

bb.az:                                            ; preds = %bb.ay
  %i.lz = or i32 %i.kr, %i.lu
  %i.ma = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.lz, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.21377 = icmp eq i32 %i.ma, 0
  br i1 %.not419.21377, label %bb.ba, label %.loopexit1359

bb.ba:                                            ; preds = %bb.az
  %i.mb = shl i32 3, %i.ls
  %i.mc = or i32 %i.jj, %i.mb
  %i.md = or i32 %i.mc, %i.lu
  %i.me = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.md, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not419.31378 = icmp eq i32 %i.me, 0
  br i1 %.not419.31378, label %.lr.ph756.1, label %.loopexit1359

.loopexit1359:                                    ; preds = %.lr.ph756.3, %.lr.ph756.2, %bb.ax, %.lr.ph756.1, %bb.av, %bb.aw, %.lr.ph756, %bb.ay, %bb.az, %bb.ba
  %.lcssa941.sroa.phi = phi ptr [ %.sroa.170, %.lr.ph756.2 ], [ %.sroa.84, %.lr.ph756.1 ], [ %.sroa.0, %.lr.ph756 ], [ %.sroa.0, %bb.ba ], [ %.sroa.0, %bb.az ], [ %.sroa.0, %bb.ay ], [ %.sroa.84, %bb.aw ], [ %.sroa.84, %bb.av ], [ %.sroa.170, %bb.ax ], [ %.sroa.256, %.lr.ph756.3 ]
  %.lcssa939.sroa.phi = phi ptr [ %.sroa.256, %.lr.ph756.2 ], [ %.sroa.170, %.lr.ph756.1 ], [ %.sroa.84, %.lr.ph756 ], [ %.sroa.340, %bb.ba ], [ %.sroa.256, %bb.az ], [ %.sroa.170, %bb.ay ], [ %.sroa.340, %bb.aw ], [ %.sroa.256, %bb.av ], [ %.sroa.340, %bb.ax ], [ %.sroa.340, %.lr.ph756.3 ]
  store i32 %i.jl, ptr %.sroa.84, align 4, !tbaa !8
  store i32 %i.jw, ptr %.sroa.170, align 8, !tbaa !8
  store i32 %i.kk, ptr %.sroa.256, align 4, !tbaa !8
  store i32 %i.lr, ptr %.sroa.340, align 16, !tbaa !8
  %i.mf = load i32, ptr %.lcssa941.sroa.phi, align 4, !tbaa !8
  %i.mg = shl nsw i32 %i.mf, 1
  %i.mh = shl i32 3, %i.mg
  %i.mi = load i32, ptr %.lcssa939.sroa.phi, align 4, !tbaa !8
  %i.mj = shl nsw i32 %i.mi, 1
  %i.mk = shl i32 3, %i.mj
  %i.ml = or i32 %i.mh, %i.mk
  %i.mm = or i32 %i.ml, %i.lu
  br label %.loopexit461

._crit_edge772:                                   ; preds = %.loopexit493
  store i32 %i.jd, ptr %.sroa.84, align 4, !tbaa !8
  %i.mn = icmp slt i32 %i.c, 3
  br i1 %i.mn, label %.loopexit461, label %.preheader487

.preheader487:                                    ; preds = %._crit_edge772
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  br label %.lr.ph796

.loopexit486.loopexit:                            ; preds = %.loopexit485
  store i32 %i.my, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit486

.loopexit486:                                     ; preds = %.loopexit486.loopexit, %.lr.ph796
  %i.mo = phi i32 [ %i.mz, %.loopexit486.loopexit ], [ %i.mp, %.lr.ph796 ]
  store i32 %i.mp, ptr %.sroa.0, align 16, !tbaa !8
  %exitcond1470.not = icmp eq i32 %i.mp, %3
  br i1 %exitcond1470.not, label %.loopexit461.loopexit1679, label %.lr.ph796, !llvm.loop !86

.lr.ph796:                                        ; preds = %.preheader487, %.loopexit486
  %storemerge409795 = phi i32 [ %i.mp, %.loopexit486 ], [ 0, %.preheader487 ] ; 4 uses
  %i.mp = add nuw nsw i32 %storemerge409795, 1    ; 6 uses
  %i.mq = icmp slt i32 %i.mp, %3
  br i1 %i.mq, label %.lr.ph794, label %.loopexit486

.lr.ph794:                                        ; preds = %.lr.ph796
  %i.mr = shl nuw nsw i32 %storemerge409795, 1    ; 2 uses
  %i.ms = shl nuw i32 1, %i.mr
  %i.mt = shl nuw nsw i32 %storemerge409795, 1
  %i.mu = shl i32 3, %i.mt
  %i.mv = shl nuw nsw i32 %storemerge409795, 1
  %i.mw = shl i32 3, %i.mv
  %i.mx = shl i32 3, %i.mr
  br label %bb.bb

.loopexit485.loopexit:                            ; preds = %.loopexit484
  store i32 %i.nk, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit485

.loopexit485:                                     ; preds = %.loopexit485.loopexit, %bb.bb
  %i.my = phi i32 [ %i.nl, %.loopexit485.loopexit ], [ %i.mz, %bb.bb ]
  %exitcond1469.not = icmp eq i32 %i.mz, %3
  br i1 %exitcond1469.not, label %.loopexit486.loopexit, label %bb.bb, !llvm.loop !87

bb.bb:                                            ; preds = %.lr.ph794, %.loopexit485
  %storemerge410792 = phi i32 [ %i.mp, %.lr.ph794 ], [ %i.mz, %.loopexit485 ] ; 5 uses
  %i.mz = add nuw nsw i32 %storemerge410792, 1    ; 6 uses
  %i.na = icmp slt i32 %i.mz, %3
  br i1 %i.na, label %.lr.ph791, label %.loopexit485

.lr.ph791:                                        ; preds = %bb.bb
  %i.nb = shl nuw nsw i32 %storemerge410792, 1    ; 2 uses
  %i.nc = shl nuw i32 1, %i.nb
  %i.nd = or i32 %i.nc, %i.ms
  %i.ne = shl nuw nsw i32 %storemerge410792, 1
  %i.nf = shl i32 3, %i.ne
  %i.ng = or i32 %i.mu, %i.nf                     ; 3 uses
  %i.nh = shl nuw nsw i32 %storemerge410792, 1
  %i.ni = shl i32 3, %i.nh
  %i.nj = shl i32 3, %i.nb
  br label %bb.bc

.loopexit484.loopexit:                            ; preds = %.loopexit483
  store i32 %i.oa, ptr %.sroa.340, align 16, !tbaa !8
  br label %.loopexit484

.loopexit484:                                     ; preds = %.loopexit484.loopexit, %bb.bc
  %i.nk = phi i32 [ %i.ob, %.loopexit484.loopexit ], [ %i.nl, %bb.bc ]
  %exitcond1468.not = icmp eq i32 %i.nl, %3
  br i1 %exitcond1468.not, label %.loopexit485.loopexit, label %bb.bc, !llvm.loop !88

bb.bc:                                            ; preds = %.lr.ph791, %.loopexit484
  %storemerge411789 = phi i32 [ %i.mz, %.lr.ph791 ], [ %i.nl, %.loopexit484 ] ; 6 uses
  %i.nl = add nuw nsw i32 %storemerge411789, 1    ; 6 uses
  %i.nm = icmp slt i32 %i.nl, %3
  br i1 %i.nm, label %.lr.ph788, label %.loopexit484

.lr.ph788:                                        ; preds = %bb.bc
  %i.nn = shl nuw nsw i32 %storemerge411789, 1    ; 2 uses
  %i.no = shl nuw i32 1, %i.nn
  %i.np = or i32 %i.nd, %i.no
  %i.nq = shl nuw nsw i32 %storemerge411789, 1
  %i.nr = shl i32 3, %i.nq
  %i.ns = or i32 %i.ng, %i.nr
  %i.nt = shl nuw nsw i32 %storemerge411789, 1
  %i.nu = shl i32 3, %i.nt
  %i.nv = or i32 %i.mw, %i.nu                     ; 2 uses
  %i.nw = shl nuw nsw i32 %storemerge411789, 1
  %i.nx = shl i32 3, %i.nw
  %i.ny = or i32 %i.ni, %i.nx                     ; 2 uses
  %i.nz = shl i32 3, %i.nn
  br label %bb.bd

.loopexit483:                                     ; preds = %.loopexit482.4, %bb.bd
  %i.oa = phi i32 [ %i.ob, %bb.bd ], [ %i.pg, %.loopexit482.4 ]
  %exitcond1467.not = icmp eq i32 %i.ob, %3
  br i1 %exitcond1467.not, label %.loopexit484.loopexit, label %bb.bd, !llvm.loop !89

bb.bd:                                            ; preds = %.lr.ph788, %.loopexit483
  %storemerge412786 = phi i32 [ %i.nl, %.lr.ph788 ], [ %i.ob, %.loopexit483 ] ; 3 uses
  %i.ob = add nsw i32 %storemerge412786, 1        ; 6 uses
  %i.oc = icmp slt i32 %i.ob, %3
  br i1 %i.oc, label %.lr.ph785, label %.loopexit483

.lr.ph785:                                        ; preds = %bb.bd
  %i.od = shl nsw i32 %storemerge412786, 1        ; 7 uses
  %i.oe = shl nuw i32 1, %i.od
  %i.of = or i32 %i.np, %i.oe
  %i.og = shl i32 3, %i.od
  %i.oh = or i32 %i.ng, %i.og
  %i.oi = shl i32 3, %i.od
  %i.oj = or i32 %i.nv, %i.oi
  %i.ok = shl i32 3, %i.od
  %i.ol = or i32 %i.mx, %i.ok
  %i.om = shl i32 3, %i.od
  %i.on = or i32 %i.ny, %i.om
  %i.oo = shl i32 3, %i.od
  %i.op = or i32 %i.nj, %i.oo
  %i.oq = shl i32 3, %i.od
  %i.or = or i32 %i.nz, %i.oq
  br label %.lr.ph778

.lr.ph778.1:                                      ; preds = %.lr.ph778.21440
  %i.os = or i32 %i.on, %i.pv
  %i.ot = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.os, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.1 = icmp eq i32 %i.ot, 0
  br i1 %.not414.1, label %bb.be, label %.loopexit1399

bb.be:                                            ; preds = %.lr.ph778.1
  %i.ou = shl i32 3, %i.pt
  %i.ov = or i32 %i.ny, %i.ou
  %i.ow = or i32 %i.ov, %i.pv
  %i.ox = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.ow, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.1.11435 = icmp eq i32 %i.ox, 0
  br i1 %.not414.1.11435, label %.lr.ph778.1.1, label %.loopexit1399

.lr.ph778.1.1:                                    ; preds = %bb.be
  %i.oy = shl i32 3, %i.pt
  %i.oz = or i32 %i.op, %i.oy
  %i.pa = or i32 %i.oz, %i.pv
  %i.pb = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.pa, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.1.1 = icmp eq i32 %i.pb, 0
  br i1 %.not414.1.1, label %.lr.ph778.2, label %.loopexit1399

.lr.ph778.2:                                      ; preds = %.lr.ph778.1.1
  %i.pc = shl i32 3, %i.pt
  %i.pd = or i32 %i.or, %i.pc
  %i.pe = or i32 %i.pd, %i.pv
  %i.pf = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.pe, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.2 = icmp eq i32 %i.pf, 0
  br i1 %.not414.2, label %.loopexit482.4, label %.loopexit1399

.loopexit482.4:                                   ; preds = %.lr.ph778.2
  %i.pg = add nsw i32 %i.ps, 1                    ; 3 uses
  %i.ph = icmp slt i32 %i.pg, %3
  br i1 %i.ph, label %.lr.ph778, label %.loopexit483, !llvm.loop !90

.lr.ph778.11436:                                  ; preds = %bb.bh
  %i.pi = or i32 %i.oj, %i.pv
  %i.pj = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.pi, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.11437 = icmp eq i32 %i.pj, 0
  br i1 %.not414.11437, label %bb.bf, label %.loopexit1399

bb.bf:                                            ; preds = %.lr.ph778.11436
  %i.pk = shl i32 3, %i.pt
  %i.pl = or i32 %i.nv, %i.pk
  %i.pm = or i32 %i.pl, %i.pv
  %i.pn = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.pm, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.11437.1 = icmp eq i32 %i.pn, 0
  br i1 %.not414.11437.1, label %.lr.ph778.21440, label %.loopexit1399

.lr.ph778.21440:                                  ; preds = %bb.bf
  %i.po = shl i32 3, %i.pt
  %i.pp = or i32 %i.ol, %i.po
  %i.pq = or i32 %i.pp, %i.pv
  %i.pr = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.pq, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.21441 = icmp eq i32 %i.pr, 0
  br i1 %.not414.21441, label %.lr.ph778.1, label %.loopexit1399

.lr.ph778:                                        ; preds = %.lr.ph785, %.loopexit482.4
  %i.ps = phi i32 [ %i.ob, %.lr.ph785 ], [ %i.pg, %.loopexit482.4 ] ; 3 uses
  %i.pt = shl nsw i32 %i.ps, 1                    ; 7 uses
  %i.pu = shl nuw i32 1, %i.pt
  %i.pv = or i32 %i.of, %i.pu                     ; 11 uses
  %i.pw = or i32 %i.ns, %i.pv
  %i.px = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.pw, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414 = icmp eq i32 %i.px, 0
  br i1 %.not414, label %bb.bg, label %.loopexit1399

bb.bg:                                            ; preds = %.lr.ph778
  %i.py = or i32 %i.oh, %i.pv
  %i.pz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.py, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.11465 = icmp eq i32 %i.pz, 0
  br i1 %.not414.11465, label %bb.bh, label %.loopexit1399

bb.bh:                                            ; preds = %bb.bg
  %i.qa = shl i32 3, %i.pt
  %i.qb = or i32 %i.ng, %i.qa
  %i.qc = or i32 %i.qb, %i.pv
  %i.qd = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3, i32 noundef %i.qc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not414.21466 = icmp eq i32 %i.qd, 0
  br i1 %.not414.21466, label %.lr.ph778.11436, label %.loopexit1399

.loopexit1399:                                    ; preds = %.lr.ph778.2, %bb.be, %.lr.ph778.1, %.lr.ph778.1.1, %bb.bh, %bb.bg, %.lr.ph778, %bb.bf, %.lr.ph778.11436, %.lr.ph778.21440
  %.lcssa936.sroa.phi = phi ptr [ %.sroa.84, %bb.be ], [ %.sroa.0, %bb.bh ], [ %.sroa.0, %.lr.ph778.21440 ], [ %.sroa.0, %.lr.ph778.11436 ], [ %.sroa.0, %bb.bf ], [ %.sroa.0, %.lr.ph778 ], [ %.sroa.0, %bb.bg ], [ %.sroa.84, %.lr.ph778.1.1 ], [ %.sroa.84, %.lr.ph778.1 ], [ %.sroa.170, %.lr.ph778.2 ]
  %.lcssa935.sroa.phi = phi ptr [ %.sroa.170, %bb.be ], [ %.sroa.84, %bb.bh ], [ %.sroa.256, %.lr.ph778.21440 ], [ %.sroa.170, %.lr.ph778.11436 ], [ %.sroa.170, %bb.bf ], [ %.sroa.84, %.lr.ph778 ], [ %.sroa.84, %bb.bg ], [ %.sroa.256, %.lr.ph778.1.1 ], [ %.sroa.170, %.lr.ph778.1 ], [ %.sroa.256, %.lr.ph778.2 ]
  %.lcssa933.sroa.phi = phi ptr [ %.sroa.340, %bb.be ], [ %.sroa.340, %bb.bh ], [ %.sroa.340, %.lr.ph778.21440 ], [ %.sroa.256, %.lr.ph778.11436 ], [ %.sroa.340, %bb.bf ], [ %.sroa.170, %.lr.ph778 ], [ %.sroa.256, %bb.bg ], [ %.sroa.340, %.lr.ph778.1.1 ], [ %.sroa.256, %.lr.ph778.1 ], [ %.sroa.340, %.lr.ph778.2 ]
  store i32 %storemerge410792, ptr %.sroa.84, align 4, !tbaa !8
  store i32 %storemerge411789, ptr %.sroa.170, align 8, !tbaa !8
  store i32 %storemerge412786, ptr %.sroa.256, align 4, !tbaa !8
  store i32 %i.ps, ptr %.sroa.340, align 16, !tbaa !8
  %i.qe = load i32, ptr %.lcssa936.sroa.phi, align 4, !tbaa !8
  %i.qf = shl nsw i32 %i.qe, 1
  %i.qg = shl i32 3, %i.qf
  %i.qh = load i32, ptr %.lcssa935.sroa.phi, align 4, !tbaa !8
  %i.qi = shl nsw i32 %i.qh, 1
  %i.qj = shl i32 3, %i.qi
  %i.qk = load i32, ptr %.lcssa933.sroa.phi, align 4, !tbaa !8
  %i.ql = shl nsw i32 %i.qk, 1
  %i.qm = shl i32 3, %i.ql
  %i.qn = or i32 %i.qg, %i.qj
  %i.qo = or i32 %i.qn, %i.qm
  %i.qp = or i32 %i.qo, %i.pv
  br label %.loopexit461

.loopexit542:                                     ; preds = %.loopexit541, %.lr.ph603
  %storemerge403.lcssa.lcssa2825.lcssa2830.lcssa2835 = phi i32 [ %storemerge403.lcssa.lcssa2825.lcssa2830.lcssa2836, %.lr.ph603 ], [ %storemerge403.lcssa.lcssa2825.lcssa2830, %.loopexit541 ] ; 2 uses
  %.lcssa28202822.lcssa2828.lcssa2832 = phi i32 [ %.lcssa28202822.lcssa2828.lcssa2833, %.lr.ph603 ], [ %.lcssa28202822.lcssa2828, %.loopexit541 ] ; 2 uses
  %storemerge400.lcssa = phi i32 [ %i.qq, %.lr.ph603 ], [ %3, %.loopexit541 ]
  store i32 %storemerge400.lcssa, ptr %.sroa.84, align 4, !tbaa !8
  %exitcond1008.not = icmp eq i32 %i.qq, %3
  br i1 %exitcond1008.not, label %._crit_edge, label %.lr.ph603, !llvm.loop !91

.lr.ph603:                                        ; preds = %.lr.ph603.preheader, %.loopexit542
  %storemerge403.lcssa.lcssa2825.lcssa2830.lcssa2836 = phi i32 [ %storemerge403.lcssa.lcssa2825.lcssa2830.lcssa2835, %.loopexit542 ], [ %.sroa.340.promoted2834, %.lr.ph603.preheader ] ; 3 uses
  %.lcssa28202822.lcssa2828.lcssa2833 = phi i32 [ %.lcssa28202822.lcssa2828.lcssa2832, %.loopexit542 ], [ %.sroa.419.promoted, %.lr.ph603.preheader ] ; 3 uses
  %storemerge602 = phi i32 [ %i.qq, %.loopexit542 ], [ 0, %.lr.ph603.preheader ] ; 2 uses
  %i.qq = add nuw nsw i32 %storemerge602, 1       ; 5 uses
  %i.qr = icmp slt i32 %i.qq, %3
  br i1 %i.qr, label %.lr.ph599, label %.loopexit542

.lr.ph599:                                        ; preds = %.lr.ph603
  %i.qs = shl nuw nsw i32 %storemerge602, 1
  %i.qt = shl nuw i32 1, %i.qs
  br label %bb.bi

.loopexit541:                                     ; preds = %.loopexit540, %bb.bi
  %storemerge403.lcssa.lcssa2825.lcssa2830 = phi i32 [ %storemerge403.lcssa.lcssa2825.lcssa2831, %bb.bi ], [ %storemerge403.lcssa.lcssa2825, %.loopexit540 ] ; 2 uses
  %.lcssa28202822.lcssa2828 = phi i32 [ %.lcssa28202822.lcssa2829, %bb.bi ], [ %.lcssa28202822, %.loopexit540 ] ; 2 uses
  %storemerge401.lcssa = phi i32 [ %i.qu, %bb.bi ], [ %3, %.loopexit540 ]
  store i32 %storemerge401.lcssa, ptr %.sroa.170, align 8, !tbaa !8
  %exitcond1007.not = icmp eq i32 %i.qu, %3
  br i1 %exitcond1007.not, label %.loopexit542, label %bb.bi, !llvm.loop !92

bb.bi:                                            ; preds = %.lr.ph599, %.loopexit541
  %storemerge403.lcssa.lcssa2825.lcssa2831 = phi i32 [ %storemerge403.lcssa.lcssa2825.lcssa2830.lcssa2836, %.lr.ph599 ], [ %storemerge403.lcssa.lcssa2825.lcssa2830, %.loopexit541 ] ; 3 uses
  %.lcssa28202822.lcssa2829 = phi i32 [ %.lcssa28202822.lcssa2828.lcssa2833, %.lr.ph599 ], [ %.lcssa28202822.lcssa2828, %.loopexit541 ] ; 3 uses
  %storemerge400598 = phi i32 [ %i.qq, %.lr.ph599 ], [ %i.qu, %.loopexit541 ] ; 2 uses
  %i.qu = add nuw nsw i32 %storemerge400598, 1    ; 5 uses
  %i.qv = icmp slt i32 %i.qu, %3
  br i1 %i.qv, label %.lr.ph594, label %.loopexit541

.lr.ph594:                                        ; preds = %bb.bi
  %i.qw = shl nuw nsw i32 %storemerge400598, 1
  %i.qx = shl nuw i32 1, %i.qw
  %i.qy = or i32 %i.qx, %i.qt
  br label %bb.bj

.loopexit540:                                     ; preds = %.loopexit539, %bb.bj
  %storemerge403.lcssa.lcssa2825 = phi i32 [ %storemerge403.lcssa.lcssa2826, %bb.bj ], [ %storemerge403.lcssa, %.loopexit539 ] ; 2 uses
  %.lcssa28202822 = phi i32 [ %.lcssa28202823, %bb.bj ], [ %i.re, %.loopexit539 ] ; 2 uses
  %storemerge402.lcssa = phi i32 [ %i.qz, %bb.bj ], [ %3, %.loopexit539 ]
  store i32 %storemerge402.lcssa, ptr %.sroa.256, align 4, !tbaa !8
  %exitcond1006.not = icmp eq i32 %i.qz, %3
  br i1 %exitcond1006.not, label %.loopexit541, label %bb.bj, !llvm.loop !93

bb.bj:                                            ; preds = %.lr.ph594, %.loopexit540
  %storemerge403.lcssa.lcssa2826 = phi i32 [ %storemerge403.lcssa.lcssa2825.lcssa2831, %.lr.ph594 ], [ %storemerge403.lcssa.lcssa2825, %.loopexit540 ] ; 3 uses
  %.lcssa28202823 = phi i32 [ %.lcssa28202822.lcssa2829, %.lr.ph594 ], [ %.lcssa28202822, %.loopexit540 ] ; 3 uses
  %storemerge401593 = phi i32 [ %i.qu, %.lr.ph594 ], [ %i.qz, %.loopexit540 ] ; 2 uses
  %i.qz = add nuw nsw i32 %storemerge401593, 1    ; 5 uses
  %i.ra = icmp slt i32 %i.qz, %3
  br i1 %i.ra, label %.lr.ph589, label %.loopexit540

.lr.ph589:                                        ; preds = %bb.bj
  %i.rb = shl nuw nsw i32 %storemerge401593, 1
  %i.rc = shl nuw i32 1, %i.rb
  %i.rd = or i32 %i.qy, %i.rc
  br label %bb.bk

.loopexit539:                                     ; preds = %.lr.ph584, %.loopexit537, %bb.bk
  %i.re = phi i32 [ %i.rf, %bb.bk ], [ %i.rl, %.lr.ph584 ], [ %i.rn, %.loopexit537 ] ; 2 uses
  %storemerge403.lcssa = phi i32 [ %i.rg, %bb.bk ], [ %3, %.loopexit537 ], [ %3, %.lr.ph584 ] ; 2 uses
  %exitcond.not = icmp eq i32 %i.rg, %3
  br i1 %exitcond.not, label %.loopexit540, label %bb.bk, !llvm.loop !94

bb.bk:                                            ; preds = %.lr.ph589, %.loopexit539
  %storemerge403.lcssa2821 = phi i32 [ %storemerge403.lcssa.lcssa2826, %.lr.ph589 ], [ %storemerge403.lcssa, %.loopexit539 ]
  %i.rf = phi i32 [ %.lcssa28202823, %.lr.ph589 ], [ %i.re, %.loopexit539 ] ; 3 uses
  %storemerge402588 = phi i32 [ %i.qz, %.lr.ph589 ], [ %i.rg, %.loopexit539 ] ; 3 uses
  %i.rg = add nsw i32 %storemerge402588, 1        ; 5 uses
  %i.rh = icmp slt i32 %i.rg, %3
  br i1 %i.rh, label %.lr.ph584, label %.loopexit539

.lr.ph584:                                        ; preds = %bb.bk
  %i.ri = shl nuw nsw i32 %storemerge402588, 1
  %i.rj = shl nuw i32 1, %i.ri
  %i.rk = or i32 %i.rd, %i.rj
  %i.rl = add nsw i32 %storemerge402588, 2        ; 3 uses
  %i.rm = icmp slt i32 %i.rl, %3
  br i1 %i.rm, label %.lr.ph, label %.loopexit539

.loopexit537:                                     ; preds = %bb.bm
  %i.rn = add nsw i32 %i.rq, 1                    ; 3 uses
  %i.ro = icmp slt i32 %i.rn, %3
  br i1 %i.ro, label %.lr.ph, label %.loopexit539, !llvm.loop !95

.lr.ph:                                           ; preds = %.lr.ph584, %.loopexit537
  %i.rp = phi i32 [ %3, %.loopexit537 ], [ %i.rf, %.lr.ph584 ]
  %i.rq = phi i32 [ %i.rn, %.loopexit537 ], [ %i.rl, %.lr.ph584 ] ; 3 uses
  %storemerge4035832082 = phi i32 [ %i.rq, %.loopexit537 ], [ %i.rg, %.lr.ph584 ]
  %i.rr = shl nuw nsw i32 %storemerge4035832082, 1
  %i.rs = shl nuw i32 1, %i.rr
  %i.rt = or i32 %i.rk, %i.rs
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph, %bb.bm
  %storemerge404580 = phi i32 [ %i.rq, %.lr.ph ], [ %i.ry, %bb.bm ] ; 2 uses
  %i.ru = shl nuw nsw i32 %storemerge404580, 1
  %i.rv = shl nuw i32 1, %i.ru
  %i.rw = or i32 %i.rt, %i.rv                     ; 2 uses
  %i.rx = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.rw, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not405 = icmp eq i32 %i.rx, 0
  br i1 %.not405, label %bb.bm, label %.loopexit461.loopexit2284

bb.bm:                                            ; preds = %bb.bl
  %i.ry = add nsw i32 %storemerge404580, 1        ; 2 uses
  %i.rz = icmp slt i32 %i.ry, %3
  br i1 %i.rz, label %bb.bl, label %.loopexit537, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit542
  store i32 %.lcssa28202822.lcssa2828.lcssa2832, ptr %.sroa.419, align 1
  store i32 %storemerge403.lcssa.lcssa2825.lcssa2830.lcssa2835, ptr %.sroa.340, align 1
  %i.sa = icmp slt i32 %i.c, 1
  br i1 %i.sa, label %.loopexit461, label %.preheader536

._crit_edge.thread:                               ; preds = %.preheader543
  %or.cond1875 = icmp slt i32 %i.c, 2
  br i1 %or.cond1875, label %.loopexit461, label %.preheader530

.preheader536:                                    ; preds = %._crit_edge
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  %.sroa.419.promoted2851 = load i32, ptr %.sroa.419, align 1
  %.sroa.340.promoted = load i32, ptr %.sroa.340, align 1
  %.sroa.0.promoted = load i32, ptr %.sroa.0, align 1
  br label %.lr.ph623

.loopexit535.loopexit:                            ; preds = %.loopexit534
  store i32 %.lcssa17171730.lcssa2843.lcssa2849, ptr %.sroa.340, align 1
  store i32 %i.sj, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit535

.loopexit535:                                     ; preds = %.loopexit535.loopexit, %.lr.ph623
  %.lcssa17171730.lcssa2843.lcssa2849.lcssa2854 = phi i32 [ %.lcssa17171730.lcssa2843.lcssa2849, %.loopexit535.loopexit ], [ %.lcssa17171730.lcssa2843.lcssa2849.lcssa2855, %.lr.ph623 ]
  %.lcssa20592838.lcssa2841.lcssa2846.lcssa2852 = phi i32 [ %.lcssa20592838.lcssa2841.lcssa2846, %.loopexit535.loopexit ], [ %.lcssa20592838.lcssa2841.lcssa2846.lcssa2853, %.lr.ph623 ] ; 2 uses
  %i.sb = phi i32 [ %i.sl, %.loopexit535.loopexit ], [ %i.se, %.lr.ph623 ]
  %exitcond1014.not = icmp eq i32 %i.se, %3
  br i1 %exitcond1014.not, label %._crit_edge624.loopexit, label %.lr.ph623, !llvm.loop !97

.lr.ph623:                                        ; preds = %.preheader536, %.loopexit535
  %i.sc = phi i32 [ %i.se, %.loopexit535 ], [ %.sroa.0.promoted, %.preheader536 ]
  %.lcssa17171730.lcssa2843.lcssa2849.lcssa2855 = phi i32 [ %.lcssa17171730.lcssa2843.lcssa2849.lcssa2854, %.loopexit535 ], [ %.sroa.340.promoted, %.preheader536 ] ; 2 uses
  %.lcssa20592838.lcssa2841.lcssa2846.lcssa2853 = phi i32 [ %.lcssa20592838.lcssa2841.lcssa2846.lcssa2852, %.loopexit535 ], [ %.sroa.419.promoted2851, %.preheader536 ] ; 3 uses
  %i.sd = phi i32 [ %i.se, %.loopexit535 ], [ 0, %.preheader536 ] ; 2 uses
  %i.se = add nuw nsw i32 %i.sd, 1                ; 7 uses
  %i.sf = icmp slt i32 %i.se, %3
  br i1 %i.sf, label %.lr.ph621, label %.loopexit535

.lr.ph621:                                        ; preds = %.lr.ph623
  %i.sg = shl nuw nsw i32 %i.sd, 1                ; 2 uses
  %i.sh = shl nuw i32 1, %i.sg
  %i.si = shl i32 3, %i.sg
  br label %bb.bn

.loopexit534.loopexit:                            ; preds = %.loopexit533
  store i32 %i.sr, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit534

.loopexit534:                                     ; preds = %.loopexit534.loopexit, %bb.bn
  %.lcssa17171730.lcssa2843.lcssa2849 = phi i32 [ %.lcssa17171730.lcssa2843, %.loopexit534.loopexit ], [ %.lcssa17171730.lcssa2843.lcssa2850, %bb.bn ] ; 3 uses
  %.lcssa20592838.lcssa2841.lcssa2846 = phi i32 [ %.lcssa20592838.lcssa2841, %.loopexit534.loopexit ], [ %.lcssa20592838.lcssa2841.lcssa2847, %bb.bn ] ; 2 uses
  %i.sj = phi i32 [ %i.st, %.loopexit534.loopexit ], [ %i.sl, %bb.bn ]
  %exitcond1013.not = icmp eq i32 %i.sl, %3
  br i1 %exitcond1013.not, label %.loopexit535.loopexit, label %bb.bn, !llvm.loop !98

bb.bn:                                            ; preds = %.lr.ph621, %.loopexit534
  %.lcssa17171730.lcssa2843.lcssa2850 = phi i32 [ %.lcssa17171730.lcssa2843.lcssa2849.lcssa2855, %.lr.ph621 ], [ %.lcssa17171730.lcssa2843.lcssa2849, %.loopexit534 ] ; 3 uses
  %.lcssa20592838.lcssa2841.lcssa2847 = phi i32 [ %.lcssa20592838.lcssa2841.lcssa2846.lcssa2853, %.lr.ph621 ], [ %.lcssa20592838.lcssa2841.lcssa2846, %.loopexit534 ] ; 3 uses
  %i.sk = phi i32 [ %i.se, %.lr.ph621 ], [ %i.sl, %.loopexit534 ] ; 3 uses
  %i.sl = add nuw nsw i32 %i.sk, 1                ; 6 uses
  %i.sm = icmp slt i32 %i.sl, %3
  br i1 %i.sm, label %.lr.ph618, label %.loopexit534

.lr.ph618:                                        ; preds = %bb.bn
  %i.sn = shl nuw nsw i32 %i.sk, 1                ; 2 uses
  %i.so = shl nuw i32 1, %i.sn
  %i.sp = or i32 %i.so, %i.sh
  %i.sq = shl i32 3, %i.sn
  br label %bb.bo

.loopexit533:                                     ; preds = %.loopexit532, %bb.bo
  %.lcssa17171730.lcssa2843 = phi i32 [ %.lcssa17171730.lcssa2844, %bb.bo ], [ %.lcssa17171730, %.loopexit532 ] ; 2 uses
  %.lcssa20592838.lcssa2841 = phi i32 [ %.lcssa20592838.lcssa2842, %bb.bo ], [ %.lcssa20592838, %.loopexit532 ] ; 2 uses
  %i.sr = phi i32 [ %i.st, %bb.bo ], [ %i.ta, %.loopexit532 ]
  %exitcond1012.not = icmp eq i32 %i.st, %3
  br i1 %exitcond1012.not, label %.loopexit534.loopexit, label %bb.bo, !llvm.loop !99

bb.bo:                                            ; preds = %.lr.ph618, %.loopexit533
  %.lcssa17171730.lcssa2844 = phi i32 [ %.lcssa17171730.lcssa2843.lcssa2850, %.lr.ph618 ], [ %.lcssa17171730.lcssa2843, %.loopexit533 ] ; 2 uses
  %.lcssa20592838.lcssa2842 = phi i32 [ %.lcssa20592838.lcssa2841.lcssa2847, %.lr.ph618 ], [ %.lcssa20592838.lcssa2841, %.loopexit533 ] ; 3 uses
  %i.ss = phi i32 [ %i.sl, %.lr.ph618 ], [ %i.st, %.loopexit533 ] ; 3 uses
  %i.st = add nuw nsw i32 %i.ss, 1                ; 6 uses
  %i.su = icmp slt i32 %i.st, %3
  br i1 %i.su, label %.lr.ph615, label %.loopexit533

.lr.ph615:                                        ; preds = %bb.bo
  %i.sv = shl nuw nsw i32 %i.ss, 1                ; 2 uses
  %i.sw = shl nuw i32 1, %i.sv
  %i.sx = or i32 %i.sp, %i.sw
  %i.sy = shl i32 3, %i.sv
  br label %bb.bp

.loopexit532:                                     ; preds = %.lr.ph612, %.loopexit531, %bb.bp
  %.lcssa20592838 = phi i32 [ %.lcssa20592839, %bb.bp ], [ %i.tg, %.lr.ph612 ], [ %i.ti, %.loopexit531 ] ; 2 uses
  %.lcssa17171730 = phi i32 [ %i.ta, %bb.bp ], [ %i.tg, %.lr.ph612 ], [ %i.ti, %.loopexit531 ]
  %exitcond1011.not = icmp eq i32 %i.ta, %3
  br i1 %exitcond1011.not, label %.loopexit533, label %bb.bp, !llvm.loop !100

bb.bp:                                            ; preds = %.lr.ph615, %.loopexit532
  %.lcssa20592839 = phi i32 [ %.lcssa20592838.lcssa2842, %.lr.ph615 ], [ %.lcssa20592838, %.loopexit532 ] ; 2 uses
  %i.sz = phi i32 [ %i.st, %.lr.ph615 ], [ %i.ta, %.loopexit532 ] ; 4 uses
  %i.ta = add nsw i32 %i.sz, 1                    ; 6 uses
  %i.tb = icmp slt i32 %i.ta, %3
  br i1 %i.tb, label %.lr.ph612, label %.loopexit532

.lr.ph612:                                        ; preds = %bb.bp
  %i.tc = shl nsw i32 %i.sz, 1                    ; 2 uses
  %i.td = shl nuw i32 1, %i.tc
  %i.te = or i32 %i.sx, %i.td
  %i.tf = shl i32 3, %i.tc
  %i.tg = add nsw i32 %i.sz, 2                    ; 4 uses
  %i.th = icmp slt i32 %i.tg, %3
  br i1 %i.th, label %.lr.ph609, label %.loopexit532

.loopexit531:                                     ; preds = %bb.bw
  %i.ti = add nsw i32 %i.tk, 1                    ; 4 uses
  %i.tj = icmp slt i32 %i.ti, %3
  br i1 %i.tj, label %.lr.ph609, label %.loopexit532, !llvm.loop !101

.lr.ph609:                                        ; preds = %.lr.ph612, %.loopexit531
  %i.tk = phi i32 [ %i.ti, %.loopexit531 ], [ %i.tg, %.lr.ph612 ] ; 3 uses
  %i.tl = phi i32 [ %i.tk, %.loopexit531 ], [ %i.ta, %.lr.ph612 ] ; 2 uses
  %i.tm = shl nsw i32 %i.tl, 1                    ; 2 uses
  %i.tn = shl nuw i32 1, %i.tm
  %i.to = or i32 %i.te, %i.tn
  %i.tp = shl i32 3, %i.tm
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph609, %bb.bw
  %i.tq = phi i32 [ %i.tk, %.lr.ph609 ], [ %i.uh, %bb.bw ] ; 3 uses
  %i.tr = shl nsw i32 %i.tq, 1                    ; 2 uses
  %i.ts = shl nuw i32 1, %i.tr
  %i.tt = or i32 %i.to, %i.ts                     ; 7 uses
  %i.tu = or i32 %i.si, %i.tt
  %i.tv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.tu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not399 = icmp eq i32 %i.tv, 0
  br i1 %.not399, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.tw = or i32 %i.sq, %i.tt
  %i.tx = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.tw, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not399.1 = icmp eq i32 %i.tx, 0
  br i1 %.not399.1, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.ty = or i32 %i.sy, %i.tt
  %i.tz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ty, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not399.2 = icmp eq i32 %i.tz, 0
  br i1 %.not399.2, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.ua = or i32 %i.tf, %i.tt
  %i.ub = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ua, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not399.3 = icmp eq i32 %i.ub, 0
  br i1 %.not399.3, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.uc = or i32 %i.tp, %i.tt
  %i.ud = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.uc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not399.4 = icmp eq i32 %i.ud, 0
  br i1 %.not399.4, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ue = shl i32 3, %i.tr
  %i.uf = or i32 %i.ue, %i.tt
  %i.ug = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.uf, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not399.5 = icmp eq i32 %i.ug, 0
  br i1 %.not399.5, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.uh = add nsw i32 %i.tq, 1                    ; 2 uses
  %i.ui = icmp slt i32 %i.uh, %3
  br i1 %i.ui, label %bb.bq, label %.loopexit531, !llvm.loop !102

bb.bx:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq
  %.lcssa983.sroa.phi = phi ptr [ %.sroa.0, %bb.bq ], [ %.sroa.84, %bb.br ], [ %.sroa.170, %bb.bs ], [ %.sroa.256, %bb.bt ], [ %.sroa.340, %bb.bu ], [ %.sroa.419, %bb.bv ]
  store i32 %.lcssa20592838.lcssa2841.lcssa2846.lcssa2853, ptr %.sroa.419, align 1
  store i32 %i.sc, ptr %.sroa.0, align 1
  store i32 %.lcssa20592838.lcssa2841.lcssa2847, ptr %.sroa.419, align 1
  store i32 %.lcssa17171730.lcssa2843.lcssa2850, ptr %.sroa.340, align 1
  store i32 %.lcssa20592838.lcssa2842, ptr %.sroa.419, align 1
  store i32 %.lcssa17171730.lcssa2844, ptr %.sroa.340, align 1
  store i32 %.lcssa20592839, ptr %.sroa.419, align 1
  store i32 %i.sk, ptr %.sroa.84, align 4, !tbaa !8
  store i32 %i.ss, ptr %.sroa.170, align 8, !tbaa !8
  store i32 %i.sz, ptr %.sroa.256, align 4, !tbaa !8
  store i32 %i.tl, ptr %.sroa.340, align 16, !tbaa !8
  store i32 %i.tq, ptr %.sroa.419, align 4, !tbaa !8
  %i.uj = load i32, ptr %.lcssa983.sroa.phi, align 4, !tbaa !8
  %i.uk = shl nsw i32 %i.uj, 1
  %i.ul = shl i32 3, %i.uk
  %i.um = or i32 %i.ul, %i.tt
  br label %.loopexit461

._crit_edge624.loopexit:                          ; preds = %.loopexit535
  store i32 %.lcssa20592838.lcssa2841.lcssa2846.lcssa2852, ptr %.sroa.419, align 1
  store i32 %i.se, ptr %.sroa.0, align 1
  store i32 %i.sb, ptr %.sroa.84, align 4, !tbaa !8
  %.old1874 = icmp eq i32 %i.c, 1
  br i1 %.old1874, label %.loopexit461, label %.preheader530

.preheader530:                                    ; preds = %._crit_edge.thread, %._crit_edge624.loopexit
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  br i1 %i.d, label %.lr.ph647.preheader, label %._crit_edge648.thread

.lr.ph647.preheader:                              ; preds = %.preheader530
  %.sroa.419.promoted2867 = load i32, ptr %.sroa.419, align 1
  %.sroa.0.promoted2870 = load i32, ptr %.sroa.0, align 1
  br label %.lr.ph647

.loopexit529.loopexit:                            ; preds = %.loopexit528
  store i32 %i.uv, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit529

.loopexit529:                                     ; preds = %.loopexit529.loopexit, %.lr.ph647
  %.lcssa20362859.lcssa2862.lcssa2865.lcssa2868 = phi i32 [ %.lcssa20362859.lcssa2862.lcssa2865, %.loopexit529.loopexit ], [ %.lcssa20362859.lcssa2862.lcssa2865.lcssa2869, %.lr.ph647 ] ; 2 uses
  %i.un = phi i32 [ %i.ux, %.loopexit529.loopexit ], [ %i.uq, %.lr.ph647 ]
  %exitcond1051.not = icmp eq i32 %i.uq, %3
  br i1 %exitcond1051.not, label %._crit_edge648, label %.lr.ph647, !llvm.loop !103

.lr.ph647:                                        ; preds = %.lr.ph647.preheader, %.loopexit529
  %i.uo = phi i32 [ %i.uq, %.loopexit529 ], [ %.sroa.0.promoted2870, %.lr.ph647.preheader ]
  %.lcssa20362859.lcssa2862.lcssa2865.lcssa2869 = phi i32 [ %.lcssa20362859.lcssa2862.lcssa2865.lcssa2868, %.loopexit529 ], [ %.sroa.419.promoted2867, %.lr.ph647.preheader ] ; 3 uses
  %i.up = phi i32 [ %i.uq, %.loopexit529 ], [ 0, %.lr.ph647.preheader ] ; 2 uses
  %i.uq = add nuw nsw i32 %i.up, 1                ; 7 uses
  %i.ur = icmp slt i32 %i.uq, %3
  br i1 %i.ur, label %.lr.ph645, label %.loopexit529

.lr.ph645:                                        ; preds = %.lr.ph647
  %i.us = shl nuw nsw i32 %i.up, 1                ; 2 uses
  %i.ut = shl nuw i32 1, %i.us
  %i.uu = shl i32 3, %i.us                        ; 5 uses
  br label %bb.by

.loopexit528.loopexit:                            ; preds = %.loopexit527
  store i32 %i.vg, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit528

.loopexit528:                                     ; preds = %.loopexit528.loopexit, %bb.by
  %.lcssa20362859.lcssa2862.lcssa2865 = phi i32 [ %.lcssa20362859.lcssa2862, %.loopexit528.loopexit ], [ %.lcssa20362859.lcssa2862.lcssa2866, %bb.by ] ; 2 uses
  %i.uv = phi i32 [ %i.vi, %.loopexit528.loopexit ], [ %i.ux, %bb.by ]
  %exitcond1050.not = icmp eq i32 %i.ux, %3
  br i1 %exitcond1050.not, label %.loopexit529.loopexit, label %bb.by, !llvm.loop !104

bb.by:                                            ; preds = %.lr.ph645, %.loopexit528
  %.lcssa20362859.lcssa2862.lcssa2866 = phi i32 [ %.lcssa20362859.lcssa2862.lcssa2865.lcssa2869, %.lr.ph645 ], [ %.lcssa20362859.lcssa2862.lcssa2865, %.loopexit528 ] ; 3 uses
  %i.uw = phi i32 [ %i.uq, %.lr.ph645 ], [ %i.ux, %.loopexit528 ] ; 4 uses
  %i.ux = add nuw nsw i32 %i.uw, 1                ; 6 uses
  %i.uy = icmp slt i32 %i.ux, %3
  br i1 %i.uy, label %.lr.ph642, label %.loopexit528

.lr.ph642:                                        ; preds = %bb.by
  %i.uz = shl nuw nsw i32 %i.uw, 1                ; 2 uses
  %i.va = shl nuw i32 1, %i.uz
  %i.vb = or i32 %i.va, %i.ut
  %i.vc = shl nuw nsw i32 %i.uw, 1
  %i.vd = shl i32 3, %i.vc
  %i.ve = or i32 %i.uu, %i.vd
  %i.vf = shl i32 3, %i.uz                        ; 4 uses
  br label %bb.bz

.loopexit527.loopexit:                            ; preds = %.loopexit526
  store i32 %.lcssa17121751, ptr %.sroa.340, align 16, !tbaa !8
  br label %.loopexit527

.loopexit527:                                     ; preds = %.loopexit527.loopexit, %bb.bz
  %.lcssa20362859.lcssa2862 = phi i32 [ %.lcssa20362859, %.loopexit527.loopexit ], [ %.lcssa20362859.lcssa2863, %bb.bz ] ; 2 uses
  %i.vg = phi i32 [ %i.vv, %.loopexit527.loopexit ], [ %i.vi, %bb.bz ]
  %exitcond1049.not = icmp eq i32 %i.vi, %3
  br i1 %exitcond1049.not, label %.loopexit528.loopexit, label %bb.bz, !llvm.loop !105

bb.bz:                                            ; preds = %.lr.ph642, %.loopexit527
  %.lcssa20362859.lcssa2863 = phi i32 [ %.lcssa20362859.lcssa2862.lcssa2866, %.lr.ph642 ], [ %.lcssa20362859.lcssa2862, %.loopexit527 ] ; 3 uses
  %i.vh = phi i32 [ %i.ux, %.lr.ph642 ], [ %i.vi, %.loopexit527 ] ; 5 uses
  %i.vi = add nuw nsw i32 %i.vh, 1                ; 6 uses
  %i.vj = icmp slt i32 %i.vi, %3
  br i1 %i.vj, label %.lr.ph639, label %.loopexit527

.lr.ph639:                                        ; preds = %bb.bz
  %i.vk = shl nuw nsw i32 %i.vh, 1                ; 2 uses
  %i.vl = shl nuw i32 1, %i.vk
  %i.vm = or i32 %i.vb, %i.vl
  %i.vn = shl nuw nsw i32 %i.vh, 1
  %i.vo = shl i32 3, %i.vn
  %i.vp = or i32 %i.uu, %i.vo
  %i.vq = shl nuw nsw i32 %i.vh, 1
  %i.vr = shl i32 3, %i.vq
  %i.vs = or i32 %i.vf, %i.vr
  %i.vt = shl i32 3, %i.vk                        ; 3 uses
  br label %bb.ca

.loopexit526:                                     ; preds = %.lr.ph636, %.loopexit525, %bb.ca
  %.lcssa20362859 = phi i32 [ %.lcssa20362860, %bb.ca ], [ %i.wk, %.lr.ph636 ], [ %i.wm, %.loopexit525 ] ; 2 uses
  %.lcssa17121751 = phi i32 [ %i.vv, %bb.ca ], [ %i.wk, %.lr.ph636 ], [ %i.wm, %.loopexit525 ]
  %exitcond1048.not = icmp eq i32 %i.vv, %3
  br i1 %exitcond1048.not, label %.loopexit527.loopexit, label %bb.ca, !llvm.loop !106

bb.ca:                                            ; preds = %.lr.ph639, %.loopexit526
  %.lcssa20362860 = phi i32 [ %.lcssa20362859.lcssa2863, %.lr.ph639 ], [ %.lcssa20362859, %.loopexit526 ] ; 2 uses
  %i.vu = phi i32 [ %i.vi, %.lr.ph639 ], [ %i.vv, %.loopexit526 ] ; 7 uses
  %i.vv = add nsw i32 %i.vu, 1                    ; 6 uses
  %i.vw = icmp slt i32 %i.vv, %3
  br i1 %i.vw, label %.lr.ph636, label %.loopexit526

.lr.ph636:                                        ; preds = %bb.ca
  %i.vx = shl nsw i32 %i.vu, 1                    ; 2 uses
  %i.vy = shl nuw i32 1, %i.vx
  %i.vz = or i32 %i.vm, %i.vy
  %i.wa = shl nsw i32 %i.vu, 1
  %i.wb = shl i32 3, %i.wa
  %i.wc = or i32 %i.uu, %i.wb
  %i.wd = shl nsw i32 %i.vu, 1
  %i.we = shl i32 3, %i.wd
  %i.wf = or i32 %i.vf, %i.we
  %i.wg = shl nsw i32 %i.vu, 1
  %i.wh = shl i32 3, %i.wg
  %i.wi = or i32 %i.vt, %i.wh
  %i.wj = shl i32 3, %i.vx                        ; 2 uses
  %i.wk = add nsw i32 %i.vu, 2                    ; 4 uses
  %i.wl = icmp slt i32 %i.wk, %3
  br i1 %i.wl, label %.lr.ph633, label %.loopexit526

.loopexit525:                                     ; preds = %.loopexit524.5
  %i.wm = add nsw i32 %i.wo, 1                    ; 4 uses
  %i.wn = icmp slt i32 %i.wm, %3
  br i1 %i.wn, label %.lr.ph633, label %.loopexit526, !llvm.loop !107

.lr.ph633:                                        ; preds = %.lr.ph636, %.loopexit525
  %i.wo = phi i32 [ %i.wm, %.loopexit525 ], [ %i.wk, %.lr.ph636 ] ; 3 uses
  %i.wp = phi i32 [ %i.wo, %.loopexit525 ], [ %i.vv, %.lr.ph636 ] ; 2 uses
  %i.wq = shl nsw i32 %i.wp, 1                    ; 6 uses
  %i.wr = shl nuw i32 1, %i.wq
  %i.ws = or i32 %i.vz, %i.wr
  %i.wt = shl i32 3, %i.wq
  %i.wu = or i32 %i.uu, %i.wt
  %i.wv = shl i32 3, %i.wq
  %i.ww = or i32 %i.vf, %i.wv
  %i.wx = shl i32 3, %i.wq
  %i.wy = or i32 %i.vt, %i.wx
  %i.wz = shl i32 3, %i.wq
  %i.xa = or i32 %i.wj, %i.wz
  %i.xb = shl i32 3, %i.wq
  br label %.lr.ph629

.lr.ph629.1:                                      ; preds = %bb.ck
  %i.xc = or i32 %i.vs, %i.yj
  %i.xd = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.1 = icmp eq i32 %i.xd, 0
  br i1 %.not393.1, label %bb.cb, label %.loopexit1023

bb.cb:                                            ; preds = %.lr.ph629.1
  %i.xe = or i32 %i.wf, %i.yj
  %i.xf = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xe, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.1.1 = icmp eq i32 %i.xf, 0
  br i1 %.not393.1.1, label %bb.cc, label %.loopexit1023

bb.cc:                                            ; preds = %bb.cb
  %i.xg = or i32 %i.ww, %i.yj
  %i.xh = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xg, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.1.2 = icmp eq i32 %i.xh, 0
  br i1 %.not393.1.2, label %bb.cd, label %.loopexit1023

bb.cd:                                            ; preds = %bb.cc
  %i.xi = shl i32 3, %i.yh
  %i.xj = or i32 %i.vf, %i.xi
  %i.xk = or i32 %i.xj, %i.yj
  %i.xl = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.1.3 = icmp eq i32 %i.xl, 0
  br i1 %.not393.1.3, label %.lr.ph629.2, label %.loopexit1023

.lr.ph629.2:                                      ; preds = %bb.cd
  %i.xm = or i32 %i.wi, %i.yj
  %i.xn = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xm, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.2 = icmp eq i32 %i.xn, 0
  br i1 %.not393.2, label %bb.ce, label %.loopexit1023

bb.ce:                                            ; preds = %.lr.ph629.2
  %i.xo = or i32 %i.wy, %i.yj
  %i.xp = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xo, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.2.1 = icmp eq i32 %i.xp, 0
  br i1 %.not393.2.1, label %bb.cf, label %.loopexit1023

bb.cf:                                            ; preds = %bb.ce
  %i.xq = shl i32 3, %i.yh
  %i.xr = or i32 %i.vt, %i.xq
  %i.xs = or i32 %i.xr, %i.yj
  %i.xt = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xs, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.2.2 = icmp eq i32 %i.xt, 0
  br i1 %.not393.2.2, label %.lr.ph629.3, label %.loopexit1023

.lr.ph629.3:                                      ; preds = %bb.cf
  %i.xu = or i32 %i.xa, %i.yj
  %i.xv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.3 = icmp eq i32 %i.xv, 0
  br i1 %.not393.3, label %bb.cg, label %.loopexit1023

bb.cg:                                            ; preds = %.lr.ph629.3
  %i.xw = shl i32 3, %i.yh
  %i.xx = or i32 %i.wj, %i.xw
  %i.xy = or i32 %i.xx, %i.yj
  %i.xz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.xy, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.3.1 = icmp eq i32 %i.xz, 0
  br i1 %.not393.3.1, label %.lr.ph629.4, label %.loopexit1023

.lr.ph629.4:                                      ; preds = %bb.cg
  %i.ya = shl i32 3, %i.yh
  %i.yb = or i32 %i.xb, %i.ya
  %i.yc = or i32 %i.yb, %i.yj
  %i.yd = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.yc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.4 = icmp eq i32 %i.yd, 0
  br i1 %.not393.4, label %.loopexit524.5, label %.loopexit1023

.loopexit524.5:                                   ; preds = %.lr.ph629.4
  %i.ye = add nsw i32 %i.yg, 1                    ; 2 uses
  %i.yf = icmp slt i32 %i.ye, %3
  br i1 %i.yf, label %.lr.ph629, label %.loopexit525, !llvm.loop !108

.lr.ph629:                                        ; preds = %.loopexit524.5, %.lr.ph633
  %i.yg = phi i32 [ %i.wo, %.lr.ph633 ], [ %i.ye, %.loopexit524.5 ] ; 3 uses
  %i.yh = shl nsw i32 %i.yg, 1                    ; 6 uses
  %i.yi = shl nuw i32 1, %i.yh
  %i.yj = or i32 %i.ws, %i.yi                     ; 16 uses
  %i.yk = or i32 %i.ve, %i.yj
  %i.yl = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.yk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393 = icmp eq i32 %i.yl, 0
  br i1 %.not393, label %bb.ch, label %.loopexit1023

bb.ch:                                            ; preds = %.lr.ph629
  %i.ym = or i32 %i.vp, %i.yj
  %i.yn = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ym, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.11044 = icmp eq i32 %i.yn, 0
  br i1 %.not393.11044, label %bb.ci, label %.loopexit1023

bb.ci:                                            ; preds = %bb.ch
  %i.yo = or i32 %i.wc, %i.yj
  %i.yp = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.yo, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.21045 = icmp eq i32 %i.yp, 0
  br i1 %.not393.21045, label %bb.cj, label %.loopexit1023

bb.cj:                                            ; preds = %bb.ci
  %i.yq = or i32 %i.wu, %i.yj
  %i.yr = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.yq, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.31046 = icmp eq i32 %i.yr, 0
  br i1 %.not393.31046, label %bb.ck, label %.loopexit1023

bb.ck:                                            ; preds = %bb.cj
  %i.ys = shl i32 3, %i.yh
  %i.yt = or i32 %i.uu, %i.ys
  %i.yu = or i32 %i.yt, %i.yj
  %i.yv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.yu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not393.41047 = icmp eq i32 %i.yv, 0
  br i1 %.not393.41047, label %.lr.ph629.1, label %.loopexit1023

.loopexit1023:                                    ; preds = %.lr.ph629.4, %.lr.ph629.3, %bb.cg, %.lr.ph629.2, %bb.ce, %bb.cf, %.lr.ph629.1, %bb.cb, %bb.cc, %bb.cd, %.lr.ph629, %bb.ch, %bb.ci, %bb.cj, %bb.ck
  %.lcssa980.sroa.phi = phi ptr [ %.sroa.256, %.lr.ph629.3 ], [ %.sroa.170, %.lr.ph629.2 ], [ %.sroa.0, %.lr.ph629 ], [ %.sroa.84, %.lr.ph629.1 ], [ %.sroa.0, %bb.ck ], [ %.sroa.0, %bb.cj ], [ %.sroa.0, %bb.ci ], [ %.sroa.0, %bb.ch ], [ %.sroa.84, %bb.cd ], [ %.sroa.84, %bb.cc ], [ %.sroa.84, %bb.cb ], [ %.sroa.170, %bb.cf ], [ %.sroa.170, %bb.ce ], [ %.sroa.256, %bb.cg ], [ %.sroa.340, %.lr.ph629.4 ]
  %.lcssa978.sroa.phi = phi ptr [ %.sroa.340, %.lr.ph629.3 ], [ %.sroa.256, %.lr.ph629.2 ], [ %.sroa.84, %.lr.ph629 ], [ %.sroa.170, %.lr.ph629.1 ], [ %.sroa.419, %bb.ck ], [ %.sroa.340, %bb.cj ], [ %.sroa.256, %bb.ci ], [ %.sroa.170, %bb.ch ], [ %.sroa.419, %bb.cd ], [ %.sroa.340, %bb.cc ], [ %.sroa.256, %bb.cb ], [ %.sroa.419, %bb.cf ], [ %.sroa.340, %bb.ce ], [ %.sroa.419, %bb.cg ], [ %.sroa.419, %.lr.ph629.4 ]
  store i32 %.lcssa20362859.lcssa2862.lcssa2865.lcssa2869, ptr %.sroa.419, align 1
  store i32 %i.uo, ptr %.sroa.0, align 1
  store i32 %.lcssa20362859.lcssa2862.lcssa2866, ptr %.sroa.419, align 1
  store i32 %.lcssa20362859.lcssa2863, ptr %.sroa.419, align 1
  store i32 %.lcssa20362860, ptr %.sroa.419, align 1
  store i32 %i.uw, ptr %.sroa.84, align 4, !tbaa !8
  store i32 %i.vh, ptr %.sroa.170, align 8, !tbaa !8
  store i32 %i.vu, ptr %.sroa.256, align 4, !tbaa !8
  store i32 %i.wp, ptr %.sroa.340, align 16, !tbaa !8
  store i32 %i.yg, ptr %.sroa.419, align 4, !tbaa !8
  %i.yw = load i32, ptr %.lcssa980.sroa.phi, align 4, !tbaa !8
  %i.yx = shl nsw i32 %i.yw, 1
  %i.yy = shl i32 3, %i.yx
  %i.yz = load i32, ptr %.lcssa978.sroa.phi, align 4, !tbaa !8
  %i.za = shl nsw i32 %i.yz, 1
  %i.zb = shl i32 3, %i.za
  %i.zc = or i32 %i.yy, %i.zb
  %i.zd = or i32 %i.zc, %i.yj
  br label %.loopexit461

._crit_edge648:                                   ; preds = %.loopexit529
  store i32 %.lcssa20362859.lcssa2862.lcssa2865.lcssa2868, ptr %.sroa.419, align 1
  store i32 %i.uq, ptr %.sroa.0, align 1
  store i32 %i.un, ptr %.sroa.84, align 4, !tbaa !8
  %i.ze = icmp slt i32 %i.c, 3
  br i1 %i.ze, label %.loopexit461, label %.preheader523

._crit_edge648.thread:                            ; preds = %.preheader530
  %or.cond1877 = icmp slt i32 %i.c, 4
  br i1 %or.cond1877, label %.loopexit461, label %.preheader514

.preheader523:                                    ; preds = %._crit_edge648
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  %.sroa.419.promoted2882 = load i32, ptr %.sroa.419, align 1
  %.sroa.0.promoted2885 = load i32, ptr %.sroa.0, align 1
  br label %.lr.ph675

.loopexit522.loopexit:                            ; preds = %.loopexit521
  store i32 %i.zs, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit522

.loopexit522:                                     ; preds = %.loopexit522.loopexit, %.lr.ph675
  %.lcssa20172874.lcssa2877.lcssa2880.lcssa2883 = phi i32 [ %.lcssa20172874.lcssa2877.lcssa2880, %.loopexit522.loopexit ], [ %.lcssa20172874.lcssa2877.lcssa2880.lcssa2884, %.lr.ph675 ] ; 2 uses
  %i.zf = phi i32 [ %i.zt, %.loopexit522.loopexit ], [ %i.zh, %.lr.ph675 ]
  %exitcond1171.not = icmp eq i32 %i.zh, %3
  br i1 %exitcond1171.not, label %._crit_edge676.loopexit, label %.lr.ph675, !llvm.loop !109

.lr.ph675:                                        ; preds = %.preheader523, %.loopexit522
  %i.zg = phi i32 [ %i.zh, %.loopexit522 ], [ %.sroa.0.promoted2885, %.preheader523 ]
  %.lcssa20172874.lcssa2877.lcssa2880.lcssa2884 = phi i32 [ %.lcssa20172874.lcssa2877.lcssa2880.lcssa2883, %.loopexit522 ], [ %.sroa.419.promoted2882, %.preheader523 ] ; 3 uses
  %storemerge375674 = phi i32 [ %i.zh, %.loopexit522 ], [ 0, %.preheader523 ] ; 5 uses
  %i.zh = add nuw nsw i32 %storemerge375674, 1    ; 7 uses
  %i.zi = icmp slt i32 %i.zh, %3
  br i1 %i.zi, label %.lr.ph673, label %.loopexit522

.lr.ph673:                                        ; preds = %.lr.ph675
  %i.zj = shl nuw nsw i32 %storemerge375674, 1    ; 2 uses
  %i.zk = shl nuw i32 1, %i.zj
  %i.zl = shl nuw nsw i32 %storemerge375674, 1
  %i.zm = shl i32 3, %i.zl
  %i.zn = shl nuw nsw i32 %storemerge375674, 1
  %i.zo = shl i32 3, %i.zn
  %i.zp = shl nuw nsw i32 %storemerge375674, 1
  %i.zq = shl i32 3, %i.zp
  %i.zr = shl i32 3, %i.zj
  br label %bb.cl

.loopexit521.loopexit:                            ; preds = %.loopexit520
  store i32 %i.aag, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit521

.loopexit521:                                     ; preds = %.loopexit521.loopexit, %bb.cl
  %.lcssa20172874.lcssa2877.lcssa2880 = phi i32 [ %.lcssa20172874.lcssa2877, %.loopexit521.loopexit ], [ %.lcssa20172874.lcssa2877.lcssa2881, %bb.cl ] ; 2 uses
  %i.zs = phi i32 [ %i.aah, %.loopexit521.loopexit ], [ %i.zt, %bb.cl ]
  %exitcond1170.not = icmp eq i32 %i.zt, %3
  br i1 %exitcond1170.not, label %.loopexit522.loopexit, label %bb.cl, !llvm.loop !110

bb.cl:                                            ; preds = %.lr.ph673, %.loopexit521
  %.lcssa20172874.lcssa2877.lcssa2881 = phi i32 [ %.lcssa20172874.lcssa2877.lcssa2880.lcssa2884, %.lr.ph673 ], [ %.lcssa20172874.lcssa2877.lcssa2880, %.loopexit521 ] ; 3 uses
  %storemerge382671 = phi i32 [ %i.zh, %.lr.ph673 ], [ %i.zt, %.loopexit521 ] ; 6 uses
  %i.zt = add nuw nsw i32 %storemerge382671, 1    ; 6 uses
  %i.zu = icmp slt i32 %i.zt, %3
  br i1 %i.zu, label %.lr.ph670, label %.loopexit521

.lr.ph670:                                        ; preds = %bb.cl
  %i.zv = shl nuw nsw i32 %storemerge382671, 1    ; 2 uses
  %i.zw = shl nuw i32 1, %i.zv
  %i.zx = or i32 %i.zw, %i.zk
  %i.zy = shl nuw nsw i32 %storemerge382671, 1
  %i.zz = shl i32 3, %i.zy
  %i.aaa = or i32 %i.zm, %i.zz                    ; 4 uses
  %i.aab = shl nuw nsw i32 %storemerge382671, 1
  %i.aac = shl i32 3, %i.aab
  %i.aad = shl nuw nsw i32 %storemerge382671, 1
  %i.aae = shl i32 3, %i.aad
  %i.aaf = shl i32 3, %i.zv
  br label %bb.cm

.loopexit520.loopexit:                            ; preds = %.loopexit519
  store i32 %.lcssa17071771, ptr %.sroa.340, align 16, !tbaa !8
  br label %.loopexit520

.loopexit520:                                     ; preds = %.loopexit520.loopexit, %bb.cm
  %.lcssa20172874.lcssa2877 = phi i32 [ %.lcssa20172874, %.loopexit520.loopexit ], [ %.lcssa20172874.lcssa2878, %bb.cm ] ; 2 uses
  %i.aag = phi i32 [ %i.aay, %.loopexit520.loopexit ], [ %i.aah, %bb.cm ]
  %exitcond1169.not = icmp eq i32 %i.aah, %3
  br i1 %exitcond1169.not, label %.loopexit521.loopexit, label %bb.cm, !llvm.loop !111

bb.cm:                                            ; preds = %.lr.ph670, %.loopexit520
  %.lcssa20172874.lcssa2878 = phi i32 [ %.lcssa20172874.lcssa2877.lcssa2881, %.lr.ph670 ], [ %.lcssa20172874.lcssa2877, %.loopexit520 ] ; 3 uses
  %storemerge383668 = phi i32 [ %i.zt, %.lr.ph670 ], [ %i.aah, %.loopexit520 ] ; 7 uses
  %i.aah = add nuw nsw i32 %storemerge383668, 1   ; 6 uses
  %i.aai = icmp slt i32 %i.aah, %3
  br i1 %i.aai, label %.lr.ph667, label %.loopexit520

.lr.ph667:                                        ; preds = %bb.cm
  %i.aaj = shl nuw nsw i32 %storemerge383668, 1   ; 2 uses
  %i.aak = shl nuw i32 1, %i.aaj
  %i.aal = or i32 %i.zx, %i.aak
  %i.aam = shl nuw nsw i32 %storemerge383668, 1
  %i.aan = shl i32 3, %i.aam
  %i.aao = or i32 %i.aaa, %i.aan
  %i.aap = shl nuw nsw i32 %storemerge383668, 1
  %i.aaq = shl i32 3, %i.aap
  %i.aar = or i32 %i.zo, %i.aaq                   ; 3 uses
  %i.aas = shl nuw nsw i32 %storemerge383668, 1
  %i.aat = shl i32 3, %i.aas
  %i.aau = or i32 %i.aac, %i.aat                  ; 3 uses
  %i.aav = shl nuw nsw i32 %storemerge383668, 1
  %i.aaw = shl i32 3, %i.aav
  %i.aax = shl i32 3, %i.aaj
  br label %bb.cn

.loopexit519:                                     ; preds = %.lr.ph664, %.loopexit518, %bb.cn
  %.lcssa20172874 = phi i32 [ %.lcssa20172875, %bb.cn ], [ %i.abw, %.lr.ph664 ], [ %i.aby, %.loopexit518 ] ; 2 uses
  %.lcssa17071771 = phi i32 [ %i.aay, %bb.cn ], [ %i.abw, %.lr.ph664 ], [ %i.aby, %.loopexit518 ]
  %exitcond1168.not = icmp eq i32 %i.aay, %3
  br i1 %exitcond1168.not, label %.loopexit520.loopexit, label %bb.cn, !llvm.loop !112

bb.cn:                                            ; preds = %.lr.ph667, %.loopexit519
  %.lcssa20172875 = phi i32 [ %.lcssa20172874.lcssa2878, %.lr.ph667 ], [ %.lcssa20172874, %.loopexit519 ] ; 2 uses
  %storemerge384665 = phi i32 [ %i.aah, %.lr.ph667 ], [ %i.aay, %.loopexit519 ] ; 10 uses
  %i.aay = add nsw i32 %storemerge384665, 1       ; 6 uses
  %i.aaz = icmp slt i32 %i.aay, %3
  br i1 %i.aaz, label %.lr.ph664, label %.loopexit519

.lr.ph664:                                        ; preds = %bb.cn
  %i.aba = shl nsw i32 %storemerge384665, 1       ; 2 uses
  %i.abb = shl nuw i32 1, %i.aba
  %i.abc = or i32 %i.aal, %i.abb
  %i.abd = shl nsw i32 %storemerge384665, 1
  %i.abe = shl i32 3, %i.abd
  %i.abf = or i32 %i.aaa, %i.abe
  %i.abg = shl nsw i32 %storemerge384665, 1
  %i.abh = shl i32 3, %i.abg
  %i.abi = or i32 %i.aar, %i.abh
  %i.abj = shl nsw i32 %storemerge384665, 1
  %i.abk = shl i32 3, %i.abj
  %i.abl = or i32 %i.zq, %i.abk                   ; 2 uses
  %i.abm = shl nsw i32 %storemerge384665, 1
  %i.abn = shl i32 3, %i.abm
  %i.abo = or i32 %i.aau, %i.abn
  %i.abp = shl nsw i32 %storemerge384665, 1
  %i.abq = shl i32 3, %i.abp
  %i.abr = or i32 %i.aae, %i.abq                  ; 2 uses
  %i.abs = shl nsw i32 %storemerge384665, 1
  %i.abt = shl i32 3, %i.abs
  %i.abu = or i32 %i.aaw, %i.abt                  ; 2 uses
  %i.abv = shl i32 3, %i.aba
  %i.abw = add nsw i32 %storemerge384665, 2       ; 4 uses
  %i.abx = icmp slt i32 %i.abw, %3
  br i1 %i.abx, label %.lr.ph661, label %.loopexit519

.loopexit518:                                     ; preds = %.loopexit517.5
  %i.aby = add nsw i32 %i.aca, 1                  ; 4 uses
  %i.abz = icmp slt i32 %i.aby, %3
  br i1 %i.abz, label %.lr.ph661, label %.loopexit519, !llvm.loop !113

.lr.ph661:                                        ; preds = %.lr.ph664, %.loopexit518
  %i.aca = phi i32 [ %i.aby, %.loopexit518 ], [ %i.abw, %.lr.ph664 ] ; 3 uses
  %storemerge3856622085 = phi i32 [ %i.aca, %.loopexit518 ], [ %i.aay, %.lr.ph664 ] ; 2 uses
  %i.acb = shl nsw i32 %storemerge3856622085, 1   ; 11 uses
  %i.acc = shl nuw i32 1, %i.acb
  %i.acd = or i32 %i.abc, %i.acc
  %i.ace = shl i32 3, %i.acb
  %i.acf = or i32 %i.aaa, %i.ace
  %i.acg = shl i32 3, %i.acb
  %i.ach = or i32 %i.aar, %i.acg
  %i.aci = shl i32 3, %i.acb
  %i.acj = or i32 %i.abl, %i.aci
  %i.ack = shl i32 3, %i.acb
  %i.acl = or i32 %i.zr, %i.ack
  %i.acm = shl i32 3, %i.acb
  %i.acn = or i32 %i.aau, %i.acm
  %i.aco = shl i32 3, %i.acb
  %i.acp = or i32 %i.abr, %i.aco
  %i.acq = shl i32 3, %i.acb
  %i.acr = or i32 %i.aaf, %i.acq
  %i.acs = shl i32 3, %i.acb
  %i.act = or i32 %i.abu, %i.acs
  %i.acu = shl i32 3, %i.acb
  %i.acv = or i32 %i.aax, %i.acu
  %i.acw = shl i32 3, %i.acb
  %i.acx = or i32 %i.abv, %i.acw
  br label %.lr.ph654

.lr.ph654.1:                                      ; preds = %.lr.ph654.31135
  %i.acy = or i32 %i.abo, %i.afb
  %i.acz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.acy, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.1 = icmp eq i32 %i.acz, 0
  br i1 %.not387.1, label %bb.co, label %.loopexit1068

bb.co:                                            ; preds = %.lr.ph654.1
  %i.ada = or i32 %i.acn, %i.afb
  %i.adb = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ada, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.1.11125 = icmp eq i32 %i.adb, 0
  br i1 %.not387.1.11125, label %bb.cp, label %.loopexit1068

bb.cp:                                            ; preds = %bb.co
  %i.adc = shl i32 3, %i.aez
  %i.add = or i32 %i.aau, %i.adc
  %i.ade = or i32 %i.add, %i.afb
  %i.adf = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ade, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.1.21126 = icmp eq i32 %i.adf, 0
  br i1 %.not387.1.21126, label %.lr.ph654.1.1, label %.loopexit1068

.lr.ph654.1.1:                                    ; preds = %bb.cp
  %i.adg = or i32 %i.acp, %i.afb
  %i.adh = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.adg, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.1.1 = icmp eq i32 %i.adh, 0
  br i1 %.not387.1.1, label %bb.cq, label %.loopexit1068

bb.cq:                                            ; preds = %.lr.ph654.1.1
  %i.adi = shl i32 3, %i.aez
  %i.adj = or i32 %i.abr, %i.adi
  %i.adk = or i32 %i.adj, %i.afb
  %i.adl = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.adk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.1.1.1 = icmp eq i32 %i.adl, 0
  br i1 %.not387.1.1.1, label %.lr.ph654.1.2, label %.loopexit1068

.lr.ph654.1.2:                                    ; preds = %bb.cq
  %i.adm = shl i32 3, %i.aez
  %i.adn = or i32 %i.acr, %i.adm
  %i.ado = or i32 %i.adn, %i.afb
  %i.adp = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ado, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.1.2 = icmp eq i32 %i.adp, 0
  br i1 %.not387.1.2, label %.lr.ph654.2, label %.loopexit1068

.lr.ph654.2:                                      ; preds = %.lr.ph654.1.2
  %i.adq = or i32 %i.act, %i.afb
  %i.adr = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.adq, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.2 = icmp eq i32 %i.adr, 0
  br i1 %.not387.2, label %bb.cr, label %.loopexit1068

bb.cr:                                            ; preds = %.lr.ph654.2
  %i.ads = shl i32 3, %i.aez
  %i.adt = or i32 %i.abu, %i.ads
  %i.adu = or i32 %i.adt, %i.afb
  %i.adv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.adu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.2.11109 = icmp eq i32 %i.adv, 0
  br i1 %.not387.2.11109, label %.lr.ph654.2.1, label %.loopexit1068

.lr.ph654.2.1:                                    ; preds = %bb.cr
  %i.adw = shl i32 3, %i.aez
  %i.adx = or i32 %i.acv, %i.adw
  %i.ady = or i32 %i.adx, %i.afb
  %i.adz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ady, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.2.1 = icmp eq i32 %i.adz, 0
  br i1 %.not387.2.1, label %.lr.ph654.3, label %.loopexit1068

.lr.ph654.3:                                      ; preds = %.lr.ph654.2.1
  %i.aea = shl i32 3, %i.aez
  %i.aeb = or i32 %i.acx, %i.aea
  %i.aec = or i32 %i.aeb, %i.afb
  %i.aed = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aec, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.3 = icmp eq i32 %i.aed, 0
  br i1 %.not387.3, label %.loopexit517.5, label %.loopexit1068

.loopexit517.5:                                   ; preds = %.lr.ph654.3
  %i.aee = add nsw i32 %i.aey, 1                  ; 2 uses
  %i.aef = icmp slt i32 %i.aee, %3
  br i1 %i.aef, label %.lr.ph654, label %.loopexit518, !llvm.loop !114

.lr.ph654.11127:                                  ; preds = %bb.cx
  %i.aeg = or i32 %i.abi, %i.afb
  %i.aeh = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aeg, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.11128 = icmp eq i32 %i.aeh, 0
  br i1 %.not387.11128, label %bb.cs, label %.loopexit1068

bb.cs:                                            ; preds = %.lr.ph654.11127
  %i.aei = or i32 %i.ach, %i.afb
  %i.aej = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aei, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.11128.1 = icmp eq i32 %i.aej, 0
  br i1 %.not387.11128.1, label %bb.ct, label %.loopexit1068

bb.ct:                                            ; preds = %bb.cs
  %i.aek = shl i32 3, %i.aez
  %i.ael = or i32 %i.aar, %i.aek
  %i.aem = or i32 %i.ael, %i.afb
  %i.aen = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aem, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.11128.2 = icmp eq i32 %i.aen, 0
  br i1 %.not387.11128.2, label %.lr.ph654.21131, label %.loopexit1068

.lr.ph654.21131:                                  ; preds = %bb.ct
  %i.aeo = or i32 %i.acj, %i.afb
  %i.aep = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aeo, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.21132 = icmp eq i32 %i.aep, 0
  br i1 %.not387.21132, label %bb.cu, label %.loopexit1068

bb.cu:                                            ; preds = %.lr.ph654.21131
  %i.aeq = shl i32 3, %i.aez
  %i.aer = or i32 %i.abl, %i.aeq
  %i.aes = or i32 %i.aer, %i.afb
  %i.aet = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aes, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.21132.1 = icmp eq i32 %i.aet, 0
  br i1 %.not387.21132.1, label %.lr.ph654.31135, label %.loopexit1068

.lr.ph654.31135:                                  ; preds = %bb.cu
  %i.aeu = shl i32 3, %i.aez
  %i.aev = or i32 %i.acl, %i.aeu
  %i.aew = or i32 %i.aev, %i.afb
  %i.aex = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aew, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.31136 = icmp eq i32 %i.aex, 0
  br i1 %.not387.31136, label %.lr.ph654.1, label %.loopexit1068

.lr.ph654:                                        ; preds = %.lr.ph661, %.loopexit517.5
  %i.aey = phi i32 [ %i.aca, %.lr.ph661 ], [ %i.aee, %.loopexit517.5 ] ; 3 uses
  %i.aez = shl nsw i32 %i.aey, 1                  ; 11 uses
  %i.afa = shl nuw i32 1, %i.aez
  %i.afb = or i32 %i.acd, %i.afa                  ; 21 uses
  %i.afc = or i32 %i.aao, %i.afb
  %i.afd = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.afc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387 = icmp eq i32 %i.afd, 0
  br i1 %.not387, label %bb.cv, label %.loopexit1068

bb.cv:                                            ; preds = %.lr.ph654
  %i.afe = or i32 %i.abf, %i.afb
  %i.aff = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.afe, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.11165 = icmp eq i32 %i.aff, 0
  br i1 %.not387.11165, label %bb.cw, label %.loopexit1068

bb.cw:                                            ; preds = %bb.cv
  %i.afg = or i32 %i.acf, %i.afb
  %i.afh = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.afg, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.21166 = icmp eq i32 %i.afh, 0
  br i1 %.not387.21166, label %bb.cx, label %.loopexit1068

bb.cx:                                            ; preds = %bb.cw
  %i.afi = shl i32 3, %i.aez
  %i.afj = or i32 %i.aaa, %i.afi
  %i.afk = or i32 %i.afj, %i.afb
  %i.afl = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.afk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not387.31167 = icmp eq i32 %i.afl, 0
  br i1 %.not387.31167, label %.lr.ph654.11127, label %.loopexit1068

.loopexit1068:                                    ; preds = %.lr.ph654.3, %bb.cr, %.lr.ph654.2, %.lr.ph654.2.1, %bb.cp, %bb.co, %.lr.ph654.1, %bb.cq, %.lr.ph654.1.1, %.lr.ph654.1.2, %bb.cx, %bb.cw, %bb.cv, %.lr.ph654, %bb.ct, %bb.cs, %.lr.ph654.11127, %bb.cu, %.lr.ph654.21131, %.lr.ph654.31135
  %.lcssa975.sroa.phi = phi ptr [ %.sroa.170, %bb.cr ], [ %.sroa.84, %bb.cp ], [ %.sroa.0, %bb.cx ], [ %.sroa.0, %.lr.ph654.31135 ], [ %.sroa.0, %.lr.ph654.21131 ], [ %.sroa.0, %bb.cu ], [ %.sroa.0, %.lr.ph654.11127 ], [ %.sroa.0, %bb.cs ], [ %.sroa.0, %bb.ct ], [ %.sroa.0, %.lr.ph654 ], [ %.sroa.0, %bb.cv ], [ %.sroa.0, %bb.cw ], [ %.sroa.84, %.lr.ph654.1.2 ], [ %.sroa.84, %.lr.ph654.1.1 ], [ %.sroa.84, %bb.cq ], [ %.sroa.84, %.lr.ph654.1 ], [ %.sroa.84, %bb.co ], [ %.sroa.170, %.lr.ph654.2.1 ], [ %.sroa.170, %.lr.ph654.2 ], [ %.sroa.256, %.lr.ph654.3 ]
  %.lcssa974.sroa.phi = phi ptr [ %.sroa.256, %bb.cr ], [ %.sroa.170, %bb.cp ], [ %.sroa.84, %bb.cx ], [ %.sroa.340, %.lr.ph654.31135 ], [ %.sroa.256, %.lr.ph654.21131 ], [ %.sroa.256, %bb.cu ], [ %.sroa.170, %.lr.ph654.11127 ], [ %.sroa.170, %bb.cs ], [ %.sroa.170, %bb.ct ], [ %.sroa.84, %.lr.ph654 ], [ %.sroa.84, %bb.cv ], [ %.sroa.84, %bb.cw ], [ %.sroa.340, %.lr.ph654.1.2 ], [ %.sroa.256, %.lr.ph654.1.1 ], [ %.sroa.256, %bb.cq ], [ %.sroa.170, %.lr.ph654.1 ], [ %.sroa.170, %bb.co ], [ %.sroa.340, %.lr.ph654.2.1 ], [ %.sroa.256, %.lr.ph654.2 ], [ %.sroa.340, %.lr.ph654.3 ]
  %.lcssa972.sroa.phi = phi ptr [ %.sroa.419, %bb.cr ], [ %.sroa.419, %bb.cp ], [ %.sroa.419, %bb.cx ], [ %.sroa.419, %.lr.ph654.31135 ], [ %.sroa.340, %.lr.ph654.21131 ], [ %.sroa.419, %bb.cu ], [ %.sroa.256, %.lr.ph654.11127 ], [ %.sroa.340, %bb.cs ], [ %.sroa.419, %bb.ct ], [ %.sroa.170, %.lr.ph654 ], [ %.sroa.256, %bb.cv ], [ %.sroa.340, %bb.cw ], [ %.sroa.419, %.lr.ph654.1.2 ], [ %.sroa.340, %.lr.ph654.1.1 ], [ %.sroa.419, %bb.cq ], [ %.sroa.256, %.lr.ph654.1 ], [ %.sroa.340, %bb.co ], [ %.sroa.419, %.lr.ph654.2.1 ], [ %.sroa.340, %.lr.ph654.2 ], [ %.sroa.419, %.lr.ph654.3 ]
  store i32 %.lcssa20172874.lcssa2877.lcssa2880.lcssa2884, ptr %.sroa.419, align 1
  store i32 %i.zg, ptr %.sroa.0, align 1
  store i32 %.lcssa20172874.lcssa2877.lcssa2881, ptr %.sroa.419, align 1
  store i32 %.lcssa20172874.lcssa2878, ptr %.sroa.419, align 1
  store i32 %.lcssa20172875, ptr %.sroa.419, align 1
  store i32 %storemerge382671, ptr %.sroa.84, align 4, !tbaa !8
  store i32 %storemerge383668, ptr %.sroa.170, align 8, !tbaa !8
  store i32 %storemerge384665, ptr %.sroa.256, align 4, !tbaa !8
  store i32 %storemerge3856622085, ptr %.sroa.340, align 16, !tbaa !8
  store i32 %i.aey, ptr %.sroa.419, align 4, !tbaa !8
  %i.afm = load i32, ptr %.lcssa975.sroa.phi, align 4, !tbaa !8
  %i.afn = shl nsw i32 %i.afm, 1
  %i.afo = shl i32 3, %i.afn
  %i.afp = load i32, ptr %.lcssa974.sroa.phi, align 4, !tbaa !8
  %i.afq = shl nsw i32 %i.afp, 1
  %i.afr = shl i32 3, %i.afq
  %i.afs = load i32, ptr %.lcssa972.sroa.phi, align 4, !tbaa !8
  %i.aft = shl nsw i32 %i.afs, 1
  %i.afu = shl i32 3, %i.aft
  %i.afv = or i32 %i.afo, %i.afr
  %i.afw = or i32 %i.afv, %i.afu
  %i.afx = or i32 %i.afw, %i.afb
  br label %.loopexit461

._crit_edge676.loopexit:                          ; preds = %.loopexit522
  store i32 %.lcssa20172874.lcssa2877.lcssa2880.lcssa2883, ptr %.sroa.419, align 1
  store i32 %i.zh, ptr %.sroa.0, align 1
  store i32 %i.zf, ptr %.sroa.84, align 4, !tbaa !8
  %.old1876 = icmp eq i32 %i.c, 3
  br i1 %.old1876, label %.loopexit461, label %.preheader514

.preheader514:                                    ; preds = %._crit_edge648.thread, %._crit_edge676.loopexit
  store i32 0, ptr %.sroa.0, align 16, !tbaa !8
  br i1 %i.d, label %.lr.ph705.preheader, label %.loopexit461

.lr.ph705.preheader:                              ; preds = %.preheader514
  %.sroa.419.promoted2897 = load i32, ptr %.sroa.419, align 1
  br label %.lr.ph705

.loopexit513.loopexit:                            ; preds = %.loopexit512
  store i32 %i.agk, ptr %.sroa.170, align 8, !tbaa !8
  br label %.loopexit513

.loopexit513:                                     ; preds = %.loopexit513.loopexit, %.lr.ph705
  %.lcssa19982889.lcssa2892.lcssa2895.lcssa2898 = phi i32 [ %.lcssa19982889.lcssa2892.lcssa2895, %.loopexit513.loopexit ], [ %.lcssa19982889.lcssa2892.lcssa2895.lcssa2899, %.lr.ph705 ] ; 2 uses
  %i.afy = phi i32 [ %i.agl, %.loopexit513.loopexit ], [ %i.afz, %.lr.ph705 ]
  store i32 %i.afz, ptr %.sroa.0, align 16, !tbaa !8
  %exitcond1340.not = icmp eq i32 %i.afz, %3
  br i1 %exitcond1340.not, label %.loopexit461.loopexit1680, label %.lr.ph705, !llvm.loop !115

.lr.ph705:                                        ; preds = %.lr.ph705.preheader, %.loopexit513
  %.lcssa19982889.lcssa2892.lcssa2895.lcssa2899 = phi i32 [ %.lcssa19982889.lcssa2892.lcssa2895.lcssa2898, %.loopexit513 ], [ %.sroa.419.promoted2897, %.lr.ph705.preheader ] ; 3 uses
  %storemerge376704 = phi i32 [ %i.afz, %.loopexit513 ], [ 0, %.lr.ph705.preheader ] ; 5 uses
  %i.afz = add nuw nsw i32 %storemerge376704, 1   ; 6 uses
  %i.aga = icmp slt i32 %i.afz, %3
  br i1 %i.aga, label %.lr.ph703, label %.loopexit513

.lr.ph703:                                        ; preds = %.lr.ph705
  %i.agb = shl nuw nsw i32 %storemerge376704, 1   ; 2 uses
  %i.agc = shl nuw i32 1, %i.agb
  %i.agd = shl nuw nsw i32 %storemerge376704, 1
  %i.age = shl i32 3, %i.agd
  %i.agf = shl nuw nsw i32 %storemerge376704, 1
  %i.agg = shl i32 3, %i.agf
  %i.agh = shl nuw nsw i32 %storemerge376704, 1
  %i.agi = shl i32 3, %i.agh
  %i.agj = shl i32 3, %i.agb
  br label %bb.cy

.loopexit512.loopexit:                            ; preds = %.loopexit511
  store i32 %i.agy, ptr %.sroa.256, align 4, !tbaa !8
  br label %.loopexit512

.loopexit512:                                     ; preds = %.loopexit512.loopexit, %bb.cy
  %.lcssa19982889.lcssa2892.lcssa2895 = phi i32 [ %.lcssa19982889.lcssa2892, %.loopexit512.loopexit ], [ %.lcssa19982889.lcssa2892.lcssa2896, %bb.cy ] ; 2 uses
  %i.agk = phi i32 [ %i.agz, %.loopexit512.loopexit ], [ %i.agl, %bb.cy ]
  %exitcond1339.not = icmp eq i32 %i.agl, %3
  br i1 %exitcond1339.not, label %.loopexit513.loopexit, label %bb.cy, !llvm.loop !116

bb.cy:                                            ; preds = %.lr.ph703, %.loopexit512
  %.lcssa19982889.lcssa2892.lcssa2896 = phi i32 [ %.lcssa19982889.lcssa2892.lcssa2895.lcssa2899, %.lr.ph703 ], [ %.lcssa19982889.lcssa2892.lcssa2895, %.loopexit512 ] ; 3 uses
  %storemerge377701 = phi i32 [ %i.afz, %.lr.ph703 ], [ %i.agl, %.loopexit512 ] ; 6 uses
  %i.agl = add nuw nsw i32 %storemerge377701, 1   ; 6 uses
  %i.agm = icmp slt i32 %i.agl, %3
  br i1 %i.agm, label %.lr.ph700, label %.loopexit512

.lr.ph700:                                        ; preds = %bb.cy
  %i.agn = shl nuw nsw i32 %storemerge377701, 1   ; 2 uses
  %i.ago = shl nuw i32 1, %i.agn
  %i.agp = or i32 %i.ago, %i.agc
  %i.agq = shl nuw nsw i32 %storemerge377701, 1
  %i.agr = shl i32 3, %i.agq
  %i.ags = or i32 %i.age, %i.agr                  ; 4 uses
  %i.agt = shl nuw nsw i32 %storemerge377701, 1
  %i.agu = shl i32 3, %i.agt
  %i.agv = shl nuw nsw i32 %storemerge377701, 1
  %i.agw = shl i32 3, %i.agv
  %i.agx = shl i32 3, %i.agn
  br label %bb.cz

.loopexit511.loopexit:                            ; preds = %.loopexit510
  store i32 %.lcssa17021788, ptr %.sroa.340, align 16, !tbaa !8
  br label %.loopexit511

.loopexit511:                                     ; preds = %.loopexit511.loopexit, %bb.cz
  %.lcssa19982889.lcssa2892 = phi i32 [ %.lcssa19982889, %.loopexit511.loopexit ], [ %.lcssa19982889.lcssa2893, %bb.cz ] ; 2 uses
  %i.agy = phi i32 [ %i.ahs, %.loopexit511.loopexit ], [ %i.agz, %bb.cz ]
  %exitcond1338.not = icmp eq i32 %i.agz, %3
  br i1 %exitcond1338.not, label %.loopexit512.loopexit, label %bb.cz, !llvm.loop !117

bb.cz:                                            ; preds = %.lr.ph700, %.loopexit511
  %.lcssa19982889.lcssa2893 = phi i32 [ %.lcssa19982889.lcssa2892.lcssa2896, %.lr.ph700 ], [ %.lcssa19982889.lcssa2892, %.loopexit511 ] ; 3 uses
  %storemerge378698 = phi i32 [ %i.agl, %.lr.ph700 ], [ %i.agz, %.loopexit511 ] ; 8 uses
  %i.agz = add nuw nsw i32 %storemerge378698, 1   ; 6 uses
  %i.aha = icmp slt i32 %i.agz, %3
  br i1 %i.aha, label %.lr.ph697, label %.loopexit511

.lr.ph697:                                        ; preds = %bb.cz
  %i.ahb = shl nuw nsw i32 %storemerge378698, 1   ; 2 uses
  %i.ahc = shl nuw i32 1, %i.ahb
  %i.ahd = or i32 %i.agp, %i.ahc
  %i.ahe = shl nuw nsw i32 %storemerge378698, 1
  %i.ahf = shl i32 3, %i.ahe                      ; 3 uses
  %i.ahg = or i32 %i.ags, %i.ahf                  ; 4 uses
  %i.ahh = shl nuw nsw i32 %storemerge378698, 1
  %i.ahi = shl i32 3, %i.ahh
  %i.ahj = shl nuw nsw i32 %storemerge378698, 1
  %i.ahk = shl i32 3, %i.ahj
  %i.ahl = or i32 %i.agg, %i.ahk                  ; 3 uses
  %i.ahm = shl nuw nsw i32 %storemerge378698, 1
  %i.ahn = shl i32 3, %i.ahm
  %i.aho = or i32 %i.agu, %i.ahn                  ; 3 uses
  %i.ahp = shl nuw nsw i32 %storemerge378698, 1
  %i.ahq = shl i32 3, %i.ahp
  %i.ahr = shl i32 3, %i.ahb
  br label %bb.da

.loopexit510:                                     ; preds = %.lr.ph694, %.loopexit509, %bb.da
  %.lcssa19982889 = phi i32 [ %.lcssa19982890, %bb.da ], [ %i.aiy, %.lr.ph694 ], [ %i.aja, %.loopexit509 ] ; 2 uses
  %.lcssa17021788 = phi i32 [ %i.ahs, %bb.da ], [ %i.aiy, %.lr.ph694 ], [ %i.aja, %.loopexit509 ]
  %exitcond1337.not = icmp eq i32 %i.ahs, %3
  br i1 %exitcond1337.not, label %.loopexit511.loopexit, label %bb.da, !llvm.loop !118

bb.da:                                            ; preds = %.lr.ph697, %.loopexit510
  %.lcssa19982890 = phi i32 [ %.lcssa19982889.lcssa2893, %.lr.ph697 ], [ %.lcssa19982889, %.loopexit510 ] ; 2 uses
  %storemerge379695 = phi i32 [ %i.agz, %.lr.ph697 ], [ %i.ahs, %.loopexit510 ] ; 13 uses
  %i.ahs = add nsw i32 %storemerge379695, 1       ; 6 uses
  %i.aht = icmp slt i32 %i.ahs, %3
  br i1 %i.aht, label %.lr.ph694, label %.loopexit510

.lr.ph694:                                        ; preds = %bb.da
  %i.ahu = shl nsw i32 %storemerge379695, 1       ; 2 uses
  %i.ahv = shl nuw i32 1, %i.ahu
  %i.ahw = or i32 %i.ahd, %i.ahv
  %i.ahx = shl nsw i32 %storemerge379695, 1
  %i.ahy = shl i32 3, %i.ahx                      ; 3 uses
  %i.ahz = or i32 %i.ahg, %i.ahy
  %i.aia = or i32 %i.ags, %i.ahy                  ; 4 uses
  %i.aib = or i32 %i.aia, %i.ahf
  %i.aic = shl nsw i32 %storemerge379695, 1
  %i.aid = shl i32 3, %i.aic
  %i.aie = shl nsw i32 %storemerge379695, 1
  %i.aif = shl i32 3, %i.aie                      ; 2 uses
  %i.aig = or i32 %i.ahl, %i.aif                  ; 3 uses
  %i.aih = shl nsw i32 %storemerge379695, 1
  %i.aii = shl i32 3, %i.aih
  %i.aij = shl nsw i32 %storemerge379695, 1
  %i.aik = shl i32 3, %i.aij
  %i.ail = or i32 %i.agi, %i.aik                  ; 2 uses
  %i.aim = shl nsw i32 %storemerge379695, 1
  %i.ain = shl i32 3, %i.aim                      ; 2 uses
  %i.aio = or i32 %i.aho, %i.ain                  ; 3 uses
  %i.aip = shl nsw i32 %storemerge379695, 1
  %i.aiq = shl i32 3, %i.aip
  %i.air = shl nsw i32 %storemerge379695, 1
  %i.ais = shl i32 3, %i.air
  %i.ait = or i32 %i.agw, %i.ais                  ; 2 uses
  %i.aiu = shl nsw i32 %storemerge379695, 1
  %i.aiv = shl i32 3, %i.aiu
  %i.aiw = or i32 %i.ahq, %i.aiv                  ; 2 uses
  %i.aix = shl i32 3, %i.ahu
  %i.aiy = add nsw i32 %storemerge379695, 2       ; 4 uses
  %i.aiz = icmp slt i32 %i.aiy, %3
  br i1 %i.aiz, label %.lr.ph691, label %.loopexit510

.loopexit509:                                     ; preds = %.loopexit508.5
  %i.aja = add nsw i32 %i.ajc, 1                  ; 4 uses
  %i.ajb = icmp slt i32 %i.aja, %3
  br i1 %i.ajb, label %.lr.ph691, label %.loopexit510, !llvm.loop !119

.lr.ph691:                                        ; preds = %.lr.ph694, %.loopexit509
  %i.ajc = phi i32 [ %i.aja, %.loopexit509 ], [ %i.aiy, %.lr.ph694 ] ; 3 uses
  %storemerge3806922087 = phi i32 [ %i.ajc, %.loopexit509 ], [ %i.ahs, %.lr.ph694 ] ; 2 uses
  %i.ajd = shl nsw i32 %storemerge3806922087, 1   ; 11 uses
  %i.aje = shl nuw i32 1, %i.ajd
  %i.ajf = or i32 %i.ahw, %i.aje
  %i.ajg = shl i32 3, %i.ajd                      ; 4 uses
  %i.ajh = or i32 %i.ahg, %i.ajg
  %i.aji = or i32 %i.aia, %i.ajg
  %i.ajj = or i32 %i.ags, %i.ajg                  ; 4 uses
  %i.ajk = or i32 %i.ajj, %i.ahf
  %i.ajl = or i32 %i.ajj, %i.ahy
  %i.ajm = shl i32 3, %i.ajd                      ; 3 uses
  %i.ajn = or i32 %i.aig, %i.ajm
  %i.ajo = or i32 %i.ahl, %i.ajm                  ; 3 uses
  %i.ajp = or i32 %i.ajo, %i.aif
  %i.ajq = shl i32 3, %i.ajd                      ; 2 uses
  %i.ajr = or i32 %i.ail, %i.ajq                  ; 2 uses
  %i.ajs = shl i32 3, %i.ajd
  %i.ajt = or i32 %i.agj, %i.ajs
  %i.aju = shl i32 3, %i.ajd                      ; 3 uses
  %i.ajv = or i32 %i.aio, %i.aju
  %i.ajw = or i32 %i.aho, %i.aju                  ; 3 uses
  %i.ajx = or i32 %i.ajw, %i.ain
  %i.ajy = shl i32 3, %i.ajd                      ; 2 uses
  %i.ajz = or i32 %i.ait, %i.ajy                  ; 2 uses
  %i.aka = shl i32 3, %i.ajd
  %i.akb = or i32 %i.agx, %i.aka
  %i.akc = shl i32 3, %i.ajd                      ; 2 uses
  %i.akd = or i32 %i.aiw, %i.akc                  ; 2 uses
  %i.ake = shl i32 3, %i.ajd
  %i.akf = or i32 %i.ahr, %i.ake
  %i.akg = shl i32 3, %i.ajd
  %i.akh = or i32 %i.aix, %i.akg
  br label %.preheader506.lr.ph

.preheader506.lr.ph.1:                            ; preds = %.preheader506.lr.ph.31282
  %i.aki = or i32 %i.aio, %i.aoj
  %i.akj = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aki, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1 = icmp eq i32 %i.akj, 0
  br i1 %.not.1, label %bb.db, label %.loopexit1192

bb.db:                                            ; preds = %.preheader506.lr.ph.1
  %i.akk = or i32 %i.ajv, %i.aoj
  %i.akl = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.akk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.11264 = icmp eq i32 %i.akl, 0
  br i1 %.not.1.11264, label %bb.dc, label %.loopexit1192

bb.dc:                                            ; preds = %bb.db
  %i.akm = shl i32 3, %i.aoh                      ; 3 uses
  %i.akn = or i32 %i.aio, %i.akm
  %i.ako = or i32 %i.akn, %i.aoj
  %i.akp = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ako, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.21265 = icmp eq i32 %i.akp, 0
  br i1 %.not.1.21265, label %._crit_edge683.1, label %.loopexit1192

._crit_edge683.1:                                 ; preds = %bb.dc
  %i.akq = or i32 %i.ajx, %i.aoj
  %i.akr = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.akq, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.11267 = icmp eq i32 %i.akr, 0
  br i1 %.not.1.11267, label %bb.dd, label %.loopexit1192

bb.dd:                                            ; preds = %._crit_edge683.1
  %i.aks = or i32 %i.ajw, %i.aoj
  %i.akt = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aks, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.11264.1 = icmp eq i32 %i.akt, 0
  br i1 %.not.1.11264.1, label %bb.de, label %.loopexit1192

bb.de:                                            ; preds = %bb.dd
  %i.aku = or i32 %i.ajw, %i.akm
  %i.akv = or i32 %i.aku, %i.aoj
  %i.akw = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.akv, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.21265.1 = icmp eq i32 %i.akw, 0
  br i1 %.not.1.21265.1, label %._crit_edge683.1.11268, label %.loopexit1192

._crit_edge683.1.11268:                           ; preds = %bb.de
  %i.akx = or i32 %i.aho, %i.akm                  ; 3 uses
  %i.aky = or i32 %i.akx, %i.aiq
  %i.akz = or i32 %i.aky, %i.aoj
  %i.ala = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.akz, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.21270 = icmp eq i32 %i.ala, 0
  br i1 %.not.1.21270, label %bb.df, label %.loopexit1192

bb.df:                                            ; preds = %._crit_edge683.1.11268
  %i.alb = or i32 %i.akx, %i.aju
  %i.alc = or i32 %i.alb, %i.aoj
  %i.ald = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.alc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.11264.2 = icmp eq i32 %i.ald, 0
  br i1 %.not.1.11264.2, label %bb.dg, label %.loopexit1192

bb.dg:                                            ; preds = %bb.df
  %i.ale = or i32 %i.akx, %i.aoj
  %i.alf = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ale, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.21265.2 = icmp eq i32 %i.alf, 0
  br i1 %.not.1.21265.2, label %.preheader506.lr.ph.1.1, label %.loopexit1192

.preheader506.lr.ph.1.1:                          ; preds = %bb.dg
  %i.alg = or i32 %i.ajz, %i.aoj
  %i.alh = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.alg, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.1 = icmp eq i32 %i.alh, 0
  br i1 %.not.1.1, label %bb.dh, label %.loopexit1192

bb.dh:                                            ; preds = %.preheader506.lr.ph.1.1
  %i.ali = shl i32 3, %i.aoh                      ; 2 uses
  %i.alj = or i32 %i.ajz, %i.ali
  %i.alk = or i32 %i.alj, %i.aoj
  %i.all = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.alk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.1.1 = icmp eq i32 %i.all, 0
  br i1 %.not.1.1.1, label %._crit_edge683.1.1, label %.loopexit1192

._crit_edge683.1.1:                               ; preds = %bb.dh
  %i.alm = or i32 %i.ait, %i.ali                  ; 2 uses
  %i.aln = or i32 %i.alm, %i.ajy
  %i.alo = or i32 %i.aln, %i.aoj
  %i.alp = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.alo, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.1.11263 = icmp eq i32 %i.alp, 0
  br i1 %.not.1.1.11263, label %bb.di, label %.loopexit1192

bb.di:                                            ; preds = %._crit_edge683.1.1
  %i.alq = or i32 %i.alm, %i.aoj
  %i.alr = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.alq, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.1.1.1 = icmp eq i32 %i.alr, 0
  br i1 %.not.1.1.1.1, label %.preheader506.lr.ph.1.2, label %.loopexit1192

.preheader506.lr.ph.1.2:                          ; preds = %bb.di
  %i.als = shl i32 3, %i.aoh
  %i.alt = or i32 %i.akb, %i.als
  %i.alu = or i32 %i.alt, %i.aoj
  %i.alv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.alu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.1.2 = icmp eq i32 %i.alv, 0
  br i1 %.not.1.2, label %.preheader506.lr.ph.2, label %.loopexit1192

.preheader506.lr.ph.2:                            ; preds = %.preheader506.lr.ph.1.2
  %i.alw = or i32 %i.akd, %i.aoj
  %i.alx = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.alw, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.2 = icmp eq i32 %i.alx, 0
  br i1 %.not.2, label %bb.dj, label %.loopexit1192

bb.dj:                                            ; preds = %.preheader506.lr.ph.2
  %i.aly = shl i32 3, %i.aoh                      ; 2 uses
  %i.alz = or i32 %i.akd, %i.aly
  %i.ama = or i32 %i.alz, %i.aoj
  %i.amb = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ama, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.2.11241 = icmp eq i32 %i.amb, 0
  br i1 %.not.2.11241, label %._crit_edge683.2, label %.loopexit1192

._crit_edge683.2:                                 ; preds = %bb.dj
  %i.amc = or i32 %i.aiw, %i.aly                  ; 2 uses
  %i.amd = or i32 %i.amc, %i.akc
  %i.ame = or i32 %i.amd, %i.aoj
  %i.amf = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ame, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.2.11243 = icmp eq i32 %i.amf, 0
  br i1 %.not.2.11243, label %bb.dk, label %.loopexit1192

bb.dk:                                            ; preds = %._crit_edge683.2
  %i.amg = or i32 %i.amc, %i.aoj
  %i.amh = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.amg, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.2.11241.1 = icmp eq i32 %i.amh, 0
  br i1 %.not.2.11241.1, label %.preheader506.lr.ph.2.1, label %.loopexit1192

.preheader506.lr.ph.2.1:                          ; preds = %bb.dk
  %i.ami = shl i32 3, %i.aoh
  %i.amj = or i32 %i.akf, %i.ami
  %i.amk = or i32 %i.amj, %i.aoj
  %i.aml = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.amk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.2.1 = icmp eq i32 %i.aml, 0
  br i1 %.not.2.1, label %.preheader506.lr.ph.3, label %.loopexit1192

.preheader506.lr.ph.3:                            ; preds = %.preheader506.lr.ph.2.1
  %i.amm = shl i32 3, %i.aoh
  %i.amn = or i32 %i.akh, %i.amm
  %i.amo = or i32 %i.amn, %i.aoj
  %i.amp = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.amo, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.3 = icmp eq i32 %i.amp, 0
  br i1 %.not.3, label %.loopexit508.5, label %.loopexit1192

.loopexit508.5:                                   ; preds = %.preheader506.lr.ph.3
  %i.amq = add nsw i32 %i.aog, 1                  ; 2 uses
  %i.amr = icmp slt i32 %i.amq, %3
  br i1 %i.amr, label %.preheader506.lr.ph, label %.loopexit509, !llvm.loop !120

.preheader506.lr.ph.11272:                        ; preds = %bb.ee
  %i.ams = or i32 %i.aig, %i.aoj
  %i.amt = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ams, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274 = icmp eq i32 %i.amt, 0
  br i1 %.not.11274, label %bb.dl, label %.loopexit1192

bb.dl:                                            ; preds = %.preheader506.lr.ph.11272
  %i.amu = or i32 %i.ajn, %i.aoj
  %i.amv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.amu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.1 = icmp eq i32 %i.amv, 0
  br i1 %.not.11274.1, label %bb.dm, label %.loopexit1192

bb.dm:                                            ; preds = %bb.dl
  %i.amw = shl i32 3, %i.aoh                      ; 3 uses
  %i.amx = or i32 %i.aig, %i.amw
  %i.amy = or i32 %i.amx, %i.aoj
  %i.amz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.amy, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.2 = icmp eq i32 %i.amz, 0
  br i1 %.not.11274.2, label %._crit_edge683.11275, label %.loopexit1192

._crit_edge683.11275:                             ; preds = %bb.dm
  %i.ana = or i32 %i.ajp, %i.aoj
  %i.anb = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ana, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.11323 = icmp eq i32 %i.anb, 0
  br i1 %.not.11274.11323, label %bb.dn, label %.loopexit1192

bb.dn:                                            ; preds = %._crit_edge683.11275
  %i.anc = or i32 %i.ajo, %i.aoj
  %i.and = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.anc, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.1.1 = icmp eq i32 %i.and, 0
  br i1 %.not.11274.1.1, label %bb.do, label %.loopexit1192

bb.do:                                            ; preds = %bb.dn
  %i.ane = or i32 %i.ajo, %i.amw
  %i.anf = or i32 %i.ane, %i.aoj
  %i.ang = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.anf, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.2.1 = icmp eq i32 %i.ang, 0
  br i1 %.not.11274.2.1, label %._crit_edge683.11275.1, label %.loopexit1192

._crit_edge683.11275.1:                           ; preds = %bb.do
  %i.anh = or i32 %i.ahl, %i.amw                  ; 3 uses
  %i.ani = or i32 %i.anh, %i.aii
  %i.anj = or i32 %i.ani, %i.aoj
  %i.ank = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.anj, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.21324 = icmp eq i32 %i.ank, 0
  br i1 %.not.11274.21324, label %bb.dp, label %.loopexit1192

bb.dp:                                            ; preds = %._crit_edge683.11275.1
  %i.anl = or i32 %i.anh, %i.ajm
  %i.anm = or i32 %i.anl, %i.aoj
  %i.ann = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.anm, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.1.2 = icmp eq i32 %i.ann, 0
  br i1 %.not.11274.1.2, label %bb.dq, label %.loopexit1192

bb.dq:                                            ; preds = %bb.dp
  %i.ano = or i32 %i.anh, %i.aoj
  %i.anp = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.ano, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11274.2.2 = icmp eq i32 %i.anp, 0
  br i1 %.not.11274.2.2, label %.preheader506.lr.ph.21277, label %.loopexit1192

.preheader506.lr.ph.21277:                        ; preds = %bb.dq
  %i.anq = or i32 %i.ajr, %i.aoj
  %i.anr = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.anq, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21279 = icmp eq i32 %i.anr, 0
  br i1 %.not.21279, label %bb.dr, label %.loopexit1192

bb.dr:                                            ; preds = %.preheader506.lr.ph.21277
  %i.ans = shl i32 3, %i.aoh                      ; 2 uses
  %i.ant = or i32 %i.ajr, %i.ans
  %i.anu = or i32 %i.ant, %i.aoj
  %i.anv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.anu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21279.1 = icmp eq i32 %i.anv, 0
  br i1 %.not.21279.1, label %._crit_edge683.21280, label %.loopexit1192

._crit_edge683.21280:                             ; preds = %bb.dr
  %i.anw = or i32 %i.ail, %i.ans                  ; 2 uses
  %i.anx = or i32 %i.anw, %i.ajq
  %i.any = or i32 %i.anx, %i.aoj
  %i.anz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.any, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21279.11322 = icmp eq i32 %i.anz, 0
  br i1 %.not.21279.11322, label %bb.ds, label %.loopexit1192

bb.ds:                                            ; preds = %._crit_edge683.21280
  %i.aoa = or i32 %i.anw, %i.aoj
  %i.aob = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aoa, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21279.1.1 = icmp eq i32 %i.aob, 0
  br i1 %.not.21279.1.1, label %.preheader506.lr.ph.31282, label %.loopexit1192

.preheader506.lr.ph.31282:                        ; preds = %bb.ds
  %i.aoc = shl i32 3, %i.aoh
  %i.aod = or i32 %i.ajt, %i.aoc
  %i.aoe = or i32 %i.aod, %i.aoj
  %i.aof = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aoe, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.31284 = icmp eq i32 %i.aof, 0
  br i1 %.not.31284, label %.preheader506.lr.ph.1, label %.loopexit1192

.preheader506.lr.ph:                              ; preds = %.lr.ph691, %.loopexit508.5
  %i.aog = phi i32 [ %i.ajc, %.lr.ph691 ], [ %i.amq, %.loopexit508.5 ] ; 3 uses
  %i.aoh = shl nsw i32 %i.aog, 1                  ; 11 uses
  %i.aoi = shl nuw i32 1, %i.aoh
  %i.aoj = or i32 %i.ajf, %i.aoi                  ; 51 uses
  %i.aok = or i32 %i.ahg, %i.aoj
  %i.aol = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aok, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not = icmp eq i32 %i.aol, 0
  br i1 %.not, label %bb.dt, label %.loopexit1192

bb.dt:                                            ; preds = %.preheader506.lr.ph
  %i.aom = or i32 %i.ahz, %i.aoj
  %i.aon = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aom, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11325 = icmp eq i32 %i.aon, 0
  br i1 %.not.11325, label %bb.du, label %.loopexit1192

bb.du:                                            ; preds = %bb.dt
  %i.aoo = or i32 %i.ajh, %i.aoj
  %i.aop = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aoo, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21326 = icmp eq i32 %i.aop, 0
  br i1 %.not.21326, label %bb.dv, label %.loopexit1192

bb.dv:                                            ; preds = %bb.du
  %i.aoq = shl i32 3, %i.aoh                      ; 4 uses
  %i.aor = or i32 %i.ahg, %i.aoq
  %i.aos = or i32 %i.aor, %i.aoj
  %i.aot = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aos, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.31327 = icmp eq i32 %i.aot, 0
  br i1 %.not.31327, label %._crit_edge683, label %.loopexit1192

._crit_edge683:                                   ; preds = %bb.dv
  %i.aou = or i32 %i.aib, %i.aoj
  %i.aov = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aou, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11329 = icmp eq i32 %i.aov, 0
  br i1 %.not.11329, label %bb.dw, label %.loopexit1192

bb.dw:                                            ; preds = %._crit_edge683
  %i.aow = or i32 %i.aia, %i.aoj
  %i.aox = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aow, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11325.1 = icmp eq i32 %i.aox, 0
  br i1 %.not.11325.1, label %bb.dx, label %.loopexit1192

bb.dx:                                            ; preds = %bb.dw
  %i.aoy = or i32 %i.aji, %i.aoj
  %i.aoz = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aoy, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21326.1 = icmp eq i32 %i.aoz, 0
  br i1 %.not.21326.1, label %bb.dy, label %.loopexit1192

bb.dy:                                            ; preds = %bb.dx
  %i.apa = or i32 %i.aia, %i.aoq
  %i.apb = or i32 %i.apa, %i.aoj
  %i.apc = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.apb, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.31327.1 = icmp eq i32 %i.apc, 0
  br i1 %.not.31327.1, label %._crit_edge683.11330, label %.loopexit1192

._crit_edge683.11330:                             ; preds = %bb.dy
  %i.apd = or i32 %i.ajk, %i.aoj
  %i.ape = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.apd, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21332 = icmp eq i32 %i.ape, 0
  br i1 %.not.21332, label %bb.dz, label %.loopexit1192

bb.dz:                                            ; preds = %._crit_edge683.11330
  %i.apf = or i32 %i.ajl, %i.aoj
  %i.apg = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.apf, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11325.2 = icmp eq i32 %i.apg, 0
  br i1 %.not.11325.2, label %bb.ea, label %.loopexit1192

bb.ea:                                            ; preds = %bb.dz
  %i.aph = or i32 %i.ajj, %i.aoj
  %i.api = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.aph, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21326.2 = icmp eq i32 %i.api, 0
  br i1 %.not.21326.2, label %bb.eb, label %.loopexit1192

bb.eb:                                            ; preds = %bb.ea
  %i.apj = or i32 %i.ajj, %i.aoq
  %i.apk = or i32 %i.apj, %i.aoj
  %i.apl = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.apk, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.31327.2 = icmp eq i32 %i.apl, 0
  br i1 %.not.31327.2, label %._crit_edge683.21333, label %.loopexit1192

._crit_edge683.21333:                             ; preds = %bb.eb
  %i.apm = or i32 %i.ags, %i.aoq                  ; 4 uses
  %i.apn = or i32 %i.apm, %i.ahi
  %i.apo = or i32 %i.apn, %i.aoj
  %i.app = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.apo, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.31335 = icmp eq i32 %i.app, 0
  br i1 %.not.31335, label %bb.ec, label %.loopexit1192

bb.ec:                                            ; preds = %._crit_edge683.21333
  %i.apq = or i32 %i.apm, %i.aid
  %i.apr = or i32 %i.apq, %i.aoj
  %i.aps = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.apr, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.11325.3 = icmp eq i32 %i.aps, 0
  br i1 %.not.11325.3, label %bb.ed, label %.loopexit1192

bb.ed:                                            ; preds = %bb.ec
  %i.apt = or i32 %i.apm, %i.ajg
  %i.apu = or i32 %i.apt, %i.aoj
  %i.apv = tail call i32 @If_ManSatCheckXY(ptr noundef %0, i32 noundef 6, ptr noundef %2, i32 noundef %3, i32 noundef %i.apu, ptr noundef null, ptr noundef null, ptr noundef %4)
  %.not.21326.3 = icmp eq i32 %i.apv, 0
  br i1 %.not.21326.3, label %bb.ee, label %.loopexit1192
end_hunk_0
