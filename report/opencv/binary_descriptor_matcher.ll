Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor_matcher?download=true
inline.NumInlined: 1120
inline.NumDeleted: 505
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv15line_descriptor23BinaryDescriptorMatcher8Mihasher5queryEPjS3_PhPmS3_:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 %i.es ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 %i.et ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 %i.eu ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ev ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 %i.ew ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 %i.ex ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 %i.ey ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 %i.ez ; 4 uses
  %i.gg = load i32, ptr %i.fy, align 4, !tbaa !46
  %i.gh = load i32, ptr %i.fz, align 4, !tbaa !46
  %i.gi = load i32, ptr %i.ga, align 4, !tbaa !46
  %i.gj = load i32, ptr %i.gb, align 4, !tbaa !46
  %i.gk = insertelement <4 x i32> poison, i32 %i.gg, i64 0
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gh, i64 1
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gi, i64 2
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gj, i64 3
  %i.go = load i32, ptr %i.gc, align 4, !tbaa !46
  %i.gp = load i32, ptr %i.gd, align 4, !tbaa !46
  %i.gq = load i32, ptr %i.ge, align 4, !tbaa !46
  %i.gr = load i32, ptr %i.gf, align 4, !tbaa !46
  %i.gs = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %i.gt = insertelement <4 x i32> %i.gs, i32 %i.gp, i64 1
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.gq, i64 2
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.gr, i64 3
  %i.gw = xor <4 x i32> %i.gn, %i.fp
  %i.gx = xor <4 x i32> %i.gv, %i.fx
  %i.gy = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.gw)
  %i.gz = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.gx)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.hi = load i32, ptr %i.ha, align 4, !tbaa !46
  %i.hj = load i32, ptr %i.hb, align 4, !tbaa !46
  %i.hk = load i32, ptr %i.hc, align 4, !tbaa !46
  %i.hl = load i32, ptr %i.hd, align 4, !tbaa !46
  %i.hm = insertelement <4 x i32> poison, i32 %i.hi, i64 0
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hj, i64 1
  %i.ho = insertelement <4 x i32> %i.hn, i32 %i.hk, i64 2
  %i.hp = insertelement <4 x i32> %i.ho, i32 %i.hl, i64 3
  %i.hq = load i32, ptr %i.he, align 4, !tbaa !46
  %i.hr = load i32, ptr %i.hf, align 4, !tbaa !46
  %i.hs = load i32, ptr %i.hg, align 4, !tbaa !46
  %i.ht = load i32, ptr %i.hh, align 4, !tbaa !46
  %i.hu = insertelement <4 x i32> poison, i32 %i.hq, i64 0
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.hr, i64 1
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hs, i64 2
  %i.hx = insertelement <4 x i32> %i.hw, i32 %i.ht, i64 3
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.ig = load i32, ptr %i.hy, align 4, !tbaa !46
  %i.ih = load i32, ptr %i.hz, align 4, !tbaa !46
  %i.ii = load i32, ptr %i.ia, align 4, !tbaa !46
  %i.ij = load i32, ptr %i.ib, align 4, !tbaa !46
  %i.ik = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.ih, i64 1
  %i.im = insertelement <4 x i32> %i.il, i32 %i.ii, i64 2
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ij, i64 3
  %i.io = load i32, ptr %i.ic, align 4, !tbaa !46
  %i.ip = load i32, ptr %i.id, align 4, !tbaa !46
  %i.iq = load i32, ptr %i.ie, align 4, !tbaa !46
  %i.ir = load i32, ptr %i.if, align 4, !tbaa !46
  %i.is = insertelement <4 x i32> poison, i32 %i.io, i64 0
  %i.it = insertelement <4 x i32> %i.is, i32 %i.ip, i64 1
  %i.iu = insertelement <4 x i32> %i.it, i32 %i.iq, i64 2
  %i.iv = insertelement <4 x i32> %i.iu, i32 %i.ir, i64 3
  %i.iw = xor <4 x i32> %i.in, %i.hp
  %i.ix = xor <4 x i32> %i.iv, %i.hx
  %i.iy = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.iw)
  %i.iz = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.ix)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ji = load i32, ptr %i.ja, align 4, !tbaa !46
  %i.jj = load i32, ptr %i.jb, align 4, !tbaa !46
  %i.jk = load i32, ptr %i.jc, align 4, !tbaa !46
  %i.jl = load i32, ptr %i.jd, align 4, !tbaa !46
  %i.jm = insertelement <4 x i32> poison, i32 %i.ji, i64 0
  %i.jn = insertelement <4 x i32> %i.jm, i32 %i.jj, i64 1
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 2
  %i.jp = insertelement <4 x i32> %i.jo, i32 %i.jl, i64 3
  %i.jq = load i32, ptr %i.je, align 4, !tbaa !46
  %i.jr = load i32, ptr %i.jf, align 4, !tbaa !46
  %i.js = load i32, ptr %i.jg, align 4, !tbaa !46
  %i.jt = load i32, ptr %i.jh, align 4, !tbaa !46
  %i.ju = insertelement <4 x i32> poison, i32 %i.jq, i64 0
  %i.jv = insertelement <4 x i32> %i.ju, i32 %i.jr, i64 1
  %i.jw = insertelement <4 x i32> %i.jv, i32 %i.js, i64 2
  %i.jx = insertelement <4 x i32> %i.jw, i32 %i.jt, i64 3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.kg = load i32, ptr %i.jy, align 4, !tbaa !46
  %i.kh = load i32, ptr %i.jz, align 4, !tbaa !46
  %i.ki = load i32, ptr %i.ka, align 4, !tbaa !46
  %i.kj = load i32, ptr %i.kb, align 4, !tbaa !46
  %i.kk = insertelement <4 x i32> poison, i32 %i.kg, i64 0
  %i.kl = insertelement <4 x i32> %i.kk, i32 %i.kh, i64 1
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.ki, i64 2
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.kj, i64 3
  %i.ko = load i32, ptr %i.kc, align 4, !tbaa !46
  %i.kp = load i32, ptr %i.kd, align 4, !tbaa !46
  %i.kq = load i32, ptr %i.ke, align 4, !tbaa !46
  %i.kr = load i32, ptr %i.kf, align 4, !tbaa !46
  %i.ks = insertelement <4 x i32> poison, i32 %i.ko, i64 0
  %i.kt = insertelement <4 x i32> %i.ks, i32 %i.kp, i64 1
  %i.ku = insertelement <4 x i32> %i.kt, i32 %i.kq, i64 2
  %i.kv = insertelement <4 x i32> %i.ku, i32 %i.kr, i64 3
  %i.kw = xor <4 x i32> %i.kn, %i.jp
  %i.kx = xor <4 x i32> %i.kv, %i.jx
  %i.ky = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.kw)
  %i.kz = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.kx)
  %i.la = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.le = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.lh = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.li = load i32, ptr %i.la, align 4, !tbaa !46
  %i.lj = load i32, ptr %i.lb, align 4, !tbaa !46
  %i.lk = load i32, ptr %i.lc, align 4, !tbaa !46
  %i.ll = load i32, ptr %i.ld, align 4, !tbaa !46
  %i.lm = insertelement <4 x i32> poison, i32 %i.li, i64 0
  %i.ln = insertelement <4 x i32> %i.lm, i32 %i.lj, i64 1
  %i.lo = insertelement <4 x i32> %i.ln, i32 %i.lk, i64 2
  %i.lp = insertelement <4 x i32> %i.lo, i32 %i.ll, i64 3
  %i.lq = load i32, ptr %i.le, align 4, !tbaa !46
  %i.lr = load i32, ptr %i.lf, align 4, !tbaa !46
  %i.ls = load i32, ptr %i.lg, align 4, !tbaa !46
  %i.lt = load i32, ptr %i.lh, align 4, !tbaa !46
  %i.lu = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %i.lv = insertelement <4 x i32> %i.lu, i32 %i.lr, i64 1
  %i.lw = insertelement <4 x i32> %i.lv, i32 %i.ls, i64 2
  %i.lx = insertelement <4 x i32> %i.lw, i32 %i.lt, i64 3
  %i.ly = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.lz = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.mc = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.md = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.me = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.mf = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.mg = load i32, ptr %i.ly, align 4, !tbaa !46
  %i.mh = load i32, ptr %i.lz, align 4, !tbaa !46
  %i.mi = load i32, ptr %i.ma, align 4, !tbaa !46
  %i.mj = load i32, ptr %i.mb, align 4, !tbaa !46
  %i.mk = insertelement <4 x i32> poison, i32 %i.mg, i64 0
  %i.ml = insertelement <4 x i32> %i.mk, i32 %i.mh, i64 1
  %i.mm = insertelement <4 x i32> %i.ml, i32 %i.mi, i64 2
  %i.mn = insertelement <4 x i32> %i.mm, i32 %i.mj, i64 3
  %i.mo = load i32, ptr %i.mc, align 4, !tbaa !46
  %i.mp = load i32, ptr %i.md, align 4, !tbaa !46
  %i.mq = load i32, ptr %i.me, align 4, !tbaa !46
  %i.mr = load i32, ptr %i.mf, align 4, !tbaa !46
  %i.ms = insertelement <4 x i32> poison, i32 %i.mo, i64 0
  %i.mt = insertelement <4 x i32> %i.ms, i32 %i.mp, i64 1
  %i.mu = insertelement <4 x i32> %i.mt, i32 %i.mq, i64 2
  %i.mv = insertelement <4 x i32> %i.mu, i32 %i.mr, i64 3
  %i.mw = xor <4 x i32> %i.mn, %i.lp
  %i.mx = xor <4 x i32> %i.mv, %i.lx
  %i.my = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.mw)
  %i.mz = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.mx)
  %i.na = add <4 x i32> %i.gy, %vec.phi
  %i.nb = add <4 x i32> %i.gz, %vec.phi220
  %i.nc = add <4 x i32> %i.na, %i.iy
  %i.nd = add <4 x i32> %i.nb, %i.iz
  %i.ne = add <4 x i32> %i.nc, %i.ky
  %i.nf = add <4 x i32> %i.nd, %i.kz
  %i.ng = add <4 x i32> %i.ne, %i.my              ; 2 uses
  %i.nh = add <4 x i32> %i.nf, %i.mz              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ni = icmp eq i64 %index.next, %n.vec
  br i1 %i.ni, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.nh, %i.ng
  %i.nj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  %slprdx.init = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.nj, i64 0
  br i1 %cmp.n, label %.preheader.loopexit.i, label %.lr.ph.i116.preheader

.lr.ph.i116.preheader:                            ; preds = %.lr.ph.preheader.i115, %middle.block
  %indvars.iv.i117.ph = phi i64 [ 0, %.lr.ph.preheader.i115 ], [ %i.er, %middle.block ]
  %slprdx.acc.ph = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader.i115 ], [ %slprdx.init, %middle.block ]
  br label %.lr.ph.i116

.preheader.loopexit.i.loopexit:                   ; preds = %.lr.ph.i116
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %slprdx.acc231)
  br label %.preheader.loopexit.i

.preheader.loopexit.i:                            ; preds = %.preheader.loopexit.i.loopexit, %middle.block
  %.lcssa = phi i32 [ %i.nj, %middle.block ], [ %6, %.preheader.loopexit.i.loopexit ]
  %i.nk = and i32 %i.en, -16
  %i.nl = add nuw nsw i32 %i.nk, 16
  br label %.preheader.i119

.preheader.i119:                                  ; preds = %.preheader.loopexit.i, %bb.g
  %.028.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.nl, %.preheader.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %.lcssa, %.preheader.loopexit.i ] ; 3 uses
  %i.nm = icmp slt i32 %.028.lcssa.i, %i.ej
  br i1 %i.nm, label %.lr.ph36.preheader.i, label %_ZN2cv15line_descriptor5matchEPhS1_i.exit

.lr.ph36.preheader.i:                             ; preds = %.preheader.i119
  %i.nn = zext nneg i32 %.028.lcssa.i to i64      ; 4 uses
  %i.no = sub i32 %i.ej, %.028.lcssa.i
  %.neg = add i32 %.028.lcssa.i, 1
  %xtraiter = and i32 %i.no, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph36.i.prol.loopexit, label %.lr.ph36.i.prol

.lr.ph36.i.prol:                                  ; preds = %.lr.ph36.preheader.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.nn
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !45
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 %i.nn
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !45
  %i.nt = xor i8 %i.ns, %i.nq
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr @_ZL6lookup, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !46
  %i.nx = add nsw i32 %i.nw, %.0.lcssa.i          ; 2 uses
  %indvars.iv.next42.i.prol = add nuw nsw i64 %i.nn, 1
  br label %.lr.ph36.i.prol.loopexit

.lr.ph36.i.prol.loopexit:                         ; preds = %.lr.ph36.i.prol, %.lr.ph36.preheader.i
  %indvars.iv41.i.unr = phi i64 [ %i.nn, %.lr.ph36.preheader.i ], [ %indvars.iv.next42.i.prol, %.lr.ph36.i.prol ]
  %.135.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph36.preheader.i ], [ %i.nx, %.lr.ph36.i.prol ]
  %.lcssa234.unr = phi i32 [ poison, %.lr.ph36.preheader.i ], [ %i.nx, %.lr.ph36.i.prol ]
  %i.ny = icmp eq i32 %i.ej, %.neg
  br i1 %i.ny, label %_ZN2cv15line_descriptor5matchEPhS1_i.exit, label %.lr.ph36.i

.lr.ph.i116:                                      ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116
  %indvars.iv.i117 = phi i64 [ %indvars.iv.next.i118, %.lr.ph.i116 ], [ %indvars.iv.i117.ph, %.lr.ph.i116.preheader ] ; 3 uses
  %slprdx.acc = phi <4 x i32> [ %slprdx.acc231, %.lr.ph.i116 ], [ %slprdx.acc.ph, %.lr.ph.i116.preheader ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv.i117
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i117
  %i.ob = load <4 x i32>, ptr %i.nz, align 4, !tbaa !46
  %i.oc = load <4 x i32>, ptr %i.oa, align 4, !tbaa !46
  %i.od = xor <4 x i32> %i.oc, %i.ob
  %i.oe = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.od)
  %slprdx.acc231 = add <4 x i32> %slprdx.acc, %i.oe ; 2 uses
  %indvars.iv.next.i118 = add nuw nsw i64 %indvars.iv.i117, 16 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i118, %i.eo
  br i1 %.not.i, label %.preheader.loopexit.i.loopexit, label %.lr.ph.i116, !llvm.loop !239

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.prol.loopexit, %.lr.ph36.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i.1, %.lr.ph36.i ], [ %indvars.iv41.i.unr, %.lr.ph36.i.prol.loopexit ] ; 4 uses
  %.135.i = phi i32 [ %i.ow, %.lr.ph36.i ], [ %.135.i.unr, %.lr.ph36.i.prol.loopexit ]
  %i.of = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv41.i
  %i.og = load i8, ptr %i.of, align 1, !tbaa !45
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv41.i
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !45
  %i.oj = xor i8 %i.oi, %i.og
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr @_ZL6lookup, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !46
  %i.on = add nsw i32 %i.om, %.135.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv.next42.i
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !45
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next42.i
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !45
  %i.os = xor i8 %i.or, %i.op
  %i.ot = zext i8 %i.os to i64
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr @_ZL6lookup, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !46
  %i.ow = add nsw i32 %i.ov, %i.on                ; 2 uses
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2 ; 2 uses
  %i.ox = trunc nuw i64 %indvars.iv.next42.i.1 to i32
  %i.oy = icmp sgt i32 %i.ej, %i.ox
  br i1 %i.oy, label %.lr.ph36.i, label %_ZN2cv15line_descriptor5matchEPhS1_i.exit, !llvm.loop !240

_ZN2cv15line_descriptor5matchEPhS1_i.exit:        ; preds = %.lr.ph36.i.prol.loopexit, %.lr.ph36.i, %.preheader.i119
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i119 ], [ %.lcssa234.unr, %.lr.ph36.i.prol.loopexit ], [ %i.ow, %.lr.ph36.i ] ; 3 uses
  %i.oz = load i32, ptr %i.bj, align 4, !tbaa !149
  %.not114 = icmp sgt i32 %.1.lcssa.i, %i.oz
  %.pre196 = sext i32 %.1.lcssa.i to i64          ; 2 uses
  br i1 %.not114, label %_ZN2cv15line_descriptor5matchEPhS1_i.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZN2cv15line_descriptor5matchEPhS1_i.exit
  %i.pa = getelementptr inbounds [4 x i8], ptr %2, i64 %.pre196
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !46 ; 2 uses
  %i.pc = icmp ult i32 %i.pb, %i.f
  br i1 %i.pc, label %bb.i, label %_ZN2cv15line_descriptor5matchEPhS1_i.exit._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.pd = add i32 %i.ea, 1
  %i.pe = load i32, ptr %i.a, align 4, !tbaa !130
  %i.pf = mul nsw i32 %i.pe, %.1.lcssa.i
  %i.pg = add i32 %i.pf, %i.pb
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ph
  store i32 %i.pd, ptr %i.pi, align 4, !tbaa !46
  br label %_ZN2cv15line_descriptor5matchEPhS1_i.exit._crit_edge

_ZN2cv15line_descriptor5matchEPhS1_i.exit._crit_edge: ; preds = %_ZN2cv15line_descriptor5matchEPhS1_i.exit, %bb.i, %bb.h
  %i.pj = getelementptr inbounds [4 x i8], ptr %2, i64 %.pre196 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !46
  %i.pl = add i32 %i.pk, 1
  store i32 %i.pl, ptr %i.pj, align 4, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZN2cv15line_descriptor5matchEPhS1_i.exit._crit_edge
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread, label %bb.f, !llvm.loop !241

_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread: ; preds = %bb.j, %bb.e, %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit
  br i1 %.not164, label %.critedge, label %.lr.ph138

.lr.ph138:                                        ; preds = %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread, %bb.k
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %bb.k ], [ -1, %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread ] ; 2 uses
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.k ], [ 0, %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread ] ; 3 uses
  %.189136 = phi i64 [ %i.px, %bb.k ], [ %.088, %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv177 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !46 ; 2 uses
  %i.po = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv179
  %i.pp = getelementptr i8, ptr %i.po, i64 8
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !46
  %i.pr = add nsw i32 %i.pq, -1
  %i.ps = icmp eq i32 %i.pn, %i.pr
  %i.pt = trunc nuw nsw i64 %indvars.iv177 to i32 ; 2 uses
  br i1 %i.ps, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph138
  %i.pu = add nsw i32 %i.pn, -1
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = shl nuw i64 1, %i.pv
  %i.px = xor i64 %i.pw, %.189136                 ; 2 uses
  store i32 %i.pt, ptr %i.pm, align 4, !tbaa !46
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1
  %exitcond185.not = icmp eq i64 %indvars.iv.next178, %indvars.iv189
  br i1 %exitcond185.not, label %.critedge, label %.lr.ph138, !llvm.loop !242

.critedge:                                        ; preds = %.lr.ph138, %bb.k, %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread
  %.189.lcssa = phi i64 [ %.088, %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread ], [ %i.px, %bb.k ], [ %.189136, %.lr.ph138 ]
  %.lcssa130 = phi i32 [ 0, %_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi.exit.thread ], [ %i.bq, %bb.k ], [ %i.pt, %.lr.ph138 ] ; 2 uses
  %i.py = zext i32 %.lcssa130 to i64
  %i.pz = icmp eq i64 %indvars.iv189, %i.py
  br i1 %i.pz, label %bb.l, label %.backedge

.backedge:                                        ; preds = %.critedge, %bb.d
  %.088.be = phi i64 [ %i.cs, %bb.d ], [ %.189.lcssa, %.critedge ]
  %.086.be = phi i32 [ %i.cu, %bb.d ], [ %.lcssa130, %.critedge ]
  br label %bb.c, !llvm.loop !243

bb.l:                                             ; preds = %.critedge
  %i.qa = load i32, ptr %i.r, align 4, !tbaa !94  ; 3 uses
  %i.qb = mul nsw i32 %i.qa, %i.bq
  %i.qc = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.qd = add nsw i32 %i.qb, %i.qc
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !46
  %i.qh = add i32 %i.qg, %.197143                 ; 3 uses
  %.not112 = icmp ult i32 %i.qh, %i.f
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %i.qi = sext i32 %i.qa to i64
  %i.qj = icmp slt i64 %indvars.iv.next187, %i.qi
  %or.cond = select i1 %.not112, i1 %i.qj, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge146.loopexit, !llvm.loop !244

._crit_edge146.loopexit:                          ; preds = %bb.l
  %.pre = load i32, ptr %i.ba, align 8, !tbaa !156
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit, %.preheader128
  %i.qk = phi i32 [ %i.bk, %.preheader128 ], [ %.pre, %._crit_edge146.loopexit ] ; 2 uses
  %i.ql = phi i32 [ %i.bl, %.preheader128 ], [ %i.qa, %._crit_edge146.loopexit ]
  %.298 = phi i32 [ %.096150, %.preheader128 ], [ %i.qh, %._crit_edge146.loopexit ] ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %i.qm = sext i32 %i.qk to i64
  %i.qn = icmp slt i64 %indvars.iv189, %i.qm
  %i.qo = icmp ult i32 %.298, %i.f
  %i.qp = select i1 %i.qn, i1 %i.qo, i1 false
  br i1 %i.qp, label %.preheader128, label %.preheader126, !llvm.loop !245

.lr.ph161:                                        ; preds = %.preheader126, %.critedge4
  %i.qq = phi i32 [ %i.qz, %.critedge4 ], [ %i.bs, %.preheader126 ]
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.critedge4 ], [ 0, %.preheader126 ] ; 4 uses
  %.3159 = phi i32 [ %.4.lcssa, %.critedge4 ], [ 0, %.preheader126 ] ; 3 uses
  %i.qr = load i32, ptr %i.a, align 4, !tbaa !130
  %i.qs = icmp slt i32 %.3159, %i.qr
  br i1 %i.qs, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %.lr.ph161
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv192 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !46
  %i.qv = icmp sgt i32 %i.qu, 0
  br i1 %i.qv, label %.lr.ph154.preheader, label %.critedge4

.lr.ph154.preheader:                              ; preds = %.preheader
  %i.qw = trunc nuw nsw i64 %indvars.iv192 to i32
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.m
  %.0153 = phi i32 [ %i.rj, %bb.m ], [ 0, %.lr.ph154.preheader ] ; 2 uses
  %.4152 = phi i32 [ %i.rg, %bb.m ], [ %.3159, %.lr.ph154.preheader ] ; 4 uses
  %i.qx = load i32, ptr %i.a, align 4, !tbaa !130 ; 2 uses
  %i.qy = icmp slt i32 %.4152, %i.qx
  br i1 %i.qy, label %bb.m, label %.critedge4.loopexit

.critedge4.loopexit:                              ; preds = %bb.m, %.lr.ph154
  %.4.lcssa.ph = phi i32 [ %.4152, %.lr.ph154 ], [ %i.rg, %bb.m ]
  %.pre195 = load i32, ptr %i.br, align 4, !tbaa !149
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader
  %i.qz = phi i32 [ %i.qq, %.preheader ], [ %.pre195, %.critedge4.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ %.3159, %.preheader ], [ %.4.lcssa.ph, %.critedge4.loopexit ]
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1
  %i.ra = sext i32 %i.qz to i64
  %.not109.not = icmp slt i64 %indvars.iv192, %i.ra
  br i1 %.not109.not, label %.lr.ph161, label %.critedge2, !llvm.loop !246

bb.m:                                             ; preds = %.lr.ph154
  %i.rb = mul nsw i32 %i.qx, %i.qw
  %i.rc = add nsw i32 %i.rb, %.0153
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [4 x i8], ptr %5, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !46
  %i.rg = add nsw i32 %.4152, 1                   ; 2 uses
  %i.rh = zext i32 %.4152 to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rh
  store i32 %i.rf, ptr %i.ri, align 4, !tbaa !46
  %i.rj = add nuw nsw i32 %.0153, 1               ; 2 uses
  %i.rk = load i32, ptr %i.qt, align 4, !tbaa !46
  %i.rl = icmp slt i32 %i.rj, %i.rk
  br i1 %i.rl, label %.lr.ph154, label %.critedge4.loopexit, !llvm.loop !247

.critedge2:                                       ; preds = %.lr.ph161, %.critedge4, %.preheader126
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN2cv15line_descriptor23BinaryDescriptorMatcher15SparseHashtable5queryEmPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = lshr i64 %1, 5
  %i.b = load ptr, ptr %0, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.a ; 2 uses
end_hunk_0
