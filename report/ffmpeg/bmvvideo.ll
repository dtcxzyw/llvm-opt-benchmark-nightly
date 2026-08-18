inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_frame:bb.a

bb.w:                                             ; preds = %bb.v
  %notmask.i.1 = shl nsw i32 -256, %.1.peel.i     ; 2 uses
  %i.en = xor i32 %notmask.i.1, -1
  %i.eo = lshr i32 %i.el, 2
  %i.ep = and i32 %i.eo, %notmask.i.1
  %i.eq = and i32 %i.el, %i.en
  %i.er = or disjoint i32 %i.ep, %i.eq            ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %i.hs, i64 %.v.i ; 6 uses
  %i.et = shl nuw nsw i32 3072, %.1.peel.i
  %i.eu = and i32 %i.er, %i.et
  %.not208.i.1 = icmp eq i32 %i.eu, 0
  br i1 %.not208.i.1, label %.preheader255.i.1, label %.thread230.i, !llvm.loop !45

.preheader255.i.1:                                ; preds = %bb.w
  %i.ev = or disjoint i32 %.1.peel.i, 8
  %i.ew = icmp uge ptr %i.es, %i.cn
  %.not206.i.2 = icmp ult ptr %i.es, %i.cx
  %or.cond215.i.2 = select i1 %i.ew, i1 %.not206.i.2, i1 false
  br i1 %or.cond215.i.2, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.preheader255.i.1
  %i.ex = add nuw nsw i32 %.1.peel.i, 10
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !39
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = shl nuw i32 %i.ez, %i.ex
  %i.fb = or i32 %i.fa, %i.er                     ; 3 uses
  %i.fc = and i32 %i.ez, 12
  %.not207.i.2 = icmp eq i32 %i.fc, 0
  br i1 %.not207.i.2, label %bb.y, label %.thread.loopexit.loopexit.i

bb.y:                                             ; preds = %bb.x
  %notmask.i.2 = shl nsw i32 -4096, %.1.peel.i    ; 2 uses
  %i.fd = xor i32 %notmask.i.2, -1
  %i.fe = lshr i32 %i.fb, 2
  %i.ff = and i32 %i.fe, %notmask.i.2
  %i.fg = and i32 %i.fb, %i.fd
  %i.fh = or disjoint i32 %i.ff, %i.fg            ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.es, i64 %.v.i ; 6 uses
  %i.fj = shl nuw nsw i32 49152, %.1.peel.i
  %i.fk = and i32 %i.fh, %i.fj
  %.not208.i.2 = icmp eq i32 %i.fk, 0
  br i1 %.not208.i.2, label %.preheader255.i.2, label %.thread230.i, !llvm.loop !45

.preheader255.i.2:                                ; preds = %bb.y
  %i.fl = add nuw nsw i32 %.1.peel.i, 12
  %i.fm = icmp uge ptr %i.fi, %i.cn
  %.not206.i.3 = icmp ult ptr %i.fi, %i.cx
  %or.cond215.i.3 = select i1 %i.fm, i1 %.not206.i.3, i1 false
  br i1 %or.cond215.i.3, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.preheader255.i.2
  %i.fn = add nuw nsw i32 %.1.peel.i, 14
  %i.fo = load i8, ptr %i.fi, align 1, !tbaa !39
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = shl nuw i32 %i.fp, %i.fn
  %i.fr = or i32 %i.fq, %i.fh                     ; 3 uses
  %i.fs = and i32 %i.fp, 12
  %.not207.i.3 = icmp eq i32 %i.fs, 0
  br i1 %.not207.i.3, label %bb.aa, label %.thread.loopexit.loopexit.i

bb.aa:                                            ; preds = %bb.z
  %notmask.i.3 = shl nsw i32 -65536, %.1.peel.i   ; 2 uses
  %i.ft = xor i32 %notmask.i.3, -1
  %i.fu = lshr i32 %i.fr, 2
  %i.fv = and i32 %i.fu, %notmask.i.3
  %i.fw = and i32 %i.fr, %i.ft
  %i.fx = or disjoint i32 %i.fv, %i.fw            ; 3 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fi, i64 %.v.i ; 6 uses
  %i.fz = shl nuw nsw i32 786432, %.1.peel.i
  %i.ga = and i32 %i.fx, %i.fz
  %.not208.i.3 = icmp eq i32 %i.ga, 0
  br i1 %.not208.i.3, label %.preheader255.i.3, label %.thread230.i, !llvm.loop !45

.preheader255.i.3:                                ; preds = %bb.aa
  %i.gb = or disjoint i32 %.1.peel.i, 16          ; 2 uses
  %i.gc = icmp uge ptr %i.fy, %i.cn
  %.not206.i.4 = icmp ult ptr %i.fy, %i.cx
  %or.cond215.i.4 = select i1 %i.gc, i1 %.not206.i.4, i1 false
  br i1 %or.cond215.i.4, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.preheader255.i.3
  %i.gd = add nuw nsw i32 %.1.peel.i, 18
  %i.ge = load i8, ptr %i.fy, align 1, !tbaa !39
  %i.gf = zext i8 %i.ge to i32                    ; 2 uses
  %i.gg = shl nuw i32 %i.gf, %i.gd
  %i.gh = or i32 %i.gg, %i.fx                     ; 3 uses
  %i.gi = and i32 %i.gf, 12
  %.not207.i.4 = icmp eq i32 %i.gi, 0
  br i1 %.not207.i.4, label %bb.ac, label %.thread.loopexit.loopexit.i

bb.ac:                                            ; preds = %bb.ab
  %notmask.i.4 = shl nsw i32 -1048576, %.1.peel.i ; 2 uses
  %i.gj = xor i32 %notmask.i.4, -1
  %i.gk = lshr i32 %i.gh, 2
  %i.gl = and i32 %i.gk, %notmask.i.4
  %i.gm = and i32 %i.gh, %i.gj
  %i.gn = or disjoint i32 %i.gl, %i.gm            ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %i.fy, i64 %.v.i ; 6 uses
  %i.gp = shl nuw nsw i32 12582912, %.1.peel.i
  %i.gq = and i32 %i.gn, %i.gp
  %.not208.i.4 = icmp eq i32 %i.gq, 0
  br i1 %.not208.i.4, label %.preheader255.i.4, label %.thread230.i, !llvm.loop !45

.preheader255.i.4:                                ; preds = %bb.ac
  %i.gr = add nuw nsw i32 %.1.peel.i, 20
  %i.gs = icmp samesign ugt i32 %i.gb, 18
  br i1 %i.gs, label %.loopexit, label %.preheader255.i.preheader.5

.preheader255.i.preheader.5:                      ; preds = %.preheader255.i.4
  %i.gt = icmp uge ptr %i.go, %i.cn
  %.not206.i.5 = icmp ult ptr %i.go, %i.cx
  %or.cond215.i.5 = select i1 %i.gt, i1 %.not206.i.5, i1 false
  br i1 %or.cond215.i.5, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %.preheader255.i.preheader.5
  %i.gu = add nuw nsw i32 %.1.peel.i, 22
  %i.gv = load i8, ptr %i.go, align 1, !tbaa !39
  %i.gw = zext i8 %i.gv to i32                    ; 2 uses
  %i.gx = shl nuw i32 %i.gw, %i.gu
  %i.gy = or i32 %i.gx, %i.gn                     ; 3 uses
  %i.gz = and i32 %i.gw, 12
  %.not207.i.5 = icmp eq i32 %i.gz, 0
  br i1 %.not207.i.5, label %bb.ae, label %.thread.loopexit.loopexit.i

bb.ae:                                            ; preds = %bb.ad
  %notmask.i.5 = shl nsw i32 -16777216, %.1.peel.i ; 2 uses
  %i.ha = xor i32 %notmask.i.5, -1
  %i.hb = lshr i32 %i.gy, 2
  %i.hc = and i32 %i.hb, %notmask.i.5
  %i.hd = and i32 %i.gy, %i.ha
  %i.he = or disjoint i32 %i.hc, %i.hd            ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.go, i64 %.v.i
  %.not208.i.5 = icmp samesign ult i32 %i.he, 268435456
  br i1 %.not208.i.5, label %.loopexit, label %.thread230.i, !llvm.loop !45

.preheader255.i.preheader:                        ; preds = %.preheader255.preheader.thread.i
  %i.hg = icmp uge ptr %i.ec, %i.cn
  %.not206.i = icmp ult ptr %i.ec, %i.cx
  %or.cond215.i = select i1 %i.hg, i1 %.not206.i, i1 false
  br i1 %or.cond215.i, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.preheader255.i.preheader
  %i.hh = add nuw nsw i32 %.1.peel.i, 2
  %i.hi = load i8, ptr %i.ec, align 1, !tbaa !39
  %i.hj = zext i8 %i.hi to i32                    ; 2 uses
  %i.hk = shl nuw nsw i32 %i.hj, %i.hh
  %i.hl = or i32 %i.hk, %i.eb                     ; 3 uses
  %i.hm = and i32 %i.hj, 12
  %.not207.i = icmp eq i32 %i.hm, 0
  br i1 %.not207.i, label %bb.ag, label %.thread.loopexit.loopexit.i

bb.ag:                                            ; preds = %bb.af
  %notmask.i = shl nsw i32 -16, %.1.peel.i        ; 2 uses
  %i.hn = xor i32 %notmask.i, -1
  %i.ho = lshr i32 %i.hl, 2
  %i.hp = and i32 %i.ho, %notmask.i
  %i.hq = and i32 %i.hl, %i.hn
  %i.hr = or disjoint i32 %i.hp, %i.hq            ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.ec, i64 %.v.i ; 6 uses
  %i.ht = shl nuw nsw i32 192, %.1.peel.i
  %i.hu = and i32 %i.hr, %i.ht
  %.not208.i = icmp eq i32 %i.hu, 0
  br i1 %.not208.i, label %.preheader255.i, label %.thread230.i, !llvm.loop !45

.thread.loopexit.loopexit.i:                      ; preds = %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.af
  %.0.i131.lcssa172 = phi i32 [ %.1.peel.i, %bb.af ], [ %i.ef, %bb.v ], [ %i.ev, %bb.x ], [ %i.fl, %bb.z ], [ %i.gb, %bb.ab ], [ %i.gr, %bb.ad ]
  %.2174.i130.lcssa170 = phi ptr [ %i.ec, %bb.af ], [ %i.hs, %bb.v ], [ %i.es, %bb.x ], [ %i.fi, %bb.z ], [ %i.fy, %bb.ab ], [ %i.go, %bb.ad ]
  %.lcssa = phi i32 [ %i.hl, %bb.af ], [ %i.el, %bb.v ], [ %i.fb, %bb.x ], [ %i.fr, %bb.z ], [ %i.gh, %bb.ab ], [ %i.gy, %bb.ad ]
  %i.hv = add nuw nsw i32 %.0.i131.lcssa172, 6
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.loopexit.i, %bb.u, %.thread293.i
  %.2229.i = phi i32 [ %i.hv, %.thread.loopexit.loopexit.i ], [ 6, %bb.u ], [ 4, %.thread293.i ] ; 2 uses
  %.3175228.i = phi ptr [ %.2174.i130.lcssa170, %.thread.loopexit.loopexit.i ], [ %.1173.i, %bb.u ], [ %.1173.i, %.thread293.i ]
  %.3185227.i = phi i32 [ %.lcssa, %.thread.loopexit.loopexit.i ], [ %i.dv, %bb.u ], [ %i.dp, %.thread293.i ] ; 2 uses
  %i.hw = lshr i32 %.3185227.i, %.2229.i
  %notmask212.i = shl nsw i32 -1, %.2229.i
  %i.hx = xor i32 %notmask212.i, -1
  %i.hy = and i32 %.3185227.i, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %.3175228.i, i64 %.v.i
  br label %.thread230.i

.thread230.i:                                     ; preds = %bb.ag, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %.thread.i, %.preheader255.preheader.thread.i
  %.4186.i = phi i32 [ %i.hy, %.thread.i ], [ %i.eb, %.preheader255.preheader.thread.i ], [ %i.hr, %bb.ag ], [ %i.er, %bb.w ], [ %i.fh, %bb.y ], [ %i.fx, %bb.aa ], [ %i.gn, %bb.ac ], [ %i.he, %bb.ae ] ; 2 uses
  %.1180.i = phi i32 [ %i.hw, %.thread.i ], [ %.0179.i, %.preheader255.preheader.thread.i ], [ %.0179.i, %bb.ae ], [ %.0179.i, %bb.ac ], [ %.0179.i, %bb.aa ], [ %.0179.i, %bb.y ], [ %.0179.i, %bb.w ], [ %.0179.i, %bb.ag ]
  %.1177.i = phi i32 [ 0, %.thread.i ], [ 4, %.preheader255.preheader.thread.i ], [ 4, %bb.ae ], [ 4, %bb.ac ], [ 4, %bb.aa ], [ 4, %bb.y ], [ 4, %bb.w ], [ 4, %bb.ag ]
  %.4.i = phi ptr [ %i.hz, %.thread.i ], [ %i.ec, %.preheader255.preheader.thread.i ], [ %i.hs, %bb.ag ], [ %i.es, %bb.w ], [ %i.fi, %bb.y ], [ %i.fy, %bb.aa ], [ %i.go, %bb.ac ], [ %i.hf, %bb.ae ]
  %i.ia = icmp samesign ugt i32 %.4186.i, 3
  br i1 %i.ia, label %.thread235.i, label %bb.ah

bb.ah:                                            ; preds = %.thread230.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 140) #7
  tail call void @abort() #8
  unreachable

.thread235.i:                                     ; preds = %.thread230.i, %bb.t
  %.4243.i = phi ptr [ %.4.i, %.thread230.i ], [ %.1173.i, %bb.t ] ; 10 uses
  %.1177242.i = phi i32 [ %.1177.i, %.thread230.i ], [ 4, %bb.t ]
  %.1180241.i = phi i32 [ %.1180.i, %.thread230.i ], [ %.0179.i, %bb.t ]
  %.4186240.i = phi i32 [ %.4186.i, %.thread230.i ], [ %.0179.i, %bb.t ] ; 2 uses
  %i.ib = lshr i32 %.4186240.i, 1                 ; 2 uses
  %i.ic = add nsw i32 %i.ib, -1                   ; 5 uses
  %i.id = and i32 %.4186240.i, 1
  %i.ie = add nuw nsw i32 %.0162.i, 1
  %i.if = add nuw nsw i32 %i.ie, %i.id            ; 3 uses
  %i.ig = icmp sgt i32 %i.if, 3
  %i.ih = add nsw i32 %i.if, -3
  %spec.select216.i = select i1 %i.ig, i32 %i.ih, i32 %i.if ; 2 uses
  %i.ii = ptrtoint ptr %.1170.i to i64            ; 3 uses
  %i.ij = sub i64 %i.de, %i.ii
  %i.ik = tail call i64 @llvm.abs.i64(i64 %i.ij, i1 true)
  %i.il = zext nneg i32 %i.ic to i64              ; 24 uses
  %i.im = icmp samesign ult i64 %i.ik, %i.il
  br i1 %i.im, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.thread235.i
  switch i32 %spec.select216.i, label %default.unreachable.i [
    i32 1, label %bb.aj
    i32 2, label %bb.ao
    i32 3, label %bb.at
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.cy, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.reass268.reass.i.reass.reass = add i64 %i.ii, %invariant.op174
  %or.cond218.i = icmp slt i64 %.reass268.reass.i.reass.reass, %invariant.smax.i
  br i1 %or.cond218.i, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = sub i64 %i.di, %i.ii                    ; 2 uses
  %i.io = add nsw i32 %i.ic, %.070
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp slt i64 %i.in, %i.ip
  %i.ir = icmp slt i64 %i.in, %i.il
  %or.cond219.i = or i1 %i.ir, %i.iq
  br i1 %or.cond219.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.al
  %invariant.gep310.i = getelementptr i8, ptr %.1170.i, i64 %i.dj ; 7 uses
  %min.iters.check = icmp ult i32 %i.ic, 4
  br i1 %min.iters.check, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check132 = icmp ult i32 %i.ic, 32
  br i1 %min.iters.check132, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.is = and i64 %i.il, 28
  %n.vec = and i64 %i.il, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.it = getelementptr i8, ptr %invariant.gep310.i, i64 %index ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 16
  %wide.load = load <16 x i8>, ptr %i.it, align 1, !tbaa !39
  %wide.load133 = load <16 x i8>, ptr %i.iu, align 1, !tbaa !39
  %i.iv = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <16 x i8> %wide.load, ptr %i.iv, align 1, !tbaa !39
  store <16 x i8> %wide.load133, ptr %i.iw, align 1, !tbaa !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ix = icmp eq i64 %index.next, %n.vec
  br i1 %i.ix, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.il
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.is, 0
  br i1 %min.epilog.iters.check, label %.lr.ph265.i.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.il, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %i.iy = getelementptr i8, ptr %invariant.gep310.i, i64 %index135
  %wide.load136 = load <4 x i8>, ptr %i.iy, align 1, !tbaa !39
  %i.iz = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %index135
  store <4 x i8> %wide.load136, ptr %i.iz, align 1, !tbaa !39
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next137, %n.vec134
  br i1 %i.ja, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %n.vec134, %i.il
  br i1 %cmp.n138, label %._crit_edge.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv283.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec134, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.il, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph265.i.prol.loopexit, label %.lr.ph265.i.prol

.lr.ph265.i.prol:                                 ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i.prol
  %indvars.iv283.i.prol = phi i64 [ %indvars.iv.next284.i.prol, %.lr.ph265.i.prol ], [ %indvars.iv283.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph265.i.prol ], [ 0, %.lr.ph265.i.preheader ]
  %gep311.i.prol = getelementptr i8, ptr %invariant.gep310.i, i64 %indvars.iv283.i.prol
  %i.jb = load i8, ptr %gep311.i.prol, align 1, !tbaa !39
  %i.jc = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv283.i.prol
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !39
  %indvars.iv.next284.i.prol = add nuw nsw i64 %indvars.iv283.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph265.i.prol.loopexit, label %.lr.ph265.i.prol, !llvm.loop !52

.lr.ph265.i.prol.loopexit:                        ; preds = %.lr.ph265.i.prol, %.lr.ph265.i.preheader
  %indvars.iv283.i.unr = phi i64 [ %indvars.iv283.i.ph, %.lr.ph265.i.preheader ], [ %indvars.iv.next284.i.prol, %.lr.ph265.i.prol ]
  %4 = sub nsw i64 %indvars.iv283.i.ph, %i.il
  %5 = icmp ugt i64 %4, -4
  br i1 %5, label %._crit_edge.i, label %.lr.ph265.i

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.prol.loopexit, %.lr.ph265.i
  %indvars.iv283.i = phi i64 [ %indvars.iv.next284.i.3, %.lr.ph265.i ], [ %indvars.iv283.i.unr, %.lr.ph265.i.prol.loopexit ] ; 6 uses
  %gep311.i = getelementptr i8, ptr %invariant.gep310.i, i64 %indvars.iv283.i
  %i.jd = load i8, ptr %gep311.i, align 1, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv283.i
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !39
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %gep311.i.1 = getelementptr i8, ptr %invariant.gep310.i, i64 %indvars.iv.next284.i
  %i.jf = load i8, ptr %gep311.i.1, align 1, !tbaa !39
  %i.jg = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv.next284.i
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !39
  %indvars.iv.next284.i.1 = add nuw nsw i64 %indvars.iv283.i, 2 ; 2 uses
  %gep311.i.2 = getelementptr i8, ptr %invariant.gep310.i, i64 %indvars.iv.next284.i.1
  %i.jh = load i8, ptr %gep311.i.2, align 1, !tbaa !39
  %i.ji = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv.next284.i.1
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !39
  %indvars.iv.next284.i.2 = add nuw nsw i64 %indvars.iv283.i, 3 ; 2 uses
  %gep311.i.3 = getelementptr i8, ptr %invariant.gep310.i, i64 %indvars.iv.next284.i.2
  %i.jj = load i8, ptr %gep311.i.3, align 1, !tbaa !39
  %i.jk = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %indvars.iv.next284.i.2
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !39
  %indvars.iv.next284.i.3 = add nuw nsw i64 %indvars.iv283.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next284.i.3, %i.il
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph265.i, !llvm.loop !54

._crit_edge.i:                                    ; preds = %.lr.ph265.i.prol.loopexit, %.lr.ph265.i, %vec.epilog.middle.block, %middle.block
  %i.jl = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %i.il
  br label %.loopexit.i

bb.am:                                            ; preds = %bb.aj
  %i.jm = sub nsw i64 0, %i.il
  %i.jn = getelementptr inbounds i8, ptr %.1170.i, i64 %i.jm ; 8 uses
  %i.jo = ptrtoint ptr %i.jn to i64               ; 2 uses
  %.reass.reass.i.reass.reass = add i64 %i.jo, %invariant.op
  %or.cond221.i = icmp slt i64 %.reass.reass.i.reass.reass, %invariant.smax.i
  br i1 %or.cond221.i, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jp = sub i64 %i.di, %i.jo                    ; 2 uses
  %i.jq = add nsw i32 %i.ic, %.070
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %i.jp, %i.jr
  %i.jt = icmp slt i64 %i.jp, %i.il
  %or.cond222.i = or i1 %i.js, %i.jt
  br i1 %or.cond222.i, label %.loopexit, label %iter.check153

iter.check153:                                    ; preds = %bb.an
  %i.ju = zext nneg i32 %i.ib to i64              ; 2 uses
  %i.jv = add nsw i64 %i.ju, -2                   ; 5 uses
  %invariant.gep.i = getelementptr i8, ptr %i.jn, i64 %i.dj ; 3 uses
  %6 = add nsw i64 %i.ju, -1                      ; 7 uses
  %min.iters.check139 = icmp ult i64 %6, 8
  br i1 %min.iters.check139, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check140

vector.main.loop.iter.check140:                   ; preds = %iter.check153
  %min.iters.check141 = icmp ult i64 %6, 32
  br i1 %min.iters.check141, label %vec.epilog.ph157, label %vector.ph142

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %i.jw = and i64 %6, 24
  %n.vec143 = and i64 %6, -32                     ; 4 uses
  %i.jx = sub nsw i64 %i.jv, %n.vec143
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph142
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next148, %vector.body144 ] ; 2 uses
  %i.jy = sub i64 %i.jv, %index145                ; 2 uses
  %i.jz = getelementptr i8, ptr %invariant.gep.i, i64 %i.jy ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 -15
  %i.kb = getelementptr i8, ptr %i.jz, i64 -31
  %wide.load146 = load <16 x i8>, ptr %i.ka, align 1, !tbaa !39
  %wide.load147 = load <16 x i8>, ptr %i.kb, align 1, !tbaa !39
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jy ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -15
  %i.ke = getelementptr inbounds i8, ptr %i.kc, i64 -31
  store <16 x i8> %wide.load146, ptr %i.kd, align 1, !tbaa !39
  store <16 x i8> %wide.load147, ptr %i.ke, align 1, !tbaa !39
  %index.next148 = add nuw i64 %index145, 32      ; 2 uses
  %i.kf = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.kf, label %middle.block149, label %vector.body144, !llvm.loop !55

middle.block149:                                  ; preds = %vector.body144
  %cmp.n150 = icmp eq i64 %6, %n.vec143
  br i1 %cmp.n150, label %.loopexit.i, label %vec.epilog.iter.check155

vec.epilog.iter.check155:                         ; preds = %middle.block149
  %min.epilog.iters.check156 = icmp eq i64 %i.jw, 0
  br i1 %min.epilog.iters.check156, label %.lr.ph.i.preheader, label %vec.epilog.ph157, !prof !56

vec.epilog.ph157:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check155
  %vec.epilog.resume.val151 = phi i64 [ %n.vec143, %vec.epilog.iter.check155 ], [ 0, %vector.main.loop.iter.check140 ]
  %n.vec158 = and i64 %6, -8                      ; 3 uses
  %i.kg = sub nsw i64 %i.jv, %n.vec158
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph157
  %index160 = phi i64 [ %vec.epilog.resume.val151, %vec.epilog.ph157 ], [ %index.next162, %vec.epilog.vector.body159 ] ; 2 uses
  %i.kh = sub i64 %i.jv, %index160                ; 2 uses
  %i.ki = getelementptr i8, ptr %invariant.gep.i, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 -7
  %wide.load161 = load <8 x i8>, ptr %i.kj, align 1, !tbaa !39
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.kh
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -7
  store <8 x i8> %wide.load161, ptr %i.kl, align 1, !tbaa !39
  %index.next162 = add nuw i64 %index160, 8       ; 2 uses
  %i.km = icmp eq i64 %index.next162, %n.vec158
  br i1 %i.km, label %vec.epilog.middle.block163, label %vec.epilog.vector.body159, !llvm.loop !57

vec.epilog.middle.block163:                       ; preds = %vec.epilog.vector.body159
  %cmp.n164 = icmp eq i64 %6, %n.vec158
  br i1 %cmp.n164, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check153, %vec.epilog.iter.check155, %vec.epilog.middle.block163
  %indvars.iv.i.ph = phi i64 [ %i.jv, %iter.check153 ], [ %i.jx, %vec.epilog.iter.check155 ], [ %i.kg, %vec.epilog.middle.block163 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.kn = load i8, ptr %gep.i, align 1, !tbaa !39
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv.i
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !39
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not313.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not313.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !58

bb.ao:                                            ; preds = %bb.ai
  %i.kp = ptrtoint ptr %.4243.i to i64            ; 2 uses
  br i1 %i.cy, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.kq = sub i64 %i.df, %i.kp
  %i.kr = icmp slt i64 %i.kq, %i.il
  br i1 %i.kr, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1170.i, ptr align 1 %.4243.i, i64 %i.il, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %i.il
  %i.kt = getelementptr inbounds nuw i8, ptr %.4243.i, i64 %i.il
  br label %.loopexit.i

bb.ar:                                            ; preds = %bb.ao
  %i.ku = sub i64 %i.kp, %i.cr
  %i.kv = icmp slt i64 %i.ku, %i.il
  br i1 %i.kv, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kw = sub nsw i64 0, %i.il                    ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %.1170.i, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %.4243.i, i64 %i.kw ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 1 %i.ky, i64 %i.il, i1 false)
  br label %.loopexit.i

bb.at:                                            ; preds = %bb.ai
  %.in.in.i = getelementptr inbounds i8, ptr %.1170.i, i64 %.in.in.v.i
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !39 ; 2 uses
  br i1 %i.cy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1170.i, i8 %.in.i, i64 %i.il, i1 false)
  %i.kz = getelementptr inbounds nuw i8, ptr %.1170.i, i64 %i.il
  br label %.loopexit.i

bb.av:                                            ; preds = %bb.at
  %i.la = sub nsw i64 0, %i.il
  %i.lb = getelementptr inbounds i8, ptr %.1170.i, i64 %i.la ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.lb, i8 %.in.i, i64 %i.il, i1 false)
  br label %.loopexit.i

default.unreachable.i:                            ; preds = %bb.ai
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block149, %vec.epilog.middle.block163, %bb.av, %bb.au, %bb.as, %bb.aq, %._crit_edge.i
  %.5.i = phi ptr [ %.4243.i, %bb.av ], [ %.4243.i, %._crit_edge.i ], [ %.4243.i, %bb.au ], [ %i.kt, %bb.aq ], [ %i.ky, %bb.as ], [ %.4243.i, %middle.block149 ], [ %.4243.i, %vec.epilog.middle.block163 ], [ %.4243.i, %.lr.ph.i ]
  %.2171.i = phi ptr [ %i.lb, %bb.av ], [ %i.jl, %._crit_edge.i ], [ %i.kz, %bb.au ], [ %i.ks, %bb.aq ], [ %i.kx, %bb.as ], [ %i.jn, %middle.block149 ], [ %i.jn, %vec.epilog.middle.block163 ], [ %i.jn, %.lr.ph.i ] ; 2 uses
  %.not254.i = icmp eq ptr %.2171.i, %.0168.i
  br i1 %.not254.i, label %decode_bmv_frame.exit, label %bb.r

.loopexit:                                        ; preds = %bb.ar, %.thread235.i, %bb.ak, %bb.am, %bb.ap, %bb.s, %bb.al, %bb.an, %.preheader255.preheader.i, %bb.ae, %.preheader255.i.preheader, %.preheader255.i, %.preheader255.i.1, %.preheader255.i.2, %.preheader255.i.3, %.preheader255.i.4, %.preheader255.i.preheader.5, %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %bb.ax

decode_bmv_frame.exit:                            ; preds = %.loopexit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !38
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 275216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.ld, ptr noundef nonnull align 8 dereferenceable(1024) %i.le, i64 1024, i1 false)
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !34
  %i.lh = icmp sgt i32 %i.lg, 0
  br i1 %i.lh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %decode_bmv_frame.exit
  %i.li = load ptr, ptr %i.cv, align 8, !tbaa !35
  %i.lj = load ptr, ptr %1, align 8, !tbaa !38
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre = load i32, ptr %i.lk, align 8, !tbaa !33
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.aw
  %i.lm = phi i32 [ %.pre, %.lr.ph ], [ %i.lo, %bb.aw ]
  %.06698 = phi ptr [ %i.lj, %.lr.ph ], [ %i.lt, %bb.aw ] ; 2 uses
  %.06797 = phi ptr [ %i.li, %.lr.ph ], [ %i.lq, %bb.aw ] ; 2 uses
  %.16996 = phi i32 [ 0, %.lr.ph ], [ %i.lu, %bb.aw ]
  %i.ln = sext i32 %i.lm to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06698, ptr align 1 %.06797, i64 %i.ln, i1 false)
  %i.lo = load i32, ptr %i.lk, align 8, !tbaa !33 ; 2 uses
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %.06797, i64 %i.lp
  %i.lr = load i32, ptr %i.ll, align 8, !tbaa !42
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds i8, ptr %.06698, i64 %i.ls
  %i.lu = add nuw nsw i32 %.16996, 1              ; 2 uses
  %i.lv = load i32, ptr %i.lf, align 4, !tbaa !34
  %i.lw = icmp slt i32 %i.lu, %i.lv
  br i1 %i.lw, label %bb.aw, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.aw, %decode_bmv_frame.exit
  store i32 1, ptr %2, align 4, !tbaa !42
  %i.lx = load i32, ptr %i.co, align 8, !tbaa !40
  br label %bb.ax

bb.ax:                                            ; preds = %.thread81, %.thread, %bb.o, %._crit_edge, %.loopexit, %bb.l, %bb.i
  %.3 = phi i32 [ -1094995529, %bb.i ], [ -1094995529, %bb.l ], [ -1094995529, %.thread ], [ -1094995529, %.loopexit ], [ %i.lx, %._crit_edge ], [ -1094995529, %.thread81 ], [ %i.cl, %bb.o ]
  ret i32 %.3
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"BMVDecContext", !31, i64 0, !16, i64 8, !7, i64 16, !7, i64 275216, !16, i64 276240}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!10, !6, i64 136}
!33 = !{!10, !6, i64 112}
!34 = !{!10, !6, i64 116}
!35 = !{!30, !16, i64 8}
!36 = !{!37, !16, i64 24}
!37 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!38 = !{!16, !16, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!37, !6, i64 32}
!41 = !{!30, !16, i64 276240}
!42 = !{!6, !6, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = distinct !{!47, !44, !48, !49}
!48 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
