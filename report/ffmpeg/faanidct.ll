begin_hunk_0_@ff_faanidct:vector.ph
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.x, align 2, !tbaa !9
  %wide.load13.3 = load <4 x i16>, ptr %i.y, align 2, !tbaa !9
  %i.z = sitofp <4 x i16> %wide.load.3 to <4 x float>
  %i.aa = sitofp <4 x i16> %wide.load13.3 to <4 x float>
  %i.ab = fmul nnan nsz <4 x float> %i.z, <float f0x3E168317, float f0x3E50C429, float f0x3E44A74C, float f0x3E30FBC5>
  %i.ac = fmul nnan nsz <4 x float> %i.aa, <float f0x3E168317, float f0x3DEC835E, float f0x3DA2E9C1, float f0x3D261AD1>
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x float> %i.ab, ptr %i.ad, align 16, !tbaa !11
  store <4 x float> %i.ac, ptr %i.ae, align 16, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.load.4 = load <4 x i16>, ptr %i.af, align 2, !tbaa !9
  %wide.load13.4 = load <4 x i16>, ptr %i.ag, align 2, !tbaa !9
  %i.ah = sitofp <4 x i16> %wide.load.4 to <4 x float>
  %i.ai = sitofp <4 x i16> %wide.load13.4 to <4 x float>
  %i.aj = fmul nnan nsz <4 x float> %i.ah, <float 1.250000e-01, float f0x3E318A86, float f0x3E273D75, float f0x3E168317>
  %i.ak = fmul nnan nsz <4 x float> %i.ai, <float 1.250000e-01, float f0x3DC9234E, float f0x3D8A8BD4, float f0x3D0D42AF>
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x float> %i.aj, ptr %i.al, align 16, !tbaa !11
  store <4 x float> %i.ak, ptr %i.am, align 16, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.load.5 = load <4 x i16>, ptr %i.an, align 2, !tbaa !9
  %wide.load13.5 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !9
  %i.ap = sitofp <4 x i16> %wide.load.5 to <4 x float>
  %i.aq = sitofp <4 x i16> %wide.load13.5 to <4 x float>
  %i.ar = fmul nnan nsz <4 x float> %i.ap, <float f0x3DC9234E, float f0x3E0B7E3F, float 1.283200e-01, float f0x3DEC835E>
  %i.as = fmul nnan nsz <4 x float> %i.aq, <float f0x3DC9234E, float f0x3D9E0875, float f0x3D59B5C9, float f0x3CDDF9AD>
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !11
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %wide.load.6 = load <4 x i16>, ptr %i.av, align 2, !tbaa !9
  %wide.load13.6 = load <4 x i16>, ptr %i.aw, align 2, !tbaa !9
  %i.ax = sitofp <4 x i16> %wide.load.6 to <4 x float>
  %i.ay = sitofp <4 x i16> %wide.load13.6 to <4 x float>
  %i.az = fmul nnan nsz <4 x float> %i.ax, <float f0x3D8A8BD4, float f0x3DC02B4A, float f0x3DB504F3, float f0x3DA2E9C1>
  %i.ba = fmul nnan nsz <4 x float> %i.ay, <float f0x3D8A8BD4, float f0x3D59B5C9, float f0x3D15F61A, float f0x3C98E635>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x float> %i.az, ptr %i.bb, align 16, !tbaa !11
  store <4 x float> %i.ba, ptr %i.bc, align 16, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.load.7 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !9
  %wide.load13.7 = load <4 x i16>, ptr %i.be, align 2, !tbaa !9
  %i.bf = sitofp <4 x i16> %wide.load.7 to <4 x float>
  %i.bg = sitofp <4 x i16> %wide.load13.7 to <4 x float>
  %i.bh = fmul nnan nsz <4 x float> %i.bf, <float f0x3D0D42AF, float f0x3D43EF15, float f0x3D3890D3, float f0x3D261AD1>
  %i.bi = fmul nnan nsz <4 x float> %i.bg, <float f0x3D0D42AF, float f0x3CDDF9AD, float f0x3C98E635, float f0x3C1BE50C>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x float> %i.bh, ptr %i.bj, align 16, !tbaa !11
  store <4 x float> %i.bi, ptr %i.bk, align 16, !tbaa !11
  br label %vector.body17

vector.body17:                                    ; preds = %vector.ph, %vector.body17
  %index18 = phi i64 [ %index.next19, %vector.body17 ], [ 0, %vector.ph ] ; 2 uses
  %i.bl = shl nuw i64 %index18, 3                 ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 9 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !11
  %i.by = load float, ptr %i.bu, align 4, !tbaa !11
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !11
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !11
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 92
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 124
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !11
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !11
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !11
  %i.cn = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 2
  %i.cq = insertelement <4 x float> %i.cp, float %i.cm, i64 3 ; 2 uses
  %i.cr = fadd nsz <4 x float> %i.ce, %i.cq       ; 2 uses
  %i.cs = fsub nsz <4 x float> %i.ce, %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 84
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 116
  %i.cx = load float, ptr %i.ct, align 4, !tbaa !11
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !11
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !11
  %i.da = load float, ptr %i.cw, align 4, !tbaa !11
  %i.db = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 3 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  %i.di = getelementptr inbounds nuw i8, ptr %i.br, i64 108
  %i.dj = load float, ptr %i.df, align 4, !tbaa !11
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !11
  %i.dl = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dm = load float, ptr %i.di, align 4, !tbaa !11
  %i.dn = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 1
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 2
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 3 ; 2 uses
  %i.dr = fadd nsz <4 x float> %i.de, %i.dq       ; 2 uses
  %i.ds = fsub nsz <4 x float> %i.de, %i.dq
  %i.dt = fadd nsz <4 x float> %i.cr, %i.dr       ; 3 uses
  %i.du = fsub nsz <4 x float> %i.cr, %i.dr
  %i.dv = fpext nsz <4 x float> %i.du to <4 x double>
  %i.dw = fmul nsz <4 x double> %i.dv, splat (double f0x3FF6A09E667F3BCD)
  %i.dx = fptrunc nsz <4 x double> %i.dw to <4 x float>
  %i.dy = fpext nsz <4 x float> %i.cs to <4 x double> ; 2 uses
  %i.dz = fpext nsz <4 x float> %i.ds to <4 x double> ; 2 uses
  %i.ea = fmul nsz <4 x double> %i.dz, splat (double f0xBFFD906BCF328D46)
  %i.eb = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dy, <4 x double> splat (double f0xBFE87DE2A6AEA962), <4 x double> %i.ea)
  %i.ec = fptrunc nsz <4 x double> %i.eb to <4 x float>
  %i.ed = fmul nsz <4 x double> %i.dy, splat (double f0x3FFD906BCF328D46)
  %i.ee = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dz, <4 x double> splat (double f0xBFE87DE2A6AEA964), <4 x double> %i.ed)
  %i.ef = fptrunc nsz <4 x double> %i.ee to <4 x float>
  %i.eg = fsub nsz <4 x float> %i.ef, %i.dt       ; 3 uses
  %i.eh = fsub nsz <4 x float> %i.dx, %i.eg       ; 3 uses
  %i.ei = fadd nsz <4 x float> %i.eh, %i.ec       ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.en = load float, ptr %i.ej, align 8, !tbaa !11
  %i.eo = load float, ptr %i.ek, align 8, !tbaa !11
  %i.ep = load float, ptr %i.el, align 8, !tbaa !11
  %i.eq = load float, ptr %i.em, align 8, !tbaa !11
  %i.er = insertelement <4 x float> poison, float %i.en, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.ey = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  %i.ez = load float, ptr %i.ev, align 8, !tbaa !11
  %i.fa = load float, ptr %i.ew, align 8, !tbaa !11
  %i.fb = load float, ptr %i.ex, align 8, !tbaa !11
  %i.fc = load float, ptr %i.ey, align 8, !tbaa !11
  %i.fd = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.fa, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 3 ; 2 uses
  %i.fh = fadd nsz <4 x float> %i.eu, %i.fg       ; 3 uses
  %i.fi = fsub nsz <4 x float> %i.eu, %i.fg
  %i.fj = fpext nsz <4 x float> %i.fi to <4 x double>
  %i.fk = fmul nsz <4 x double> %i.fj, splat (double f0x3FF6A09E667F3BCD)
  %i.fl = fptrunc nsz <4 x double> %i.fk to <4 x float>
  %i.fm = fsub nsz <4 x float> %i.fl, %i.fh       ; 2 uses
  %i.fn = load float, ptr %i.bm, align 16, !tbaa !11
  %i.fo = load float, ptr %i.bo, align 16, !tbaa !11
  %i.fp = load float, ptr %i.bq, align 16, !tbaa !11
  %i.fq = load float, ptr %i.bs, align 16, !tbaa !11
  %i.fr = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 1
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.fy = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.fz = load float, ptr %i.fv, align 16, !tbaa !11
  %i.ga = load float, ptr %i.fw, align 16, !tbaa !11
  %i.gb = load float, ptr %i.fx, align 16, !tbaa !11
  %i.gc = load float, ptr %i.fy, align 16, !tbaa !11
  %i.gd = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 3 ; 2 uses
  %i.gh = fadd nsz <4 x float> %i.fu, %i.gg       ; 2 uses
  %i.gi = fsub nsz <4 x float> %i.fu, %i.gg       ; 2 uses
  %i.gj = fadd nsz <4 x float> %i.fh, %i.gh       ; 2 uses
  %i.gk = fsub nsz <4 x float> %i.gh, %i.fh       ; 2 uses
  %i.gl = fadd nsz <4 x float> %i.gi, %i.fm       ; 2 uses
  %i.gm = fsub nsz <4 x float> %i.gi, %i.fm       ; 2 uses
  %i.gn = fadd nsz <4 x float> %i.eh, %i.gm
  %i.go = fsub nsz <4 x float> %i.gm, %i.eh
  %i.gp = fsub nsz <4 x float> %i.gk, %i.ei
  %i.gq = fadd nsz <4 x float> %i.gk, %i.ei
  %1 = fadd nsz <4 x float> %i.dt, %i.gj
  %2 = fadd nsz <4 x float> %i.eg, %i.gl
  %3 = shufflevector <4 x float> %1, <4 x float> %2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = fsub nsz <4 x float> %i.gl, %i.eg
  %5 = fsub nsz <4 x float> %i.gj, %i.dt
  %6 = shufflevector <4 x float> %4, <4 x float> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gt = shufflevector <8 x float> %3, <8 x float> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gu = shufflevector <8 x float> %i.gs, <8 x float> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gt, <16 x float> %i.gu, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bm, align 16, !tbaa !11
  %index.next19 = add nuw i64 %index18, 4         ; 2 uses
  %i.gv = icmp eq i64 %index.next19, 8
  br i1 %i.gv, label %vector.body22, label %vector.body17, !llvm.loop !13

vector.body22:                                    ; preds = %vector.body17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %wide.load24 = load <4 x float>, ptr %i.gw, align 16, !tbaa !11 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %wide.load25 = load <4 x float>, ptr %i.gx, align 16, !tbaa !11 ; 2 uses
  %i.gy = fadd nsz <4 x float> %wide.load24, %wide.load25 ; 2 uses
  %i.gz = fsub nsz <4 x float> %wide.load24, %wide.load25
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %wide.load26 = load <4 x float>, ptr %i.ha, align 16, !tbaa !11 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %wide.load27 = load <4 x float>, ptr %i.hb, align 16, !tbaa !11 ; 2 uses
  %i.hc = fadd nsz <4 x float> %wide.load26, %wide.load27 ; 2 uses
  %i.hd = fsub nsz <4 x float> %wide.load26, %wide.load27
  %i.he = fadd nsz <4 x float> %i.gy, %i.hc       ; 3 uses
  %i.hf = fsub nsz <4 x float> %i.gy, %i.hc
  %i.hg = fpext nsz <4 x float> %i.hf to <4 x double>
  %i.hh = fmul nsz <4 x double> %i.hg, splat (double f0x3FF6A09E667F3BCD)
  %i.hi = fptrunc nsz <4 x double> %i.hh to <4 x float>
  %i.hj = fpext nsz <4 x float> %i.gz to <4 x double> ; 2 uses
  %i.hk = fpext nsz <4 x float> %i.hd to <4 x double> ; 2 uses
  %i.hl = fmul nsz <4 x double> %i.hk, splat (double f0xBFFD906BCF328D46)
  %i.hm = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hj, <4 x double> splat (double f0xBFE87DE2A6AEA962), <4 x double> %i.hl)
  %i.hn = fptrunc nsz <4 x double> %i.hm to <4 x float>
  %i.ho = fmul nsz <4 x double> %i.hj, splat (double f0x3FFD906BCF328D46)
  %i.hp = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hk, <4 x double> splat (double f0xBFE87DE2A6AEA964), <4 x double> %i.ho)
  %i.hq = fptrunc nsz <4 x double> %i.hp to <4 x float>
  %i.hr = fsub nsz <4 x float> %i.hq, %i.he       ; 3 uses
  %i.hs = fsub nsz <4 x float> %i.hi, %i.hr       ; 3 uses
  %i.ht = fadd nsz <4 x float> %i.hs, %i.hn       ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %wide.load28 = load <4 x float>, ptr %i.hu, align 16, !tbaa !11 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %wide.load29 = load <4 x float>, ptr %i.hv, align 16, !tbaa !11 ; 2 uses
  %i.hw = fadd nsz <4 x float> %wide.load28, %wide.load29 ; 3 uses
  %i.hx = fsub nsz <4 x float> %wide.load28, %wide.load29
  %i.hy = fpext nsz <4 x float> %i.hx to <4 x double>
  %i.hz = fmul nsz <4 x double> %i.hy, splat (double f0x3FF6A09E667F3BCD)
  %i.ia = fptrunc nsz <4 x double> %i.hz to <4 x float>
  %i.ib = fsub nsz <4 x float> %i.ia, %i.hw       ; 2 uses
  %wide.load30 = load <4 x float>, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %wide.load31 = load <4 x float>, ptr %i.ic, align 16, !tbaa !11 ; 2 uses
  %i.id = fadd nsz <4 x float> %wide.load30, %wide.load31 ; 2 uses
  %i.ie = fsub nsz <4 x float> %wide.load30, %wide.load31 ; 2 uses
  %i.if = fadd nsz <4 x float> %i.hw, %i.id       ; 2 uses
  %i.ig = fsub nsz <4 x float> %i.id, %i.hw       ; 2 uses
  %i.ih = fadd nsz <4 x float> %i.ie, %i.ib       ; 2 uses
  %i.ii = fsub nsz <4 x float> %i.ie, %i.ib       ; 2 uses
  %i.ij = fadd nsz <4 x float> %i.he, %i.if
  %i.ik = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.ij)
  %i.il = trunc <4 x i64> %i.ik to <4 x i16>
  store <4 x i16> %i.il, ptr %0, align 2, !tbaa !9
  %i.im = fsub nsz <4 x float> %i.if, %i.he
  %i.in = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.im)
  %i.io = trunc <4 x i64> %i.in to <4 x i16>
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i16> %i.io, ptr %i.ip, align 2, !tbaa !9
  %i.iq = fadd nsz <4 x float> %i.hr, %i.ih
  %i.ir = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.iq)
  %i.is = trunc <4 x i64> %i.ir to <4 x i16>
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i16> %i.is, ptr %i.it, align 2, !tbaa !9
  %i.iu = fsub nsz <4 x float> %i.ih, %i.hr
  %i.iv = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.iu)
  %i.iw = trunc <4 x i64> %i.iv to <4 x i16>
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i16> %i.iw, ptr %i.ix, align 2, !tbaa !9
  %i.iy = fadd nsz <4 x float> %i.hs, %i.ii
  %i.iz = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.iy)
  %i.ja = trunc <4 x i64> %i.iz to <4 x i16>
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i16> %i.ja, ptr %i.jb, align 2, !tbaa !9
  %i.jc = fsub nsz <4 x float> %i.ii, %i.hs
  %i.jd = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.jc)
  %i.je = trunc <4 x i64> %i.jd to <4 x i16>
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i16> %i.je, ptr %i.jf, align 2, !tbaa !9
  %i.jg = fsub nsz <4 x float> %i.ig, %i.ht
  %i.jh = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.jg)
  %i.ji = trunc <4 x i64> %i.jh to <4 x i16>
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i16> %i.ji, ptr %i.jj, align 2, !tbaa !9
  %i.jk = fadd nsz <4 x float> %i.ig, %i.ht
  %i.jl = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.jk)
  %i.jm = trunc <4 x i64> %i.jl to <4 x i16>
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i16> %i.jm, ptr %i.jn, align 2, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %wide.load24.1 = load <4 x float>, ptr %i.jo, align 16, !tbaa !11 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %wide.load25.1 = load <4 x float>, ptr %i.jp, align 16, !tbaa !11 ; 2 uses
  %i.jq = fadd nsz <4 x float> %wide.load24.1, %wide.load25.1 ; 2 uses
  %i.jr = fsub nsz <4 x float> %wide.load24.1, %wide.load25.1
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %wide.load26.1 = load <4 x float>, ptr %i.js, align 16, !tbaa !11 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %wide.load27.1 = load <4 x float>, ptr %i.jt, align 16, !tbaa !11 ; 2 uses
  %i.ju = fadd nsz <4 x float> %wide.load26.1, %wide.load27.1 ; 2 uses
  %i.jv = fsub nsz <4 x float> %wide.load26.1, %wide.load27.1
  %i.jw = fadd nsz <4 x float> %i.jq, %i.ju       ; 3 uses
  %i.jx = fsub nsz <4 x float> %i.jq, %i.ju
  %i.jy = fpext nsz <4 x float> %i.jx to <4 x double>
  %i.jz = fmul nsz <4 x double> %i.jy, splat (double f0x3FF6A09E667F3BCD)
  %i.ka = fptrunc nsz <4 x double> %i.jz to <4 x float>
  %i.kb = fpext nsz <4 x float> %i.jr to <4 x double> ; 2 uses
  %i.kc = fpext nsz <4 x float> %i.jv to <4 x double> ; 2 uses
  %i.kd = fmul nsz <4 x double> %i.kc, splat (double f0xBFFD906BCF328D46)
  %i.ke = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kb, <4 x double> splat (double f0xBFE87DE2A6AEA962), <4 x double> %i.kd)
  %i.kf = fptrunc nsz <4 x double> %i.ke to <4 x float>
  %i.kg = fmul nsz <4 x double> %i.kb, splat (double f0x3FFD906BCF328D46)
  %i.kh = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kc, <4 x double> splat (double f0xBFE87DE2A6AEA964), <4 x double> %i.kg)
  %i.ki = fptrunc nsz <4 x double> %i.kh to <4 x float>
  %i.kj = fsub nsz <4 x float> %i.ki, %i.jw       ; 3 uses
  %i.kk = fsub nsz <4 x float> %i.ka, %i.kj       ; 3 uses
  %i.kl = fadd nsz <4 x float> %i.kk, %i.kf       ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %wide.load28.1 = load <4 x float>, ptr %i.km, align 16, !tbaa !11 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %wide.load29.1 = load <4 x float>, ptr %i.kn, align 16, !tbaa !11 ; 2 uses
  %i.ko = fadd nsz <4 x float> %wide.load28.1, %wide.load29.1 ; 3 uses
  %i.kp = fsub nsz <4 x float> %wide.load28.1, %wide.load29.1
  %i.kq = fpext nsz <4 x float> %i.kp to <4 x double>
  %i.kr = fmul nsz <4 x double> %i.kq, splat (double f0x3FF6A09E667F3BCD)
  %i.ks = fptrunc nsz <4 x double> %i.kr to <4 x float>
  %i.kt = fsub nsz <4 x float> %i.ks, %i.ko       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load30.1 = load <4 x float>, ptr %i.ku, align 16, !tbaa !11 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %wide.load31.1 = load <4 x float>, ptr %i.kv, align 16, !tbaa !11 ; 2 uses
  %i.kw = fadd nsz <4 x float> %wide.load30.1, %wide.load31.1 ; 2 uses
  %i.kx = fsub nsz <4 x float> %wide.load30.1, %wide.load31.1 ; 2 uses
  %i.ky = fadd nsz <4 x float> %i.ko, %i.kw       ; 2 uses
  %i.kz = fsub nsz <4 x float> %i.kw, %i.ko       ; 2 uses
  %i.la = fadd nsz <4 x float> %i.kx, %i.kt       ; 2 uses
  %i.lb = fsub nsz <4 x float> %i.kx, %i.kt       ; 2 uses
  %i.lc = fadd nsz <4 x float> %i.jw, %i.ky
  %i.ld = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.lc)
  %i.le = trunc <4 x i64> %i.ld to <4 x i16>
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i16> %i.le, ptr %i.lf, align 2, !tbaa !9
  %i.lg = fsub nsz <4 x float> %i.ky, %i.jw
  %i.lh = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.lg)
  %i.li = trunc <4 x i64> %i.lh to <4 x i16>
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <4 x i16> %i.li, ptr %i.lj, align 2, !tbaa !9
  %i.lk = fadd nsz <4 x float> %i.kj, %i.la
  %i.ll = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.lk)
  %i.lm = trunc <4 x i64> %i.ll to <4 x i16>
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i16> %i.lm, ptr %i.ln, align 2, !tbaa !9
  %i.lo = fsub nsz <4 x float> %i.la, %i.kj
  %i.lp = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.lo)
  %i.lq = trunc <4 x i64> %i.lp to <4 x i16>
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i16> %i.lq, ptr %i.lr, align 2, !tbaa !9
  %i.ls = fadd nsz <4 x float> %i.kk, %i.lb
  %i.lt = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.ls)
  %i.lu = trunc <4 x i64> %i.lt to <4 x i16>
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i16> %i.lu, ptr %i.lv, align 2, !tbaa !9
  %i.lw = fsub nsz <4 x float> %i.lb, %i.kk
  %i.lx = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.lw)
  %i.ly = trunc <4 x i64> %i.lx to <4 x i16>
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i16> %i.ly, ptr %i.lz, align 2, !tbaa !9
  %i.ma = fsub nsz <4 x float> %i.kz, %i.kl
  %i.mb = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.ma)
  %i.mc = trunc <4 x i64> %i.mb to <4 x i16>
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i16> %i.mc, ptr %i.md, align 2, !tbaa !9
  %i.me = fadd nsz <4 x float> %i.kz, %i.kl
  %i.mf = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.me)
  %i.mg = trunc <4 x i64> %i.mf to <4 x i16>
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x i16> %i.mg, ptr %i.mh, align 2, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @p8idct(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i32 noundef range(i32 1, 9) %4, i32 noundef range(i32 1, 9) %5, i32 noundef range(i32 0, 4) %6) unnamed_addr #2 {
bb.a:
  %i.a = shl nuw nsw i32 %5, 3
  %i.b = mul nuw nsw i32 %4, 7
  %i.c = mul nuw nsw i32 %4, 5
  %i.d = mul nuw nsw i32 %4, 3
  %i.e = shl nuw nsw i32 %4, 1
  %i.f = mul nuw nsw i32 %4, 6
  %i.g = shl nuw nsw i32 %4, 2
end_hunk_0
begin_hunk_1_@ff_faanidct_add:vector.ph
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.x, align 2, !tbaa !9
  %wide.load10.3 = load <4 x i16>, ptr %i.y, align 2, !tbaa !9
  %i.z = sitofp <4 x i16> %wide.load.3 to <4 x float>
  %i.aa = sitofp <4 x i16> %wide.load10.3 to <4 x float>
  %i.ab = fmul nnan nsz <4 x float> %i.z, <float f0x3E168317, float f0x3E50C429, float f0x3E44A74C, float f0x3E30FBC5>
  %i.ac = fmul nnan nsz <4 x float> %i.aa, <float f0x3E168317, float f0x3DEC835E, float f0x3DA2E9C1, float f0x3D261AD1>
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x float> %i.ab, ptr %i.ad, align 16, !tbaa !11
  store <4 x float> %i.ac, ptr %i.ae, align 16, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  %wide.load.4 = load <4 x i16>, ptr %i.af, align 2, !tbaa !9
  %wide.load10.4 = load <4 x i16>, ptr %i.ag, align 2, !tbaa !9
  %i.ah = sitofp <4 x i16> %wide.load.4 to <4 x float>
  %i.ai = sitofp <4 x i16> %wide.load10.4 to <4 x float>
  %i.aj = fmul nnan nsz <4 x float> %i.ah, <float 1.250000e-01, float f0x3E318A86, float f0x3E273D75, float f0x3E168317>
  %i.ak = fmul nnan nsz <4 x float> %i.ai, <float 1.250000e-01, float f0x3DC9234E, float f0x3D8A8BD4, float f0x3D0D42AF>
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x float> %i.aj, ptr %i.al, align 16, !tbaa !11
  store <4 x float> %i.ak, ptr %i.am, align 16, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 88
  %wide.load.5 = load <4 x i16>, ptr %i.an, align 2, !tbaa !9
  %wide.load10.5 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !9
  %i.ap = sitofp <4 x i16> %wide.load.5 to <4 x float>
  %i.aq = sitofp <4 x i16> %wide.load10.5 to <4 x float>
  %i.ar = fmul nnan nsz <4 x float> %i.ap, <float f0x3DC9234E, float f0x3E0B7E3F, float 1.283200e-01, float f0x3DEC835E>
  %i.as = fmul nnan nsz <4 x float> %i.aq, <float f0x3DC9234E, float f0x3D9E0875, float f0x3D59B5C9, float f0x3CDDF9AD>
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !11
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %wide.load.6 = load <4 x i16>, ptr %i.av, align 2, !tbaa !9
  %wide.load10.6 = load <4 x i16>, ptr %i.aw, align 2, !tbaa !9
  %i.ax = sitofp <4 x i16> %wide.load.6 to <4 x float>
  %i.ay = sitofp <4 x i16> %wide.load10.6 to <4 x float>
  %i.az = fmul nnan nsz <4 x float> %i.ax, <float f0x3D8A8BD4, float f0x3DC02B4A, float f0x3DB504F3, float f0x3DA2E9C1>
  %i.ba = fmul nnan nsz <4 x float> %i.ay, <float f0x3D8A8BD4, float f0x3D59B5C9, float f0x3D15F61A, float f0x3C98E635>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x float> %i.az, ptr %i.bb, align 16, !tbaa !11
  store <4 x float> %i.ba, ptr %i.bc, align 16, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 120
  %wide.load.7 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !9
  %wide.load10.7 = load <4 x i16>, ptr %i.be, align 2, !tbaa !9
  %i.bf = sitofp <4 x i16> %wide.load.7 to <4 x float>
  %i.bg = sitofp <4 x i16> %wide.load10.7 to <4 x float>
  %i.bh = fmul nnan nsz <4 x float> %i.bf, <float f0x3D0D42AF, float f0x3D43EF15, float f0x3D3890D3, float f0x3D261AD1>
  %i.bi = fmul nnan nsz <4 x float> %i.bg, <float f0x3D0D42AF, float f0x3CDDF9AD, float f0x3C98E635, float f0x3C1BE50C>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x float> %i.bh, ptr %i.bj, align 16, !tbaa !11
  store <4 x float> %i.bi, ptr %i.bk, align 16, !tbaa !11
  br label %vector.body14

vector.body14:                                    ; preds = %vector.ph, %vector.body14
  %index15 = phi i64 [ %index.next16, %vector.body14 ], [ 0, %vector.ph ] ; 2 uses
  %i.bl = shl nuw i64 %index15, 3                 ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 9 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !11
  %i.by = load float, ptr %i.bu, align 4, !tbaa !11
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !11
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !11
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 92
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 124
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !11
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !11
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !11
  %i.cn = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 2
  %i.cq = insertelement <4 x float> %i.cp, float %i.cm, i64 3 ; 2 uses
  %i.cr = fadd nsz <4 x float> %i.ce, %i.cq       ; 2 uses
  %i.cs = fsub nsz <4 x float> %i.ce, %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 84
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 116
  %i.cx = load float, ptr %i.ct, align 4, !tbaa !11
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !11
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !11
  %i.da = load float, ptr %i.cw, align 4, !tbaa !11
  %i.db = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 3 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  %i.di = getelementptr inbounds nuw i8, ptr %i.br, i64 108
  %i.dj = load float, ptr %i.df, align 4, !tbaa !11
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !11
  %i.dl = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dm = load float, ptr %i.di, align 4, !tbaa !11
  %i.dn = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 1
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 2
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 3 ; 2 uses
  %i.dr = fadd nsz <4 x float> %i.de, %i.dq       ; 2 uses
  %i.ds = fsub nsz <4 x float> %i.de, %i.dq
  %i.dt = fadd nsz <4 x float> %i.cr, %i.dr       ; 3 uses
  %i.du = fsub nsz <4 x float> %i.cr, %i.dr
  %i.dv = fpext nsz <4 x float> %i.du to <4 x double>
  %i.dw = fmul nsz <4 x double> %i.dv, splat (double f0x3FF6A09E667F3BCD)
  %i.dx = fptrunc nsz <4 x double> %i.dw to <4 x float>
  %i.dy = fpext nsz <4 x float> %i.cs to <4 x double> ; 2 uses
  %i.dz = fpext nsz <4 x float> %i.ds to <4 x double> ; 2 uses
  %i.ea = fmul nsz <4 x double> %i.dz, splat (double f0xBFFD906BCF328D46)
  %i.eb = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dy, <4 x double> splat (double f0xBFE87DE2A6AEA962), <4 x double> %i.ea)
  %i.ec = fptrunc nsz <4 x double> %i.eb to <4 x float>
  %i.ed = fmul nsz <4 x double> %i.dy, splat (double f0x3FFD906BCF328D46)
  %i.ee = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dz, <4 x double> splat (double f0xBFE87DE2A6AEA964), <4 x double> %i.ed)
  %i.ef = fptrunc nsz <4 x double> %i.ee to <4 x float>
  %i.eg = fsub nsz <4 x float> %i.ef, %i.dt       ; 3 uses
  %i.eh = fsub nsz <4 x float> %i.dx, %i.eg       ; 3 uses
  %i.ei = fadd nsz <4 x float> %i.eh, %i.ec       ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.en = load float, ptr %i.ej, align 8, !tbaa !11
  %i.eo = load float, ptr %i.ek, align 8, !tbaa !11
  %i.ep = load float, ptr %i.el, align 8, !tbaa !11
  %i.eq = load float, ptr %i.em, align 8, !tbaa !11
  %i.er = insertelement <4 x float> poison, float %i.en, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.ey = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  %i.ez = load float, ptr %i.ev, align 8, !tbaa !11
  %i.fa = load float, ptr %i.ew, align 8, !tbaa !11
  %i.fb = load float, ptr %i.ex, align 8, !tbaa !11
  %i.fc = load float, ptr %i.ey, align 8, !tbaa !11
  %i.fd = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.fa, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 3 ; 2 uses
  %i.fh = fadd nsz <4 x float> %i.eu, %i.fg       ; 3 uses
  %i.fi = fsub nsz <4 x float> %i.eu, %i.fg
  %i.fj = fpext nsz <4 x float> %i.fi to <4 x double>
  %i.fk = fmul nsz <4 x double> %i.fj, splat (double f0x3FF6A09E667F3BCD)
  %i.fl = fptrunc nsz <4 x double> %i.fk to <4 x float>
  %i.fm = fsub nsz <4 x float> %i.fl, %i.fh       ; 2 uses
  %i.fn = load float, ptr %i.bm, align 16, !tbaa !11
  %i.fo = load float, ptr %i.bo, align 16, !tbaa !11
  %i.fp = load float, ptr %i.bq, align 16, !tbaa !11
  %i.fq = load float, ptr %i.bs, align 16, !tbaa !11
  %i.fr = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 1
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.fy = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.fz = load float, ptr %i.fv, align 16, !tbaa !11
  %i.ga = load float, ptr %i.fw, align 16, !tbaa !11
  %i.gb = load float, ptr %i.fx, align 16, !tbaa !11
  %i.gc = load float, ptr %i.fy, align 16, !tbaa !11
  %i.gd = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 3 ; 2 uses
  %i.gh = fadd nsz <4 x float> %i.fu, %i.gg       ; 2 uses
  %i.gi = fsub nsz <4 x float> %i.fu, %i.gg       ; 2 uses
  %i.gj = fadd nsz <4 x float> %i.fh, %i.gh       ; 2 uses
  %i.gk = fsub nsz <4 x float> %i.gh, %i.fh       ; 2 uses
  %i.gl = fadd nsz <4 x float> %i.gi, %i.fm       ; 2 uses
  %i.gm = fsub nsz <4 x float> %i.gi, %i.fm       ; 2 uses
  %i.gn = fadd nsz <4 x float> %i.eh, %i.gm
  %i.go = fsub nsz <4 x float> %i.gm, %i.eh
  %i.gp = fsub nsz <4 x float> %i.gk, %i.ei
  %i.gq = fadd nsz <4 x float> %i.gk, %i.ei
  %3 = fadd nsz <4 x float> %i.dt, %i.gj
  %4 = fadd nsz <4 x float> %i.eg, %i.gl
  %5 = shufflevector <4 x float> %3, <4 x float> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = fsub nsz <4 x float> %i.gl, %i.eg
  %7 = fsub nsz <4 x float> %i.gj, %i.dt
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gt = shufflevector <8 x float> %5, <8 x float> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gu = shufflevector <8 x float> %i.gs, <8 x float> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gt, <16 x float> %i.gu, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bm, align 16, !tbaa !11
  %index.next16 = add nuw i64 %index15, 4         ; 2 uses
  %i.gv = icmp eq i64 %index.next16, 8
  br i1 %i.gv, label %p8idct.exit, label %vector.body14, !llvm.loop !19

p8idct.exit:                                      ; preds = %vector.body14
  call fastcc void @p8idct(ptr noundef null, ptr noundef %i.a, ptr noundef %0, i64 noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_faanidct_put(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
vector.ph:
  %i.a = alloca [64 x float], align 16            ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.load = load <4 x i16>, ptr %2, align 2, !tbaa !9
  %wide.load10 = load <4 x i16>, ptr %i.b, align 2, !tbaa !9
  %i.c = sitofp <4 x i16> %wide.load to <4 x float>
  %i.d = sitofp <4 x i16> %wide.load10 to <4 x float>
  %i.e = fmul nnan nsz <4 x float> %i.c, <float 1.250000e-01, float f0x3E318A86, float f0x3E273D75, float f0x3E168317>
  %i.f = fmul nnan nsz <4 x float> %i.d, <float 1.250000e-01, float f0x3DC9234E, float f0x3D8A8BD4, float f0x3D0D42AF>
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x float> %i.e, ptr %i.a, align 16, !tbaa !11
  store <4 x float> %i.f, ptr %i.g, align 16, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %wide.load.1 = load <4 x i16>, ptr %i.h, align 2, !tbaa !9
  %wide.load10.1 = load <4 x i16>, ptr %i.i, align 2, !tbaa !9
  %i.j = sitofp <4 x i16> %wide.load.1 to <4 x float>
  %i.k = sitofp <4 x i16> %wide.load10.1 to <4 x float>
  %i.l = fmul nnan nsz <4 x float> %i.j, <float f0x3E318A86, float f0x3E7641AF, float f0x3E67F7F8, float f0x3E50C429>
  %i.m = fmul nnan nsz <4 x float> %i.k, <float f0x3E318A86, float f0x3E0B7E3F, float f0x3DC02B4A, float f0x3D43EF15>
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x float> %i.l, ptr %i.n, align 16, !tbaa !11
  store <4 x float> %i.m, ptr %i.o, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %wide.load.2 = load <4 x i16>, ptr %i.p, align 2, !tbaa !9
  %wide.load10.2 = load <4 x i16>, ptr %i.q, align 2, !tbaa !9
  %i.r = sitofp <4 x i16> %wide.load.2 to <4 x float>
  %i.s = sitofp <4 x i16> %wide.load10.2 to <4 x float>
  %i.t = fmul nnan nsz <4 x float> %i.r, <float f0x3E273D75, float f0x3E67F7F8, float f0x3E5A827A, float f0x3E44A74C>
  %i.u = fmul nnan nsz <4 x float> %i.s, <float f0x3E273D75, float 1.283200e-01, float f0x3DB504F3, float f0x3D3890D3>
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x float> %i.t, ptr %i.v, align 16, !tbaa !11
  store <4 x float> %i.u, ptr %i.w, align 16, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.x, align 2, !tbaa !9
  %wide.load10.3 = load <4 x i16>, ptr %i.y, align 2, !tbaa !9
  %i.z = sitofp <4 x i16> %wide.load.3 to <4 x float>
  %i.aa = sitofp <4 x i16> %wide.load10.3 to <4 x float>
  %i.ab = fmul nnan nsz <4 x float> %i.z, <float f0x3E168317, float f0x3E50C429, float f0x3E44A74C, float f0x3E30FBC5>
  %i.ac = fmul nnan nsz <4 x float> %i.aa, <float f0x3E168317, float f0x3DEC835E, float f0x3DA2E9C1, float f0x3D261AD1>
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x float> %i.ab, ptr %i.ad, align 16, !tbaa !11
  store <4 x float> %i.ac, ptr %i.ae, align 16, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  %wide.load.4 = load <4 x i16>, ptr %i.af, align 2, !tbaa !9
  %wide.load10.4 = load <4 x i16>, ptr %i.ag, align 2, !tbaa !9
  %i.ah = sitofp <4 x i16> %wide.load.4 to <4 x float>
  %i.ai = sitofp <4 x i16> %wide.load10.4 to <4 x float>
  %i.aj = fmul nnan nsz <4 x float> %i.ah, <float 1.250000e-01, float f0x3E318A86, float f0x3E273D75, float f0x3E168317>
  %i.ak = fmul nnan nsz <4 x float> %i.ai, <float 1.250000e-01, float f0x3DC9234E, float f0x3D8A8BD4, float f0x3D0D42AF>
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x float> %i.aj, ptr %i.al, align 16, !tbaa !11
  store <4 x float> %i.ak, ptr %i.am, align 16, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 88
  %wide.load.5 = load <4 x i16>, ptr %i.an, align 2, !tbaa !9
  %wide.load10.5 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !9
  %i.ap = sitofp <4 x i16> %wide.load.5 to <4 x float>
  %i.aq = sitofp <4 x i16> %wide.load10.5 to <4 x float>
  %i.ar = fmul nnan nsz <4 x float> %i.ap, <float f0x3DC9234E, float f0x3E0B7E3F, float 1.283200e-01, float f0x3DEC835E>
  %i.as = fmul nnan nsz <4 x float> %i.aq, <float f0x3DC9234E, float f0x3D9E0875, float f0x3D59B5C9, float f0x3CDDF9AD>
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x float> %i.ar, ptr %i.at, align 16, !tbaa !11
  store <4 x float> %i.as, ptr %i.au, align 16, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %wide.load.6 = load <4 x i16>, ptr %i.av, align 2, !tbaa !9
  %wide.load10.6 = load <4 x i16>, ptr %i.aw, align 2, !tbaa !9
  %i.ax = sitofp <4 x i16> %wide.load.6 to <4 x float>
  %i.ay = sitofp <4 x i16> %wide.load10.6 to <4 x float>
  %i.az = fmul nnan nsz <4 x float> %i.ax, <float f0x3D8A8BD4, float f0x3DC02B4A, float f0x3DB504F3, float f0x3DA2E9C1>
  %i.ba = fmul nnan nsz <4 x float> %i.ay, <float f0x3D8A8BD4, float f0x3D59B5C9, float f0x3D15F61A, float f0x3C98E635>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x float> %i.az, ptr %i.bb, align 16, !tbaa !11
  store <4 x float> %i.ba, ptr %i.bc, align 16, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 120
  %wide.load.7 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !9
  %wide.load10.7 = load <4 x i16>, ptr %i.be, align 2, !tbaa !9
  %i.bf = sitofp <4 x i16> %wide.load.7 to <4 x float>
  %i.bg = sitofp <4 x i16> %wide.load10.7 to <4 x float>
  %i.bh = fmul nnan nsz <4 x float> %i.bf, <float f0x3D0D42AF, float f0x3D43EF15, float f0x3D3890D3, float f0x3D261AD1>
  %i.bi = fmul nnan nsz <4 x float> %i.bg, <float f0x3D0D42AF, float f0x3CDDF9AD, float f0x3C98E635, float f0x3C1BE50C>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x float> %i.bh, ptr %i.bj, align 16, !tbaa !11
  store <4 x float> %i.bi, ptr %i.bk, align 16, !tbaa !11
  br label %vector.body14

vector.body14:                                    ; preds = %vector.ph, %vector.body14
  %index15 = phi i64 [ %index.next16, %vector.body14 ], [ 0, %vector.ph ] ; 2 uses
  %i.bl = shl nuw i64 %index15, 3                 ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 9 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bl ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !11
  %i.by = load float, ptr %i.bu, align 4, !tbaa !11
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !11
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !11
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 92
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 124
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !11
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !11
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !11
  %i.cn = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 2
  %i.cq = insertelement <4 x float> %i.cp, float %i.cm, i64 3 ; 2 uses
  %i.cr = fadd nsz <4 x float> %i.ce, %i.cq       ; 2 uses
  %i.cs = fsub nsz <4 x float> %i.ce, %i.cq
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 84
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 116
  %i.cx = load float, ptr %i.ct, align 4, !tbaa !11
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !11
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !11
  %i.da = load float, ptr %i.cw, align 4, !tbaa !11
  %i.db = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 3 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  %i.di = getelementptr inbounds nuw i8, ptr %i.br, i64 108
  %i.dj = load float, ptr %i.df, align 4, !tbaa !11
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !11
  %i.dl = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dm = load float, ptr %i.di, align 4, !tbaa !11
  %i.dn = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 1
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 2
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 3 ; 2 uses
  %i.dr = fadd nsz <4 x float> %i.de, %i.dq       ; 2 uses
  %i.ds = fsub nsz <4 x float> %i.de, %i.dq
  %i.dt = fadd nsz <4 x float> %i.cr, %i.dr       ; 3 uses
  %i.du = fsub nsz <4 x float> %i.cr, %i.dr
  %i.dv = fpext nsz <4 x float> %i.du to <4 x double>
  %i.dw = fmul nsz <4 x double> %i.dv, splat (double f0x3FF6A09E667F3BCD)
  %i.dx = fptrunc nsz <4 x double> %i.dw to <4 x float>
  %i.dy = fpext nsz <4 x float> %i.cs to <4 x double> ; 2 uses
  %i.dz = fpext nsz <4 x float> %i.ds to <4 x double> ; 2 uses
  %i.ea = fmul nsz <4 x double> %i.dz, splat (double f0xBFFD906BCF328D46)
  %i.eb = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dy, <4 x double> splat (double f0xBFE87DE2A6AEA962), <4 x double> %i.ea)
  %i.ec = fptrunc nsz <4 x double> %i.eb to <4 x float>
  %i.ed = fmul nsz <4 x double> %i.dy, splat (double f0x3FFD906BCF328D46)
  %i.ee = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dz, <4 x double> splat (double f0xBFE87DE2A6AEA964), <4 x double> %i.ed)
  %i.ef = fptrunc nsz <4 x double> %i.ee to <4 x float>
  %i.eg = fsub nsz <4 x float> %i.ef, %i.dt       ; 3 uses
  %i.eh = fsub nsz <4 x float> %i.dx, %i.eg       ; 3 uses
  %i.ei = fadd nsz <4 x float> %i.eh, %i.ec       ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.en = load float, ptr %i.ej, align 8, !tbaa !11
  %i.eo = load float, ptr %i.ek, align 8, !tbaa !11
  %i.ep = load float, ptr %i.el, align 8, !tbaa !11
  %i.eq = load float, ptr %i.em, align 8, !tbaa !11
  %i.er = insertelement <4 x float> poison, float %i.en, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 2
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.ey = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  %i.ez = load float, ptr %i.ev, align 8, !tbaa !11
  %i.fa = load float, ptr %i.ew, align 8, !tbaa !11
  %i.fb = load float, ptr %i.ex, align 8, !tbaa !11
  %i.fc = load float, ptr %i.ey, align 8, !tbaa !11
  %i.fd = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.fa, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 3 ; 2 uses
  %i.fh = fadd nsz <4 x float> %i.eu, %i.fg       ; 3 uses
  %i.fi = fsub nsz <4 x float> %i.eu, %i.fg
  %i.fj = fpext nsz <4 x float> %i.fi to <4 x double>
  %i.fk = fmul nsz <4 x double> %i.fj, splat (double f0x3FF6A09E667F3BCD)
  %i.fl = fptrunc nsz <4 x double> %i.fk to <4 x float>
  %i.fm = fsub nsz <4 x float> %i.fl, %i.fh       ; 2 uses
  %i.fn = load float, ptr %i.bm, align 16, !tbaa !11
  %i.fo = load float, ptr %i.bo, align 16, !tbaa !11
  %i.fp = load float, ptr %i.bq, align 16, !tbaa !11
  %i.fq = load float, ptr %i.bs, align 16, !tbaa !11
  %i.fr = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 1
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.fy = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  %i.fz = load float, ptr %i.fv, align 16, !tbaa !11
  %i.ga = load float, ptr %i.fw, align 16, !tbaa !11
  %i.gb = load float, ptr %i.fx, align 16, !tbaa !11
  %i.gc = load float, ptr %i.fy, align 16, !tbaa !11
  %i.gd = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 3 ; 2 uses
  %i.gh = fadd nsz <4 x float> %i.fu, %i.gg       ; 2 uses
  %i.gi = fsub nsz <4 x float> %i.fu, %i.gg       ; 2 uses
  %i.gj = fadd nsz <4 x float> %i.fh, %i.gh       ; 2 uses
  %i.gk = fsub nsz <4 x float> %i.gh, %i.fh       ; 2 uses
  %i.gl = fadd nsz <4 x float> %i.gi, %i.fm       ; 2 uses
  %i.gm = fsub nsz <4 x float> %i.gi, %i.fm       ; 2 uses
  %i.gn = fadd nsz <4 x float> %i.eh, %i.gm
  %i.go = fsub nsz <4 x float> %i.gm, %i.eh
  %i.gp = fsub nsz <4 x float> %i.gk, %i.ei
  %i.gq = fadd nsz <4 x float> %i.gk, %i.ei
  %3 = fadd nsz <4 x float> %i.dt, %i.gj
  %4 = fadd nsz <4 x float> %i.eg, %i.gl
  %5 = shufflevector <4 x float> %3, <4 x float> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = fsub nsz <4 x float> %i.gl, %i.eg
  %7 = fsub nsz <4 x float> %i.gj, %i.dt
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gt = shufflevector <8 x float> %5, <8 x float> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gu = shufflevector <8 x float> %i.gs, <8 x float> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gt, <16 x float> %i.gu, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bm, align 16, !tbaa !11
  %index.next16 = add nuw i64 %index15, 4         ; 2 uses
  %i.gv = icmp eq i64 %index.next16, 8
  br i1 %i.gv, label %p8idct.exit, label %vector.body14, !llvm.loop !20

p8idct.exit:                                      ; preds = %vector.body14
  call fastcc void @p8idct(ptr noundef null, ptr noundef %i.a, ptr noundef %0, i64 noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14, !15, !16}
!20 = distinct !{!20, !14, !15, !16}
end_hunk_1
