Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_function?download=true
inline.NumInlined: 11328
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN6casadi10SXFunction17init_copy_elisionEv:bb.a
  switch i32 %i.cj, label %bb.ai [
    i32 45, label %bb.q
    i32 46, label %bb.r
    i32 48, label %bb.t
    i32 44, label %bb.ah
    i32 47, label %bb.ah
  ]

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !162
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 4 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !183
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.co
  store i32 %i.cl, ptr %i.cp, align 4, !tbaa !61
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !162
  %i.cs = load i32, ptr %i.cm, align 4, !tbaa !183
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0168.0230241, i64 %i.ct
  store i32 %i.cr, ptr %i.cu, align 4, !tbaa !61
  %i.cv = load i32, ptr %i.cm, align 4, !tbaa !183
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.cw
  store i64 %.083275, ptr %i.cx, align 8, !tbaa !291
  %i.cy = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.cz = lshr i64 %.083275, 6
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = and i64 %.083275, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = load i64, ptr %i.da, align 8, !tbaa !178
  %i.de = or i64 %i.dd, %i.dc
  store i64 %i.de, ptr %i.da, align 8, !tbaa !178
  br label %.loopexit247

bb.r:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !162
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !61
  %i.dk = icmp sgt i32 %i.dj, -1
  br i1 %i.dk, label %bb.s, label %.loopexit247

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.dh
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !291 ; 3 uses
  %i.dn = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.do = sdiv i64 %i.dm, 64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do
  %i.dq = and i64 %i.dm, -9223372036854775745
  %i.dr = icmp ugt i64 %i.dq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i123 = select i1 %i.dr, i64 -8, i64 0
  %storemerge.i.i.i.i.i124 = getelementptr inbounds i8, ptr %i.dp, i64 %storemerge.idx.i.i.i.i.i123 ; 2 uses
  %i.ds = and i64 %i.dm, 63
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = xor i64 %i.dt, -1
  %i.dv = load i64, ptr %storemerge.i.i.i.i.i124, align 8, !tbaa !178
  %i.dw = and i64 %i.dv, %i.du
  store i64 %i.dw, ptr %storemerge.i.i.i.i.i124, align 8, !tbaa !178
  br label %.loopexit247

bb.t:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !162
  %i.dz = sext i32 %i.dy to i64
  %i.ea = load ptr, ptr %i.bx, align 8, !tbaa !163
  %i.eb = getelementptr inbounds nuw [184 x i8], ptr %i.ea, i64 %i.dz ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 120
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !62 ; 2 uses
  %i.ee = icmp sgt i64 %i.ed, 0
  br i1 %i.ee, label %.preheader245.lr.ph, label %.preheader246

.preheader245.lr.ph:                              ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 136
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !60
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !60
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !60
  br label %.preheader245

.preheader246:                                    ; preds = %.loopexit, %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 112
  %i.en = load i64, ptr %i.em, align 8, !tbaa !58 ; 5 uses
  %i.eo = icmp sgt i64 %i.en, 0
  br i1 %i.eo, label %.lr.ph272, label %.loopexit247

.lr.ph272:                                        ; preds = %.preheader246
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !60 ; 3 uses
  %xtraiter = and i64 %i.en, 1
  %i.er = icmp eq i64 %i.en, 1
  br i1 %i.er, label %.epil.preheader, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter = and i64 %i.en, 9223372036854775806
  br label %bb.ac

.preheader245:                                    ; preds = %.preheader245.lr.ph, %.loopexit
  %.080270 = phi i64 [ 0, %.preheader245.lr.ph ], [ %i.gt, %.loopexit ] ; 4 uses
  %.081268 = phi i64 [ 0, %.preheader245.lr.ph ], [ %i.gs, %.loopexit ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.080270 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !61 ; 3 uses
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = icmp sgt i32 %i.et, 0
  br i1 %i.ev, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.preheader245
  %i.ew = load ptr, ptr %i.eh, align 8, !tbaa !60 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.081268
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !61
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !61 ; 2 uses
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0168.0230241, i64 %i.ez
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !61 ; 3 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp eq i32 %i.fb, -1
  br i1 %i.fg, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %exitcond.peel.not = icmp eq i32 %i.et, 1
  br i1 %exitcond.peel.not, label %.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.v
  %invariant.gep = getelementptr [4 x i8], ptr %i.ew, i64 %.081268
  br label %bb.x

bb.w:                                             ; preds = %bb.y
  %i.fh = add nuw nsw i64 %.075252, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fh, %i.eu
  br i1 %exitcond.not, label %.thread, label %bb.x, !llvm.loop !782

bb.x:                                             ; preds = %.peel.next, %bb.w
  %.075252 = phi i64 [ 1, %.peel.next ], [ %i.fh, %bb.w ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.075252
  %i.fi = load i32, ptr %gep, align 4, !tbaa !61
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !61
  %i.fm = icmp eq i32 %i.fl, -1
  br i1 %i.fm, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0168.0230241, i64 %i.fj
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !61
  %i.fp = sext i32 %i.fo to i64
  %i.fq = add nsw i64 %.075252, %i.ff
  %.not = icmp eq i64 %i.fq, %i.fp
  br i1 %.not, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.y, %bb.w, %bb.x, %bb.u, %bb.v
  %.3 = phi i64 [ %i.fc, %bb.v ], [ -1, %bb.u ], [ -1, %bb.x ], [ %i.fc, %bb.w ], [ -1, %bb.y ] ; 3 uses
  %i.fr = icmp eq i64 %.3, -1
  br i1 %i.fr, label %.lr.ph267, label %.loopexit

.lr.ph267:                                        ; preds = %.thread
  %i.fs = load ptr, ptr %i.eh, align 8, !tbaa !60
  %i.ft = getelementptr [4 x i8], ptr %i.fs, i64 %.081268
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph267, %bb.ab
  %.074266 = phi i64 [ 0, %.lr.ph267 ], [ %i.gm, %bb.ab ] ; 2 uses
  %i.fu = getelementptr [4 x i8], ptr %i.ft, i64 %.074266
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !61
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !61
  %i.fz = icmp sgt i32 %i.fy, -1
  br i1 %i.fz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.fw
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !291 ; 3 uses
  %i.gc = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.gd = sdiv i64 %i.gb, 64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = and i64 %i.gb, -9223372036854775745
  %i.gg = icmp ugt i64 %i.gf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i127 = select i1 %i.gg, i64 -8, i64 0
  %storemerge.i.i.i.i.i128 = getelementptr inbounds i8, ptr %i.ge, i64 %storemerge.idx.i.i.i.i.i127 ; 2 uses
  %i.gh = and i64 %i.gb, 63
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = xor i64 %i.gi, -1
  %i.gk = load i64, ptr %storemerge.i.i.i.i.i128, align 8, !tbaa !178
  %i.gl = and i64 %i.gk, %i.gj
  store i64 %i.gl, ptr %storemerge.i.i.i.i.i128, align 8, !tbaa !178
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gm = add nuw nsw i64 %.074266, 1             ; 2 uses
  %exitcond278.not = icmp eq i64 %i.gm, %i.eu
  br i1 %exitcond278.not, label %.loopexit, label %bb.z, !llvm.loop !783

.loopexit:                                        ; preds = %bb.ab, %.preheader245, %.thread
  %.2318 = phi i32 [ -1, %.preheader245 ], [ %i.fe, %.thread ], [ %i.fe, %bb.ab ]
  %.3317 = phi i64 [ -1, %.preheader245 ], [ %.3, %.thread ], [ %.3, %bb.ab ]
  %i.gn = trunc nsw i64 %.3317 to i32
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.080270
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !61
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.080270
  store i32 %.2318, ptr %i.gp, align 4, !tbaa !61
  %i.gq = load i32, ptr %i.es, align 4, !tbaa !61
  %i.gr = sext i32 %i.gq to i64
  %i.gs = add nsw i64 %.081268, %i.gr
  %i.gt = add nuw nsw i64 %.080270, 1             ; 2 uses
  %exitcond279.not = icmp eq i64 %i.gt, %i.ed
  br i1 %exitcond279.not, label %.preheader246, label %.preheader245, !llvm.loop !784

bb.ac:                                            ; preds = %bb.ag, %.lr.ph272.new
  %.0271 = phi i64 [ 0, %.lr.ph272.new ], [ %i.hf, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph272.new ], [ %niter.next.1, %bb.ag ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.0271
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !61 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1
  br i1 %i.gw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gx = zext nneg i32 %i.gv to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.gx
  store i32 -1, ptr %i.gy, align 4, !tbaa !61
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.0271
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !61 ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, -1
  br i1 %i.hc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.hd
  store i32 -1, ptr %i.he, align 4, !tbaa !61
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hf = add nuw nsw i64 %.0271, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit247.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !785

bb.ah:                                            ; preds = %bb.p, %bb.p
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !183
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.hi
  store i32 -1, ptr %i.hj, align 4, !tbaa !61
  br label %.loopexit247

bb.ai:                                            ; preds = %bb.p
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !162
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !61
  %i.hp = icmp sgt i32 %i.ho, -1
  br i1 %i.hp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.hm
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !291 ; 3 uses
  %i.hs = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.ht = sdiv i64 %i.hr, 64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = and i64 %i.hr, -9223372036854775745
  %i.hw = icmp ugt i64 %i.hv, -9223372036854775808
  %storemerge.idx.i.i.i.i.i131 = select i1 %i.hw, i64 -8, i64 0
  %storemerge.i.i.i.i.i132 = getelementptr inbounds i8, ptr %i.hu, i64 %storemerge.idx.i.i.i.i.i131 ; 2 uses
  %i.hx = and i64 %i.hr, 63
  %i.hy = shl nuw i64 1, %i.hx
  %i.hz = xor i64 %i.hy, -1
  %i.ia = load i64, ptr %storemerge.i.i.i.i.i132, align 8, !tbaa !178
  %i.ib = and i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %storemerge.i.i.i.i.i132, align 8, !tbaa !178
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ic = trunc i32 %i.cj to i8
  %i.id = tail call noundef zeroext i1 @_ZN6casadi11casadi_mathIdE8is_unaryEh(i8 noundef zeroext %i.ic)
  br i1 %i.id, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !162
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !61
  %i.ij = icmp sgt i32 %i.ii, -1
  br i1 %i.ij, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %i.ig
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !291 ; 3 uses
  %i.im = load ptr, ptr %i.at, align 8, !tbaa !70
  %i.in = sdiv i64 %i.il, 64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.in
  %i.ip = and i64 %i.il, -9223372036854775745
  %i.iq = icmp ugt i64 %i.ip, -9223372036854775808
  %storemerge.idx.i.i.i.i.i135 = select i1 %i.iq, i64 -8, i64 0
  %storemerge.i.i.i.i.i136 = getelementptr inbounds i8, ptr %i.io, i64 %storemerge.idx.i.i.i.i.i135 ; 2 uses
  %i.ir = and i64 %i.il, 63
  %i.is = shl nuw i64 1, %i.ir
  %i.it = xor i64 %i.is, -1
  %i.iu = load i64, ptr %storemerge.i.i.i.i.i136, align 8, !tbaa !178
  %i.iv = and i64 %i.iu, %i.it
  store i64 %i.iv, ptr %storemerge.i.i.i.i.i136, align 8, !tbaa !178
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.ak
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !183
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.iy
  store i32 -1, ptr %i.iz, align 4, !tbaa !61
  br label %.loopexit247

.loopexit247.loopexit.unr-lcssa:                  ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit247, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit247.loopexit.unr-lcssa, %.lr.ph272
  %.0271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.hf, %.loopexit247.loopexit.unr-lcssa ]
  %lcmp.mod333 = trunc i64 %i.en to i1
  tail call void @llvm.assume(i1 %lcmp.mod333)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.0271.epil.init
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !61 ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, -1
  br i1 %i.jc, label %bb.ao, label %.loopexit247

bb.ao:                                            ; preds = %.epil.preheader
  %i.jd = zext nneg i32 %i.jb to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0176.0200204225242, i64 %i.jd
  store i32 -1, ptr %i.je, align 4, !tbaa !61
  br label %.loopexit247

.loopexit247:                                     ; preds = %.loopexit247.loopexit.unr-lcssa, %bb.ao, %.epil.preheader, %.preheader246, %bb.r, %bb.s, %bb.an, %bb.ah, %bb.q
  %i.jf = add nuw nsw i64 %.083275, 1
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 16 ; 2 uses
  %.not244 = icmp eq ptr %i.jg, %i.bv
  br i1 %.not244, label %._crit_edge, label %bb.p

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.n, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d, %bb.c
  ret void

bb.ap:                                            ; preds = %bb.o
  %i.jh = ptrtoint ptr %.sroa.0158.0 to i64
  %i.ji = sub i64 %.sroa.14.0, %i.jh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0158.0, i64 noundef %i.ji) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit140

_ZNSt6vectorIxSaIxEED2Ev.exit140:                 ; preds = %bb.ap, %bb.o
  %.not.i.i.i141 = icmp eq ptr %.sroa.0168.0230241, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIiSaIiEED2Ev.exit142, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit140.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit140
  %.pn.pn.pn331 = phi { ptr, i32 } [ %i.ch, %_ZNSt6vectorIxSaIxEED2Ev.exit140.thread ], [ %i.ci, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ]
  %.sroa.19.0193329 = phi ptr [ %i.aj, %_ZNSt6vectorIxSaIxEED2Ev.exit140.thread ], [ %.sroa.19.0195206223243, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ]
  %.sroa.0176.0198327 = phi ptr [ %i.ai, %_ZNSt6vectorIxSaIxEED2Ev.exit140.thread ], [ %.sroa.0176.0200204225242, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ]
  %.sroa.0168.0227326 = phi ptr [ %i.am, %_ZNSt6vectorIxSaIxEED2Ev.exit140.thread ], [ %.sroa.0168.0230241, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ] ; 2 uses
  %.sroa.12.0231325 = phi ptr [ %i.an, %_ZNSt6vectorIxSaIxEED2Ev.exit140.thread ], [ %.sroa.12.0234240, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ]
  %i.jj = ptrtoint ptr %.sroa.12.0231325 to i64
  %i.jk = ptrtoint ptr %.sroa.0168.0227326 to i64
  %i.jl = sub i64 %i.jj, %i.jk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0168.0227326, i64 noundef %i.jl) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit142

_ZNSt6vectorIiSaIiEED2Ev.exit142:                 ; preds = %bb.aq, %_ZNSt6vectorIxSaIxEED2Ev.exit140
  %.pn.pn.pn332 = phi { ptr, i32 } [ %.pn.pn.pn331, %bb.aq ], [ %i.ci, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ] ; 2 uses
  %.sroa.19.0193330 = phi ptr [ %.sroa.19.0193329, %bb.aq ], [ %.sroa.19.0195206223243, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ]
  %.sroa.0176.0198328 = phi ptr [ %.sroa.0176.0198327, %bb.aq ], [ %.sroa.0176.0200204225242, %_ZNSt6vectorIxSaIxEED2Ev.exit140 ] ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %.sroa.0176.0198328, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIiSaIiEED2Ev.exit144, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit142.thread, %_ZNSt6vectorIiSaIiEED2Ev.exit142
  %.pn.pn.pn.pn216 = phi { ptr, i32 } [ %i.cg, %_ZNSt6vectorIiSaIiEED2Ev.exit142.thread ], [ %.pn.pn.pn332, %_ZNSt6vectorIiSaIiEED2Ev.exit142 ]
  %.sroa.19.0191215 = phi ptr [ %i.aj, %_ZNSt6vectorIiSaIiEED2Ev.exit142.thread ], [ %.sroa.19.0193330, %_ZNSt6vectorIiSaIiEED2Ev.exit142 ]
  %.sroa.0176.0196214 = phi ptr [ %i.ai, %_ZNSt6vectorIiSaIiEED2Ev.exit142.thread ], [ %.sroa.0176.0198328, %_ZNSt6vectorIiSaIiEED2Ev.exit142 ] ; 2 uses
  %i.jm = ptrtoint ptr %.sroa.19.0191215 to i64
  %i.jn = ptrtoint ptr %.sroa.0176.0196214 to i64
  %i.jo = sub i64 %i.jm, %i.jn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0176.0196214, i64 noundef %i.jo) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit144

_ZNSt6vectorIiSaIiEED2Ev.exit144:                 ; preds = %bb.ar, %_ZNSt6vectorIiSaIiEED2Ev.exit142
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn216, %bb.ar ], [ %.pn.pn.pn332, %_ZNSt6vectorIiSaIiEED2Ev.exit142 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !344    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
