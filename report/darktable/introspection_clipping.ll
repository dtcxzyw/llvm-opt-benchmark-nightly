Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@modify_roi_in:bb.a
  %i.as = load float, ptr %i.ar, align 4, !tbaa !69 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.au = load float, ptr %i.at, align 4, !tbaa !70 ; 2 uses
  %i.av = load float, ptr %i.aq, align 4, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13 ; 2 uses
  %i.bc = load float, ptr %i.ah, align 4, !tbaa !67 ; 2 uses
  %i.bd = load float, ptr %i.ai, align 4, !tbaa !68 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = fdiv reassoc nsz arcp contract afn <2 x float> %i.am, %i.an ; 4 uses
  br i1 %i.bg, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.bi = getelementptr i8, ptr %i.b, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !286 ; 2 uses
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !287 ; 2 uses
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !288 ; 2 uses
  %i.bv = load float, ptr %i.bn, align 4, !tbaa !289 ; 2 uses
  %i.bw = load float, ptr %i.bm, align 4, !tbaa !91
  %i.bx = load float, ptr %i.bl, align 4, !tbaa !92
  %i.by = load float, ptr %i.bk, align 4, !tbaa !80
  %i.bz = load float, ptr %i.bj, align 4, !tbaa !81
  %.val.us = load float, ptr %i.br, align 4, !tbaa !13
  %.val120.us = load float, ptr %i.bi, align 4, !tbaa !13
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bv, %i.bs
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bt, %i.bu
  %i.cc = fsub reassoc nsz arcp contract afn float %i.ca, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.ac, i64 1
  %i.cf = insertelement <2 x float> poison, float %.pn149, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fsub reassoc nsz arcp contract afn <2 x float> %i.ce, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ae, i64 1
  %i.ck = insertelement <2 x float> poison, float %.pn, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cl
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = fpext <2 x float> %i.ch to <2 x double>
  %i.cp = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn <2 x double> %i.cq, %i.co
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ct = fptrunc <4 x double> %i.cs to <4 x float> ; 3 uses
  %i.cu = extractelement <4 x float> %i.ct, i64 0
  %i.cv = fmul reassoc nsz arcp contract afn float %i.as, %i.cu
  %i.cw = extractelement <4 x float> %i.ct, i64 2
  %i.cx = fmul reassoc nsz arcp contract afn float %i.as, %i.cw
  %i.cy = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.cx, i64 2
  %i.da = fadd reassoc nsz arcp contract afn <4 x float> %i.cz, <float 1.000000e+00, float poison, float 1.000000e+00, float poison>
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.dc = fmul reassoc nsz arcp contract afn <2 x double> %i.cq, %i.cn
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.de = fptrunc <4 x double> %i.dd to <4 x float>
  %i.df = fdiv reassoc nsz arcp contract afn <4 x float> %i.de, %i.db ; 3 uses
  %i.dg = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.dh
  %i.dj = fadd reassoc nsz arcp contract afn <4 x float> %i.di, splat (float 1.000000e+00)
  %i.dk = fdiv reassoc nsz arcp contract afn <4 x float> %i.ct, %i.dj ; 2 uses
  %i.dl = insertelement <4 x float> poison, float %i.av, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dk, %i.dm
  %i.do = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.dp
  %i.dr = insertelement <4 x float> poison, float %i.az, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %i.dk, %i.ds
  %i.du = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.dv
  %i.dx = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dy
  %i.ea = fadd reassoc nsz arcp contract afn <4 x float> %i.dz, %i.dn
  %i.eb = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fmul reassoc nsz arcp contract afn <4 x float> %i.ea, %i.eb
  %i.ed = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %i.ee, %i.dw
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.ef, %i.dt
  %i.eh = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ei = fmul reassoc nsz arcp contract afn <4 x float> %i.eg, %i.eh
  %i.ej = insertelement <4 x float> poison, float %.val.us, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = fsub reassoc nsz arcp contract afn <4 x float> %i.ec, %i.ek ; 2 uses
  %i.em = insertelement <4 x float> poison, float %.val120.us, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = fsub reassoc nsz arcp contract afn <4 x float> %i.ei, %i.en ; 2 uses
  %i.ep = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = fmul reassoc nsz arcp contract afn <4 x float> %i.eo, %i.eq ; 2 uses
  %i.es = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = fmul reassoc nsz arcp contract afn <4 x float> %i.el, %i.et ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = fmul reassoc nsz arcp contract afn <4 x float> %i.el, %i.ew
  %i.ey = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fa = fmul reassoc nsz arcp contract afn <4 x float> %i.eo, %i.ez
  %i.fb = fsub reassoc nsz arcp contract afn <4 x float> %i.ex, %i.fa ; 2 uses
  %i.fc = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = fmul reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fd
  %i.ff = fsub reassoc nsz arcp contract afn <4 x float> %i.er, %i.eu
  %i.fg = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fi = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, %i.fh
  %i.fj = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fadd reassoc nsz arcp contract afn <4 x float> %i.fk, %i.fi
  %i.fm = fadd reassoc nsz arcp contract afn <4 x float> %i.fl, %i.fe ; 2 uses
  %i.fn = fdiv reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fm
  %i.fo = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = fsub reassoc nsz arcp contract afn <4 x float> %i.fp, %i.fn
  %i.fr = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fq, %i.fr ; 4 uses
  %i.ft = fsub reassoc nsz arcp contract afn <4 x float> %i.eu, %i.er
  %i.fu = fdiv reassoc nsz arcp contract afn <4 x float> %i.ft, %i.fm
  %i.fv = insertelement <4 x float> poison, float %i.by, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fadd reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fw
  %i.fy = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fz = fmul reassoc nsz arcp contract afn <4 x float> %i.fx, %i.fy ; 4 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.gb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ga, <2 x float> splat (float f0x7F7FFFFF))
  %i.gc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ga, <2 x float> splat (float f0xFF7FFFFF))
  %i.gd = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.ge = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gb, <2 x float> %i.gd)
  %i.gf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gc, <2 x float> %i.gd)
  %i.gg = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.gh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ge, <2 x float> %i.gg)
  %i.gi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gf, <2 x float> %i.gg)
  %i.gj = shufflevector <4 x float> %i.fz, <4 x float> %i.fs, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.gk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gi, <2 x float> %i.gj)
  br label %.split160.us

.split:                                           ; preds = %bb.a
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.an
  %foldExtExtBinop188 = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.an
  %i.gm = insertelement <2 x float> poison, float %i.z, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.ac, i64 1
  %i.go = insertelement <2 x float> poison, float %.pn149, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fsub reassoc nsz arcp contract afn <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.ae, i64 1
  %i.gt = insertelement <2 x float> poison, float %.pn, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = fsub reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gu
  %i.gw = fpext <2 x float> %i.gq to <2 x double>
  %i.gx = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.gw
  %i.ha = fptrunc <2 x double> %i.gz to <2 x float> ; 2 uses
  %i.hb = insertelement <2 x float> poison, float %i.as, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.he = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %i.hd
  %i.hf = fadd reassoc nsz arcp contract afn <4 x float> %i.he, splat (float 1.000000e+00)
  %i.hg = fpext <2 x float> %i.gv to <2 x double>
  %i.hh = fmul reassoc nsz arcp contract afn <2 x double> %i.gy, %i.hg
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hj = fptrunc <4 x double> %i.hi to <4 x float>
  %i.hk = fdiv reassoc nsz arcp contract afn <4 x float> %i.hj, %i.hf ; 3 uses
  %i.hl = insertelement <4 x float> poison, float %i.au, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hn = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.hm
  %i.ho = fadd reassoc nsz arcp contract afn <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hq = fdiv reassoc nsz arcp contract afn <4 x float> %i.hp, %i.ho ; 2 uses
  %i.hr = insertelement <4 x float> poison, float %i.az, i64 0
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, %i.hs
  %i.hu = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.hv
  %i.hx = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fadd reassoc nsz arcp contract afn <4 x float> %i.hy, %i.hw
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.ht
  %4 = shufflevector <2 x float> %foldExtExtBinop188, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %5 = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, %4 ; 4 uses
  %i.ib = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = fmul reassoc nsz arcp contract afn <4 x float> %i.hq, %i.ic
  %i.ie = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ig = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.if
  %i.ih = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ij = fadd reassoc nsz arcp contract afn <4 x float> %i.ig, %i.ii
  %i.ik = fadd reassoc nsz arcp contract afn <4 x float> %i.ij, %i.id
  %6 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer
  %7 = fmul reassoc nsz arcp contract afn <4 x float> %i.ik, %6 ; 4 uses
  %i.il = shufflevector <4 x float> %7, <4 x float> %5, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.im = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.il, <2 x float> splat (float f0x7F7FFFFF))
  %i.in = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.il, <2 x float> splat (float f0xFF7FFFFF))
  %i.io = shufflevector <4 x float> %7, <4 x float> %5, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.ip = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.im, <2 x float> %i.io)
  %i.iq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.in, <2 x float> %i.io)
  %i.ir = shufflevector <4 x float> %7, <4 x float> %5, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.is = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ip, <2 x float> %i.ir)
  %i.it = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.iq, <2 x float> %i.ir)
  %i.iu = shufflevector <4 x float> %7, <4 x float> %5, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.iv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.is, <2 x float> %i.iu)
  %i.iw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.it, <2 x float> %i.iu)
  br label %.split160.us

.split160.us:                                     ; preds = %.split, %.split.us
  %i.ix = phi <2 x float> [ %i.gl, %.split.us ], [ %i.iw, %.split ]
  %i.iy = phi <2 x float> [ %i.gk, %.split.us ], [ %i.iv, %.split ] ; 3 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 0 ; 2 uses
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iz, -1.000000e+00 ; 2 uses
  %i.jb = extractelement <2 x float> %i.iy, i64 1 ; 2 uses
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, -1.000000e+00 ; 2 uses
  %i.jd = fadd reassoc nsz arcp contract afn <2 x float> %i.ix, splat (float 2.000000e+00)
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.jf = fsub reassoc nsz arcp contract afn <2 x float> %i.jd, %i.iy
  %i.jg = fptosi <2 x float> %i.jf to <2 x i32>   ; 2 uses
  %i.jh = extractelement <2 x i32> %i.jg, i64 0   ; 3 uses
  store i32 %i.jh, ptr %i.je, align 4, !tbaa !78
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.jj = extractelement <2 x i32> %i.jg, i64 1   ; 3 uses
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !79
  %i.jk = load float, ptr %i.b, align 4, !tbaa !83
  %i.jl = fcmp reassoc nsz arcp contract afn oeq float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split160.us
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !84
  %.not = icmp eq i32 %i.jn, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.jo = load i32, ptr %i.r, align 4, !tbaa !78  ; 2 uses
  store i32 %i.jo, ptr %i.je, align 4, !tbaa !78
  %i.jp = load i32, ptr %i.s, align 4, !tbaa !79  ; 2 uses
  store i32 %i.jp, ptr %i.ji, align 4, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split160.us
  %i.jq = phi i32 [ %i.jp, %bb.c ], [ %i.jj, %bb.b ], [ %i.jj, %.split160.us ] ; 2 uses
  %i.jr = phi i32 [ %i.jo, %bb.c ], [ %i.jh, %bb.b ], [ %i.jh, %.split160.us ] ; 2 uses
  %.in = phi float [ %i.jb, %bb.c ], [ %i.jc, %bb.b ], [ %i.jc, %.split160.us ]
  %.in186 = phi float [ %i.iz, %bb.c ], [ %i.ja, %bb.b ], [ %i.ja, %.split160.us ]
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.jt = fptosi float %.in186 to i32             ; 2 uses
  %i.ju = fptosi float %.in to i32                ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jw = load i32, ptr %i.e, align 16, !tbaa !290
  %i.jx = sitofp reassoc nsz arcp contract afn i32 %i.jw to float
  %i.jy = fmul reassoc nsz arcp contract afn float %i.d, %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.js, align 4, !tbaa !291
  %i.ka = sitofp reassoc nsz arcp contract afn i32 %i.jz to float
  %i.kb = fmul reassoc nsz arcp contract afn float %i.d, %i.ka ; 2 uses
  %i.kc = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.jy)
  %i.kd = fptosi float %i.kc to i32               ; 2 uses
  %i.ke = icmp sgt i32 %i.jt, %i.kd
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.jt, i32 0)
  %i.kf = select i1 %i.ke, i32 %i.kd, i32 %spec.select ; 2 uses
  store i32 %i.kf, ptr %3, align 4, !tbaa !93
  %i.kg = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.kb)
  %i.kh = fptosi float %i.kg to i32               ; 2 uses
  %i.ki = icmp sgt i32 %i.ju, %i.kh
  %spec.select117 = tail call i32 @llvm.smax.i32(i32 %i.ju, i32 0)
  %i.kj = select i1 %i.ki, i32 %i.kh, i32 %spec.select117 ; 2 uses
  store i32 %i.kj, ptr %i.jv, align 4, !tbaa !94
  %i.kk = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.jy)
  %i.kl = fptosi float %i.kk to i32
  %i.km = sub nsw i32 %i.kl, %i.kf                ; 2 uses
  %i.kn = icmp sgt i32 %i.jr, %i.km
  %spec.select118 = tail call i32 @llvm.smax.i32(i32 %i.jr, i32 1)
  %i.ko = select i1 %i.kn, i32 %i.km, i32 %spec.select118
  store i32 %i.ko, ptr %i.je, align 4, !tbaa !78
  %i.kp = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.kb)
  %i.kq = fptosi float %i.kp to i32
  %i.kr = sub nsw i32 %i.kq, %i.kj                ; 2 uses
  %i.ks = icmp sgt i32 %i.jq, %i.kr
  %spec.select119 = tail call i32 @llvm.smax.i32(i32 %i.jq, i32 1)
  %i.kt = select i1 %i.ks, i32 %i.kr, i32 %spec.select119
  store i32 %i.kt, ptr %i.ji, align 4, !tbaa !79
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !293
  %i.j = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #25
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !62  ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78   ; 3 uses
  %i.o = shl nsw i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82
  %.not111 = icmp eq i32 %i.q, 0
  br i1 %.not111, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load float, ptr %i.l, align 4, !tbaa !83
  %i.s = fcmp reassoc nsz arcp contract afn oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.u = load i32, ptr %i.t, align 4, !tbaa !84
  %.not112 = icmp eq i32 %i.u, 0
  br i1 %.not112, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
  %i.x = icmp eq i32 %i.n, %i.w
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = sext i32 %i.n to i64
  %i.ae = sext i32 %i.z to i64
  %i.af = shl nsw i64 %i.ad, 2
  %i.ag = mul i64 %i.af, %i.ae
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ag) #25
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ah = tail call ptr @dt_interpolation_new(i32 noundef 3) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.as = load float, ptr %i.ar, align 4, !tbaa !65
  %i.at = load <2 x i32>, ptr %i.ai, align 16, !tbaa !14
  %i.au = sitofp <2 x i32> %i.at to <2 x float>
  %i.av = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul reassoc nsz arcp contract afn <2 x float> %i.aw, %i.au ; 5 uses
  %i.ay = load <2 x float>, ptr %i.al, align 4, !tbaa !13
  %i.az = fmul reassoc nsz arcp contract afn <2 x float> %i.ay, %i.ax ; 2 uses
  store <2 x float> %i.az, ptr %i.a, align 16, !tbaa !13
  %i.ba = load <2 x float>, ptr %i.an, align 4, !tbaa !13
  %i.bb = fmul reassoc nsz arcp contract afn <2 x float> %i.ba, %i.ax
  store <2 x float> %i.bb, ptr %i.am, align 8, !tbaa !13
  %i.bc = load <2 x float>, ptr %i.ao, align 4, !tbaa !13
  %i.bd = fmul reassoc nsz arcp contract afn <2 x float> %i.bc, %i.ax ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.bf = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.be, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 172 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !66
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = shufflevector <5 x float> %i.bf, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.bk = extractelement <2 x float> %i.ax, i64 0 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.bm = fmul reassoc nsz arcp contract afn <4 x float> %i.bj, %i.bl ; 4 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.as, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.aq, %i.bk
  %i.bp = extractelement <4 x float> %i.bm, i64 0
  %i.bq = extractelement <4 x float> %i.bm, i64 1
  %i.br = extractelement <4 x float> %i.bm, i64 2
  %i.bs = extractelement <4 x float> %i.bm, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.bo, float noundef %i.bn, float noundef %i.br, float noundef %i.bp, float noundef %i.bq, float noundef %i.bs, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_0
