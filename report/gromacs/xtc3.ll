Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@Ptngc_pack_array_xtc3:bb.a
.lr.ph:                                           ; preds = %positive_int.exit.1, %.lr.ph.preheader.new
  %indvars.iv999 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next1000.1, %positive_int.exit.1 ] ; 3 uses
  %.0494906 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1495.1, %positive_int.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %positive_int.exit.1 ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv999
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !10 ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.bt = shl nuw i32 %i.br, 1
  %i.bu = add i32 %i.bt, -1
  br label %positive_int.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bv = icmp slt i32 %i.br, 0
  br i1 %i.bv, label %bb.q, label %positive_int.exit

bb.q:                                             ; preds = %bb.p
  %i.bw = xor i32 %i.br, -1
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = add nuw nsw i32 %i.bx, 2
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ %i.bu, %bb.o ], [ %i.by, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.bz = icmp sgt i32 %.0.i, %.0494906
  %i.ca = icmp slt i32 %.0.i, %i.bm
  %or.cond560 = select i1 %i.bz, i1 %i.ca, i1 false
  %.1495 = select i1 %or.cond560, i32 %.0.i, i32 %.0494906 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv999
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !10 ; 4 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.t, label %bb.r

bb.r:                                             ; preds = %positive_int.exit
  %i.cf = icmp slt i32 %i.cd, 0
  br i1 %i.cf, label %bb.s, label %positive_int.exit.1

bb.s:                                             ; preds = %bb.r
  %i.cg = xor i32 %i.cd, -1
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = add nuw nsw i32 %i.ch, 2
  br label %positive_int.exit.1

bb.t:                                             ; preds = %positive_int.exit
  %i.cj = shl nuw i32 %i.cd, 1
  %i.ck = add i32 %i.cj, -1
  br label %positive_int.exit.1

positive_int.exit.1:                              ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.1 = phi i32 [ %i.ck, %bb.t ], [ %i.ci, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %i.cl = icmp sgt i32 %.0.i.1, %.1495
  %i.cm = icmp slt i32 %.0.i.1, %i.bm
  %or.cond560.1 = select i1 %i.cl, i1 %i.cm, i1 false
  %.1495.1 = select i1 %or.cond560.1, i32 %.0.i.1, i32 %.1495 ; 3 uses
  %indvars.iv.next1000.1 = add nuw nsw i64 %indvars.iv999, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge908.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !39

._crit_edge908.loopexit.unr-lcssa:                ; preds = %positive_int.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge908, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge908.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv999.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next1000.1, %._crit_edge908.loopexit.unr-lcssa ]
  %.0494906.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1495.1, %._crit_edge908.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1826 = trunc i32 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1826)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv999.epil.init
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10 ; 4 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.epil.preheader
  %i.cq = icmp slt i32 %i.co, 0
  br i1 %i.cq, label %bb.v, label %positive_int.exit.epil

bb.v:                                             ; preds = %bb.u
  %i.cr = xor i32 %i.co, -1
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = add nuw nsw i32 %i.cs, 2
  br label %positive_int.exit.epil

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %i.cu = shl nuw i32 %i.co, 1
  %i.cv = add i32 %i.cu, -1
  br label %positive_int.exit.epil

positive_int.exit.epil:                           ; preds = %bb.w, %bb.v, %bb.u
  %.0.i.epil = phi i32 [ %i.cv, %bb.w ], [ %i.ct, %bb.v ], [ 0, %bb.u ] ; 3 uses
  %i.cw = icmp sgt i32 %.0.i.epil, %.0494906.epil.init
  %i.cx = icmp slt i32 %.0.i.epil, %i.bm
  %or.cond560.epil = select i1 %i.cw, i1 %i.cx, i1 false
  %.1495.epil = select i1 %or.cond560.epil, i32 %.0.i.epil, i32 %.0494906.epil.init
  br label %._crit_edge908

._crit_edge908:                                   ; preds = %positive_int.exit.epil, %._crit_edge908.loopexit.unr-lcssa, %._crit_edge
  %.0494.lcssa = phi i32 [ 0, %._crit_edge ], [ %.1495.1, %._crit_edge908.loopexit.unr-lcssa ], [ %.1495.epil, %positive_int.exit.epil ]
  %i.cy = tail call i32 @Ptngc_find_magic_index(i32 noundef %.0494.lcssa) #12
  %i.cz = icmp sgt i32 %i.ay, 0
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge908
  %i.da = shl nuw i32 %i.ay, 1
  %i.db = add i32 %i.da, -1
  br label %positive_int.exit584

bb.y:                                             ; preds = %._crit_edge908
  %i.dc = icmp slt i32 %i.ay, 0
  br i1 %i.dc, label %bb.z, label %positive_int.exit584

bb.z:                                             ; preds = %bb.y
  %i.dd = xor i32 %i.ay, -1
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = add nuw nsw i32 %i.de, 2
  br label %positive_int.exit584

positive_int.exit584:                             ; preds = %bb.x, %bb.y, %bb.z
  %.0.i583 = phi i32 [ %i.db, %bb.x ], [ %i.df, %bb.z ], [ 0, %bb.y ]
  store i32 %.0.i583, ptr %.04381201, align 1
  %i.dg = load i32, ptr %i.bd, align 4, !tbaa !10 ; 4 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %positive_int.exit584
  %i.di = shl nuw i32 %i.dg, 1
  %i.dj = add i32 %i.di, -1
  br label %positive_int.exit586

bb.ab:                                            ; preds = %positive_int.exit584
  %i.dk = icmp slt i32 %i.dg, 0
  br i1 %i.dk, label %bb.ac, label %positive_int.exit586

bb.ac:                                            ; preds = %bb.ab
  %i.dl = xor i32 %i.dg, -1
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = add nuw nsw i32 %i.dm, 2
  br label %positive_int.exit586

positive_int.exit586:                             ; preds = %bb.aa, %bb.ab, %bb.ac
  %.0.i585 = phi i32 [ %i.dj, %bb.aa ], [ %i.dn, %bb.ac ], [ 0, %bb.ab ]
  %i.do = getelementptr inbounds nuw i8, ptr %.04381201, i64 4
  store i32 %.0.i585, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.bh, align 8, !tbaa !10 ; 4 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %positive_int.exit586
  %i.dr = shl nuw i32 %i.dp, 1
  %i.ds = add i32 %i.dr, -1
  br label %positive_int.exit588

bb.ae:                                            ; preds = %positive_int.exit586
  %i.dt = icmp slt i32 %i.dp, 0
  br i1 %i.dt, label %bb.af, label %positive_int.exit588

bb.af:                                            ; preds = %bb.ae
  %i.du = xor i32 %i.dp, -1
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = add nuw nsw i32 %i.dv, 2
  br label %positive_int.exit588

positive_int.exit588:                             ; preds = %bb.ad, %bb.ae, %bb.af
  %.0.i587 = phi i32 [ %i.ds, %bb.ad ], [ %i.dw, %bb.af ], [ 0, %bb.ae ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.04381201, i64 8
  store i32 %.0.i587, ptr %i.dx, align 1
  %.off = add i32 %i.d, 2
  %.not972 = icmp ult i32 %.off, 5
  br i1 %.not972, label %._crit_edge980, label %.lr.ph979

.lr.ph979:                                        ; preds = %positive_int.exit588
  %i.dy = load i32, ptr %i.bh, align 8, !tbaa !10
  %i.dz = load <2 x i32>, ptr %i.i, align 8, !tbaa !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.ec = mul nsw i32 %2, 3                       ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 12412
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph979, %bb.em
  %.sroa.18.0 = phi i32 [ %i.dy, %.lr.ph979 ], [ %.sroa.18.4, %bb.em ] ; 3 uses
  %.0465978 = phi i32 [ 0, %.lr.ph979 ], [ %.3468, %bb.em ] ; 2 uses
  %.0469977 = phi i32 [ %i.e, %.lr.ph979 ], [ %.5, %bb.em ] ; 7 uses
  %.0473976 = phi i32 [ 0, %.lr.ph979 ], [ %.5478, %bb.em ] ; 12 uses
  %.0481975 = phi i32 [ 0, %.lr.ph979 ], [ %.5486, %bb.em ] ; 9 uses
  %.0489974 = phi i32 [ %i.cy, %.lr.ph979 ], [ %.4493, %bb.em ] ; 12 uses
  %.0858973 = phi i32 [ 0, %.lr.ph979 ], [ %.3861, %bb.em ] ; 9 uses
  %i.er = phi <2 x i32> [ %i.dz, %.lr.ph979 ], [ %i.aqp, %bb.em ] ; 3 uses
  %i.es = icmp slt i32 %.0469977, 0
  br i1 %i.es, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %i.et) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.eu = icmp samesign ult i32 %.0469977, 3
  br i1 %i.eu, label %.preheader884, label %.lr.ph.preheader.i

.preheader884:                                    ; preds = %bb.ai
  %.not987 = icmp eq i32 %.0469977, 0
  br i1 %.not987, label %._crit_edge969, label %._crit_edge969.loopexit

._crit_edge969.loopexit:                          ; preds = %.preheader884
  call fastcc void @buffer_large(ptr noundef %4, ptr noundef nonnull %0, i32 noundef %.0473976, i32 noundef %2, i32 noundef 1)
  %i.ev = add nsw i32 %.0469977, -1
  %i.ew = add nsw i32 %.0473976, 3
  br label %._crit_edge969

._crit_edge969:                                   ; preds = %._crit_edge969.loopexit, %.preheader884
  %.1474.lcssa = phi i32 [ %.0473976, %.preheader884 ], [ %i.ew, %._crit_edge969.loopexit ]
  %.1470.lcssa = phi i32 [ 0, %.preheader884 ], [ %i.ev, %._crit_edge969.loopexit ]
  %i.ex = load i32, ptr %i.f, align 8, !tbaa !14
  call fastcc void @flush_large(ptr noundef %4, i32 noundef %i.ex)
  br label %bb.em

.lr.ph.preheader.i:                               ; preds = %bb.ai
  %i.ey = sext i32 %.0473976 to i64               ; 3 uses
  %i.ez = getelementptr [4 x i8], ptr %0, i64 %i.ey ; 17 uses
  %i.fa = mul nuw nsw i32 %.0469977, 3
  %invariant.umin.i = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 39)
  %i.fb = zext nneg i32 %invariant.umin.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next55.i, %.lr.ph.i ] ; 4 uses
  %.sroa.12.247.i = phi i32 [ %.sroa.18.0, %.lr.ph.preheader.i ], [ %i.fj, %.lr.ph.i ]
  %i.fc = phi <2 x i32> [ %i.er, %.lr.ph.preheader.i ], [ %i.ff, %.lr.ph.i ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv54.i
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv54.i
  %i.ff = load <2 x i32>, ptr %i.fd, align 4, !tbaa !10 ; 2 uses
  %i.fg = sub nsw <2 x i32> %i.ff, %i.fc
  store <2 x i32> %i.fg, ptr %i.fe, align 4, !tbaa !10
  %i.fh = add nuw nsw i64 %indvars.iv54.i, 2      ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !10 ; 2 uses
  %i.fk = sub nsw i32 %i.fj, %.sroa.12.247.i
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fh
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !10
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 3 ; 3 uses
  %i.fm = icmp samesign ult i64 %indvars.iv.next55.i, %i.fb
  br i1 %i.fm, label %.lr.ph.i, label %insert_batch.exit, !llvm.loop !40

insert_batch.exit:                                ; preds = %.lr.ph.i
  %i.fn = icmp eq i32 %.0473976, 0
  br i1 %i.fn, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %insert_batch.exit
  %i.fo = trunc nuw nsw i64 %indvars.iv.next55.i to i32
  %i.fp = call fastcc i32 @is_quite_large(ptr noundef %i.a, i32 noundef %.0489974, i32 noundef %.1488)
  %i.fq = icmp ne i32 %i.fp, 0
  %i.fr = icmp ne i32 %.0465978, 0
  %or.cond = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond, label %bb.ak, label %iter.check1568

bb.ak:                                            ; preds = %bb.aj, %insert_batch.exit
  %i.fs = call fastcc i32 @is_quite_large(ptr noundef %i.ea, i32 noundef %.0489974, i32 noundef %.1488)
  %.not548 = icmp eq i32 %i.fs, 0
  br i1 %.not548, label %bb.al, label %.loopexit895.thread

bb.al:                                            ; preds = %bb.ak
  %i.ft = call fastcc i32 @is_quite_large(ptr noundef %i.eb, i32 noundef %.0489974, i32 noundef %.1488)
  %.not549 = icmp eq i32 %i.ft, 0
  br i1 %.not549, label %bb.am, label %.loopexit895.thread

bb.am:                                            ; preds = %bb.al
  %i.fu = sdiv i32 %.0473976, %i.ec
  %i.fv = icmp sgt i32 %i.fu, 0
  %i.fw = getelementptr i8, ptr %i.ez, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !10 ; 3 uses
  br i1 %i.fv, label %bb.an, label %.critedge565

bb.an:                                            ; preds = %bb.am
  %i.fy = sub nsw i32 %.0473976, %i.ec
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [4 x i8], ptr %0, i64 %i.fz ; 6 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !10
  %i.gd = sub nsw i32 %i.fx, %i.gc                ; 4 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gf = shl nuw i32 %i.gd, 1
  %i.gg = add i32 %i.gf, -1
  br label %positive_int.exit590

bb.ap:                                            ; preds = %bb.an
  %i.gh = icmp slt i32 %i.gd, 0
  br i1 %i.gh, label %bb.aq, label %positive_int.exit590

bb.aq:                                            ; preds = %bb.ap
  %i.gi = xor i32 %i.gd, -1
  %i.gj = shl nuw nsw i32 %i.gi, 1
  %i.gk = add nuw nsw i32 %i.gj, 2
  br label %positive_int.exit590

positive_int.exit590:                             ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.i589 = phi i32 [ %i.gg, %bb.ao ], [ %i.gk, %bb.aq ], [ 0, %bb.ap ]
  %i.gl = getelementptr i8, ptr %i.ez, i64 16
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !10
  %i.gn = getelementptr i8, ptr %i.ga, i64 16
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !10
  %i.gp = sub nsw i32 %i.gm, %i.go                ; 4 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %positive_int.exit590
  %i.gr = shl nuw i32 %i.gp, 1
  %i.gs = add i32 %i.gr, -1
  br label %positive_int.exit592

bb.as:                                            ; preds = %positive_int.exit590
  %i.gt = icmp slt i32 %i.gp, 0
  br i1 %i.gt, label %bb.at, label %positive_int.exit592

bb.at:                                            ; preds = %bb.as
  %i.gu = xor i32 %i.gp, -1
  %i.gv = shl nuw nsw i32 %i.gu, 1
  %i.gw = add nuw nsw i32 %i.gv, 2
  br label %positive_int.exit592

positive_int.exit592:                             ; preds = %bb.ar, %bb.as, %bb.at
  %.0.i591 = phi i32 [ %i.gs, %bb.ar ], [ %i.gw, %bb.at ], [ 0, %bb.as ]
  %i.gx = getelementptr i8, ptr %i.ez, i64 20
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !10
  %i.gz = getelementptr i8, ptr %i.ga, i64 20
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !10
  %i.hb = sub nsw i32 %i.gy, %i.ha                ; 4 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %positive_int.exit592
  %i.hd = shl nuw i32 %i.hb, 1
  %i.he = add i32 %i.hd, -1
  br label %positive_int.exit594

bb.av:                                            ; preds = %positive_int.exit592
  %i.hf = icmp slt i32 %i.hb, 0
  br i1 %i.hf, label %bb.aw, label %positive_int.exit594

bb.aw:                                            ; preds = %bb.av
  %i.hg = xor i32 %i.hb, -1
  %i.hh = shl nuw nsw i32 %i.hg, 1
  %i.hi = add nuw nsw i32 %i.hh, 2
  br label %positive_int.exit594

positive_int.exit594:                             ; preds = %bb.au, %bb.av, %bb.aw
  %.0.i593 = phi i32 [ %i.he, %bb.au ], [ %i.hi, %bb.aw ], [ 0, %bb.av ]
  %i.hj = load i32, ptr %i.ea, align 4, !tbaa !10 ; 4 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %positive_int.exit594
  %i.hl = shl nuw i32 %i.hj, 1
  %i.hm = add i32 %i.hl, -1
  br label %positive_int.exit596

bb.ay:                                            ; preds = %positive_int.exit594
  %i.hn = icmp slt i32 %i.hj, 0
  br i1 %i.hn, label %bb.az, label %positive_int.exit596

bb.az:                                            ; preds = %bb.ay
  %i.ho = xor i32 %i.hj, -1
  %i.hp = shl nuw nsw i32 %i.ho, 1
  %i.hq = add nuw nsw i32 %i.hp, 2
  br label %positive_int.exit596

positive_int.exit596:                             ; preds = %bb.ax, %bb.ay, %bb.az
  %.0.i595 = phi i32 [ %i.hm, %bb.ax ], [ %i.hq, %bb.az ], [ 0, %bb.ay ]
  %i.hr = load i32, ptr %i.ed, align 16, !tbaa !10 ; 4 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %positive_int.exit596
  %i.ht = shl nuw i32 %i.hr, 1
  %i.hu = add i32 %i.ht, -1
  br label %positive_int.exit598

bb.bb:                                            ; preds = %positive_int.exit596
  %i.hv = icmp slt i32 %i.hr, 0
  br i1 %i.hv, label %bb.bc, label %positive_int.exit598

end_hunk_0
begin_hunk_1_@Ptngc_pack_array_xtc3:bb.a
.lr.ph.preheader.i622:                            ; preds = %.loopexit.i
  %invariant.umin.i620 = tail call i32 @llvm.umin.i32(i32 %i.rd, i32 39)
  %i.rf = zext nneg i32 %i.qx to i64
  %i.rg = zext nneg i32 %invariant.umin.i620 to i64
  br label %.lr.ph.i623

.lr.ph.i623:                                      ; preds = %.lr.ph.i623, %.lr.ph.preheader.i622
  %indvars.iv54.i624 = phi i64 [ %i.rf, %.lr.ph.preheader.i622 ], [ %indvars.iv.next55.i628, %.lr.ph.i623 ] ; 4 uses
  %.sroa.12.247.i627 = phi i32 [ %.sroa.12.1.i, %.lr.ph.preheader.i622 ], [ %i.ro, %.lr.ph.i623 ]
  %i.rh = phi <2 x i32> [ %i.ra, %.lr.ph.preheader.i622 ], [ %i.rk, %.lr.ph.i623 ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv54.i624
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv54.i624
  %i.rk = load <2 x i32>, ptr %i.ri, align 4, !tbaa !10 ; 2 uses
  %i.rl = sub nsw <2 x i32> %i.rk, %i.rh
  store <2 x i32> %i.rl, ptr %i.rj, align 4, !tbaa !10
  %i.rm = add nuw nsw i64 %indvars.iv54.i624, 2   ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !10 ; 2 uses
  %i.rp = sub nsw i32 %i.ro, %.sroa.12.247.i627
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rm
  store i32 %i.rp, ptr %i.rq, align 4, !tbaa !10
  %indvars.iv.next55.i628 = add nuw nsw i64 %indvars.iv54.i624, 3 ; 3 uses
  %i.rr = icmp samesign ult i64 %indvars.iv.next55.i628, %i.rg
  br i1 %i.rr, label %.lr.ph.i623, label %._crit_edge.loopexit.i629, !llvm.loop !40

._crit_edge.loopexit.i629:                        ; preds = %.lr.ph.i623
  %i.rs = trunc nuw nsw i64 %indvars.iv.next55.i628 to i32
  br label %iter.check1568

iter.check1568:                                   ; preds = %bb.aj, %.loopexit.i, %._crit_edge.loopexit.i629
  %.sroa.18.2 = phi i32 [ %.sroa.18.112321241, %._crit_edge.loopexit.i629 ], [ %.sroa.18.112321241, %.loopexit.i ], [ %.sroa.18.0, %bb.aj ] ; 4 uses
  %.0863 = phi i32 [ %i.rs, %._crit_edge.loopexit.i629 ], [ 6, %.loopexit.i ], [ %i.fo, %bb.aj ] ; 5 uses
  %.2860 = phi i32 [ %.185986912261244, %._crit_edge.loopexit.i629 ], [ %.185986912261244, %.loopexit.i ], [ %.0858973, %bb.aj ] ; 3 uses
  %.1480 = phi i1 [ %i.qy, %._crit_edge.loopexit.i629 ], [ %i.qy, %.loopexit.i ], [ false, %bb.aj ]
  %.2475 = phi i32 [ %.pre-phi12201246, %._crit_edge.loopexit.i629 ], [ %.pre-phi12201246, %.loopexit.i ], [ %.0473976, %bb.aj ] ; 7 uses
  %.2471 = phi i32 [ %i.rb, %._crit_edge.loopexit.i629 ], [ %i.rb, %.loopexit.i ], [ %.0469977, %bb.aj ] ; 3 uses
  %.1460 = phi i32 [ %.045987112241245, %._crit_edge.loopexit.i629 ], [ %.045987112241245, %.loopexit.i ], [ 0, %bb.aj ] ; 4 uses
  %i.rt = phi <2 x i32> [ %i.qz, %._crit_edge.loopexit.i629 ], [ %i.qz, %.loopexit.i ], [ %i.er, %bb.aj ] ; 5 uses
  %wide.trip.count1025 = zext i32 %.0863 to i64   ; 6 uses
  %min.iters.check1545 = icmp ult i32 %.0863, 8
  br i1 %min.iters.check1545, label %.lr.ph915.preheader, label %vector.main.loop.iter.check1546

vector.main.loop.iter.check1546:                  ; preds = %iter.check1568
  %min.iters.check1547 = icmp ult i32 %.0863, 32
  br i1 %min.iters.check1547, label %vec.epilog.ph1572, label %vector.ph1548

vector.ph1548:                                    ; preds = %vector.main.loop.iter.check1546
  %i.ru = and i64 %wide.trip.count1025, 24
  %n.vec1549 = and i64 %wide.trip.count1025, 4294967264 ; 4 uses
  br label %vector.body1550

vector.body1550:                                  ; preds = %vector.ph1548, %vector.body1550
  %index1551 = phi i64 [ 0, %vector.ph1548 ], [ %index.next1564, %vector.body1550 ] ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1551 ; 5 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 64 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 96 ; 2 uses
  %wide.load1552 = load <8 x i32>, ptr %i.rv, align 16, !tbaa !10 ; 4 uses
  %wide.load1553 = load <8 x i32>, ptr %i.rw, align 16, !tbaa !10 ; 4 uses
  %wide.load1554 = load <8 x i32>, ptr %i.rx, align 16, !tbaa !10 ; 4 uses
  %wide.load1555 = load <8 x i32>, ptr %i.ry, align 16, !tbaa !10 ; 4 uses
  %i.rz = icmp slt <8 x i32> %wide.load1552, zeroinitializer
  %i.sa = icmp slt <8 x i32> %wide.load1553, zeroinitializer
  %i.sb = icmp slt <8 x i32> %wide.load1554, zeroinitializer
  %i.sc = icmp slt <8 x i32> %wide.load1555, zeroinitializer
  %i.sd = xor <8 x i32> %wide.load1552, splat (i32 -1)
  %i.se = xor <8 x i32> %wide.load1553, splat (i32 -1)
  %i.sf = xor <8 x i32> %wide.load1554, splat (i32 -1)
  %i.sg = xor <8 x i32> %wide.load1555, splat (i32 -1)
  %i.sh = shl nuw nsw <8 x i32> %i.sd, splat (i32 1)
  %i.si = shl nuw nsw <8 x i32> %i.se, splat (i32 1)
  %i.sj = shl nuw nsw <8 x i32> %i.sf, splat (i32 1)
  %i.sk = shl nuw nsw <8 x i32> %i.sg, splat (i32 1)
  %i.sl = add nuw nsw <8 x i32> %i.sh, splat (i32 2)
  %i.sm = add nuw nsw <8 x i32> %i.si, splat (i32 2)
  %i.sn = add nuw nsw <8 x i32> %i.sj, splat (i32 2)
  %i.so = add nuw nsw <8 x i32> %i.sk, splat (i32 2)
  %i.sp = shl nuw <8 x i32> %wide.load1552, splat (i32 1)
  %i.sq = shl nuw <8 x i32> %wide.load1553, splat (i32 1)
  %i.sr = shl nuw <8 x i32> %wide.load1554, splat (i32 1)
  %i.ss = shl nuw <8 x i32> %wide.load1555, splat (i32 1)
  %i.st = add <8 x i32> %i.sp, splat (i32 -1)
  %i.su = add <8 x i32> %i.sq, splat (i32 -1)
  %i.sv = add <8 x i32> %i.sr, splat (i32 -1)
  %i.sw = add <8 x i32> %i.ss, splat (i32 -1)
  %.inv1743 = icmp sgt <8 x i32> %wide.load1552, zeroinitializer
  %predphi1556 = select <8 x i1> %.inv1743, <8 x i32> %i.st, <8 x i32> zeroinitializer
  %predphi1557 = select <8 x i1> %i.rz, <8 x i32> %i.sl, <8 x i32> %predphi1556
  %.inv1744 = icmp sgt <8 x i32> %wide.load1553, zeroinitializer
  %predphi1558 = select <8 x i1> %.inv1744, <8 x i32> %i.su, <8 x i32> zeroinitializer
  %predphi1559 = select <8 x i1> %i.sa, <8 x i32> %i.sm, <8 x i32> %predphi1558
  %.inv1745 = icmp sgt <8 x i32> %wide.load1554, zeroinitializer
  %predphi1560 = select <8 x i1> %.inv1745, <8 x i32> %i.sv, <8 x i32> zeroinitializer
  %predphi1561 = select <8 x i1> %i.sb, <8 x i32> %i.sn, <8 x i32> %predphi1560
  %.inv1746 = icmp sgt <8 x i32> %wide.load1555, zeroinitializer
  %predphi1562 = select <8 x i1> %.inv1746, <8 x i32> %i.sw, <8 x i32> zeroinitializer
  %predphi1563 = select <8 x i1> %i.sc, <8 x i32> %i.so, <8 x i32> %predphi1562
  store <8 x i32> %predphi1557, ptr %i.rv, align 16, !tbaa !10
  store <8 x i32> %predphi1559, ptr %i.rw, align 16, !tbaa !10
  store <8 x i32> %predphi1561, ptr %i.rx, align 16, !tbaa !10
  store <8 x i32> %predphi1563, ptr %i.ry, align 16, !tbaa !10
  %index.next1564 = add nuw i64 %index1551, 32    ; 2 uses
  %i.sx = icmp eq i64 %index.next1564, %n.vec1549
  br i1 %i.sx, label %middle.block1565, label %vector.body1550, !llvm.loop !41

middle.block1565:                                 ; preds = %vector.body1550
  %cmp.n1566 = icmp eq i64 %n.vec1549, %wide.trip.count1025
  br i1 %cmp.n1566, label %.preheader893, label %vec.epilog.iter.check1570

vec.epilog.iter.check1570:                        ; preds = %middle.block1565
  %min.epilog.iters.check1571 = icmp eq i64 %i.ru, 0
  br i1 %min.epilog.iters.check1571, label %.lr.ph915.preheader, label %vec.epilog.ph1572, !prof !77

vec.epilog.ph1572:                                ; preds = %vector.main.loop.iter.check1546, %vec.epilog.iter.check1570
  %vec.epilog.resume.val1567 = phi i64 [ %n.vec1549, %vec.epilog.iter.check1570 ], [ 0, %vector.main.loop.iter.check1546 ]
  %n.vec1573 = and i64 %wide.trip.count1025, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body1574

vec.epilog.vector.body1574:                       ; preds = %vec.epilog.vector.body1574, %vec.epilog.ph1572
  %index1575 = phi i64 [ %vec.epilog.resume.val1567, %vec.epilog.ph1572 ], [ %index.next1579, %vec.epilog.vector.body1574 ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1575 ; 2 uses
  %wide.load1576 = load <8 x i32>, ptr %i.sy, align 16, !tbaa !10 ; 4 uses
  %i.sz = icmp slt <8 x i32> %wide.load1576, zeroinitializer
  %i.ta = xor <8 x i32> %wide.load1576, splat (i32 -1)
  %i.tb = shl nuw nsw <8 x i32> %i.ta, splat (i32 1)
  %i.tc = add nuw nsw <8 x i32> %i.tb, splat (i32 2)
  %i.td = shl nuw <8 x i32> %wide.load1576, splat (i32 1)
  %i.te = add <8 x i32> %i.td, splat (i32 -1)
  %.inv1747 = icmp sgt <8 x i32> %wide.load1576, zeroinitializer
  %predphi1577 = select <8 x i1> %.inv1747, <8 x i32> %i.te, <8 x i32> zeroinitializer
  %predphi1578 = select <8 x i1> %i.sz, <8 x i32> %i.tc, <8 x i32> %predphi1577
  store <8 x i32> %predphi1578, ptr %i.sy, align 16, !tbaa !10
  %index.next1579 = add nuw i64 %index1575, 8     ; 2 uses
  %i.tf = icmp eq i64 %index.next1579, %n.vec1573
  br i1 %i.tf, label %vec.epilog.middle.block1580, label %vec.epilog.vector.body1574, !llvm.loop !42

vec.epilog.middle.block1580:                      ; preds = %vec.epilog.vector.body1574
  %cmp.n1581 = icmp eq i64 %n.vec1573, %wide.trip.count1025
  br i1 %cmp.n1581, label %.preheader893, label %.lr.ph915.preheader

.lr.ph915.preheader:                              ; preds = %iter.check1568, %vec.epilog.iter.check1570, %vec.epilog.middle.block1580
  %indvars.iv1022.ph = phi i64 [ 0, %iter.check1568 ], [ %n.vec1549, %vec.epilog.iter.check1570 ], [ %n.vec1573, %vec.epilog.middle.block1580 ]
  br label %.lr.ph915

.preheader893:                                    ; preds = %positive_int.exit632, %vec.epilog.middle.block1580, %middle.block1565
  %.not984 = icmp eq i32 %.1460, 0                ; 2 uses
  br i1 %.not984, label %.preheader892, label %iter.check1528

iter.check1528:                                   ; preds = %.preheader893
  %i.tg = mul nuw nsw i32 %.1460, 3
  %wide.trip.count1030 = zext nneg i32 %i.tg to i64 ; 3 uses
  %n.vec1533 = and i64 %wide.trip.count1030, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1536

vec.epilog.vector.body1536:                       ; preds = %vec.epilog.vector.body1536, %iter.check1528
  %index1537 = phi i64 [ 0, %iter.check1528 ], [ %index.next1540, %vec.epilog.vector.body1536 ] ; 2 uses
  %vec.phi1538 = phi <4 x i32> [ zeroinitializer, %iter.check1528 ], [ %i.ti, %vec.epilog.vector.body1536 ]
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1537
  %wide.load1539 = load <4 x i32>, ptr %i.th, align 16, !tbaa !10
  %i.ti = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1539, <4 x i32> %vec.phi1538) ; 2 uses
  %index.next1540 = add nuw i64 %index1537, 4     ; 2 uses
  %i.tj = icmp eq i64 %index.next1540, %n.vec1533
  br i1 %i.tj, label %vec.epilog.middle.block1541, label %vec.epilog.vector.body1536, !llvm.loop !43

vec.epilog.middle.block1541:                      ; preds = %vec.epilog.vector.body1536
  %i.tk = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ti) ; 2 uses
  %cmp.n1542 = icmp eq i64 %n.vec1533, %wide.trip.count1030
  br i1 %cmp.n1542, label %.preheader892, label %.lr.ph918

.lr.ph915:                                        ; preds = %.lr.ph915.preheader, %positive_int.exit632
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %positive_int.exit632 ], [ %indvars.iv1022.ph, %.lr.ph915.preheader ] ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1022 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !10 ; 4 uses
  %i.tn = icmp sgt i32 %i.tm, 0
  br i1 %i.tn, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph915
  %i.to = shl nuw i32 %i.tm, 1
  %i.tp = add i32 %i.to, -1
  br label %positive_int.exit632

bb.ct:                                            ; preds = %.lr.ph915
  %i.tq = icmp slt i32 %i.tm, 0
  br i1 %i.tq, label %bb.cu, label %positive_int.exit632

bb.cu:                                            ; preds = %bb.ct
  %i.tr = xor i32 %i.tm, -1
  %i.ts = shl nuw nsw i32 %i.tr, 1
  %i.tt = add nuw nsw i32 %i.ts, 2
  br label %positive_int.exit632

positive_int.exit632:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  %.0.i631 = phi i32 [ %i.tp, %bb.cs ], [ %i.tt, %bb.cu ], [ 0, %bb.ct ]
  store i32 %.0.i631, ptr %i.tl, align 4, !tbaa !10
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %.preheader893, label %.lr.ph915, !llvm.loop !44

.preheader892:                                    ; preds = %.lr.ph918, %vec.epilog.middle.block1541, %.preheader893
  %.0457.lcssa = phi i32 [ 0, %.preheader893 ], [ %i.tk, %vec.epilog.middle.block1541 ], [ %spec.select566, %.lr.ph918 ]
  %.not1199 = icmp eq i32 %.0481975, 0
  br i1 %.not1199, label %._crit_edge923, label %iter.check1488

iter.check1488:                                   ; preds = %.preheader892
  %5 = mul nuw nsw i32 %.0481975, 3
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %.0863) ; 3 uses
  %wide.trip.count1035 = zext nneg i32 %invariant.smin to i64 ; 6 uses
  %min.iters.check1465 = icmp ult i32 %invariant.smin, 4
  br i1 %min.iters.check1465, label %.lr.ph922.preheader, label %vector.main.loop.iter.check1466

vector.main.loop.iter.check1466:                  ; preds = %iter.check1488
  %min.iters.check1467 = icmp ult i32 %invariant.smin, 32
  br i1 %min.iters.check1467, label %vec.epilog.ph1492, label %vector.ph1468

vector.ph1468:                                    ; preds = %vector.main.loop.iter.check1466
  %i.tu = and i64 %wide.trip.count1035, 28
  %n.vec1469 = and i64 %wide.trip.count1035, 2147483616 ; 4 uses
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.ph1468, %vector.body1470
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1480, %vector.body1470 ] ; 2 uses
  %vec.phi1472 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.tz, %vector.body1470 ]
  %vec.phi1473 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.ua, %vector.body1470 ]
  %vec.phi1474 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.ub, %vector.body1470 ]
  %vec.phi1475 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.uc, %vector.body1470 ]
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1471 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 96
  %wide.load1476 = load <8 x i32>, ptr %i.tv, align 16, !tbaa !10
  %wide.load1477 = load <8 x i32>, ptr %i.tw, align 16, !tbaa !10
  %wide.load1478 = load <8 x i32>, ptr %i.tx, align 16, !tbaa !10
  %wide.load1479 = load <8 x i32>, ptr %i.ty, align 16, !tbaa !10
  %i.tz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1476, <8 x i32> %vec.phi1472) ; 2 uses
  %i.ua = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1477, <8 x i32> %vec.phi1473) ; 2 uses
  %i.ub = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1478, <8 x i32> %vec.phi1474) ; 2 uses
  %i.uc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1479, <8 x i32> %vec.phi1475) ; 2 uses
  %index.next1480 = add nuw i64 %index1471, 32    ; 2 uses
  %i.ud = icmp eq i64 %index.next1480, %n.vec1469
  br i1 %i.ud, label %middle.block1481, label %vector.body1470, !llvm.loop !45

middle.block1481:                                 ; preds = %vector.body1470
  %rdx.minmax1482 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.tz, <8 x i32> %i.ua)
  %rdx.minmax1483 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1482, <8 x i32> %i.ub)
  %rdx.minmax1484 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1483, <8 x i32> %i.uc)
  %i.ue = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1484) ; 3 uses
  %cmp.n1485 = icmp eq i64 %n.vec1469, %wide.trip.count1035
  br i1 %cmp.n1485, label %._crit_edge923, label %vec.epilog.iter.check1490

vec.epilog.iter.check1490:                        ; preds = %middle.block1481
  %min.epilog.iters.check1491 = icmp eq i64 %i.tu, 0
  br i1 %min.epilog.iters.check1491, label %.lr.ph922.preheader, label %vec.epilog.ph1492, !prof !78

vec.epilog.ph1492:                                ; preds = %vector.main.loop.iter.check1466, %vec.epilog.iter.check1490
  %vec.epilog.resume.val1486 = phi i64 [ %n.vec1469, %vec.epilog.iter.check1490 ], [ 0, %vector.main.loop.iter.check1466 ]
  %bc.merge.rdx1487 = phi i32 [ %i.ue, %vec.epilog.iter.check1490 ], [ 0, %vector.main.loop.iter.check1466 ]
  %n.vec1493 = and i64 %wide.trip.count1035, 2147483644 ; 3 uses
  %broadcast.splatinsert1494 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1487, i64 0
  %broadcast.splat1495 = shufflevector <4 x i32> %broadcast.splatinsert1494, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1496

vec.epilog.vector.body1496:                       ; preds = %vec.epilog.vector.body1496, %vec.epilog.ph1492
  %index1497 = phi i64 [ %vec.epilog.resume.val1486, %vec.epilog.ph1492 ], [ %index.next1500, %vec.epilog.vector.body1496 ] ; 2 uses
  %vec.phi1498 = phi <4 x i32> [ %broadcast.splat1495, %vec.epilog.ph1492 ], [ %i.ug, %vec.epilog.vector.body1496 ]
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1497
  %wide.load1499 = load <4 x i32>, ptr %i.uf, align 16, !tbaa !10
  %i.ug = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1499, <4 x i32> %vec.phi1498) ; 2 uses
  %index.next1500 = add nuw i64 %index1497, 4     ; 2 uses
  %i.uh = icmp eq i64 %index.next1500, %n.vec1493
  br i1 %i.uh, label %vec.epilog.middle.block1501, label %vec.epilog.vector.body1496, !llvm.loop !46

vec.epilog.middle.block1501:                      ; preds = %vec.epilog.vector.body1496
  %i.ui = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ug) ; 2 uses
  %cmp.n1502 = icmp eq i64 %n.vec1493, %wide.trip.count1035
  br i1 %cmp.n1502, label %._crit_edge923, label %.lr.ph922.preheader

.lr.ph922.preheader:                              ; preds = %iter.check1488, %vec.epilog.iter.check1490, %vec.epilog.middle.block1501
  %indvars.iv1032.ph = phi i64 [ 0, %iter.check1488 ], [ %n.vec1469, %vec.epilog.iter.check1490 ], [ %n.vec1493, %vec.epilog.middle.block1501 ]
  %.0453921.ph = phi i32 [ 0, %iter.check1488 ], [ %i.ue, %vec.epilog.iter.check1490 ], [ %i.ui, %vec.epilog.middle.block1501 ]
  br label %.lr.ph922

.lr.ph918:                                        ; preds = %vec.epilog.middle.block1541, %.lr.ph918
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %.lr.ph918 ], [ %n.vec1533, %vec.epilog.middle.block1541 ] ; 2 uses
  %.0457917 = phi i32 [ %spec.select566, %.lr.ph918 ], [ %i.tk, %vec.epilog.middle.block1541 ]
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1027
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !10
  %spec.select566 = tail call i32 @llvm.smax.i32(i32 %i.uk, i32 %.0457917) ; 2 uses
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 1 ; 2 uses
  %exitcond1031.not = icmp eq i64 %indvars.iv.next1028, %wide.trip.count1030
  br i1 %exitcond1031.not, label %.preheader892, label %.lr.ph918, !llvm.loop !47

.lr.ph922:                                        ; preds = %.lr.ph922.preheader, %.lr.ph922
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %.lr.ph922 ], [ %indvars.iv1032.ph, %.lr.ph922.preheader ] ; 2 uses
  %.0453921 = phi i32 [ %spec.select567, %.lr.ph922 ], [ %.0453921.ph, %.lr.ph922.preheader ]
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1032
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !10
  %spec.select567 = tail call i32 @llvm.smax.i32(i32 %i.um, i32 %.0453921) ; 2 uses
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 1 ; 2 uses
  %exitcond1036.not = icmp eq i64 %indvars.iv.next1033, %wide.trip.count1035
  br i1 %exitcond1036.not, label %._crit_edge923, label %.lr.ph922, !llvm.loop !48

._crit_edge923:                                   ; preds = %.lr.ph922, %middle.block1481, %vec.epilog.middle.block1501, %.preheader892
  %.0453.lcssa = phi i32 [ 0, %.preheader892 ], [ %i.ui, %vec.epilog.middle.block1501 ], [ %i.ue, %middle.block1481 ], [ %spec.select567, %.lr.ph922 ]
  %i.un = tail call i32 @Ptngc_find_magic_index(i32 noundef %.0457.lcssa) #12 ; 2 uses
  %i.uo = tail call i32 @Ptngc_find_magic_index(i32 noundef %.0453.lcssa) #12 ; 2 uses
  %i.up = icmp slt i32 %i.un, %i.uo
  %. = tail call i32 @llvm.smin.i32(i32 %i.un, i32 %i.uo)
  %i.uq = tail call i32 @llvm.smax.i32(i32 %.0481975, i32 %.1460)
  %.1450 = select i1 %i.up, i32 %.1460, i32 %i.uq
  %.2451 = tail call i32 @llvm.smin.i32(i32 %.1450, i32 %.2471) ; 2 uses
  %i.ur = icmp eq i32 %.2451, 0
  %.3452 = tail call i32 @llvm.umax.i32(i32 %.2451, i32 1)
  %.1448 = select i1 %i.ur, i32 %.0489974, i32 %.
  %invariant.smin925 = tail call i32 @llvm.smin.i32(i32 %.0863, i32 36) ; 2 uses
  %wide.trip.count1040 = zext i32 %invariant.smin925 to i64
  br label %.lr.ph928.preheader

.lr.ph928.preheader:                              ; preds = %._crit_edge923, %._crit_edge937
  %.0445 = phi i32 [ %.3452, %._crit_edge923 ], [ %spec.select569, %._crit_edge937 ] ; 15 uses
  %.0443 = phi i32 [ %.1448, %._crit_edge923 ], [ %i.vq, %._crit_edge937 ] ; 10 uses
  br label %.lr.ph928

.lr.ph928:                                        ; preds = %.lr.ph928.preheader, %bb.cv
  %indvars.iv1037 = phi i64 [ 0, %.lr.ph928.preheader ], [ %indvars.iv.next1038, %bb.cv ] ; 3 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1037
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !10
  %i.uu = tail call i32 @Ptngc_find_magic_index(i32 noundef %i.ut) #12
  %i.uv = icmp sgt i32 %i.uu, %.0443
  br i1 %i.uv, label %.lr.ph936.preheader.split.loop.exit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph928
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1 ; 2 uses
  %exitcond1041.not = icmp eq i64 %indvars.iv.next1038, %wide.trip.count1040
  br i1 %exitcond1041.not, label %iter.check1450, label %.lr.ph928, !llvm.loop !49

.lr.ph936.preheader.split.loop.exit:              ; preds = %.lr.ph928
  %i.uw = trunc nuw nsw i64 %indvars.iv1037 to i32
  br label %iter.check1450

iter.check1450:                                   ; preds = %bb.cv, %.lr.ph936.preheader.split.loop.exit
  %.7.lcssa.ph = phi i32 [ %i.uw, %.lr.ph936.preheader.split.loop.exit ], [ %invariant.smin925, %bb.cv ]
  %i.ux = udiv i32 %.7.lcssa.ph, 3                ; 2 uses
  %spec.select569 = tail call i32 @llvm.smax.i32(i32 %i.ux, i32 %.0445) ; 4 uses
  %i.uy = mul nuw i32 %spec.select569, 3
  %wide.trip.count1046 = zext i32 %i.uy to i64    ; 6 uses
  %min.iters.check1429 = icmp samesign ult i32 %spec.select569, 2
  br i1 %min.iters.check1429, label %.lr.ph936.preheader, label %vector.main.loop.iter.check1430

vector.main.loop.iter.check1430:                  ; preds = %iter.check1450
  %min.iters.check1431 = icmp samesign ult i32 %spec.select569, 11
  br i1 %min.iters.check1431, label %vec.epilog.ph1454, label %vector.ph1432

vector.ph1432:                                    ; preds = %vector.main.loop.iter.check1430
  %i.uz = and i64 %wide.trip.count1046, 28
  %n.vec1433 = and i64 %wide.trip.count1046, 4294967264 ; 4 uses
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.ph1432, %vector.body1434
  %index1435 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1443, %vector.body1434 ] ; 2 uses
  %vec.phi1436 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.ve, %vector.body1434 ]
  %vec.phi1437 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.vf, %vector.body1434 ]
  %vec.phi1438 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.vg, %vector.body1434 ]
  %vec.phi1439 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.vh, %vector.body1434 ]
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1435 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 32
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 96
  %wide.load = load <8 x i32>, ptr %i.va, align 16, !tbaa !10
  %wide.load1440 = load <8 x i32>, ptr %i.vb, align 16, !tbaa !10
  %wide.load1441 = load <8 x i32>, ptr %i.vc, align 16, !tbaa !10
  %wide.load1442 = load <8 x i32>, ptr %i.vd, align 16, !tbaa !10
  %i.ve = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load, <8 x i32> %vec.phi1436) ; 2 uses
  %i.vf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1440, <8 x i32> %vec.phi1437) ; 2 uses
  %i.vg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1441, <8 x i32> %vec.phi1438) ; 2 uses
  %i.vh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1442, <8 x i32> %vec.phi1439) ; 2 uses
  %index.next1443 = add nuw i64 %index1435, 32    ; 2 uses
  %i.vi = icmp eq i64 %index.next1443, %n.vec1433
  br i1 %i.vi, label %middle.block1444, label %vector.body1434, !llvm.loop !50

middle.block1444:                                 ; preds = %vector.body1434
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ve, <8 x i32> %i.vf)
  %rdx.minmax1445 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.vg)
  %rdx.minmax1446 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1445, <8 x i32> %i.vh)
  %i.vj = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1446) ; 3 uses
  %cmp.n1447 = icmp eq i64 %n.vec1433, %wide.trip.count1046
  br i1 %cmp.n1447, label %._crit_edge937, label %vec.epilog.iter.check1452

vec.epilog.iter.check1452:                        ; preds = %middle.block1444
  %min.epilog.iters.check1453 = icmp eq i64 %i.uz, 0
  br i1 %min.epilog.iters.check1453, label %.lr.ph936.preheader, label %vec.epilog.ph1454, !prof !78

vec.epilog.ph1454:                                ; preds = %vector.main.loop.iter.check1430, %vec.epilog.iter.check1452
  %vec.epilog.resume.val1448 = phi i64 [ %n.vec1433, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1430 ]
  %bc.merge.rdx1449 = phi i32 [ %i.vj, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1430 ]
  %n.vec1455 = and i64 %wide.trip.count1046, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %bc.merge.rdx1449, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1456

vec.epilog.vector.body1456:                       ; preds = %vec.epilog.vector.body1456, %vec.epilog.ph1454
  %index1457 = phi i64 [ %vec.epilog.resume.val1448, %vec.epilog.ph1454 ], [ %index.next1460, %vec.epilog.vector.body1456 ] ; 2 uses
  %vec.phi1458 = phi <4 x i32> [ %broadcast.splat, %vec.epilog.ph1454 ], [ %i.vl, %vec.epilog.vector.body1456 ]
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1457
  %wide.load1459 = load <4 x i32>, ptr %i.vk, align 16, !tbaa !10
  %i.vl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1459, <4 x i32> %vec.phi1458) ; 2 uses
  %index.next1460 = add nuw i64 %index1457, 4     ; 2 uses
  %i.vm = icmp eq i64 %index.next1460, %n.vec1455
  br i1 %i.vm, label %vec.epilog.middle.block1461, label %vec.epilog.vector.body1456, !llvm.loop !51

vec.epilog.middle.block1461:                      ; preds = %vec.epilog.vector.body1456
  %i.vn = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.vl) ; 2 uses
  %cmp.n1462 = icmp eq i64 %n.vec1455, %wide.trip.count1046
  br i1 %cmp.n1462, label %._crit_edge937, label %.lr.ph936.preheader

.lr.ph936.preheader:                              ; preds = %iter.check1450, %vec.epilog.iter.check1452, %vec.epilog.middle.block1461
  %indvars.iv1042.ph = phi i64 [ 0, %iter.check1450 ], [ %n.vec1433, %vec.epilog.iter.check1452 ], [ %n.vec1455, %vec.epilog.middle.block1461 ]
  %.2455934.ph = phi i32 [ 0, %iter.check1450 ], [ %i.vj, %vec.epilog.iter.check1452 ], [ %i.vn, %vec.epilog.middle.block1461 ]
  br label %.lr.ph936

.lr.ph936:                                        ; preds = %.lr.ph936.preheader, %.lr.ph936
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %.lr.ph936 ], [ %indvars.iv1042.ph, %.lr.ph936.preheader ] ; 2 uses
  %.2455934 = phi i32 [ %spec.select570, %.lr.ph936 ], [ %.2455934.ph, %.lr.ph936.preheader ]
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1042
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !10
  %spec.select570 = tail call i32 @llvm.smax.i32(i32 %i.vp, i32 %.2455934) ; 2 uses
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 1 ; 2 uses
  %exitcond1047.not = icmp eq i64 %indvars.iv.next1043, %wide.trip.count1046
  br i1 %exitcond1047.not, label %._crit_edge937, label %.lr.ph936, !llvm.loop !52

._crit_edge937:                                   ; preds = %.lr.ph936, %vec.epilog.middle.block1461, %middle.block1444
  %spec.select570.lcssa = phi i32 [ %i.vn, %vec.epilog.middle.block1461 ], [ %i.vj, %middle.block1444 ], [ %spec.select570, %.lr.ph936 ]
  %i.vq = tail call i32 @Ptngc_find_magic_index(i32 noundef %spec.select570.lcssa) #12 ; 2 uses
  %i.vr = icmp slt i32 %.0445, %i.ux
  %i.vs = icmp ne i32 %.0443, %i.vq
  %i.vt = select i1 %i.vr, i1 true, i1 %i.vs
  br i1 %i.vt, label %.lr.ph928.preheader, label %bb.cw, !llvm.loop !53

bb.cw:                                            ; preds = %._crit_edge937
  br i1 %.not984, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.vu = icmp samesign ult i32 %.0445, 3
  %i.vv = icmp samesign ult i32 %.0445, 6
  %spec.select572 = select i1 %i.vv, i32 3, i32 0
  %.0442 = select i1 %i.vu, i32 6, i32 %spec.select572
  %i.vw = add nsw i32 %.0489974, 6
  %i.vx = icmp slt i32 %.0443, %i.vw
  %i.vy = add nsw i32 %.0442, %.0443
  %i.vz = icmp slt i32 %i.vy, %.1488
  %or.cond574 = select i1 %i.vx, i1 %i.vz, i1 false
  %i.wa = add nsw i32 %.0443, 6
  %i.wb = icmp slt i32 %i.wa, %.1488
  %or.cond576 = select i1 %or.cond574, i1 true, i1 %i.wb
  br i1 %or.cond576, label %bb.cy, label %bb.em

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.wc = sdiv i32 %.2475, %i.ec
  %i.wd = icmp eq i32 %.2860, 0                   ; 3 uses
  %i.we = icmp sgt i32 %i.wc, 0
  %or.cond7 = select i1 %i.wd, i1 %i.we, i1 false
  br i1 %or.cond7, label %iter.check1391, label %.loopexit891

iter.check1391:                                   ; preds = %bb.cy
  %i.wf = sub i32 %.2475, %i.ec
  %i.wg = sext i32 %.2475 to i64
  %i.wh = sext i32 %i.wf to i64
  %wide.trip.count1052 = zext i32 %.0445 to i64   ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.wg ; 4 uses
  %invariant.gep1264 = getelementptr [4 x i8], ptr %0, i64 %i.wh ; 4 uses
  %min.iters.check1329 = icmp ult i32 %.0445, 8
  br i1 %min.iters.check1329, label %vec.epilog.scalar.ph1392.preheader, label %vector.main.loop.iter.check1330

vector.main.loop.iter.check1330:                  ; preds = %iter.check1391
  %min.iters.check1331 = icmp ult i32 %.0445, 16
  br i1 %min.iters.check1331, label %vec.epilog.ph1395, label %vector.ph1332

vector.ph1332:                                    ; preds = %vector.main.loop.iter.check1330
  %i.wi = and i64 %wide.trip.count1052, 8
  %n.vec1333 = and i64 %wide.trip.count1052, 4294967280 ; 4 uses
  br label %vector.body1334

vector.body1334:                                  ; preds = %vector.ph1332, %vector.body1334
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1385, %vector.body1334 ] ; 3 uses
  %vec.phi1336 = phi <8 x i32> [ zeroinitializer, %vector.ph1332 ], [ %i.aak, %vector.body1334 ]
  %vec.phi1337 = phi <8 x i32> [ zeroinitializer, %vector.ph1332 ], [ %i.aal, %vector.body1334 ]
  %i.wj = mul nuw nsw i64 %index1335, 3           ; 3 uses
  %i.wk = mul nuw i64 %index1335, 3
  %i.wl = add nuw i64 %i.wk, 24                   ; 3 uses
  %i.wm = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.wj
  %i.wn = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.wl
  %wide.vec1338 = load <24 x i32>, ptr %i.wm, align 4, !tbaa !10 ; 3 uses
  %strided.vec1339 = shufflevector <24 x i32> %wide.vec1338, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1340 = shufflevector <24 x i32> %wide.vec1338, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1341 = shufflevector <24 x i32> %wide.vec1338, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec1342 = load <24 x i32>, ptr %i.wn, align 4, !tbaa !10 ; 3 uses
  %strided.vec1343 = shufflevector <24 x i32> %wide.vec1342, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1344 = shufflevector <24 x i32> %wide.vec1342, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1345 = shufflevector <24 x i32> %wide.vec1342, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.wo = getelementptr [4 x i8], ptr %invariant.gep1264, i64 %i.wj
  %i.wp = getelementptr [4 x i8], ptr %invariant.gep1264, i64 %i.wl
  %wide.vec1346 = load <24 x i32>, ptr %i.wo, align 4, !tbaa !10 ; 3 uses
  %strided.vec1347 = shufflevector <24 x i32> %wide.vec1346, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1348 = shufflevector <24 x i32> %wide.vec1346, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1349 = shufflevector <24 x i32> %wide.vec1346, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec1350 = load <24 x i32>, ptr %i.wp, align 4, !tbaa !10 ; 3 uses
  %strided.vec1351 = shufflevector <24 x i32> %wide.vec1350, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1352 = shufflevector <24 x i32> %wide.vec1350, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1353 = shufflevector <24 x i32> %wide.vec1350, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.wq = sub nsw <8 x i32> %strided.vec1339, %strided.vec1347 ; 4 uses
  %i.wr = sub nsw <8 x i32> %strided.vec1343, %strided.vec1351 ; 4 uses
  %i.ws = icmp slt <8 x i32> %i.wq, zeroinitializer
  %i.wt = icmp slt <8 x i32> %i.wr, zeroinitializer
  %i.wu = xor <8 x i32> %i.wq, splat (i32 -1)
  %i.wv = xor <8 x i32> %i.wr, splat (i32 -1)
  %i.ww = shl nuw nsw <8 x i32> %i.wu, splat (i32 1)
end_hunk_1
