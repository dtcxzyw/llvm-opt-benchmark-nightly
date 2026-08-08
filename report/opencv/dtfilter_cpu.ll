inline.NumInlined: 1511
inline.NumDeleted: 353
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK2cv8ximgproc11DTFilterCPU17FilterRF_vertPassINS_3VecIfLi3EEEEclERKNS_5RangeE:bb.a
  %i.en = insertelement <4 x ptr> %i.em, ptr %scevgep207, i64 1
  %i.eo = insertelement <4 x ptr> %i.en, ptr %scevgep215, i64 2
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %scevgep217, i64 3
  %i.eq = shufflevector <2 x ptr> %i.ay, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.er = insertelement <4 x ptr> %i.eq, ptr %scevgep210, i64 2
  %i.es = insertelement <4 x ptr> %i.er, ptr %scevgep212, i64 3
  %i.et = icmp ult <4 x ptr> %i.ep, %i.es
  %i.eu = insertelement <4 x ptr> %i.ed, ptr %scevgep219, i64 1
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %scevgep209, i64 2
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %scevgep213, i64 3
  %i.ex = shufflevector <2 x ptr> %i.bj, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ey = insertelement <4 x ptr> %i.ex, ptr %scevgep212, i64 2
  %i.ez = insertelement <4 x ptr> %i.ey, ptr %scevgep210, i64 3
  %i.fa = icmp ult <4 x ptr> %i.ew, %i.ez
  %i.fb = insertelement <4 x ptr> poison, ptr %scevgep217, i64 0
  %i.fc = insertelement <4 x ptr> %i.fb, ptr %scevgep207, i64 1
  %i.fd = shufflevector <2 x ptr> %i.ah, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fe = shufflevector <4 x ptr> %i.fc, <4 x ptr> %i.fd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ff = insertelement <4 x ptr> poison, ptr %scevgep208, i64 0
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %scevgep220, i64 1
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %scevgep210, i64 2
  %i.fi = insertelement <4 x ptr> %i.fh, ptr %scevgep214, i64 3
  %i.fj = icmp ult <4 x ptr> %i.fe, %i.fi
  %i.fk = and <4 x i1> %i.fj, %i.fa
  %i.fl = or i64 %i.o, %i.i
  %i.fm = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fn = insertelement <4 x ptr> %i.fm, ptr %scevgep211, i64 2
  %i.fo = insertelement <4 x ptr> %i.fn, ptr %scevgep215, i64 3
  %i.fp = shufflevector <2 x ptr> %i.bh, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = insertelement <4 x ptr> %i.fp, ptr %scevgep214, i64 2
  %i.fr = insertelement <4 x ptr> %i.fq, ptr %scevgep212, i64 3
  %i.fs = icmp ult <4 x ptr> %i.fo, %i.fr
  %i.ft = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fu = insertelement <4 x ptr> %i.ft, ptr %scevgep213, i64 2
  %i.fv = insertelement <4 x ptr> %i.fu, ptr %scevgep211, i64 3
  %i.fw = insertelement <4 x ptr> poison, ptr %scevgep210, i64 0
  %i.fx = insertelement <4 x ptr> %i.fw, ptr %scevgep220, i64 1
  %i.fy = insertelement <4 x ptr> %i.fx, ptr %scevgep212, i64 2
  %i.fz = shufflevector <2 x ptr> %i.bn, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ga = shufflevector <4 x ptr> %i.fy, <4 x ptr> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gb = icmp ult <4 x ptr> %i.fv, %i.ga
  %i.gc = or i64 %i.o, %i.i
  %i.gd = icmp slt i64 %i.gc, 0
  %i.ge = and <4 x i1> %i.gb, %i.fs
  %i.gf = and <4 x i1> %i.el, %i.et
  %bound0304 = icmp ult ptr %scevgep211, %scevgep220
  %bound1305 = icmp ult ptr %scevgep219, %scevgep212
  %found.conflict306 = and i1 %bound0304, %bound1305
  %rdx.op464 = or <4 x i1> %i.fk, %i.ge
  %i.gg = bitcast <4 x i1> %rdx.op464 to i4
  %i.gh = icmp ne i4 %i.gg, 0
  %i.gi = bitcast <4 x i1> %i.gf to i4
  %i.gj = icmp ne i4 %i.gi, 0
  %op.rdx477 = or i1 %i.gj, %found.conflict228
  %op.rdx478.a = or i1 %found.conflict223, %found.conflict306
  %op.rdx481.a = or i1 %i.gd, %i.gh
  %op.rdx482.a = or i1 %op.rdx477, %op.rdx478.a
  %op.rdx483 = icmp slt i64 %i.fl, 0
  %op.rdx484 = or i1 %op.rdx482.a, %op.rdx483
  %op.rdx485 = or i1 %op.rdx484, %op.rdx481.a
  %n.vec314 = and i64 %i.ec, -4                   ; 3 uses
  %i.gk = add nsw i64 %n.vec314, %i.t
  %cmp.n321 = icmp eq i64 %i.ec, %n.vec314
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph.us.us.preheader.preheader, %._crit_edge.us.us
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %._crit_edge.us.us ], [ 1, %.lr.ph.us.us.preheader.preheader ] ; 3 uses
  %i.gl = mul i64 %i.i, %indvars.iv93
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gl ; 5 uses
  %i.gn = add nsw i64 %indvars.iv93, -1           ; 2 uses
  %i.go = mul i64 %i.i, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.go ; 5 uses
  %i.gq = mul i64 %i.o, %i.gn
  %i.gr = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.gq ; 4 uses
  br i1 %min.iters.check324, label %.lr.ph.us.us.preheader504, label %vector.ph325

vector.ph325:                                     ; preds = %.lr.ph.us.us.preheader
  %invariant.gep = getelementptr [4 x i8], ptr %i.gr, i64 %i.t
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next332, %vector.body328 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index329 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load330 = load <4 x float>, ptr %gep, align 4, !tbaa !62 ; 2 uses
  %wide.load331 = load <4 x float>, ptr %i.gs, align 4, !tbaa !62 ; 2 uses
  %i.gt = fmul <4 x float> %wide.load330, %wide.load330
  %i.gu = fmul <4 x float> %wide.load331, %wide.load331
  store <4 x float> %i.gt, ptr %gep, align 4, !tbaa !62
  store <4 x float> %i.gu, ptr %i.gs, align 4, !tbaa !62
  %index.next332 = add nuw i64 %index329, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next332, %n.vec327
  br i1 %i.gv, label %middle.block333, label %vector.body328, !llvm.loop !899

middle.block333:                                  ; preds = %vector.body328
  br i1 %cmp.n334, label %.loopexit.us.us.preheader, label %.lr.ph.us.us.preheader504

.lr.ph.us.us.preheader504:                        ; preds = %.lr.ph.us.us.preheader, %middle.block333
  %indvars.iv83.ph = phi i64 [ %i.t, %.lr.ph.us.us.preheader ], [ %i.eb, %middle.block333 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader504, %.lr.ph.us.us
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.lr.ph.us.us ], [ %indvars.iv83.ph, %.lr.ph.us.us.preheader504 ] ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %indvars.iv83 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !62 ; 2 uses
  %i.gy = fmul float %i.gx, %i.gx
  store float %i.gy, ptr %i.gw, align 4, !tbaa !62
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.loopexit.us.us.preheader, label %.lr.ph.us.us, !llvm.loop !900

.loopexit.us.us.preheader:                        ; preds = %.lr.ph.us.us, %middle.block333
  %brmerge = select i1 %min.iters.check311, i1 true, i1 %op.rdx485
  br i1 %brmerge, label %.loopexit.us.us.preheader503, label %vector.body315

vector.body315:                                   ; preds = %.loopexit.us.us.preheader, %vector.body315
  %index316 = phi i64 [ %index.next319, %vector.body315 ], [ 0, %.loopexit.us.us.preheader ] ; 2 uses
  %i.gz = add i64 %index316, %i.t                 ; 6 uses
  %i.ha = add i64 %i.gz, 1                        ; 2 uses
  %i.hb = add i64 %i.gz, 2                        ; 2 uses
  %i.hc = add i64 %i.gz, 3                        ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gz
  %wide.load317 = load <4 x float>, ptr %i.hd, align 4, !tbaa !62, !alias.scope !901 ; 2 uses
  %i.he = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %i.gz ; 3 uses
  %i.hf = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %i.ha ; 3 uses
  %i.hg = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %i.hb ; 3 uses
  %i.hh = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %i.hc ; 3 uses
  %i.hi = getelementptr inbounds [12 x i8], ptr %i.gm, i64 %i.gz ; 4 uses
  %i.hj = getelementptr inbounds [12 x i8], ptr %i.gm, i64 %i.ha ; 3 uses
  %i.hk = getelementptr inbounds [12 x i8], ptr %i.gm, i64 %i.hb ; 3 uses
  %i.hl = getelementptr inbounds [12 x i8], ptr %i.gm, i64 %i.hc ; 3 uses
  %i.hm = load float, ptr %i.he, align 4, !tbaa !62, !alias.scope !904, !noalias !906
  %i.hn = load float, ptr %i.hf, align 4, !tbaa !62, !alias.scope !904, !noalias !906
  %i.ho = load float, ptr %i.hg, align 4, !tbaa !62, !alias.scope !904, !noalias !906
  %i.hp = load float, ptr %i.hh, align 4, !tbaa !62, !alias.scope !904, !noalias !906
  %i.hq = insertelement <4 x float> poison, float %i.hm, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %i.hn, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %i.ho, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hp, i64 3
  %i.hu = load float, ptr %i.hi, align 4, !tbaa !62, !alias.scope !909, !noalias !911
  %i.hv = load float, ptr %i.hj, align 4, !tbaa !62, !alias.scope !909, !noalias !911
  %i.hw = load float, ptr %i.hk, align 4, !tbaa !62, !alias.scope !909, !noalias !911
  %i.hx = load float, ptr %i.hl, align 4, !tbaa !62, !alias.scope !909, !noalias !911
  %i.hy = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 1
  %i.ia = insertelement <4 x float> %i.hz, float %i.hw, i64 2
  %i.ib = insertelement <4 x float> %i.ia, float %i.hx, i64 3 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.ig = load float, ptr %i.ic, align 4, !tbaa !62, !alias.scope !916, !noalias !906
  %i.ih = load float, ptr %i.id, align 4, !tbaa !62, !alias.scope !916, !noalias !906
  %i.ii = load float, ptr %i.ie, align 4, !tbaa !62, !alias.scope !916, !noalias !906
  %i.ij = load float, ptr %i.if, align 4, !tbaa !62, !alias.scope !916, !noalias !906
  %i.ik = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 1
  %i.im = insertelement <4 x float> %i.il, float %i.ii, i64 2
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 3
  %i.io = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.is = load float, ptr %i.io, align 4, !tbaa !62, !alias.scope !917, !noalias !918
  %i.it = load float, ptr %i.ip, align 4, !tbaa !62, !alias.scope !917, !noalias !918
  %i.iu = load float, ptr %i.iq, align 4, !tbaa !62, !alias.scope !917, !noalias !918
  %i.iv = load float, ptr %i.ir, align 4, !tbaa !62, !alias.scope !917, !noalias !918
  %i.iw = insertelement <4 x float> poison, float %i.is, i64 0
  %i.ix = insertelement <4 x float> %i.iw, float %i.it, i64 1
  %i.iy = insertelement <4 x float> %i.ix, float %i.iu, i64 2
  %i.iz = insertelement <4 x float> %i.iy, float %i.iv, i64 3 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.je = load float, ptr %i.ja, align 4, !tbaa !62, !alias.scope !919, !noalias !906
  %i.jf = load float, ptr %i.jb, align 4, !tbaa !62, !alias.scope !919, !noalias !906
  %i.jg = load float, ptr %i.jc, align 4, !tbaa !62, !alias.scope !919, !noalias !906
  %i.jh = load float, ptr %i.jd, align 4, !tbaa !62, !alias.scope !919, !noalias !906
  %i.ji = insertelement <4 x float> poison, float %i.je, i64 0
  %i.jj = insertelement <4 x float> %i.ji, float %i.jf, i64 1
  %i.jk = insertelement <4 x float> %i.jj, float %i.jg, i64 2
  %i.jl = insertelement <4 x float> %i.jk, float %i.jh, i64 3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.jq = load float, ptr %i.jm, align 4, !tbaa !62, !alias.scope !920, !noalias !921
  %i.jr = load float, ptr %i.jn, align 4, !tbaa !62, !alias.scope !920, !noalias !921
  %i.js = load float, ptr %i.jo, align 4, !tbaa !62, !alias.scope !920, !noalias !921
  %i.jt = load float, ptr %i.jp, align 4, !tbaa !62, !alias.scope !920, !noalias !921
  %i.ju = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.jv = insertelement <4 x float> %i.ju, float %i.jr, i64 1
  %i.jw = insertelement <4 x float> %i.jv, float %i.js, i64 2
  %i.jx = insertelement <4 x float> %i.jw, float %i.jt, i64 3 ; 2 uses
  %i.jy = fsub <4 x float> %i.jl, %i.jx
  %i.jz = fmul <4 x float> %wide.load317, %i.jy
  %i.ka = fadd <4 x float> %i.jx, %i.jz
  %i.kb = shufflevector <4 x float> %i.ib, <4 x float> %i.iz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kc = shufflevector <4 x float> %wide.load317, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <4 x float> %i.ht, <4 x float> %i.in, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = shufflevector <4 x float> %i.ib, <4 x float> %i.iz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = fsub <8 x float> %2, %3
  %i.kd = fmul <8 x float> %i.kc, %4
  %i.ke = fadd <8 x float> %i.kb, %i.kd
  %i.kf = shufflevector <4 x float> %i.ka, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec318 = shufflevector <8 x float> %i.ke, <8 x float> %i.kf, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec318, ptr %i.hi, align 4, !tbaa !62
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.kg, label %middle.block320, label %vector.body315, !llvm.loop !922

middle.block320:                                  ; preds = %vector.body315
  br i1 %cmp.n321, label %._crit_edge.us.us, label %.loopexit.us.us.preheader503

.loopexit.us.us.preheader503:                     ; preds = %.loopexit.us.us.preheader, %middle.block320
  %indvars.iv88.ph = phi i64 [ %i.gk, %middle.block320 ], [ %i.t, %.loopexit.us.us.preheader ]
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.preheader503, %.loopexit.us.us
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.loopexit.us.us ], [ %indvars.iv88.ph, %.loopexit.us.us.preheader503 ] ; 4 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %indvars.iv88
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !62 ; 2 uses
  %i.kj = getelementptr inbounds [12 x i8], ptr %i.gp, i64 %indvars.iv88 ; 2 uses
  %i.kk = getelementptr inbounds [12 x i8], ptr %i.gm, i64 %indvars.iv88 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.km = load float, ptr %i.kl, align 4, !tbaa !62, !noalias !906
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !62, !noalias !906 ; 2 uses
  %i.kp = fsub float %i.km, %i.ko
  %i.kq = fmul float %i.ki, %i.kp
  %i.kr = load <2 x float>, ptr %i.kj, align 4, !tbaa !62, !noalias !906
  %i.ks = load <2 x float>, ptr %i.kk, align 4, !tbaa !62, !noalias !906 ; 2 uses
  %i.kt = fsub <2 x float> %i.kr, %i.ks
  %i.ku = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x float> %i.kv, %i.kt
  %i.kx = fadd <2 x float> %i.ks, %i.kw
  store <2 x float> %i.kx, ptr %i.kk, align 4, !tbaa !62
  %i.ky = fadd float %i.ko, %i.kq
  store float %i.ky, ptr %i.kn, align 4, !tbaa !62
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count86
  br i1 %exitcond92.not, label %._crit_edge.us.us, label %.loopexit.us.us, !llvm.loop !923

._crit_edge.us.us:                                ; preds = %.loopexit.us.us, %middle.block320
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.lr.ph73, label %.lr.ph.us.us.preheader, !llvm.loop !924

.lr.ph58.us:                                      ; preds = %.lr.ph58.us.preheader, %._crit_edge.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %._crit_edge.us ], [ 1, %.lr.ph58.us.preheader ] ; 3 uses
  %i.kz = mul i64 %i.i, %indvars.iv78
  %i.la = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.kz ; 5 uses
  %i.lb = add nsw i64 %indvars.iv78, -1           ; 2 uses
  %i.lc = mul i64 %i.i, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.lc ; 5 uses
  %i.le = mul i64 %i.o, %i.lb
  %i.lf = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.le ; 2 uses
  %brmerge506 = select i1 %min.iters.check, i1 true, i1 %op.rdx498
  br i1 %brmerge506, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph58.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph58.us ] ; 2 uses
  %i.lg = add i64 %index, %i.t                    ; 6 uses
  %i.lh = add i64 %i.lg, 1                        ; 2 uses
  %i.li = add i64 %i.lg, 2                        ; 2 uses
  %i.lj = add i64 %i.lg, 3                        ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lg
  %wide.load = load <4 x float>, ptr %i.lk, align 4, !tbaa !62, !alias.scope !925 ; 2 uses
  %i.ll = getelementptr inbounds [12 x i8], ptr %i.ld, i64 %i.lg ; 3 uses
  %i.lm = getelementptr inbounds [12 x i8], ptr %i.ld, i64 %i.lh ; 3 uses
  %i.ln = getelementptr inbounds [12 x i8], ptr %i.ld, i64 %i.li ; 3 uses
  %i.lo = getelementptr inbounds [12 x i8], ptr %i.ld, i64 %i.lj ; 3 uses
  %i.lp = getelementptr inbounds [12 x i8], ptr %i.la, i64 %i.lg ; 4 uses
  %i.lq = getelementptr inbounds [12 x i8], ptr %i.la, i64 %i.lh ; 3 uses
  %i.lr = getelementptr inbounds [12 x i8], ptr %i.la, i64 %i.li ; 3 uses
  %i.ls = getelementptr inbounds [12 x i8], ptr %i.la, i64 %i.lj ; 3 uses
  %i.lt = load float, ptr %i.ll, align 4, !tbaa !62, !alias.scope !928, !noalias !906
  %i.lu = load float, ptr %i.lm, align 4, !tbaa !62, !alias.scope !928, !noalias !906
  %i.lv = load float, ptr %i.ln, align 4, !tbaa !62, !alias.scope !928, !noalias !906
  %i.lw = load float, ptr %i.lo, align 4, !tbaa !62, !alias.scope !928, !noalias !906
  %i.lx = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.ly = insertelement <4 x float> %i.lx, float %i.lu, i64 1
  %i.lz = insertelement <4 x float> %i.ly, float %i.lv, i64 2
  %i.ma = insertelement <4 x float> %i.lz, float %i.lw, i64 3
  %i.mb = load float, ptr %i.lp, align 4, !tbaa !62, !alias.scope !930, !noalias !932
  %i.mc = load float, ptr %i.lq, align 4, !tbaa !62, !alias.scope !930, !noalias !932
  %i.md = load float, ptr %i.lr, align 4, !tbaa !62, !alias.scope !930, !noalias !932
  %i.me = load float, ptr %i.ls, align 4, !tbaa !62, !alias.scope !930, !noalias !932
  %i.mf = insertelement <4 x float> poison, float %i.mb, i64 0
  %i.mg = insertelement <4 x float> %i.mf, float %i.mc, i64 1
  %i.mh = insertelement <4 x float> %i.mg, float %i.md, i64 2
  %i.mi = insertelement <4 x float> %i.mh, float %i.me, i64 3 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.mn = load float, ptr %i.mj, align 4, !tbaa !62, !alias.scope !937, !noalias !906
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !62, !alias.scope !937, !noalias !906
  %i.mp = load float, ptr %i.ml, align 4, !tbaa !62, !alias.scope !937, !noalias !906
  %i.mq = load float, ptr %i.mm, align 4, !tbaa !62, !alias.scope !937, !noalias !906
  %i.mr = insertelement <4 x float> poison, float %i.mn, i64 0
  %i.ms = insertelement <4 x float> %i.mr, float %i.mo, i64 1
  %i.mt = insertelement <4 x float> %i.ms, float %i.mp, i64 2
  %i.mu = insertelement <4 x float> %i.mt, float %i.mq, i64 3
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.my = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.mz = load float, ptr %i.mv, align 4, !tbaa !62, !alias.scope !938, !noalias !939
  %i.na = load float, ptr %i.mw, align 4, !tbaa !62, !alias.scope !938, !noalias !939
  %i.nb = load float, ptr %i.mx, align 4, !tbaa !62, !alias.scope !938, !noalias !939
  %i.nc = load float, ptr %i.my, align 4, !tbaa !62, !alias.scope !938, !noalias !939
  %i.nd = insertelement <4 x float> poison, float %i.mz, i64 0
  %i.ne = insertelement <4 x float> %i.nd, float %i.na, i64 1
  %i.nf = insertelement <4 x float> %i.ne, float %i.nb, i64 2
  %i.ng = insertelement <4 x float> %i.nf, float %i.nc, i64 3 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.nl = load float, ptr %i.nh, align 4, !tbaa !62, !alias.scope !940, !noalias !906
  %i.nm = load float, ptr %i.ni, align 4, !tbaa !62, !alias.scope !940, !noalias !906
  %i.nn = load float, ptr %i.nj, align 4, !tbaa !62, !alias.scope !940, !noalias !906
  %i.no = load float, ptr %i.nk, align 4, !tbaa !62, !alias.scope !940, !noalias !906
  %i.np = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.nm, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.nn, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 3
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.nx = load float, ptr %i.nt, align 4, !tbaa !62, !alias.scope !941, !noalias !942
  %i.ny = load float, ptr %i.nu, align 4, !tbaa !62, !alias.scope !941, !noalias !942
  %i.nz = load float, ptr %i.nv, align 4, !tbaa !62, !alias.scope !941, !noalias !942
  %i.oa = load float, ptr %i.nw, align 4, !tbaa !62, !alias.scope !941, !noalias !942
  %i.ob = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.oc = insertelement <4 x float> %i.ob, float %i.ny, i64 1
  %i.od = insertelement <4 x float> %i.oc, float %i.nz, i64 2
  %i.oe = insertelement <4 x float> %i.od, float %i.oa, i64 3 ; 2 uses
  %i.of = fsub <4 x float> %i.ns, %i.oe
  %i.og = fmul <4 x float> %wide.load, %i.of
  %i.oh = fadd <4 x float> %i.oe, %i.og
  %i.oi = shufflevector <4 x float> %i.mi, <4 x float> %i.ng, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oj = shufflevector <4 x float> %wide.load, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x float> %i.ma, <4 x float> %i.mu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <4 x float> %i.mi, <4 x float> %i.ng, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fsub <8 x float> %5, %6
  %i.ok = fmul <8 x float> %i.oj, %7
  %i.ol = fadd <8 x float> %i.oi, %i.ok
  %i.om = shufflevector <4 x float> %i.oh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.ol, <8 x float> %i.om, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.lp, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !943

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph58.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dz, %middle.block ], [ %i.t, %.lr.ph58.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %indvars.iv
  %i.op = load float, ptr %i.oo, align 4, !tbaa !62 ; 2 uses
  %i.oq = getelementptr inbounds [12 x i8], ptr %i.ld, i64 %indvars.iv ; 2 uses
  %i.or = getelementptr inbounds [12 x i8], ptr %i.la, i64 %indvars.iv ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = load float, ptr %i.os, align 4, !tbaa !62, !noalias !906
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !62, !noalias !906 ; 2 uses
  %i.ow = fsub float %i.ot, %i.ov
  %i.ox = fmul float %i.op, %i.ow
  %i.oy = load <2 x float>, ptr %i.oq, align 4, !tbaa !62, !noalias !906
  %i.oz = load <2 x float>, ptr %i.or, align 4, !tbaa !62, !noalias !906 ; 2 uses
  %i.pa = fsub <2 x float> %i.oy, %i.oz
  %i.pb = insertelement <2 x float> poison, float %i.op, i64 0
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = fmul <2 x float> %i.pc, %i.pa
  %i.pe = fadd <2 x float> %i.oz, %i.pd
  store <2 x float> %i.pe, ptr %i.or, align 4, !tbaa !62
  %i.pf = fadd float %i.ov, %i.ox
  store float %i.pf, ptr %i.ou, align 4, !tbaa !62
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count86
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !944

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count96
  br i1 %exitcond82.not, label %.lr.ph73, label %.lr.ph58.us, !llvm.loop !924

.lr.ph73:                                         ; preds = %._crit_edge.us, %._crit_edge.us.us, %.lr.ph61
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !316 ; 14 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !64 ; 7 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !898, !nonnull !84, !align !85 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !316 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 128
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !64 ; 3 uses
  %i.pq = icmp slt i32 %.sroa.0.0.copyload, %.sroa.6.0.copyload
  br i1 %i.pq, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.pr = add nsw i32 %i.d, -2
  %i.ps = sext i32 %.sroa.0.0.copyload to i64     ; 6 uses
  %i.pt = zext i32 %i.pr to i64                   ; 4 uses
  %wide.trip.count101 = sext i32 %.sroa.6.0.copyload to i64 ; 4 uses
  %i.pu = mul i64 %i.pj, %i.pt                    ; 2 uses
  %i.pv = mul nsw i64 %i.ps, 12                   ; 4 uses
  %i.pw = add i64 %i.pu, %i.pv                    ; 2 uses
  %scevgep337.a = getelementptr i8, ptr %i.ph, i64 %i.pw ; 6 uses
  %i.px = mul nsw i64 %wide.trip.count101, 12     ; 5 uses
  %i.py = getelementptr i8, ptr %i.ph, i64 %i.px
  %scevgep338.a = getelementptr i8, ptr %i.py, i64 -8 ; 6 uses
  %i.pz = sub i64 0, %i.pj
  %i.qa = getelementptr i8, ptr %i.ph, i64 %i.pw  ; 3 uses
  %scevgep339.a = getelementptr i8, ptr %i.qa, i64 4
  %i.qb = getelementptr i8, ptr %i.ph, i64 %i.px
  %scevgep340.a = getelementptr i8, ptr %i.qb, i64 -4 ; 6 uses
  %i.qc = getelementptr i8, ptr %i.ph, i64 %i.pu
  %i.qd = getelementptr i8, ptr %i.qc, i64 %i.pv  ; 2 uses
  %i.qe = insertelement <2 x ptr> poison, ptr %i.qa, i64 0 ; 2 uses
  %i.qf = insertelement <2 x ptr> %i.qe, ptr %i.qd, i64 1
  %i.qg = getelementptr i8, <2 x ptr> %i.qf, <2 x i64> <i64 4, i64 8> ; 2 uses
  %scevgep341.a = getelementptr i8, ptr %i.qd, i64 8 ; 5 uses
  %scevgep342.a = getelementptr i8, ptr %i.ph, i64 %i.px ; 6 uses
  %i.qh = mul i64 %i.pp, %i.pt
  %i.qi = shl nsw i64 %i.ps, 2
  %i.qj = getelementptr i8, ptr %i.pn, i64 %i.qh
  %scevgep343.a = getelementptr i8, ptr %i.qj, i64 %i.qi ; 3 uses
  %i.qk = shl nsw i64 %wide.trip.count101, 2
  %scevgep344 = getelementptr i8, ptr %i.pn, i64 %i.qk ; 3 uses
  %i.ql = sub i64 0, %i.pp
  %i.qm = add nuw nsw i64 %i.pt, 1
  %i.qn = mul i64 %i.pj, %i.qm                    ; 2 uses
  %i.qo = add i64 %i.qn, %i.pv                    ; 2 uses
  %scevgep345 = getelementptr i8, ptr %i.ph, i64 %i.qo ; 3 uses
  %i.qp = add i64 %i.pj, %i.px                    ; 2 uses
  %i.qq = getelementptr i8, ptr %i.ph, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.ph, i64 %i.qo
  %i.qs = insertelement <2 x ptr> poison, ptr %i.qr, i64 0
  %i.qt = insertelement <2 x ptr> %i.qs, ptr %i.qa, i64 1
  %i.qu = getelementptr i8, <2 x ptr> %i.qt, i64 4 ; 3 uses
  %i.qv = getelementptr i8, ptr %i.ph, i64 %i.qp
  %i.qw = insertelement <2 x ptr> poison, ptr %i.qq, i64 0
  %i.qx = insertelement <2 x ptr> %i.qw, ptr %i.qv, i64 1
  %i.qy = getelementptr i8, <2 x ptr> %i.qx, <2 x i64> <i64 -8, i64 -4> ; 4 uses
  %i.qz = getelementptr i8, ptr %i.ph, i64 %i.qn
  %i.ra = getelementptr i8, ptr %i.qz, i64 %i.pv
  %i.rb = insertelement <2 x ptr> %i.qe, ptr %i.ra, i64 1
  %i.rc = getelementptr i8, <2 x ptr> %i.rb, <2 x i64> <i64 4, i64 8> ; 2 uses
  %i.rd = getelementptr i8, ptr %i.ph, i64 %i.pj
  %scevgep350 = getelementptr i8, ptr %i.rd, i64 %i.px ; 3 uses
  %i.re = insertelement <4 x ptr> poison, ptr %scevgep338.a, i64 0
  %i.rf = insertelement <4 x ptr> %i.re, ptr %scevgep350, i64 1
  %i.rg = insertelement <4 x ptr> %i.rf, ptr %scevgep340.a, i64 2
  %i.rh = insertelement <4 x ptr> %i.rg, ptr %scevgep344, i64 3
  %i.ri = insertelement <4 x ptr> poison, ptr %scevgep340.a, i64 0
  %i.rj = insertelement <4 x ptr> %i.ri, ptr %scevgep350, i64 1
  %i.rk = insertelement <4 x ptr> %i.rj, ptr %scevgep342.a, i64 2
  %i.rl = insertelement <2 x ptr> poison, ptr %scevgep337.a, i64 0
  %i.rm = insertelement <2 x ptr> %i.rl, ptr %scevgep341.a, i64 1
  %i.rn = insertelement <2 x ptr> poison, ptr %scevgep345, i64 0
  %i.ro = insertelement <2 x ptr> poison, ptr %scevgep338.a, i64 0
  %i.rp = insertelement <2 x ptr> %i.ro, ptr %scevgep342.a, i64 1
  %i.rq = insertelement <2 x ptr> %i.qy, ptr %scevgep350, i64 1
  %i.rr = insertelement <2 x ptr> poison, ptr %scevgep340.a, i64 0
  %i.rs = insertelement <2 x ptr> %i.rr, ptr %scevgep342.a, i64 1
  %i.rt = shufflevector <2 x ptr> %i.qy, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ru = shufflevector <4 x ptr> %i.rk, <4 x ptr> %i.rt, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.rv = shufflevector <2 x ptr> %i.qy, <2 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.rw = shufflevector <2 x ptr> %i.qu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rx = shufflevector <2 x ptr> %i.rn, <2 x ptr> %i.qu, <2 x i32> <i32 0, i32 2>
  %i.ry = shufflevector <2 x ptr> %i.qu, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rz = shufflevector <2 x ptr> %i.rc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.sa = insertelement <2 x ptr> %i.rc, ptr %scevgep345, i64 0
  %i.sb = insertelement <4 x ptr> %i.rz, ptr %scevgep337.a, i64 0
  %i.sc = shufflevector <2 x ptr> %i.qg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.sd = shufflevector <4 x ptr> %i.sb, <4 x ptr> %i.sc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.se = sub nsw i64 %wide.trip.count101, %i.ps  ; 3 uses
  %min.iters.check441 = icmp ult i64 %i.se, 20
  %bound0351 = icmp ult ptr %scevgep337.a, %scevgep340.a
  %bound1352 = icmp ult ptr %scevgep339.a, %scevgep338.a
  %found.conflict353 = and i1 %bound0351, %bound1352
  %bound0356 = icmp ult ptr %scevgep337.a, %scevgep342.a
  %bound1357 = icmp ult ptr %scevgep341.a, %scevgep338.a
  %found.conflict358 = and i1 %bound0356, %bound1357
  %bound0362 = icmp ult ptr %scevgep337.a, %scevgep344
  %bound1363 = icmp ult ptr %scevgep343.a, %scevgep338.a
  %found.conflict364 = and i1 %bound0362, %bound1363
  %i.sf = icmp ult <2 x ptr> %i.rm, %i.qy
  %i.sg = icmp ult <2 x ptr> %i.rx, %i.rp
  %i.sh = insertelement <4 x ptr> %i.sd, ptr %scevgep343.a, i64 3
  %i.si = insertelement <4 x ptr> %i.rv, ptr %scevgep338.a, i64 1
  %i.sj = insertelement <4 x ptr> %i.si, ptr %scevgep342.a, i64 2
  %i.sk = insertelement <4 x ptr> %i.sj, ptr %scevgep340.a, i64 3
  %i.sl = icmp ult <4 x ptr> %i.sh, %i.sk
  %i.sm = insertelement <4 x ptr> %i.ry, ptr %scevgep337.a, i64 1
  %i.sn = insertelement <4 x ptr> %i.sm, ptr %scevgep341.a, i64 2
  %i.so = shufflevector <4 x ptr> %i.sn, <4 x ptr> %i.sc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sp = icmp ult <4 x ptr> %i.so, %i.rh
  %i.sq = and <4 x i1> %i.sp, %i.sl
  %i.sr = icmp ult <2 x ptr> %i.qg, %i.rq
  %i.ss = icmp ult <2 x ptr> %i.sa, %i.rs
  %i.st = insertelement <4 x ptr> %i.rz, ptr %scevgep341.a, i64 2
  %i.su = insertelement <4 x ptr> %i.st, ptr %scevgep345, i64 3
  %i.sv = insertelement <4 x ptr> %i.rv, ptr %scevgep340.a, i64 1
  %i.sw = insertelement <4 x ptr> %i.sv, ptr %scevgep344, i64 2
  %i.sx = insertelement <4 x ptr> %i.sw, ptr %scevgep342.a, i64 3
  %i.sy = icmp ult <4 x ptr> %i.su, %i.sx
  %i.sz = insertelement <4 x ptr> %i.rw, ptr %scevgep343.a, i64 2
  %i.ta = insertelement <4 x ptr> %i.sz, ptr %scevgep341.a, i64 3
  %i.tb = icmp ult <4 x ptr> %i.ta, %i.ru
  %i.tc = or i64 %i.ql, %i.pz
  %i.td = and <4 x i1> %i.tb, %i.sy
  %rdx.op = or <4 x i1> %i.sq, %i.td
  %i.te = bitcast <4 x i1> %rdx.op to i4
  %i.tf = icmp ne i4 %i.te, 0
  %op.rdx = or i1 %i.tf, %found.conflict358
  %op.rdx453 = or i1 %found.conflict353, %found.conflict364
  %i.tg = and <2 x i1> %i.sf, %i.sg
  %i.th = and <2 x i1> %i.sr, %i.ss
  %i.ti = or <2 x i1> %i.tg, %i.th
  %op.rdx458.a = or i1 %op.rdx, %op.rdx453
  %i.tj = bitcast <2 x i1> %i.ti to i2
  %op.rdx459.a = icmp ne i2 %i.tj, 0
  %op.rdx461 = or i1 %op.rdx458.a, %op.rdx459.a
  %op.rdx462 = icmp slt i64 %i.tc, 0
  %op.rdx463 = or i1 %op.rdx461, %op.rdx462
  %n.vec444 = and i64 %i.se, -4                   ; 3 uses
  %i.tk = add nsw i64 %n.vec444, %i.ps
  %cmp.n451 = icmp eq i64 %i.se, %n.vec444
  br label %.lr.ph

._crit_edge74.split:                              ; preds = %._crit_edge, %bb.a, %.lr.ph73
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv103 = phi i64 [ %i.pt, %.lr.ph.preheader ], [ %indvars.iv.next104, %._crit_edge ] ; 5 uses
  %i.tl = add nuw nsw i64 %indvars.iv103, 1
  %i.tm = mul i64 %i.pj, %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.tm ; 5 uses
  %i.to = mul i64 %i.pj, %indvars.iv103
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.to ; 5 uses
  %i.tq = mul i64 %i.pp, %indvars.iv103
  %i.tr = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.tq ; 2 uses
  %brmerge507 = select i1 %min.iters.check441, i1 true, i1 %op.rdx463
  br i1 %brmerge507, label %scalar.ph440.preheader, label %vector.body445

vector.body445:                                   ; preds = %.lr.ph, %vector.body445
  %index446 = phi i64 [ %index.next449, %vector.body445 ], [ 0, %.lr.ph ] ; 2 uses
  %i.ts = add i64 %index446, %i.ps                ; 6 uses
  %i.tt = add i64 %i.ts, 1                        ; 2 uses
  %i.tu = add i64 %i.ts, 2                        ; 2 uses
  %i.tv = add i64 %i.ts, 3                        ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.ts
  %wide.load447 = load <4 x float>, ptr %i.tw, align 4, !tbaa !62, !alias.scope !945 ; 2 uses
  %i.tx = getelementptr inbounds [12 x i8], ptr %i.tn, i64 %i.ts ; 3 uses
  %i.ty = getelementptr inbounds [12 x i8], ptr %i.tn, i64 %i.tt ; 3 uses
  %i.tz = getelementptr inbounds [12 x i8], ptr %i.tn, i64 %i.tu ; 3 uses
  %i.ua = getelementptr inbounds [12 x i8], ptr %i.tn, i64 %i.tv ; 3 uses
  %i.ub = getelementptr inbounds [12 x i8], ptr %i.tp, i64 %i.ts ; 4 uses
  %i.uc = getelementptr inbounds [12 x i8], ptr %i.tp, i64 %i.tt ; 3 uses
  %i.ud = getelementptr inbounds [12 x i8], ptr %i.tp, i64 %i.tu ; 3 uses
  %i.ue = getelementptr inbounds [12 x i8], ptr %i.tp, i64 %i.tv ; 3 uses
  %i.uf = load float, ptr %i.tx, align 4, !tbaa !62, !alias.scope !948, !noalias !950
  %i.ug = load float, ptr %i.ty, align 4, !tbaa !62, !alias.scope !948, !noalias !950
  %i.uh = load float, ptr %i.tz, align 4, !tbaa !62, !alias.scope !948, !noalias !950
  %i.ui = load float, ptr %i.ua, align 4, !tbaa !62, !alias.scope !948, !noalias !950
  %i.uj = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uk = insertelement <4 x float> %i.uj, float %i.ug, i64 1
  %i.ul = insertelement <4 x float> %i.uk, float %i.uh, i64 2
  %i.um = insertelement <4 x float> %i.ul, float %i.ui, i64 3
  %i.un = load float, ptr %i.ub, align 4, !tbaa !62, !alias.scope !953, !noalias !955
  %i.uo = load float, ptr %i.uc, align 4, !tbaa !62, !alias.scope !953, !noalias !955
  %i.up = load float, ptr %i.ud, align 4, !tbaa !62, !alias.scope !953, !noalias !955
  %i.uq = load float, ptr %i.ue, align 4, !tbaa !62, !alias.scope !953, !noalias !955
  %i.ur = insertelement <4 x float> poison, float %i.un, i64 0
  %i.us = insertelement <4 x float> %i.ur, float %i.uo, i64 1
  %i.ut = insertelement <4 x float> %i.us, float %i.up, i64 2
  %i.uu = insertelement <4 x float> %i.ut, float %i.uq, i64 3 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.uz = load float, ptr %i.uv, align 4, !tbaa !62, !alias.scope !960, !noalias !950
  %i.va = load float, ptr %i.uw, align 4, !tbaa !62, !alias.scope !960, !noalias !950
  %i.vb = load float, ptr %i.ux, align 4, !tbaa !62, !alias.scope !960, !noalias !950
  %i.vc = load float, ptr %i.uy, align 4, !tbaa !62, !alias.scope !960, !noalias !950
  %i.vd = insertelement <4 x float> poison, float %i.uz, i64 0
  %i.ve = insertelement <4 x float> %i.vd, float %i.va, i64 1
  %i.vf = insertelement <4 x float> %i.ve, float %i.vb, i64 2
  %i.vg = insertelement <4 x float> %i.vf, float %i.vc, i64 3
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  %i.vl = load float, ptr %i.vh, align 4, !tbaa !62, !alias.scope !961, !noalias !962
  %i.vm = load float, ptr %i.vi, align 4, !tbaa !62, !alias.scope !961, !noalias !962
  %i.vn = load float, ptr %i.vj, align 4, !tbaa !62, !alias.scope !961, !noalias !962
  %i.vo = load float, ptr %i.vk, align 4, !tbaa !62, !alias.scope !961, !noalias !962
  %i.vp = insertelement <4 x float> poison, float %i.vl, i64 0
  %i.vq = insertelement <4 x float> %i.vp, float %i.vm, i64 1
  %i.vr = insertelement <4 x float> %i.vq, float %i.vn, i64 2
  %i.vs = insertelement <4 x float> %i.vr, float %i.vo, i64 3 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.vx = load float, ptr %i.vt, align 4, !tbaa !62, !alias.scope !963, !noalias !950
  %i.vy = load float, ptr %i.vu, align 4, !tbaa !62, !alias.scope !963, !noalias !950
  %i.vz = load float, ptr %i.vv, align 4, !tbaa !62, !alias.scope !963, !noalias !950
  %i.wa = load float, ptr %i.vw, align 4, !tbaa !62, !alias.scope !963, !noalias !950
  %i.wb = insertelement <4 x float> poison, float %i.vx, i64 0
  %i.wc = insertelement <4 x float> %i.wb, float %i.vy, i64 1
  %i.wd = insertelement <4 x float> %i.wc, float %i.vz, i64 2
  %i.we = insertelement <4 x float> %i.wd, float %i.wa, i64 3
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.wj = load float, ptr %i.wf, align 4, !tbaa !62, !alias.scope !964, !noalias !965
  %i.wk = load float, ptr %i.wg, align 4, !tbaa !62, !alias.scope !964, !noalias !965
  %i.wl = load float, ptr %i.wh, align 4, !tbaa !62, !alias.scope !964, !noalias !965
  %i.wm = load float, ptr %i.wi, align 4, !tbaa !62, !alias.scope !964, !noalias !965
  %i.wn = insertelement <4 x float> poison, float %i.wj, i64 0
  %i.wo = insertelement <4 x float> %i.wn, float %i.wk, i64 1
  %i.wp = insertelement <4 x float> %i.wo, float %i.wl, i64 2
  %i.wq = insertelement <4 x float> %i.wp, float %i.wm, i64 3 ; 2 uses
  %i.wr = fsub <4 x float> %i.we, %i.wq
  %i.ws = fmul <4 x float> %wide.load447, %i.wr
  %i.wt = fadd <4 x float> %i.wq, %i.ws
  %i.wu = shufflevector <4 x float> %i.uu, <4 x float> %i.vs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wv = shufflevector <4 x float> %wide.load447, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x float> %i.um, <4 x float> %i.vg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x float> %i.uu, <4 x float> %i.vs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = fsub <8 x float> %8, %9
  %i.ww = fmul <8 x float> %i.wv, %10
  %i.wx = fadd <8 x float> %i.wu, %i.ww
  %i.wy = shufflevector <4 x float> %i.wt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec448 = shufflevector <8 x float> %i.wx, <8 x float> %i.wy, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec448, ptr %i.ub, align 4, !tbaa !62
  %index.next449 = add nuw i64 %index446, 4       ; 2 uses
  %i.wz = icmp eq i64 %index.next449, %n.vec444
  br i1 %i.wz, label %middle.block450, label %vector.body445, !llvm.loop !966

middle.block450:                                  ; preds = %vector.body445
  br i1 %cmp.n451, label %._crit_edge, label %scalar.ph440.preheader

scalar.ph440.preheader:                           ; preds = %.lr.ph, %middle.block450
  %indvars.iv98.ph = phi i64 [ %i.tk, %middle.block450 ], [ %i.ps, %.lr.ph ]
  br label %scalar.ph440

._crit_edge:                                      ; preds = %scalar.ph440, %middle.block450
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1
  %i.xa = icmp sgt i64 %indvars.iv103, 0
  br i1 %i.xa, label %.lr.ph, label %._crit_edge74.split, !llvm.loop !967

scalar.ph440:                                     ; preds = %scalar.ph440.preheader, %scalar.ph440
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %scalar.ph440 ], [ %indvars.iv98.ph, %scalar.ph440.preheader ] ; 4 uses
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %indvars.iv98
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !62 ; 2 uses
  %i.xd = getelementptr inbounds [12 x i8], ptr %i.tn, i64 %indvars.iv98 ; 2 uses
  %i.xe = getelementptr inbounds [12 x i8], ptr %i.tp, i64 %indvars.iv98 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !62, !noalias !950
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 8 ; 2 uses
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !62, !noalias !950 ; 2 uses
  %i.xj = fsub float %i.xg, %i.xi
  %i.xk = fmul float %i.xc, %i.xj
  %i.xl = load <2 x float>, ptr %i.xd, align 4, !tbaa !62, !noalias !950
  %i.xm = load <2 x float>, ptr %i.xe, align 4, !tbaa !62, !noalias !950 ; 2 uses
  %i.xn = fsub <2 x float> %i.xl, %i.xm
  %i.xo = insertelement <2 x float> poison, float %i.xc, i64 0
  %i.xp = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xq = fmul <2 x float> %i.xp, %i.xn
  %i.xr = fadd <2 x float> %i.xm, %i.xq
  store <2 x float> %i.xr, ptr %i.xe, align 4, !tbaa !62
  %i.xs = fadd float %i.xi, %i.xk
  store float %i.xs, ptr %i.xh, align 4, !tbaa !62
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge, label %scalar.ph440, !llvm.loop !968
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11DTFilterCPU16prepareSrcImg_ICINS_3VecIfLi4EEEEEvRKNS_3MatERS5_S8_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Range", align 8         ; 4 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !60
  %i.e = add nsw i32 %i.d, 2
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.b, i32 noundef %i.e, i32 noundef 101)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.f = load i32, ptr %i.c, align 4, !tbaa !60
  %i.g = load i32, ptr %i.a, align 8, !tbaa !59
  %i.h = add nsw i32 %i.g, 2
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 101)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.i = load i32, ptr %i.c, align 4, !tbaa !60
  %i.j = add nsw i32 %i.i, 1
  %.sroa.252.0.insert.ext = zext i32 %i.j to i64
  %.sroa.252.0.insert.shift = shl nuw i64 %.sroa.252.0.insert.ext, 32
  %.sroa.051.0.insert.insert = or disjoint i64 %.sroa.252.0.insert.shift, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 9223372034707292160, ptr %5, align 8, !noalias !969
  store i64 %.sroa.051.0.insert.insert, ptr %6, align 8, !noalias !969
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.k = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.l = load i32, ptr %i.a, align 8, !tbaa !59
  %i.m = add nsw i32 %i.l, 1
  %.sroa.2.0.insert.ext = zext i32 %i.m to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 9223372034707292160, ptr %3, align 8, !noalias !972
  store i64 %.sroa.0.0.insert.insert, ptr %4, align 8, !noalias !972
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.n = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.f unwind label %bb.m       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !96
  store ptr %1, ptr %i.o, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.q = load i32, ptr %i.a, align 8, !tbaa !59
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.w = sext i32 %i.t to i64
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !316  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !59
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !64
  %i.ae = sext i32 %i.ac to i64
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !60
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.an = sext i32 %i.ak to i64
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.r

bb.l:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn44 = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.ar, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
end_hunk_0
begin_hunk_1_@_ZNK2cv8ximgproc11DTFilterCPU17FilterRF_vertPassINS_3VecIfLi4EEEEclERKNS_5RangeE:bb.a
  %i.kp = insertelement <8 x i1> %i.ko, i1 %i.kn, i64 7
  %i.kq = shufflevector <4 x i1> %i.hc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kr = shufflevector <8 x i1> %i.kq, <8 x i1> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ks = shufflevector <2 x i1> %i.hl, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kt = shufflevector <8 x i1> %i.kr, <8 x i1> %i.ks, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.ku = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1340, i64 6
  %i.kv = shufflevector <4 x i1> %i.hi, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kw = shufflevector <8 x i1> %i.kv, <8 x i1> %i.ku, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.kx = shufflevector <2 x i1> %i.hn, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ky = shufflevector <8 x i1> %i.kw, <8 x i1> %i.kx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.kz = and <8 x i1> %i.kt, %i.ky
  %bound0447 = icmp ult ptr %scevgep286, %scevgep297
  %bound1448 = icmp ult ptr %scevgep296, %scevgep287
  %stride.check306 = icmp slt i64 %i.i, 0
  %i.la = icmp slt i64 %i.hj, 0
  %stride.check354 = icmp slt i64 %i.i, 0
  %i.lb = insertelement <8 x i1> poison, i1 %bound0447, i64 4
  %i.lc = insertelement <8 x i1> %i.lb, i1 %stride.check306, i64 5
  %i.ld = insertelement <8 x i1> %i.lc, i1 %i.la, i64 6
  %i.le = insertelement <8 x i1> %i.ld, i1 %stride.check354, i64 7
  %i.lf = shufflevector <4 x i1> %i.ke, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lg = shufflevector <8 x i1> %i.lf, <8 x i1> %i.le, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.lh = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true, i1 true>, i1 %bound1448, i64 4
  %i.li = shufflevector <4 x i1> %i.kl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lj = shufflevector <8 x i1> %i.li, <8 x i1> %i.lh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.lk = and <8 x i1> %i.lg, %i.lj
  %stride.check450 = icmp slt i64 %i.i, 0
  %i.ll = bitcast <8 x i1> %i.jz to i8
  %i.lm = icmp ne i8 %i.ll, 0
  %i.ln = bitcast <8 x i1> %i.kz to i8
  %i.lo = icmp ne i8 %i.ln, 0
  %op.rdx781.a = or i1 %i.lo, %found.conflict305
  %op.rdx782.a = or i1 %stride.check450, %i.lm
  %i.lp = or <8 x i1> %i.lk, %i.jg
  %i.lq = bitcast <8 x i1> %i.lp to i8
  %op.rdx783 = icmp ne i8 %i.lq, 0
  %op.rdx784 = or i1 %op.rdx781.a, %op.rdx782.a
  %op.rdx785 = or i1 %op.rdx784, %op.rdx783
  %n.vec457 = and i64 %i.gv, -4                   ; 3 uses
  %i.lr = add nsw i64 %n.vec457, %i.t
  %cmp.n464 = icmp eq i64 %i.gv, %n.vec457
  %i.ls = add nsw i64 %wide.trip.count89, -1
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph.us.us.preheader.preheader, %._crit_edge.us.us
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %._crit_edge.us.us ], [ 1, %.lr.ph.us.us.preheader.preheader ] ; 3 uses
  %i.lt = mul i64 %i.i, %indvars.iv96
  %i.lu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.lt ; 7 uses
  %i.lv = add nsw i64 %indvars.iv96, -1           ; 2 uses
  %i.lw = mul i64 %i.i, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.lw ; 7 uses
  %i.ly = mul i64 %i.o, %i.lv
  %i.lz = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ly ; 6 uses
  br i1 %min.iters.check467, label %.lr.ph.us.us.preheader852, label %vector.ph468

vector.ph468:                                     ; preds = %.lr.ph.us.us.preheader
  %invariant.gep = getelementptr [4 x i8], ptr %i.lz, i64 %i.t
  br label %vector.body471

vector.body471:                                   ; preds = %vector.body471, %vector.ph468
  %index472 = phi i64 [ 0, %vector.ph468 ], [ %index.next475, %vector.body471 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index472 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load473 = load <4 x float>, ptr %gep, align 4, !tbaa !62 ; 2 uses
  %wide.load474 = load <4 x float>, ptr %i.ma, align 4, !tbaa !62 ; 2 uses
  %i.mb = fmul <4 x float> %wide.load473, %wide.load473
  %i.mc = fmul <4 x float> %wide.load474, %wide.load474
  store <4 x float> %i.mb, ptr %gep, align 4, !tbaa !62
  store <4 x float> %i.mc, ptr %i.ma, align 4, !tbaa !62
  %index.next475 = add nuw i64 %index472, 8       ; 2 uses
  %i.md = icmp eq i64 %index.next475, %n.vec470
  br i1 %i.md, label %middle.block476, label %vector.body471, !llvm.loop !1021

middle.block476:                                  ; preds = %vector.body471
  br i1 %cmp.n477, label %.loopexit.us.us.preheader, label %.lr.ph.us.us.preheader852

.lr.ph.us.us.preheader852:                        ; preds = %.lr.ph.us.us.preheader, %middle.block476
  %indvars.iv86.ph = phi i64 [ %i.t, %.lr.ph.us.us.preheader ], [ %i.gu, %middle.block476 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader852, %.lr.ph.us.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %.lr.ph.us.us ], [ %indvars.iv86.ph, %.lr.ph.us.us.preheader852 ] ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %indvars.iv86 ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !62 ; 2 uses
  %i.mg = fmul float %i.mf, %i.mf
  store float %i.mg, ptr %i.me, align 4, !tbaa !62
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit.us.us.preheader, label %.lr.ph.us.us, !llvm.loop !1022

.loopexit.us.us.preheader:                        ; preds = %.lr.ph.us.us, %middle.block476
  %brmerge = select i1 %min.iters.check454, i1 true, i1 %op.rdx785
  br i1 %brmerge, label %.loopexit.us.us.preheader851, label %vector.body458

vector.body458:                                   ; preds = %.loopexit.us.us.preheader, %vector.body458
  %index459 = phi i64 [ %index.next462, %vector.body458 ], [ 0, %.loopexit.us.us.preheader ] ; 2 uses
  %i.mh = add i64 %index459, %i.t                 ; 6 uses
  %i.mi = add i64 %i.mh, 1                        ; 2 uses
  %i.mj = add i64 %i.mh, 2                        ; 2 uses
  %i.mk = add i64 %i.mh, 3                        ; 2 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.mh
  %wide.load460 = load <4 x float>, ptr %i.ml, align 4, !tbaa !62, !alias.scope !1023 ; 2 uses
  %i.mm = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %i.mh ; 4 uses
  %i.mn = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %i.mi ; 4 uses
  %i.mo = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %i.mj ; 4 uses
  %i.mp = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %i.mk ; 4 uses
  %i.mq = getelementptr inbounds [16 x i8], ptr %i.lu, i64 %i.mh ; 5 uses
  %i.mr = getelementptr inbounds [16 x i8], ptr %i.lu, i64 %i.mi ; 4 uses
  %i.ms = getelementptr inbounds [16 x i8], ptr %i.lu, i64 %i.mj ; 4 uses
  %i.mt = getelementptr inbounds [16 x i8], ptr %i.lu, i64 %i.mk ; 4 uses
  %i.mu = load float, ptr %i.mm, align 4, !tbaa !62, !alias.scope !1026, !noalias !1028
  %i.mv = load float, ptr %i.mn, align 4, !tbaa !62, !alias.scope !1026, !noalias !1028
  %i.mw = load float, ptr %i.mo, align 4, !tbaa !62, !alias.scope !1026, !noalias !1028
  %i.mx = load float, ptr %i.mp, align 4, !tbaa !62, !alias.scope !1026, !noalias !1028
  %i.my = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %i.mv, i64 1
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 2
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 3
  %i.nc = load float, ptr %i.mq, align 4, !tbaa !62, !alias.scope !1031, !noalias !1033
  %i.nd = load float, ptr %i.mr, align 4, !tbaa !62, !alias.scope !1031, !noalias !1033
  %i.ne = load float, ptr %i.ms, align 4, !tbaa !62, !alias.scope !1031, !noalias !1033
  %i.nf = load float, ptr %i.mt, align 4, !tbaa !62, !alias.scope !1031, !noalias !1033
  %i.ng = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.nh = insertelement <4 x float> %i.ng, float %i.nd, i64 1
  %i.ni = insertelement <4 x float> %i.nh, float %i.ne, i64 2
  %i.nj = insertelement <4 x float> %i.ni, float %i.nf, i64 3 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.no = load float, ptr %i.nk, align 4, !tbaa !62, !alias.scope !1040, !noalias !1028
  %i.np = load float, ptr %i.nl, align 4, !tbaa !62, !alias.scope !1040, !noalias !1028
  %i.nq = load float, ptr %i.nm, align 4, !tbaa !62, !alias.scope !1040, !noalias !1028
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !62, !alias.scope !1040, !noalias !1028
  %i.ns = insertelement <4 x float> poison, float %i.no, i64 0
  %i.nt = insertelement <4 x float> %i.ns, float %i.np, i64 1
  %i.nu = insertelement <4 x float> %i.nt, float %i.nq, i64 2
  %i.nv = insertelement <4 x float> %i.nu, float %i.nr, i64 3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.oa = load float, ptr %i.nw, align 4, !tbaa !62, !alias.scope !1041, !noalias !1042
  %i.ob = load float, ptr %i.nx, align 4, !tbaa !62, !alias.scope !1041, !noalias !1042
  %i.oc = load float, ptr %i.ny, align 4, !tbaa !62, !alias.scope !1041, !noalias !1042
  %i.od = load float, ptr %i.nz, align 4, !tbaa !62, !alias.scope !1041, !noalias !1042
  %i.oe = insertelement <4 x float> poison, float %i.oa, i64 0
  %i.of = insertelement <4 x float> %i.oe, float %i.ob, i64 1
  %i.og = insertelement <4 x float> %i.of, float %i.oc, i64 2
  %i.oh = insertelement <4 x float> %i.og, float %i.od, i64 3 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.om = load float, ptr %i.oi, align 4, !tbaa !62, !alias.scope !1043, !noalias !1028
  %i.on = load float, ptr %i.oj, align 4, !tbaa !62, !alias.scope !1043, !noalias !1028
  %i.oo = load float, ptr %i.ok, align 4, !tbaa !62, !alias.scope !1043, !noalias !1028
  %i.op = load float, ptr %i.ol, align 4, !tbaa !62, !alias.scope !1043, !noalias !1028
  %i.oq = insertelement <4 x float> poison, float %i.om, i64 0
  %i.or = insertelement <4 x float> %i.oq, float %i.on, i64 1
  %i.os = insertelement <4 x float> %i.or, float %i.oo, i64 2
  %i.ot = insertelement <4 x float> %i.os, float %i.op, i64 3
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.oy = load float, ptr %i.ou, align 4, !tbaa !62, !alias.scope !1044, !noalias !1045
  %i.oz = load float, ptr %i.ov, align 4, !tbaa !62, !alias.scope !1044, !noalias !1045
  %i.pa = load float, ptr %i.ow, align 4, !tbaa !62, !alias.scope !1044, !noalias !1045
  %i.pb = load float, ptr %i.ox, align 4, !tbaa !62, !alias.scope !1044, !noalias !1045
  %i.pc = insertelement <4 x float> poison, float %i.oy, i64 0
  %i.pd = insertelement <4 x float> %i.pc, float %i.oz, i64 1
  %i.pe = insertelement <4 x float> %i.pd, float %i.pa, i64 2
  %i.pf = insertelement <4 x float> %i.pe, float %i.pb, i64 3 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  %i.pi = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.pj = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %i.pk = load float, ptr %i.pg, align 4, !tbaa !62, !alias.scope !1046, !noalias !1028
  %i.pl = load float, ptr %i.ph, align 4, !tbaa !62, !alias.scope !1046, !noalias !1028
  %i.pm = load float, ptr %i.pi, align 4, !tbaa !62, !alias.scope !1046, !noalias !1028
  %i.pn = load float, ptr %i.pj, align 4, !tbaa !62, !alias.scope !1046, !noalias !1028
  %i.po = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.pp = insertelement <4 x float> %i.po, float %i.pl, i64 1
  %i.pq = insertelement <4 x float> %i.pp, float %i.pm, i64 2
  %i.pr = insertelement <4 x float> %i.pq, float %i.pn, i64 3
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mq, i64 12
  %i.pt = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mt, i64 12
  %i.pw = load float, ptr %i.ps, align 4, !tbaa !62, !alias.scope !1047, !noalias !1048
  %i.px = load float, ptr %i.pt, align 4, !tbaa !62, !alias.scope !1047, !noalias !1048
  %i.py = load float, ptr %i.pu, align 4, !tbaa !62, !alias.scope !1047, !noalias !1048
  %i.pz = load float, ptr %i.pv, align 4, !tbaa !62, !alias.scope !1047, !noalias !1048
  %i.qa = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.qb = insertelement <4 x float> %i.qa, float %i.px, i64 1
  %i.qc = insertelement <4 x float> %i.qb, float %i.py, i64 2
  %i.qd = insertelement <4 x float> %i.qc, float %i.pz, i64 3 ; 2 uses
  %i.qe = shufflevector <4 x float> %i.nj, <4 x float> %i.oh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qf = shufflevector <4 x float> %wide.load460, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <4 x float> %i.nb, <4 x float> %i.nv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = shufflevector <4 x float> %i.nj, <4 x float> %i.oh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = fsub <8 x float> %2, %3
  %i.qg = fmul <8 x float> %i.qf, %4
  %i.qh = fadd <8 x float> %i.qe, %i.qg
  %i.qi = shufflevector <4 x float> %i.pf, <4 x float> %i.qd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qj = shufflevector <4 x float> %wide.load460, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x float> %i.ot, <4 x float> %i.pr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <4 x float> %i.pf, <4 x float> %i.qd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fsub <8 x float> %5, %6
  %i.qk = fmul <8 x float> %i.qj, %7
  %i.ql = fadd <8 x float> %i.qi, %i.qk
  %interleaved.vec461 = shufflevector <8 x float> %i.qh, <8 x float> %i.ql, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec461, ptr %i.mq, align 4, !tbaa !62
  %index.next462 = add nuw i64 %index459, 4       ; 2 uses
  %i.qm = icmp eq i64 %index.next462, %n.vec457
  br i1 %i.qm, label %middle.block463, label %vector.body458, !llvm.loop !1049

middle.block463:                                  ; preds = %vector.body458
  br i1 %cmp.n464, label %._crit_edge.us.us, label %.loopexit.us.us.preheader851

.loopexit.us.us.preheader851:                     ; preds = %.loopexit.us.us.preheader, %middle.block463
  %indvars.iv91.ph = phi i64 [ %i.lr, %middle.block463 ], [ %i.t, %.loopexit.us.us.preheader ] ; 7 uses
  %i.qn = sub nsw i64 %wide.trip.count89, %indvars.iv91.ph
  %xtraiter854 = and i64 %i.qn, 1
  %lcmp.mod855.not = icmp eq i64 %xtraiter854, 0
  br i1 %lcmp.mod855.not, label %.loopexit.us.us.prol.loopexit, label %.loopexit.us.us.prol

.loopexit.us.us.prol:                             ; preds = %.loopexit.us.us.preheader851
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %indvars.iv91.ph
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !62
  %i.qq = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %indvars.iv91.ph
  %i.qr = getelementptr inbounds [16 x i8], ptr %i.lu, i64 %indvars.iv91.ph ; 2 uses
  %i.qs = load <4 x float>, ptr %i.qq, align 4, !tbaa !62, !noalias !1028
  %i.qt = load <4 x float>, ptr %i.qr, align 4, !tbaa !62, !noalias !1028 ; 2 uses
  %i.qu = fsub <4 x float> %i.qs, %i.qt
  %i.qv = insertelement <4 x float> poison, float %i.qp, i64 0
  %i.qw = shufflevector <4 x float> %i.qv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qx = fmul <4 x float> %i.qw, %i.qu
  %i.qy = fadd <4 x float> %i.qt, %i.qx
  store <4 x float> %i.qy, ptr %i.qr, align 4, !tbaa !62
  %indvars.iv.next92.prol = add nsw i64 %indvars.iv91.ph, 1
  br label %.loopexit.us.us.prol.loopexit

.loopexit.us.us.prol.loopexit:                    ; preds = %.loopexit.us.us.prol, %.loopexit.us.us.preheader851
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %.loopexit.us.us.preheader851 ], [ %indvars.iv.next92.prol, %.loopexit.us.us.prol ]
  %i.qz = icmp eq i64 %indvars.iv91.ph, %i.ls
  br i1 %i.qz, label %._crit_edge.us.us, label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %.loopexit.us.us ], [ %indvars.iv91.unr, %.loopexit.us.us.prol.loopexit ] ; 5 uses
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %indvars.iv91
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !62
  %i.rc = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %indvars.iv91
  %i.rd = getelementptr inbounds [16 x i8], ptr %i.lu, i64 %indvars.iv91 ; 2 uses
  %i.re = load <4 x float>, ptr %i.rc, align 4, !tbaa !62, !noalias !1028
  %i.rf = load <4 x float>, ptr %i.rd, align 4, !tbaa !62, !noalias !1028 ; 2 uses
  %i.rg = fsub <4 x float> %i.re, %i.rf
  %i.rh = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rj = fmul <4 x float> %i.ri, %i.rg
  %i.rk = fadd <4 x float> %i.rf, %i.rj
  store <4 x float> %i.rk, ptr %i.rd, align 4, !tbaa !62
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1 ; 3 uses
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %indvars.iv.next92
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !62
  %i.rn = getelementptr inbounds [16 x i8], ptr %i.lx, i64 %indvars.iv.next92
  %i.ro = getelementptr inbounds [16 x i8], ptr %i.lu, i64 %indvars.iv.next92 ; 2 uses
  %i.rp = load <4 x float>, ptr %i.rn, align 4, !tbaa !62, !noalias !1028
  %i.rq = load <4 x float>, ptr %i.ro, align 4, !tbaa !62, !noalias !1028 ; 2 uses
  %i.rr = fsub <4 x float> %i.rp, %i.rq
  %i.rs = insertelement <4 x float> poison, float %i.rm, i64 0
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = fmul <4 x float> %i.rt, %i.rr
  %i.rv = fadd <4 x float> %i.rq, %i.ru
  store <4 x float> %i.rv, ptr %i.ro, align 4, !tbaa !62
  %indvars.iv.next92.1 = add nsw i64 %indvars.iv91, 2 ; 2 uses
  %exitcond95.not.1 = icmp eq i64 %indvars.iv.next92.1, %wide.trip.count89
  br i1 %exitcond95.not.1, label %._crit_edge.us.us, label %.loopexit.us.us, !llvm.loop !1050

._crit_edge.us.us:                                ; preds = %.loopexit.us.us.prol.loopexit, %.loopexit.us.us, %middle.block463
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %.lr.ph76, label %.lr.ph.us.us.preheader, !llvm.loop !1051

.lr.ph61.us:                                      ; preds = %.lr.ph61.us.preheader, %._crit_edge.us
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %._crit_edge.us ], [ 1, %.lr.ph61.us.preheader ] ; 3 uses
  %i.rw = mul i64 %i.i, %indvars.iv81
  %i.rx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.rw ; 7 uses
  %i.ry = add nsw i64 %indvars.iv81, -1           ; 2 uses
  %i.rz = mul i64 %i.i, %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.rz ; 7 uses
  %i.sb = mul i64 %i.o, %i.ry
  %i.sc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.sb ; 4 uses
  %brmerge858 = select i1 %min.iters.check, i1 true, i1 %op.rdx845
  br i1 %brmerge858, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph61.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph61.us ] ; 2 uses
  %i.sd = add i64 %index, %i.t                    ; 6 uses
  %i.se = add i64 %i.sd, 1                        ; 2 uses
  %i.sf = add i64 %i.sd, 2                        ; 2 uses
  %i.sg = add i64 %i.sd, 3                        ; 2 uses
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.sd
  %wide.load = load <4 x float>, ptr %i.sh, align 4, !tbaa !62, !alias.scope !1052 ; 2 uses
  %i.si = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %i.sd ; 4 uses
  %i.sj = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %i.se ; 4 uses
  %i.sk = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %i.sf ; 4 uses
  %i.sl = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %i.sg ; 4 uses
  %i.sm = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %i.sd ; 5 uses
  %i.sn = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %i.se ; 4 uses
  %i.so = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %i.sf ; 4 uses
  %i.sp = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %i.sg ; 4 uses
  %i.sq = load float, ptr %i.si, align 4, !tbaa !62, !alias.scope !1055, !noalias !1028
  %i.sr = load float, ptr %i.sj, align 4, !tbaa !62, !alias.scope !1055, !noalias !1028
  %i.ss = load float, ptr %i.sk, align 4, !tbaa !62, !alias.scope !1055, !noalias !1028
  %i.st = load float, ptr %i.sl, align 4, !tbaa !62, !alias.scope !1055, !noalias !1028
  %i.su = insertelement <4 x float> poison, float %i.sq, i64 0
  %i.sv = insertelement <4 x float> %i.su, float %i.sr, i64 1
  %i.sw = insertelement <4 x float> %i.sv, float %i.ss, i64 2
  %i.sx = insertelement <4 x float> %i.sw, float %i.st, i64 3
  %i.sy = load float, ptr %i.sm, align 4, !tbaa !62, !alias.scope !1057, !noalias !1059
  %i.sz = load float, ptr %i.sn, align 4, !tbaa !62, !alias.scope !1057, !noalias !1059
  %i.ta = load float, ptr %i.so, align 4, !tbaa !62, !alias.scope !1057, !noalias !1059
  %i.tb = load float, ptr %i.sp, align 4, !tbaa !62, !alias.scope !1057, !noalias !1059
  %i.tc = insertelement <4 x float> poison, float %i.sy, i64 0
  %i.td = insertelement <4 x float> %i.tc, float %i.sz, i64 1
  %i.te = insertelement <4 x float> %i.td, float %i.ta, i64 2
  %i.tf = insertelement <4 x float> %i.te, float %i.tb, i64 3 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.tk = load float, ptr %i.tg, align 4, !tbaa !62, !alias.scope !1066, !noalias !1028
  %i.tl = load float, ptr %i.th, align 4, !tbaa !62, !alias.scope !1066, !noalias !1028
  %i.tm = load float, ptr %i.ti, align 4, !tbaa !62, !alias.scope !1066, !noalias !1028
  %i.tn = load float, ptr %i.tj, align 4, !tbaa !62, !alias.scope !1066, !noalias !1028
  %i.to = insertelement <4 x float> poison, float %i.tk, i64 0
  %i.tp = insertelement <4 x float> %i.to, float %i.tl, i64 1
  %i.tq = insertelement <4 x float> %i.tp, float %i.tm, i64 2
  %i.tr = insertelement <4 x float> %i.tq, float %i.tn, i64 3
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.tw = load float, ptr %i.ts, align 4, !tbaa !62, !alias.scope !1067, !noalias !1068
  %i.tx = load float, ptr %i.tt, align 4, !tbaa !62, !alias.scope !1067, !noalias !1068
  %i.ty = load float, ptr %i.tu, align 4, !tbaa !62, !alias.scope !1067, !noalias !1068
  %i.tz = load float, ptr %i.tv, align 4, !tbaa !62, !alias.scope !1067, !noalias !1068
  %i.ua = insertelement <4 x float> poison, float %i.tw, i64 0
  %i.ub = insertelement <4 x float> %i.ua, float %i.tx, i64 1
  %i.uc = insertelement <4 x float> %i.ub, float %i.ty, i64 2
  %i.ud = insertelement <4 x float> %i.uc, float %i.tz, i64 3 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.ui = load float, ptr %i.ue, align 4, !tbaa !62, !alias.scope !1069, !noalias !1028
  %i.uj = load float, ptr %i.uf, align 4, !tbaa !62, !alias.scope !1069, !noalias !1028
  %i.uk = load float, ptr %i.ug, align 4, !tbaa !62, !alias.scope !1069, !noalias !1028
  %i.ul = load float, ptr %i.uh, align 4, !tbaa !62, !alias.scope !1069, !noalias !1028
  %i.um = insertelement <4 x float> poison, float %i.ui, i64 0
  %i.un = insertelement <4 x float> %i.um, float %i.uj, i64 1
  %i.uo = insertelement <4 x float> %i.un, float %i.uk, i64 2
  %i.up = insertelement <4 x float> %i.uo, float %i.ul, i64 3
  %i.uq = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.uu = load float, ptr %i.uq, align 4, !tbaa !62, !alias.scope !1070, !noalias !1071
  %i.uv = load float, ptr %i.ur, align 4, !tbaa !62, !alias.scope !1070, !noalias !1071
  %i.uw = load float, ptr %i.us, align 4, !tbaa !62, !alias.scope !1070, !noalias !1071
  %i.ux = load float, ptr %i.ut, align 4, !tbaa !62, !alias.scope !1070, !noalias !1071
  %i.uy = insertelement <4 x float> poison, float %i.uu, i64 0
  %i.uz = insertelement <4 x float> %i.uy, float %i.uv, i64 1
  %i.va = insertelement <4 x float> %i.uz, float %i.uw, i64 2
  %i.vb = insertelement <4 x float> %i.va, float %i.ux, i64 3 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.si, i64 12
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  %i.ve = getelementptr inbounds nuw i8, ptr %i.sk, i64 12
  %i.vf = getelementptr inbounds nuw i8, ptr %i.sl, i64 12
  %i.vg = load float, ptr %i.vc, align 4, !tbaa !62, !alias.scope !1072, !noalias !1028
  %i.vh = load float, ptr %i.vd, align 4, !tbaa !62, !alias.scope !1072, !noalias !1028
  %i.vi = load float, ptr %i.ve, align 4, !tbaa !62, !alias.scope !1072, !noalias !1028
  %i.vj = load float, ptr %i.vf, align 4, !tbaa !62, !alias.scope !1072, !noalias !1028
  %i.vk = insertelement <4 x float> poison, float %i.vg, i64 0
  %i.vl = insertelement <4 x float> %i.vk, float %i.vh, i64 1
  %i.vm = insertelement <4 x float> %i.vl, float %i.vi, i64 2
  %i.vn = insertelement <4 x float> %i.vm, float %i.vj, i64 3
  %i.vo = getelementptr inbounds nuw i8, ptr %i.sm, i64 12
  %i.vp = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  %i.vq = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  %i.vr = getelementptr inbounds nuw i8, ptr %i.sp, i64 12
  %i.vs = load float, ptr %i.vo, align 4, !tbaa !62, !alias.scope !1073, !noalias !1074
  %i.vt = load float, ptr %i.vp, align 4, !tbaa !62, !alias.scope !1073, !noalias !1074
  %i.vu = load float, ptr %i.vq, align 4, !tbaa !62, !alias.scope !1073, !noalias !1074
  %i.vv = load float, ptr %i.vr, align 4, !tbaa !62, !alias.scope !1073, !noalias !1074
  %i.vw = insertelement <4 x float> poison, float %i.vs, i64 0
  %i.vx = insertelement <4 x float> %i.vw, float %i.vt, i64 1
  %i.vy = insertelement <4 x float> %i.vx, float %i.vu, i64 2
  %i.vz = insertelement <4 x float> %i.vy, float %i.vv, i64 3 ; 2 uses
  %i.wa = shufflevector <4 x float> %i.tf, <4 x float> %i.ud, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wb = shufflevector <4 x float> %wide.load, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x float> %i.sx, <4 x float> %i.tr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x float> %i.tf, <4 x float> %i.ud, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = fsub <8 x float> %8, %9
  %i.wc = fmul <8 x float> %i.wb, %10
  %i.wd = fadd <8 x float> %i.wa, %i.wc
  %i.we = shufflevector <4 x float> %i.vb, <4 x float> %i.vz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wf = shufflevector <4 x float> %wide.load, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x float> %i.up, <4 x float> %i.vn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <4 x float> %i.vb, <4 x float> %i.vz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = fsub <8 x float> %11, %12
  %i.wg = fmul <8 x float> %i.wf, %13
  %i.wh = fadd <8 x float> %i.we, %i.wg
  %interleaved.vec = shufflevector <8 x float> %i.wd, <8 x float> %i.wh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.sm, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wi = icmp eq i64 %index.next, %n.vec
  br i1 %i.wi, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph61.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gr, %middle.block ], [ %i.t, %.lr.ph61.us ] ; 7 uses
  %i.wj = sub nsw i64 %wide.trip.count89, %indvars.iv.ph
  %xtraiter = and i64 %i.wj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %indvars.iv.ph
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !62
  %i.wm = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %indvars.iv.ph
  %i.wn = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %indvars.iv.ph ; 2 uses
  %i.wo = load <4 x float>, ptr %i.wm, align 4, !tbaa !62, !noalias !1028
  %i.wp = load <4 x float>, ptr %i.wn, align 4, !tbaa !62, !noalias !1028 ; 2 uses
  %i.wq = fsub <4 x float> %i.wo, %i.wp
  %i.wr = insertelement <4 x float> poison, float %i.wl, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wt = fmul <4 x float> %i.ws, %i.wq
  %i.wu = fadd <4 x float> %i.wp, %i.wt
  store <4 x float> %i.wu, ptr %i.wn, align 4, !tbaa !62
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.wv = icmp eq i64 %indvars.iv.ph, %i.gs
  br i1 %i.wv, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %indvars.iv
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !62
  %i.wy = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %indvars.iv
  %i.wz = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %indvars.iv ; 2 uses
  %i.xa = load <4 x float>, ptr %i.wy, align 4, !tbaa !62, !noalias !1028
  %i.xb = load <4 x float>, ptr %i.wz, align 4, !tbaa !62, !noalias !1028 ; 2 uses
  %i.xc = fsub <4 x float> %i.xa, %i.xb
  %i.xd = insertelement <4 x float> poison, float %i.wx, i64 0
  %i.xe = shufflevector <4 x float> %i.xd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xf = fmul <4 x float> %i.xe, %i.xc
  %i.xg = fadd <4 x float> %i.xb, %i.xf
  store <4 x float> %i.xg, ptr %i.wz, align 4, !tbaa !62
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %indvars.iv.next
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !62
  %i.xj = getelementptr inbounds [16 x i8], ptr %i.sa, i64 %indvars.iv.next
  %i.xk = getelementptr inbounds [16 x i8], ptr %i.rx, i64 %indvars.iv.next ; 2 uses
  %i.xl = load <4 x float>, ptr %i.xj, align 4, !tbaa !62, !noalias !1028
  %i.xm = load <4 x float>, ptr %i.xk, align 4, !tbaa !62, !noalias !1028 ; 2 uses
  %i.xn = fsub <4 x float> %i.xl, %i.xm
  %i.xo = insertelement <4 x float> poison, float %i.xi, i64 0
  %i.xp = shufflevector <4 x float> %i.xo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xq = fmul <4 x float> %i.xp, %i.xn
  %i.xr = fadd <4 x float> %i.xm, %i.xq
  store <4 x float> %i.xr, ptr %i.xk, align 4, !tbaa !62
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count89
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1076

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count99
  br i1 %exitcond85.not, label %.lr.ph76, label %.lr.ph61.us, !llvm.loop !1051

.lr.ph76:                                         ; preds = %._crit_edge.us, %._crit_edge.us.us, %.lr.ph64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !316 ; 18 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !64 ; 7 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !1020, !nonnull !84, !align !85 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !316 ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 128
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !64 ; 3 uses
  %i.yc = icmp slt i32 %.sroa.0.0.copyload, %.sroa.6.0.copyload
  br i1 %i.yc, label %.lr.ph.preheader, label %._crit_edge77.split

.lr.ph.preheader:                                 ; preds = %.lr.ph76
  %i.yd = add nsw i32 %i.d, -2
  %i.ye = sext i32 %.sroa.0.0.copyload to i64     ; 6 uses
  %i.yf = zext i32 %i.yd to i64                   ; 4 uses
  %wide.trip.count104 = sext i32 %.sroa.6.0.copyload to i64 ; 6 uses
  %i.yg = mul i64 %i.xv, %i.yf                    ; 2 uses
  %i.yh = shl nsw i64 %i.ye, 4                    ; 4 uses
  %i.yi = add i64 %i.yg, %i.yh                    ; 2 uses
  %scevgep480.a = getelementptr i8, ptr %i.xt, i64 %i.yi ; 3 uses
  %i.yj = shl nsw i64 %wide.trip.count104, 4      ; 6 uses
  %i.yk = getelementptr i8, ptr %i.xt, i64 %i.yj
  %scevgep481.a = getelementptr i8, ptr %i.yk, i64 -12 ; 3 uses
  %i.yl = sub i64 0, %i.xv                        ; 8 uses
  %i.ym = getelementptr i8, ptr %i.xt, i64 %i.yi  ; 2 uses
  %scevgep482.a = getelementptr i8, ptr %i.ym, i64 4
  %i.yn = getelementptr i8, ptr %i.xt, i64 %i.yj
  %scevgep483.a = getelementptr i8, ptr %i.yn, i64 -8 ; 2 uses
  %i.yo = add i64 %i.yg, %i.yh                    ; 2 uses
  %i.yp = getelementptr i8, ptr %i.xt, i64 %i.yo  ; 2 uses
  %scevgep484.a = getelementptr i8, ptr %i.yp, i64 8
  %i.yq = getelementptr i8, ptr %i.xt, i64 %i.yj
  %scevgep485.a = getelementptr i8, ptr %i.yq, i64 -4 ; 2 uses
  %i.yr = getelementptr i8, ptr %i.xt, i64 %i.yo  ; 3 uses
  %i.ys = insertelement <2 x ptr> poison, ptr %i.yp, i64 0
  %i.yt = insertelement <2 x ptr> %i.ys, ptr %i.yr, i64 1
  %i.yu = getelementptr i8, <2 x ptr> %i.yt, <2 x i64> <i64 8, i64 12> ; 3 uses
  %i.yv = insertelement <2 x ptr> poison, ptr %i.ym, i64 0
  %i.yw = insertelement <2 x ptr> %i.yv, ptr %i.yr, i64 1
  %i.yx = getelementptr i8, <2 x ptr> %i.yw, <2 x i64> <i64 4, i64 12> ; 5 uses
  %scevgep486.a = getelementptr i8, ptr %i.yr, i64 12
  %scevgep487.a = getelementptr i8, ptr %i.xt, i64 %i.yj ; 4 uses
  %i.yy = mul i64 %i.yb, %i.yf
  %i.yz = shl nsw i64 %i.ye, 2
  %i.za = getelementptr i8, ptr %i.xz, i64 %i.yy
  %scevgep488.a = getelementptr i8, ptr %i.za, i64 %i.yz ; 4 uses
  %i.zb = shl nsw i64 %wide.trip.count104, 2
  %scevgep489.a = getelementptr i8, ptr %i.xz, i64 %i.zb ; 4 uses
  %i.zc = sub i64 0, %i.yb                        ; 4 uses
  %i.zd = add nuw nsw i64 %i.yf, 1
  %i.ze = mul i64 %i.xv, %i.zd                    ; 2 uses
  %i.zf = add i64 %i.ze, %i.yh                    ; 2 uses
  %scevgep490 = getelementptr i8, ptr %i.xt, i64 %i.zf ; 4 uses
  %i.zg = add i64 %i.xv, %i.yj                    ; 2 uses
  %i.zh = getelementptr i8, ptr %i.xt, i64 %i.zg
  %scevgep491 = getelementptr i8, ptr %i.zh, i64 -12 ; 4 uses
  %i.zi = getelementptr i8, ptr %i.xt, i64 %i.zf
  %i.zj = getelementptr i8, ptr %i.xt, i64 %i.zg
  %i.zk = add i64 %i.ze, %i.yh                    ; 2 uses
  %i.zl = getelementptr i8, ptr %i.xt, i64 %i.zk  ; 2 uses
  %i.zm = insertelement <2 x ptr> poison, ptr %i.zi, i64 0
  %i.zn = insertelement <2 x ptr> %i.zm, ptr %i.zl, i64 1 ; 2 uses
  %i.zo = getelementptr i8, <2 x ptr> %i.zn, <2 x i64> <i64 4, i64 8> ; 2 uses
  %i.zp = getelementptr i8, <2 x ptr> %i.zn, <2 x i64> <i64 4, i64 8>
  %i.zq = add i64 %i.xv, %i.yj                    ; 2 uses
  %i.zr = getelementptr i8, ptr %i.xt, i64 %i.zq  ; 2 uses
  %i.zs = insertelement <2 x ptr> poison, ptr %i.zj, i64 0
  %i.zt = insertelement <2 x ptr> %i.zs, ptr %i.zr, i64 1 ; 2 uses
  %i.zu = getelementptr i8, <2 x ptr> %i.zt, <2 x i64> <i64 -8, i64 -4> ; 2 uses
  %i.zv = getelementptr i8, <2 x ptr> %i.zt, <2 x i64> <i64 -8, i64 -4>
  %scevgep495.a = getelementptr i8, ptr %i.zr, i64 -4
  %i.zw = getelementptr i8, ptr %i.xt, i64 %i.zk  ; 2 uses
  %i.zx = insertelement <2 x ptr> poison, ptr %i.zl, i64 0
  %i.zy = insertelement <2 x ptr> %i.zx, ptr %i.zw, i64 1
  %i.zz = getelementptr i8, <2 x ptr> %i.zy, <2 x i64> <i64 8, i64 12> ; 2 uses
  %scevgep496 = getelementptr i8, ptr %i.zw, i64 12 ; 3 uses
  %scevgep497 = getelementptr i8, ptr %i.xt, i64 %i.zq ; 4 uses
  %i.aaa = insertelement <4 x ptr> poison, ptr %scevgep489.a, i64 0
  %i.aab = insertelement <4 x ptr> %i.aaa, ptr %scevgep491, i64 1
  %i.aac = insertelement <4 x ptr> poison, ptr %scevgep488.a, i64 0
  %i.aad = insertelement <4 x ptr> %i.aac, ptr %scevgep490, i64 1
  %i.aae = insertelement <4 x ptr> poison, ptr %scevgep487.a, i64 0 ; 2 uses
  %i.aaf = shufflevector <4 x ptr> %i.aae, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aag = insertelement <4 x ptr> %i.aae, ptr %scevgep489.a, i64 1
  %i.aah = insertelement <4 x ptr> %i.aag, ptr %scevgep491, i64 2
  %i.aai = insertelement <4 x ptr> poison, ptr %scevgep485.a, i64 0 ; 3 uses
  %i.aaj = shufflevector <4 x ptr> %i.aai, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aak = shufflevector <4 x ptr> %i.aai, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.aal = shufflevector <2 x ptr> %i.zz, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aam = insertelement <4 x ptr> %i.aai, ptr %scevgep487.a, i64 1
  %i.aan = insertelement <4 x ptr> %i.aam, ptr %scevgep489.a, i64 2
  %i.aao = insertelement <4 x ptr> %i.aan, ptr %scevgep491, i64 3
  %i.aap = insertelement <4 x ptr> poison, ptr %scevgep483.a, i64 0 ; 3 uses
  %i.aaq = shufflevector <4 x ptr> %i.aap, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aar = shufflevector <4 x ptr> %i.aap, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.aas = shufflevector <2 x ptr> %i.zu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aat = shufflevector <4 x ptr> %i.aah, <4 x ptr> %i.aas, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aau = shufflevector <4 x ptr> %i.aab, <4 x ptr> %i.aas, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aav = shufflevector <2 x ptr> %i.zo, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aaw = shufflevector <4 x ptr> %i.aad, <4 x ptr> %i.aav, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aax = insertelement <4 x ptr> poison, ptr %scevgep480.a, i64 0 ; 2 uses
  %i.aay = shufflevector <4 x ptr> %i.aax, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aaz = insertelement <4 x ptr> %i.aap, ptr %scevgep487.a, i64 1
  %i.aba = insertelement <4 x ptr> %i.aaz, ptr %scevgep489.a, i64 2
  %i.abb = insertelement <4 x ptr> %i.aba, ptr %scevgep491, i64 3
  %i.abc = shufflevector <4 x ptr> %i.aax, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.abd = insertelement <4 x ptr> poison, ptr %scevgep481.a, i64 0 ; 2 uses
  %i.abe = shufflevector <4 x ptr> %i.abd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abf = shufflevector <4 x ptr> %i.abd, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.abg = shufflevector <2 x ptr> %i.yu, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.abh = insertelement <2 x ptr> poison, ptr %scevgep495.a, i64 0
  %i.abi = insertelement <2 x ptr> %i.abh, ptr %scevgep497, i64 1
  %i.abj = shufflevector <2 x ptr> %i.yu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.abk = shufflevector <2 x ptr> %i.yx, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.abl = shufflevector <2 x ptr> %i.yx, <2 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.abm = sub nsw i64 %wide.trip.count104, %i.ye ; 3 uses
  %min.iters.check654 = icmp ult i64 %i.abm, 24
  %i.abn = icmp ult <4 x ptr> %i.aay, %i.abb
  %i.abo = insertelement <4 x ptr> %i.abk, ptr %scevgep488.a, i64 2
  %i.abp = insertelement <4 x ptr> %i.abo, ptr %scevgep490, i64 3
  %i.abq = icmp ult <4 x ptr> %i.abp, %i.abe
  %bound0503 = icmp ult ptr %scevgep480.a, %scevgep485.a
end_hunk_1
begin_hunk_2_@_ZNK2cv8ximgproc11DTFilterCPU17FilterRF_vertPassINS_3VecIfLi4EEEEclERKNS_5RangeE:bb.a
  %i.acj = or i64 %i.zc, %i.yl
  %stride.check602 = icmp slt i64 %i.yl, 0
  %i.ack = insertelement <8 x i1> poison, i1 %bound0581, i64 6
  %i.acl = insertelement <8 x i1> %i.ack, i1 %stride.check602, i64 7
  %i.acm = shufflevector <4 x i1> %i.abv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acn = shufflevector <8 x i1> %i.acm, <8 x i1> %i.acl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.aco = shufflevector <2 x i1> %i.acb, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acp = shufflevector <8 x i1> %i.acn, <8 x i1> %i.aco, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.acq = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1582, i64 6
  %i.acr = shufflevector <4 x i1> %i.aby, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acs = shufflevector <8 x i1> %i.acr, <8 x i1> %i.acq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.act = shufflevector <2 x i1> %i.acc, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acu = shufflevector <8 x i1> %i.acs, <8 x i1> %i.act, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.acv = and <8 x i1> %i.acp, %i.acu
  %i.acw = icmp ult <2 x ptr> %i.abg, %i.abi
  %i.acx = icmp ult <2 x ptr> %i.zz, %i.aak
  %i.acy = icmp slt i64 %i.abz, 0
  %i.acz = icmp slt i64 %i.acj, 0
  %i.ada = shufflevector <2 x i1> %i.acw, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.adb = insertelement <8 x i1> %i.ada, i1 %i.acy, i64 6
  %i.adc = insertelement <8 x i1> %i.adb, i1 %i.acz, i64 7
  %i.add = shufflevector <4 x i1> %i.ace, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ade = shufflevector <8 x i1> %i.add, <8 x i1> %i.adc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.adf = shufflevector <4 x i1> %i.aci, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adg = shufflevector <8 x i1> %i.adf, <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.adh = shufflevector <2 x i1> %i.acx, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adi = shufflevector <8 x i1> %i.adg, <8 x i1> %i.adh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.adj = and <8 x i1> %i.ade, %i.adi
  %i.adk = shufflevector <2 x ptr> %i.yx, <2 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adl = icmp ult <4 x ptr> %i.adk, %i.aau
  %i.adm = shufflevector <4 x ptr> %i.aaw, <4 x ptr> %i.aal, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.adn = icmp ult <4 x ptr> %i.adm, %i.aaf
  %i.ado = or i64 %i.zc, %i.yl
  %i.adp = icmp slt i64 %i.ado, 0
  %i.adq = insertelement <8 x i1> poison, i1 %bound0539, i64 6
  %i.adr = insertelement <8 x i1> %i.adq, i1 %i.adp, i64 7
  %i.ads = shufflevector <4 x i1> %i.abn, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adt = shufflevector <8 x i1> %i.ads, <8 x i1> %i.adr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.adu = shufflevector <2 x i1> %i.abs, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.adv = shufflevector <8 x i1> %i.adt, <8 x i1> %i.adu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.adw = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1540, i64 6
  %i.adx = shufflevector <4 x i1> %i.abq, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ady = shufflevector <8 x i1> %i.adx, <8 x i1> %i.adw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.adz = shufflevector <2 x i1> %i.abt, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aea = shufflevector <8 x i1> %i.ady, <8 x i1> %i.adz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.aeb = and <8 x i1> %i.adv, %i.aea
  %bound0647 = icmp ult ptr %scevgep486.a, %scevgep497
  %bound1648 = icmp ult ptr %scevgep496, %scevgep487.a
  %stride.check506 = icmp slt i64 %i.yl, 0
  %i.aec = icmp slt i64 %i.abr, 0
  %stride.check554 = icmp slt i64 %i.yl, 0
  %i.aed = insertelement <8 x i1> poison, i1 %bound0647, i64 4
  %i.aee = insertelement <8 x i1> %i.aed, i1 %stride.check506, i64 5
  %i.aef = insertelement <8 x i1> %i.aee, i1 %i.aec, i64 6
  %i.aeg = insertelement <8 x i1> %i.aef, i1 %stride.check554, i64 7
  %i.aeh = shufflevector <4 x i1> %i.adl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aei = shufflevector <8 x i1> %i.aeh, <8 x i1> %i.aeg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aej = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true, i1 true>, i1 %bound1648, i64 4
  %i.aek = shufflevector <4 x i1> %i.adn, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ael = shufflevector <8 x i1> %i.aek, <8 x i1> %i.aej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aem = and <8 x i1> %i.aei, %i.ael
  %stride.check650 = icmp slt i64 %i.yl, 0
  %i.aen = bitcast <8 x i1> %i.adj to i8
  %i.aeo = icmp ne i8 %i.aen, 0
  %i.aep = bitcast <8 x i1> %i.aeb to i8
  %i.aeq = icmp ne i8 %i.aep, 0
  %op.rdx721.a = or i1 %i.aeq, %found.conflict505
  %op.rdx722.a = or i1 %stride.check650, %i.aeo
  %i.aer = or <8 x i1> %i.aem, %i.acv
  %i.aes = bitcast <8 x i1> %i.aer to i8
  %op.rdx723 = icmp ne i8 %i.aes, 0
  %op.rdx724 = or i1 %op.rdx721.a, %op.rdx722.a
  %op.rdx725 = or i1 %op.rdx724, %op.rdx723
  %n.vec657 = and i64 %i.abm, -4                  ; 3 uses
  %i.aet = add nsw i64 %n.vec657, %i.ye
  %cmp.n664 = icmp eq i64 %i.abm, %n.vec657
  %i.aeu = add nsw i64 %wide.trip.count104, -1
  br label %.lr.ph

._crit_edge77.split:                              ; preds = %._crit_edge, %bb.a, %.lr.ph76
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv106 = phi i64 [ %i.yf, %.lr.ph.preheader ], [ %indvars.iv.next107, %._crit_edge ] ; 5 uses
  %i.aev = add nuw nsw i64 %indvars.iv106, 1
  %i.aew = mul i64 %i.xv, %i.aev
  %i.aex = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.aew ; 7 uses
  %i.aey = mul i64 %i.xv, %indvars.iv106
  %i.aez = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.aey ; 7 uses
  %i.afa = mul i64 %i.yb, %indvars.iv106
  %i.afb = getelementptr inbounds nuw i8, ptr %i.xz, i64 %i.afa ; 4 uses
  %brmerge859 = select i1 %min.iters.check654, i1 true, i1 %op.rdx725
  br i1 %brmerge859, label %scalar.ph653.preheader, label %vector.body658

vector.body658:                                   ; preds = %.lr.ph, %vector.body658
  %index659 = phi i64 [ %index.next662, %vector.body658 ], [ 0, %.lr.ph ] ; 2 uses
  %i.afc = add i64 %index659, %i.ye               ; 6 uses
  %i.afd = add i64 %i.afc, 1                      ; 2 uses
  %i.afe = add i64 %i.afc, 2                      ; 2 uses
  %i.aff = add i64 %i.afc, 3                      ; 2 uses
  %i.afg = getelementptr inbounds [4 x i8], ptr %i.afb, i64 %i.afc
  %wide.load660 = load <4 x float>, ptr %i.afg, align 4, !tbaa !62, !alias.scope !1077 ; 2 uses
  %i.afh = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %i.afc ; 4 uses
  %i.afi = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %i.afd ; 4 uses
  %i.afj = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %i.afe ; 4 uses
  %i.afk = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %i.aff ; 4 uses
  %i.afl = getelementptr inbounds [16 x i8], ptr %i.aez, i64 %i.afc ; 5 uses
  %i.afm = getelementptr inbounds [16 x i8], ptr %i.aez, i64 %i.afd ; 4 uses
  %i.afn = getelementptr inbounds [16 x i8], ptr %i.aez, i64 %i.afe ; 4 uses
  %i.afo = getelementptr inbounds [16 x i8], ptr %i.aez, i64 %i.aff ; 4 uses
  %i.afp = load float, ptr %i.afh, align 4, !tbaa !62, !alias.scope !1080, !noalias !1082
  %i.afq = load float, ptr %i.afi, align 4, !tbaa !62, !alias.scope !1080, !noalias !1082
  %i.afr = load float, ptr %i.afj, align 4, !tbaa !62, !alias.scope !1080, !noalias !1082
  %i.afs = load float, ptr %i.afk, align 4, !tbaa !62, !alias.scope !1080, !noalias !1082
  %i.aft = insertelement <4 x float> poison, float %i.afp, i64 0
  %i.afu = insertelement <4 x float> %i.aft, float %i.afq, i64 1
  %i.afv = insertelement <4 x float> %i.afu, float %i.afr, i64 2
  %i.afw = insertelement <4 x float> %i.afv, float %i.afs, i64 3
  %i.afx = load float, ptr %i.afl, align 4, !tbaa !62, !alias.scope !1085, !noalias !1087
  %i.afy = load float, ptr %i.afm, align 4, !tbaa !62, !alias.scope !1085, !noalias !1087
  %i.afz = load float, ptr %i.afn, align 4, !tbaa !62, !alias.scope !1085, !noalias !1087
  %i.aga = load float, ptr %i.afo, align 4, !tbaa !62, !alias.scope !1085, !noalias !1087
  %i.agb = insertelement <4 x float> poison, float %i.afx, i64 0
  %i.agc = insertelement <4 x float> %i.agb, float %i.afy, i64 1
  %i.agd = insertelement <4 x float> %i.agc, float %i.afz, i64 2
  %i.age = insertelement <4 x float> %i.agd, float %i.aga, i64 3 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afh, i64 4
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afi, i64 4
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afj, i64 4
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  %i.agj = load float, ptr %i.agf, align 4, !tbaa !62, !alias.scope !1094, !noalias !1082
  %i.agk = load float, ptr %i.agg, align 4, !tbaa !62, !alias.scope !1094, !noalias !1082
  %i.agl = load float, ptr %i.agh, align 4, !tbaa !62, !alias.scope !1094, !noalias !1082
  %i.agm = load float, ptr %i.agi, align 4, !tbaa !62, !alias.scope !1094, !noalias !1082
  %i.agn = insertelement <4 x float> poison, float %i.agj, i64 0
  %i.ago = insertelement <4 x float> %i.agn, float %i.agk, i64 1
  %i.agp = insertelement <4 x float> %i.ago, float %i.agl, i64 2
  %i.agq = insertelement <4 x float> %i.agp, float %i.agm, i64 3
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afl, i64 4
  %i.ags = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.agt = getelementptr inbounds nuw i8, ptr %i.afn, i64 4
  %i.agu = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  %i.agv = load float, ptr %i.agr, align 4, !tbaa !62, !alias.scope !1095, !noalias !1096
  %i.agw = load float, ptr %i.ags, align 4, !tbaa !62, !alias.scope !1095, !noalias !1096
  %i.agx = load float, ptr %i.agt, align 4, !tbaa !62, !alias.scope !1095, !noalias !1096
  %i.agy = load float, ptr %i.agu, align 4, !tbaa !62, !alias.scope !1095, !noalias !1096
  %i.agz = insertelement <4 x float> poison, float %i.agv, i64 0
  %i.aha = insertelement <4 x float> %i.agz, float %i.agw, i64 1
  %i.ahb = insertelement <4 x float> %i.aha, float %i.agx, i64 2
  %i.ahc = insertelement <4 x float> %i.ahb, float %i.agy, i64 3 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.ahh = load float, ptr %i.ahd, align 4, !tbaa !62, !alias.scope !1097, !noalias !1082
  %i.ahi = load float, ptr %i.ahe, align 4, !tbaa !62, !alias.scope !1097, !noalias !1082
  %i.ahj = load float, ptr %i.ahf, align 4, !tbaa !62, !alias.scope !1097, !noalias !1082
  %i.ahk = load float, ptr %i.ahg, align 4, !tbaa !62, !alias.scope !1097, !noalias !1082
  %i.ahl = insertelement <4 x float> poison, float %i.ahh, i64 0
  %i.ahm = insertelement <4 x float> %i.ahl, float %i.ahi, i64 1
  %i.ahn = insertelement <4 x float> %i.ahm, float %i.ahj, i64 2
  %i.aho = insertelement <4 x float> %i.ahn, float %i.ahk, i64 3
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.aht = load float, ptr %i.ahp, align 4, !tbaa !62, !alias.scope !1098, !noalias !1099
  %i.ahu = load float, ptr %i.ahq, align 4, !tbaa !62, !alias.scope !1098, !noalias !1099
  %i.ahv = load float, ptr %i.ahr, align 4, !tbaa !62, !alias.scope !1098, !noalias !1099
  %i.ahw = load float, ptr %i.ahs, align 4, !tbaa !62, !alias.scope !1098, !noalias !1099
  %i.ahx = insertelement <4 x float> poison, float %i.aht, i64 0
  %i.ahy = insertelement <4 x float> %i.ahx, float %i.ahu, i64 1
  %i.ahz = insertelement <4 x float> %i.ahy, float %i.ahv, i64 2
  %i.aia = insertelement <4 x float> %i.ahz, float %i.ahw, i64 3 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.afh, i64 12
  %i.aic = getelementptr inbounds nuw i8, ptr %i.afi, i64 12
  %i.aid = getelementptr inbounds nuw i8, ptr %i.afj, i64 12
  %i.aie = getelementptr inbounds nuw i8, ptr %i.afk, i64 12
  %i.aif = load float, ptr %i.aib, align 4, !tbaa !62, !alias.scope !1100, !noalias !1082
  %i.aig = load float, ptr %i.aic, align 4, !tbaa !62, !alias.scope !1100, !noalias !1082
  %i.aih = load float, ptr %i.aid, align 4, !tbaa !62, !alias.scope !1100, !noalias !1082
  %i.aii = load float, ptr %i.aie, align 4, !tbaa !62, !alias.scope !1100, !noalias !1082
  %i.aij = insertelement <4 x float> poison, float %i.aif, i64 0
  %i.aik = insertelement <4 x float> %i.aij, float %i.aig, i64 1
  %i.ail = insertelement <4 x float> %i.aik, float %i.aih, i64 2
  %i.aim = insertelement <4 x float> %i.ail, float %i.aii, i64 3
  %i.ain = getelementptr inbounds nuw i8, ptr %i.afl, i64 12
  %i.aio = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  %i.aip = getelementptr inbounds nuw i8, ptr %i.afn, i64 12
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.afo, i64 12
  %i.air = load float, ptr %i.ain, align 4, !tbaa !62, !alias.scope !1101, !noalias !1102
  %i.ais = load float, ptr %i.aio, align 4, !tbaa !62, !alias.scope !1101, !noalias !1102
  %i.ait = load float, ptr %i.aip, align 4, !tbaa !62, !alias.scope !1101, !noalias !1102
  %i.aiu = load float, ptr %i.aiq, align 4, !tbaa !62, !alias.scope !1101, !noalias !1102
  %i.aiv = insertelement <4 x float> poison, float %i.air, i64 0
  %i.aiw = insertelement <4 x float> %i.aiv, float %i.ais, i64 1
  %i.aix = insertelement <4 x float> %i.aiw, float %i.ait, i64 2
  %i.aiy = insertelement <4 x float> %i.aix, float %i.aiu, i64 3 ; 2 uses
  %i.aiz = shufflevector <4 x float> %i.age, <4 x float> %i.ahc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aja = shufflevector <4 x float> %wide.load660, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %14 = shufflevector <4 x float> %i.afw, <4 x float> %i.agq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = shufflevector <4 x float> %i.age, <4 x float> %i.ahc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = fsub <8 x float> %14, %15
  %i.ajb = fmul <8 x float> %i.aja, %16
  %i.ajc = fadd <8 x float> %i.aiz, %i.ajb
  %i.ajd = shufflevector <4 x float> %i.aia, <4 x float> %i.aiy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aje = shufflevector <4 x float> %wide.load660, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %17 = shufflevector <4 x float> %i.aho, <4 x float> %i.aim, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = shufflevector <4 x float> %i.aia, <4 x float> %i.aiy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %19 = fsub <8 x float> %17, %18
  %i.ajf = fmul <8 x float> %i.aje, %19
  %i.ajg = fadd <8 x float> %i.ajd, %i.ajf
  %interleaved.vec661 = shufflevector <8 x float> %i.ajc, <8 x float> %i.ajg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec661, ptr %i.afl, align 4, !tbaa !62
  %index.next662 = add nuw i64 %index659, 4       ; 2 uses
  %i.ajh = icmp eq i64 %index.next662, %n.vec657
  br i1 %i.ajh, label %middle.block663, label %vector.body658, !llvm.loop !1103

middle.block663:                                  ; preds = %vector.body658
  br i1 %cmp.n664, label %._crit_edge, label %scalar.ph653.preheader

scalar.ph653.preheader:                           ; preds = %.lr.ph, %middle.block663
  %indvars.iv101.ph = phi i64 [ %i.aet, %middle.block663 ], [ %i.ye, %.lr.ph ] ; 7 uses
  %i.aji = sub nsw i64 %wide.trip.count104, %indvars.iv101.ph
  %xtraiter856 = and i64 %i.aji, 1
  %lcmp.mod857.not = icmp eq i64 %xtraiter856, 0
  br i1 %lcmp.mod857.not, label %scalar.ph653.prol.loopexit, label %scalar.ph653.prol

scalar.ph653.prol:                                ; preds = %scalar.ph653.preheader
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.afb, i64 %indvars.iv101.ph
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !62
  %i.ajl = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %indvars.iv101.ph
  %i.ajm = getelementptr inbounds [16 x i8], ptr %i.aez, i64 %indvars.iv101.ph ; 2 uses
  %i.ajn = load <4 x float>, ptr %i.ajl, align 4, !tbaa !62, !noalias !1082
  %i.ajo = load <4 x float>, ptr %i.ajm, align 4, !tbaa !62, !noalias !1082 ; 2 uses
  %i.ajp = fsub <4 x float> %i.ajn, %i.ajo
  %i.ajq = insertelement <4 x float> poison, float %i.ajk, i64 0
  %i.ajr = shufflevector <4 x float> %i.ajq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajs = fmul <4 x float> %i.ajr, %i.ajp
  %i.ajt = fadd <4 x float> %i.ajo, %i.ajs
  store <4 x float> %i.ajt, ptr %i.ajm, align 4, !tbaa !62
  %indvars.iv.next102.prol = add nsw i64 %indvars.iv101.ph, 1
  br label %scalar.ph653.prol.loopexit

scalar.ph653.prol.loopexit:                       ; preds = %scalar.ph653.prol, %scalar.ph653.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph653.preheader ], [ %indvars.iv.next102.prol, %scalar.ph653.prol ]
  %i.aju = icmp eq i64 %indvars.iv101.ph, %i.aeu
  br i1 %i.aju, label %._crit_edge, label %scalar.ph653

._crit_edge:                                      ; preds = %scalar.ph653.prol.loopexit, %scalar.ph653, %middle.block663
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1
  %i.ajv = icmp sgt i64 %indvars.iv106, 0
  br i1 %i.ajv, label %.lr.ph, label %._crit_edge77.split, !llvm.loop !1104

scalar.ph653:                                     ; preds = %scalar.ph653.prol.loopexit, %scalar.ph653
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %scalar.ph653 ], [ %indvars.iv101.unr, %scalar.ph653.prol.loopexit ] ; 5 uses
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.afb, i64 %indvars.iv101
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !62
  %i.ajy = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %indvars.iv101
  %i.ajz = getelementptr inbounds [16 x i8], ptr %i.aez, i64 %indvars.iv101 ; 2 uses
  %i.aka = load <4 x float>, ptr %i.ajy, align 4, !tbaa !62, !noalias !1082
  %i.akb = load <4 x float>, ptr %i.ajz, align 4, !tbaa !62, !noalias !1082 ; 2 uses
  %i.akc = fsub <4 x float> %i.aka, %i.akb
  %i.akd = insertelement <4 x float> poison, float %i.ajx, i64 0
  %i.ake = shufflevector <4 x float> %i.akd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akf = fmul <4 x float> %i.ake, %i.akc
  %i.akg = fadd <4 x float> %i.akb, %i.akf
  store <4 x float> %i.akg, ptr %i.ajz, align 4, !tbaa !62
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 3 uses
  %i.akh = getelementptr inbounds [4 x i8], ptr %i.afb, i64 %indvars.iv.next102
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !62
  %i.akj = getelementptr inbounds [16 x i8], ptr %i.aex, i64 %indvars.iv.next102
  %i.akk = getelementptr inbounds [16 x i8], ptr %i.aez, i64 %indvars.iv.next102 ; 2 uses
  %i.akl = load <4 x float>, ptr %i.akj, align 4, !tbaa !62, !noalias !1082
  %i.akm = load <4 x float>, ptr %i.akk, align 4, !tbaa !62, !noalias !1082 ; 2 uses
  %i.akn = fsub <4 x float> %i.akl, %i.akm
  %i.ako = insertelement <4 x float> poison, float %i.aki, i64 0
  %i.akp = shufflevector <4 x float> %i.ako, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akq = fmul <4 x float> %i.akp, %i.akn
  %i.akr = fadd <4 x float> %i.akm, %i.akq
  store <4 x float> %i.akr, ptr %i.akk, align 4, !tbaa !62
  %indvars.iv.next102.1 = add nsw i64 %indvars.iv101, 2 ; 2 uses
  %exitcond105.not.1 = icmp eq i64 %indvars.iv.next102.1, %wide.trip.count104
  br i1 %exitcond105.not.1, label %._crit_edge, label %scalar.ph653, !llvm.loop !1105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #18

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !5, i64 16}
!11 = !{!"_ZTSN2cv8ximgproc11DTFilterCPUE", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 20, !14, i64 24, !15, i64 28, !5, i64 32, !16, i64 40, !16, i64 248, !16, i64 456, !16, i64 664, !16, i64 872, !16, i64 1080, !16, i64 1288, !16, i64 1496, !5, i64 1704}
!12 = !{!"_ZTSN2cv8ximgproc8DTFilterE", !13, i64 0}
!13 = !{!"_ZTSN2cv9AlgorithmE"}
!14 = !{!"float", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !19, i64 56, !20, i64 64, !21, i64 72, !23, i64 128}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTSN2cv12MatAllocatorE", !18, i64 0}
!20 = !{!"p1 _ZTSN2cv8UMatDataE", !18, i64 0}
!21 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !22, i64 4, !5, i64 8, !6, i64 12}
!22 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!23 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!24 = !{!11, !15, i64 28}
!25 = !{!11, !5, i64 32}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSSt12__shared_ptrIN2cv8ximgproc11DTFilterCPUELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !29, i64 8}
!28 = !{!"p1 _ZTSN2cv8ximgproc11DTFilterCPUE", !18, i64 0}
!29 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!30 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!31 = !{!29, !30, i64 0}
!32 = distinct !{null, null, null, null, null, null}
!33 = !{!34, !5, i64 8}
!34 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!35 = !{!34, !5, i64 12}
!36 = !{!37, !28, i64 16}
!37 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv8ximgproc11DTFilterCPUELN9__gnu_cxx12_Lock_policyE2EE", !34, i64 0, !28, i64 16}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!40 = distinct !{!40, !"_ZNK2cv11_InputArray6getMatEi"}
!41 = !{!42, !18, i64 8}
!42 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !18, i64 8, !43, i64 16}
!43 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!44 = !{!16, !5, i64 0}
!45 = !{!46, !17, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !48, i64 8, !6, i64 16}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!48 = !{!"long", !6, i64 0}
!49 = !{!6, !6, i64 0}
!50 = distinct !{null, null}
!51 = !{!5, !5, i64 0}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!55 = distinct !{!55, !"_ZNK2cv11_InputArray6getMatEi"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!58 = distinct !{!58, !"_ZNK2cv11_InputArray6getMatEi"}
!59 = !{!16, !5, i64 8}
!60 = !{!16, !5, i64 12}
!61 = !{!11, !5, i64 1704}
!62 = !{!14, !14, i64 0}
!63 = !{!47, !17, i64 0}
!64 = !{!48, !48, i64 0}
!65 = !{!46, !48, i64 8}
!66 = !{!11, !5, i64 8}
!67 = !{!11, !5, i64 12}
!68 = !{!28, !28, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTSN2cv3MatE", !18, i64 0}
!71 = !{!72, !73, i64 0}
end_hunk_2
