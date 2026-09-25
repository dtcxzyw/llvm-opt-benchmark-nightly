Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvXs14_CsfRIMZ2Mh1DJ_3aesNtB6_6Aes256NtCsMUNYOjkRLa_13crypto_common7KeyInit3new:bb.a
  %i.aj = add nuw nsw i64 %.sroa.022.087.i, 32
  %i.ak = add nsw i64 %.sroa.027.086.i, -1        ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.022.087.i ; 13 uses
  %i.am = load <2 x i64>, ptr %i.al, align 8, !alias.scope !98107, !noalias !98097 ; 3 uses
  %i.an = lshr <2 x i64> %i.am, splat (i64 8)
  %i.ao = xor <2 x i64> %i.an, %i.am
  %i.ap = and <2 x i64> %i.ao, splat (i64 4223219883048960) ; 2 uses
  %i.aq = shl nuw nsw <2 x i64> %i.ap, splat (i64 8)
  %i.ar = xor <2 x i64> %i.am, %i.aq
  %i.as = xor <2 x i64> %i.ar, %i.ap              ; 3 uses
  %i.at = lshr <2 x i64> %i.as, splat (i64 4)
  %i.au = xor <2 x i64> %i.at, %i.as
  %i.av = and <2 x i64> %i.au, splat (i64 1085086035472220160) ; 2 uses
  %i.aw = shl nuw <2 x i64> %i.av, splat (i64 4)
  %i.ax = xor <2 x i64> %i.as, %i.aw
  %i.ay = xor <2 x i64> %i.ax, %i.av
  store <2 x i64> %i.ay, ptr %i.al, align 8, !alias.scope !98108, !noalias !98097
  %.sroa.02.0.ptr.2.i43.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.az = load <2 x i64>, ptr %.sroa.02.0.ptr.2.i43.i, align 8, !alias.scope !98107, !noalias !98097 ; 3 uses
  %i.ba = lshr <2 x i64> %i.az, splat (i64 8)
  %i.bb = xor <2 x i64> %i.ba, %i.az
  %i.bc = and <2 x i64> %i.bb, splat (i64 4223219883048960) ; 2 uses
  %i.bd = shl nuw nsw <2 x i64> %i.bc, splat (i64 8)
  %i.be = xor <2 x i64> %i.az, %i.bd
  %i.bf = xor <2 x i64> %i.be, %i.bc              ; 3 uses
  %i.bg = lshr <2 x i64> %i.bf, splat (i64 4)
  %i.bh = xor <2 x i64> %i.bg, %i.bf
  %i.bi = and <2 x i64> %i.bh, splat (i64 1085086035472220160) ; 2 uses
  %i.bj = shl nuw <2 x i64> %i.bi, splat (i64 4)
  %i.bk = xor <2 x i64> %i.bf, %i.bj
  %i.bl = xor <2 x i64> %i.bk, %i.bi
  store <2 x i64> %i.bl, ptr %.sroa.02.0.ptr.2.i43.i, align 8, !alias.scope !98108, !noalias !98097
  %.sroa.02.0.ptr.4.i45.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.bm = load <2 x i64>, ptr %.sroa.02.0.ptr.4.i45.i, align 8, !alias.scope !98107, !noalias !98097 ; 3 uses
  %i.bn = lshr <2 x i64> %i.bm, splat (i64 8)
  %i.bo = xor <2 x i64> %i.bn, %i.bm
  %i.bp = and <2 x i64> %i.bo, splat (i64 4223219883048960) ; 2 uses
  %i.bq = shl nuw nsw <2 x i64> %i.bp, splat (i64 8)
  %i.br = xor <2 x i64> %i.bm, %i.bq
  %i.bs = xor <2 x i64> %i.br, %i.bp              ; 3 uses
  %i.bt = lshr <2 x i64> %i.bs, splat (i64 4)
  %i.bu = xor <2 x i64> %i.bt, %i.bs
  %i.bv = and <2 x i64> %i.bu, splat (i64 1085086035472220160) ; 2 uses
  %i.bw = shl nuw <2 x i64> %i.bv, splat (i64 4)
  %i.bx = xor <2 x i64> %i.bs, %i.bw
  %i.by = xor <2 x i64> %i.bx, %i.bv
  store <2 x i64> %i.by, ptr %.sroa.02.0.ptr.4.i45.i, align 8, !alias.scope !98108, !noalias !98097
  %.sroa.02.0.ptr.6.i47.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.bz = load <2 x i64>, ptr %.sroa.02.0.ptr.6.i47.i, align 8, !alias.scope !98107, !noalias !98097 ; 3 uses
  %i.ca = lshr <2 x i64> %i.bz, splat (i64 8)
  %i.cb = xor <2 x i64> %i.ca, %i.bz
  %i.cc = and <2 x i64> %i.cb, splat (i64 4223219883048960) ; 2 uses
  %i.cd = shl nuw nsw <2 x i64> %i.cc, splat (i64 8)
  %i.ce = xor <2 x i64> %i.bz, %i.cd
  %i.cf = xor <2 x i64> %i.ce, %i.cc              ; 3 uses
  %i.cg = lshr <2 x i64> %i.cf, splat (i64 4)
  %i.ch = xor <2 x i64> %i.cg, %i.cf
  %i.ci = and <2 x i64> %i.ch, splat (i64 1085086035472220160) ; 2 uses
  %i.cj = shl nuw <2 x i64> %i.ci, splat (i64 4)
  %i.ck = xor <2 x i64> %i.cf, %i.cj
  %i.cl = xor <2 x i64> %i.ck, %i.ci
  store <2 x i64> %i.cl, ptr %.sroa.02.0.ptr.6.i47.i, align 8, !alias.scope !98108, !noalias !98097
  %i.cm = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cm, align 8, !alias.scope !98109, !noalias !98097 ; 3 uses
  %i.co = lshr <2 x i64> %i.cn, splat (i64 8)
  %i.cp = xor <2 x i64> %i.co, %i.cn
  %i.cq = and <2 x i64> %i.cp, splat (i64 71776119077928960) ; 2 uses
  %i.cr = shl nuw <2 x i64> %i.cq, splat (i64 8)
  %i.cs = xor <2 x i64> %i.cn, %i.cr
  %i.ct = xor <2 x i64> %i.cs, %i.cq
  store <2 x i64> %i.ct, ptr %i.cm, align 8, !alias.scope !98110, !noalias !98097
  %.sroa.02.0.ptr.2.i50.i = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.cu = load <2 x i64>, ptr %.sroa.02.0.ptr.2.i50.i, align 8, !alias.scope !98109, !noalias !98097 ; 3 uses
  %i.cv = lshr <2 x i64> %i.cu, splat (i64 8)
  %i.cw = xor <2 x i64> %i.cv, %i.cu
  %i.cx = and <2 x i64> %i.cw, splat (i64 71776119077928960) ; 2 uses
  %i.cy = shl nuw <2 x i64> %i.cx, splat (i64 8)
  %i.cz = xor <2 x i64> %i.cu, %i.cy
  %i.da = xor <2 x i64> %i.cz, %i.cx
  store <2 x i64> %i.da, ptr %.sroa.02.0.ptr.2.i50.i, align 8, !alias.scope !98110, !noalias !98097
  %.sroa.02.0.ptr.4.i52.i = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.db = load <2 x i64>, ptr %.sroa.02.0.ptr.4.i52.i, align 8, !alias.scope !98109, !noalias !98097 ; 3 uses
  %i.dc = lshr <2 x i64> %i.db, splat (i64 8)
  %i.dd = xor <2 x i64> %i.dc, %i.db
  %i.de = and <2 x i64> %i.dd, splat (i64 71776119077928960) ; 2 uses
  %i.df = shl nuw <2 x i64> %i.de, splat (i64 8)
  %i.dg = xor <2 x i64> %i.db, %i.df
  %i.dh = xor <2 x i64> %i.dg, %i.de
  store <2 x i64> %i.dh, ptr %.sroa.02.0.ptr.4.i52.i, align 8, !alias.scope !98110, !noalias !98097
  %.sroa.02.0.ptr.6.i54.i = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.di = load <2 x i64>, ptr %.sroa.02.0.ptr.6.i54.i, align 8, !alias.scope !98109, !noalias !98097 ; 3 uses
  %i.dj = lshr <2 x i64> %i.di, splat (i64 8)
  %i.dk = xor <2 x i64> %i.dj, %i.di
  %i.dl = and <2 x i64> %i.dk, splat (i64 71776119077928960) ; 2 uses
  %i.dm = shl nuw <2 x i64> %i.dl, splat (i64 8)
  %i.dn = xor <2 x i64> %i.di, %i.dm
  %i.do = xor <2 x i64> %i.dn, %i.dl
  store <2 x i64> %i.do, ptr %.sroa.02.0.ptr.6.i54.i, align 8, !alias.scope !98110, !noalias !98097
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  %i.dq = load <2 x i64>, ptr %i.dp, align 8, !alias.scope !98111, !noalias !98097 ; 3 uses
  %i.dr = lshr <2 x i64> %i.dq, splat (i64 8)
  %i.ds = xor <2 x i64> %i.dr, %i.dq
  %i.dt = and <2 x i64> %i.ds, splat (i64 67555089628200960) ; 2 uses
  %i.du = shl nuw <2 x i64> %i.dt, splat (i64 8)
  %i.dv = xor <2 x i64> %i.dq, %i.du
  %i.dw = xor <2 x i64> %i.dv, %i.dt              ; 3 uses
  %i.dx = lshr <2 x i64> %i.dw, splat (i64 4)
  %i.dy = xor <2 x i64> %i.dx, %i.dw
  %i.dz = and <2 x i64> %i.dy, splat (i64 1085086035472220160) ; 2 uses
  %i.ea = shl nuw <2 x i64> %i.dz, splat (i64 4)
  %i.eb = xor <2 x i64> %i.dw, %i.ea
  %i.ec = xor <2 x i64> %i.eb, %i.dz
  store <2 x i64> %i.ec, ptr %i.dp, align 8, !alias.scope !98112, !noalias !98097
  %.sroa.02.0.ptr.2.i57.i = getelementptr inbounds nuw i8, ptr %i.al, i64 144 ; 2 uses
  %i.ed = load <2 x i64>, ptr %.sroa.02.0.ptr.2.i57.i, align 8, !alias.scope !98111, !noalias !98097 ; 3 uses
  %i.ee = lshr <2 x i64> %i.ed, splat (i64 8)
  %i.ef = xor <2 x i64> %i.ee, %i.ed
  %i.eg = and <2 x i64> %i.ef, splat (i64 67555089628200960) ; 2 uses
  %i.eh = shl nuw <2 x i64> %i.eg, splat (i64 8)
  %i.ei = xor <2 x i64> %i.ed, %i.eh
  %i.ej = xor <2 x i64> %i.ei, %i.eg              ; 3 uses
  %i.ek = lshr <2 x i64> %i.ej, splat (i64 4)
  %i.el = xor <2 x i64> %i.ek, %i.ej
  %i.em = and <2 x i64> %i.el, splat (i64 1085086035472220160) ; 2 uses
  %i.en = shl nuw <2 x i64> %i.em, splat (i64 4)
  %i.eo = xor <2 x i64> %i.ej, %i.en
  %i.ep = xor <2 x i64> %i.eo, %i.em
  store <2 x i64> %i.ep, ptr %.sroa.02.0.ptr.2.i57.i, align 8, !alias.scope !98112, !noalias !98097
  %.sroa.02.0.ptr.4.i59.i = getelementptr inbounds nuw i8, ptr %i.al, i64 160 ; 2 uses
  %i.eq = load <2 x i64>, ptr %.sroa.02.0.ptr.4.i59.i, align 8, !alias.scope !98111, !noalias !98097 ; 3 uses
  %i.er = lshr <2 x i64> %i.eq, splat (i64 8)
  %i.es = xor <2 x i64> %i.er, %i.eq
  %i.et = and <2 x i64> %i.es, splat (i64 67555089628200960) ; 2 uses
  %i.eu = shl nuw <2 x i64> %i.et, splat (i64 8)
  %i.ev = xor <2 x i64> %i.eq, %i.eu
  %i.ew = xor <2 x i64> %i.ev, %i.et              ; 3 uses
  %i.ex = lshr <2 x i64> %i.ew, splat (i64 4)
  %i.ey = xor <2 x i64> %i.ex, %i.ew
  %i.ez = and <2 x i64> %i.ey, splat (i64 1085086035472220160) ; 2 uses
  %i.fa = shl nuw <2 x i64> %i.ez, splat (i64 4)
  %i.fb = xor <2 x i64> %i.ew, %i.fa
  %i.fc = xor <2 x i64> %i.fb, %i.ez
  store <2 x i64> %i.fc, ptr %.sroa.02.0.ptr.4.i59.i, align 8, !alias.scope !98112, !noalias !98097
  %.sroa.02.0.ptr.6.i61.i = getelementptr inbounds nuw i8, ptr %i.al, i64 176 ; 2 uses
  %i.fd = load <2 x i64>, ptr %.sroa.02.0.ptr.6.i61.i, align 8, !alias.scope !98111, !noalias !98097 ; 3 uses
  %i.fe = lshr <2 x i64> %i.fd, splat (i64 8)
  %i.ff = xor <2 x i64> %i.fe, %i.fd
  %i.fg = and <2 x i64> %i.ff, splat (i64 67555089628200960) ; 2 uses
  %i.fh = shl nuw <2 x i64> %i.fg, splat (i64 8)
  %i.fi = xor <2 x i64> %i.fd, %i.fh
  %i.fj = xor <2 x i64> %i.fi, %i.fg              ; 3 uses
  %i.fk = lshr <2 x i64> %i.fj, splat (i64 4)
  %i.fl = xor <2 x i64> %i.fk, %i.fj
  %i.fm = and <2 x i64> %i.fl, splat (i64 1085086035472220160) ; 2 uses
  %i.fn = shl nuw <2 x i64> %i.fm, splat (i64 4)
  %i.fo = xor <2 x i64> %i.fj, %i.fn
  %i.fp = xor <2 x i64> %i.fo, %i.fm
  store <2 x i64> %i.fp, ptr %.sroa.02.0.ptr.6.i61.i, align 8, !alias.scope !98112, !noalias !98097
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice6aes25612key_scheduleyECsgZAIVb0XKpv_9ssservice.exit, label %.preheader.preheader.i

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils10memshift32yECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef 120, i64 noundef %i.x) #53, !noalias !98097
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.w ; 4 uses
  call fastcc void @_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox9sub_bytesyECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 %i.fq) #53
  %i.fr = load <2 x i64>, ptr %i.fq, align 8, !alias.scope !98113, !noalias !98097
  %i.fs = xor <2 x i64> %i.fr, splat (i64 -1)
  store <2 x i64> %i.fs, ptr %i.fq, align 8, !alias.scope !98113, !noalias !98097
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 40 ; 2 uses
  %i.fu = load <2 x i64>, ptr %i.ft, align 8, !alias.scope !98113, !noalias !98097
  %i.fv = xor <2 x i64> %i.fu, splat (i64 -1)
  store <2 x i64> %i.fv, ptr %i.ft, align 8, !alias.scope !98113, !noalias !98097
  call fastcc void @_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils11xor_columnsyECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef 120, i64 noundef %i.w, i64 noundef 16, i32 noundef 12) #53, !noalias !98097
  call fastcc void @_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils10memshift32yECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef 120, i64 noundef %i.w) #53, !noalias !98097
  %i.fw = add nuw nsw i64 %i.w, 8
  %i.fx = add nuw nsw i64 %i.w, 16
  br label %bb.c

_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice6aes25612key_scheduleyECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.preheader.preheader.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 832 ; 2 uses
  %.sroa.02.0.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 848 ; 2 uses
  %i.fz = load <2 x i64>, ptr %.sroa.02.0.ptr.2.i.i, align 8, !alias.scope !98114, !noalias !98097 ; 3 uses
  %i.ga = lshr <2 x i64> %i.fz, splat (i64 8)
  %i.gb = xor <2 x i64> %i.ga, %i.fz
  %i.gc = and <2 x i64> %i.gb, splat (i64 4223219883048960) ; 2 uses
  %i.gd = shl nuw nsw <2 x i64> %i.gc, splat (i64 8)
  %i.ge = xor <2 x i64> %i.fz, %i.gd
  %i.gf = xor <2 x i64> %i.ge, %i.gc              ; 3 uses
  %i.gg = lshr <2 x i64> %i.gf, splat (i64 4)
  %i.gh = xor <2 x i64> %i.gg, %i.gf
  %i.gi = and <2 x i64> %i.gh, splat (i64 1085086035472220160) ; 2 uses
  %i.gj = shl nuw <2 x i64> %i.gi, splat (i64 4)
  %i.gk = xor <2 x i64> %i.gf, %i.gj
  %i.gl = xor <2 x i64> %i.gk, %i.gi
  store <2 x i64> %i.gl, ptr %.sroa.02.0.ptr.2.i.i, align 8, !alias.scope !98115, !noalias !98097
  %.sroa.02.0.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 864 ; 2 uses
  %i.gm = load i64, ptr %.sroa.02.0.ptr.4.i.i, align 8, !alias.scope !98114, !noalias !98097, !noundef !178 ; 3 uses
  %.sroa.02.0.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 872 ; 2 uses
  %.sroa.02.0.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 888 ; 2 uses
  %i.gn = load i64, ptr %.sroa.02.0.ptr.7.i.i, align 8, !alias.scope !98114, !noalias !98097, !noundef !178 ; 3 uses
  %i.go = lshr i64 %i.gm, 8
  %2 = xor i64 %i.go, %i.gm
  %3 = lshr i64 %i.gn, 8
  %i.gp = xor i64 %3, %i.gn
  %i.gq = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.gr = insertelement <2 x i64> %i.gq, i64 %i.gp, i64 1
  %i.gs = and <2 x i64> %i.gr, splat (i64 4223219883048960) ; 2 uses
  %i.gt = shl nuw nsw <2 x i64> %i.gs, splat (i64 8)
  %i.gu = insertelement <2 x i64> poison, i64 %i.gm, i64 0
  %i.gv = insertelement <2 x i64> %i.gu, i64 %i.gn, i64 1
  %i.gw = xor <2 x i64> %i.gv, %i.gt
  %i.gx = xor <2 x i64> %i.gw, %i.gs              ; 3 uses
  %i.gy = lshr <2 x i64> %i.gx, splat (i64 4)
  %i.gz = xor <2 x i64> %i.gy, %i.gx
  %i.ha = and <2 x i64> %i.gz, splat (i64 1085086035472220160) ; 2 uses
  %i.hb = shl nuw <2 x i64> %i.ha, splat (i64 4)
  %i.hc = xor <2 x i64> %i.gx, %i.hb
  %i.hd = xor <2 x i64> %i.hc, %i.ha              ; 2 uses
  %i.he = extractelement <2 x i64> %i.hd, i64 0
  store i64 %i.he, ptr %.sroa.02.0.ptr.4.i.i, align 8, !alias.scope !98115, !noalias !98097
  %i.hf = extractelement <2 x i64> %i.hd, i64 1
  store i64 %i.hf, ptr %.sroa.02.0.ptr.7.i.i, align 8, !alias.scope !98115, !noalias !98097
  %i.hg = load <2 x i64>, ptr %i.h, align 8, !alias.scope !98116, !noalias !98097
  %i.hh = xor <2 x i64> %i.hg, splat (i64 -1)
  store <2 x i64> %i.hh, ptr %i.h, align 8, !alias.scope !98116, !noalias !98097
  %i.hi = load <2 x i64>, ptr %i.m, align 8, !alias.scope !98116, !noalias !98097
  %i.hj = xor <2 x i64> %i.hi, splat (i64 -1)
  store <2 x i64> %i.hj, ptr %i.m, align 8, !alias.scope !98116, !noalias !98097
  %i.hk = load <2 x i64>, ptr %i.u, align 8, !alias.scope !98116, !noalias !98097
  %i.hl = xor <2 x i64> %i.hk, splat (i64 -1)
  store <2 x i64> %i.hl, ptr %i.u, align 8, !alias.scope !98116, !noalias !98097
  %i.hm = load <2 x i64>, ptr %i.n, align 8, !alias.scope !98116, !noalias !98097
  %i.hn = xor <2 x i64> %i.hm, splat (i64 -1)
  store <2 x i64> %i.hn, ptr %i.n, align 8, !alias.scope !98116, !noalias !98097
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.hp = load <2 x i64>, ptr %i.ho, align 8, !alias.scope !98116, !noalias !98097
  %i.hq = xor <2 x i64> %i.hp, splat (i64 -1)
  store <2 x i64> %i.hq, ptr %i.ho, align 8, !alias.scope !98116, !noalias !98097
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 2 uses
  %i.hs = load <2 x i64>, ptr %i.hr, align 8, !alias.scope !98116, !noalias !98097
  %i.ht = xor <2 x i64> %i.hs, splat (i64 -1)
  store <2 x i64> %i.ht, ptr %i.hr, align 8, !alias.scope !98116, !noalias !98097
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  %i.hv = load <2 x i64>, ptr %i.hu, align 8, !alias.scope !98116, !noalias !98097
  %i.hw = xor <2 x i64> %i.hv, splat (i64 -1)
  store <2 x i64> %i.hw, ptr %i.hu, align 8, !alias.scope !98116, !noalias !98097
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 2 uses
  %i.hy = load <2 x i64>, ptr %i.hx, align 8, !alias.scope !98116, !noalias !98097
  %i.hz = xor <2 x i64> %i.hy, splat (i64 -1)
  store <2 x i64> %i.hz, ptr %i.hx, align 8, !alias.scope !98116, !noalias !98097
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 320 ; 2 uses
  %i.ib = load <2 x i64>, ptr %i.ia, align 8, !alias.scope !98116, !noalias !98097
  %i.ic = xor <2 x i64> %i.ib, splat (i64 -1)
  store <2 x i64> %i.ic, ptr %i.ia, align 8, !alias.scope !98116, !noalias !98097
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 360 ; 2 uses
  %i.ie = load <2 x i64>, ptr %i.id, align 8, !alias.scope !98116, !noalias !98097
  %i.if = xor <2 x i64> %i.ie, splat (i64 -1)
  store <2 x i64> %i.if, ptr %i.id, align 8, !alias.scope !98116, !noalias !98097
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.ih = load <2 x i64>, ptr %i.ig, align 8, !alias.scope !98116, !noalias !98097
  %i.ii = xor <2 x i64> %i.ih, splat (i64 -1)
  store <2 x i64> %i.ii, ptr %i.ig, align 8, !alias.scope !98116, !noalias !98097
  %i.ij = getelementptr inbounds nuw i8, ptr %i.e, i64 424 ; 2 uses
  %i.ik = load <2 x i64>, ptr %i.ij, align 8, !alias.scope !98116, !noalias !98097
  %i.il = xor <2 x i64> %i.ik, splat (i64 -1)
  store <2 x i64> %i.il, ptr %i.ij, align 8, !alias.scope !98116, !noalias !98097
  %i.im = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.in = load <2 x i64>, ptr %i.im, align 8, !alias.scope !98116, !noalias !98097
  %i.io = xor <2 x i64> %i.in, splat (i64 -1)
  store <2 x i64> %i.io, ptr %i.im, align 8, !alias.scope !98116, !noalias !98097
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 488 ; 2 uses
  %i.iq = load <2 x i64>, ptr %i.ip, align 8, !alias.scope !98116, !noalias !98097
  %i.ir = xor <2 x i64> %i.iq, splat (i64 -1)
  store <2 x i64> %i.ir, ptr %i.ip, align 8, !alias.scope !98116, !noalias !98097
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 512 ; 2 uses
  %i.it = load <2 x i64>, ptr %i.is, align 8, !alias.scope !98116, !noalias !98097
  %i.iu = xor <2 x i64> %i.it, splat (i64 -1)
  store <2 x i64> %i.iu, ptr %i.is, align 8, !alias.scope !98116, !noalias !98097
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 2 uses
  %i.iw = load <2 x i64>, ptr %i.iv, align 8, !alias.scope !98116, !noalias !98097
  %i.ix = xor <2 x i64> %i.iw, splat (i64 -1)
  store <2 x i64> %i.ix, ptr %i.iv, align 8, !alias.scope !98116, !noalias !98097
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 576 ; 2 uses
  %i.iz = load <2 x i64>, ptr %i.iy, align 8, !alias.scope !98116, !noalias !98097
  %i.ja = xor <2 x i64> %i.iz, splat (i64 -1)
  store <2 x i64> %i.ja, ptr %i.iy, align 8, !alias.scope !98116, !noalias !98097
  %i.jb = getelementptr inbounds nuw i8, ptr %i.e, i64 616 ; 2 uses
  %i.jc = load <2 x i64>, ptr %i.jb, align 8, !alias.scope !98116, !noalias !98097
  %i.jd = xor <2 x i64> %i.jc, splat (i64 -1)
  store <2 x i64> %i.jd, ptr %i.jb, align 8, !alias.scope !98116, !noalias !98097
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 640 ; 2 uses
  %i.jf = load <2 x i64>, ptr %i.je, align 8, !alias.scope !98116, !noalias !98097
  %i.jg = xor <2 x i64> %i.jf, splat (i64 -1)
  store <2 x i64> %i.jg, ptr %i.je, align 8, !alias.scope !98116, !noalias !98097
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 680 ; 2 uses
  %i.ji = load <2 x i64>, ptr %i.jh, align 8, !alias.scope !98116, !noalias !98097
  %i.jj = xor <2 x i64> %i.ji, splat (i64 -1)
  store <2 x i64> %i.jj, ptr %i.jh, align 8, !alias.scope !98116, !noalias !98097
  %i.jk = getelementptr inbounds nuw i8, ptr %i.e, i64 704 ; 2 uses
  %i.jl = load <2 x i64>, ptr %i.jk, align 8, !alias.scope !98116, !noalias !98097
  %i.jm = xor <2 x i64> %i.jl, splat (i64 -1)
  store <2 x i64> %i.jm, ptr %i.jk, align 8, !alias.scope !98116, !noalias !98097
  %i.jn = getelementptr inbounds nuw i8, ptr %i.e, i64 744 ; 2 uses
  %i.jo = load <2 x i64>, ptr %i.jn, align 8, !alias.scope !98116, !noalias !98097
  %i.jp = xor <2 x i64> %i.jo, splat (i64 -1)
  store <2 x i64> %i.jp, ptr %i.jn, align 8, !alias.scope !98116, !noalias !98097
  %i.jq = getelementptr inbounds nuw i8, ptr %i.e, i64 768 ; 2 uses
  %i.jr = load <2 x i64>, ptr %i.jq, align 8, !alias.scope !98116, !noalias !98097
  %i.js = xor <2 x i64> %i.jr, splat (i64 -1)
  store <2 x i64> %i.js, ptr %i.jq, align 8, !alias.scope !98116, !noalias !98097
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 808 ; 2 uses
  %i.ju = load <2 x i64>, ptr %i.jt, align 8, !alias.scope !98116, !noalias !98097
  %i.jv = xor <2 x i64> %i.ju, splat (i64 -1)
  store <2 x i64> %i.jv, ptr %i.jt, align 8, !alias.scope !98116, !noalias !98097
  %i.jw = load <2 x i64>, ptr %i.fy, align 8, !alias.scope !98114, !noalias !98097 ; 3 uses
  %i.jx = lshr <2 x i64> %i.jw, splat (i64 8)
  %i.jy = xor <2 x i64> %i.jx, %i.jw
  %i.jz = and <2 x i64> %i.jy, splat (i64 4223219883048960) ; 2 uses
  %i.ka = shl nuw nsw <2 x i64> %i.jz, splat (i64 8)
  %i.kb = xor <2 x i64> %i.jw, %i.ka
  %i.kc = xor <2 x i64> %i.kb, %i.jz              ; 3 uses
  %i.kd = lshr <2 x i64> %i.kc, splat (i64 4)
  %i.ke = xor <2 x i64> %i.kd, %i.kc
  %i.kf = and <2 x i64> %i.ke, splat (i64 1085086035472220160) ; 2 uses
  %i.kg = shl nuw <2 x i64> %i.kf, splat (i64 4)
  %i.kh = xor <2 x i64> %i.kc, %i.kg
  %i.ki = xor <2 x i64> %i.kh, %i.kf
  %i.kj = xor <2 x i64> %i.ki, splat (i64 -1)
  store <2 x i64> %i.kj, ptr %i.fy, align 8, !alias.scope !98116, !noalias !98097
  %i.kk = load <2 x i64>, ptr %.sroa.02.0.ptr.5.i.i, align 8, !alias.scope !98114, !noalias !98097 ; 3 uses
  %i.kl = lshr <2 x i64> %i.kk, splat (i64 8)
  %i.km = xor <2 x i64> %i.kl, %i.kk
  %i.kn = and <2 x i64> %i.km, splat (i64 4223219883048960) ; 2 uses
  %i.ko = shl nuw nsw <2 x i64> %i.kn, splat (i64 8)
  %i.kp = xor <2 x i64> %i.kk, %i.ko
  %i.kq = xor <2 x i64> %i.kp, %i.kn              ; 3 uses
  %i.kr = lshr <2 x i64> %i.kq, splat (i64 4)
  %i.ks = xor <2 x i64> %i.kr, %i.kq
  %i.kt = and <2 x i64> %i.ks, splat (i64 1085086035472220160) ; 2 uses
  %i.ku = shl nuw <2 x i64> %i.kt, splat (i64 4)
  %i.kv = xor <2 x i64> %i.kq, %i.ku
  %i.kw = xor <2 x i64> %i.kv, %i.kt
  %i.kx = xor <2 x i64> %i.kw, splat (i64 -1)
  store <2 x i64> %i.kx, ptr %.sroa.02.0.ptr.5.i.i, align 8, !alias.scope !98116, !noalias !98097
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 896 ; 2 uses
  %i.kz = load <2 x i64>, ptr %i.ky, align 8, !alias.scope !98116, !noalias !98097
  %i.la = xor <2 x i64> %i.kz, splat (i64 -1)
  store <2 x i64> %i.la, ptr %i.ky, align 8, !alias.scope !98116, !noalias !98097
  %i.lb = getelementptr inbounds nuw i8, ptr %i.e, i64 936 ; 2 uses
  %i.lc = load <2 x i64>, ptr %i.lb, align 8, !alias.scope !98116, !noalias !98097
  %i.ld = xor <2 x i64> %i.lc, splat (i64 -1)
  store <2 x i64> %i.ld, ptr %i.lb, align 8, !alias.scope !98116, !noalias !98097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(960) %0, ptr noundef nonnull align 8 dereferenceable(960) %i.e, i64 960, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98097
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.val = load <2 x i64>, ptr %1, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load <2 x i64>, ptr %i.le, align 1
  tail call fastcc void @_RNvMsq_NtNtCsfRIMZ2Mh1DJ_3aes8backends7x86_aesINtB5_3AesKjf_E3new(ptr noalias nofree noundef align 16 captures(none) dereferenceable(480) %0, <2 x i64> %.val, <2 x i64> %.val1) #61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice6aes25612key_scheduleyECsgZAIVb0XKpv_9ssservice.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs16_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB6_9RedirTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !199, !noundef !178 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs16_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB6_9RedirTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs16_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB6_9RedirTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.5901, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #53
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs19_NtCslxdWNweD0x2_11shadowsocks6configNtB6_12ServerConfigNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7 = alloca [32 x i8], align 4            ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.57.sroa.0 = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.57.sroa.8 = alloca [16 x i8], align 8    ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.6 = alloca [32 x i8], align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.j = load i16, ptr %i.i, align 8, !range !179, !noundef !178
  %i.k = trunc nuw i16 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
end_hunk_0
