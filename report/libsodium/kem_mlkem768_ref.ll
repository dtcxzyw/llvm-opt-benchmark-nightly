Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/kem_mlkem768_ref?download=true
inline.NumInlined: 68
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumUnrolled: 86
begin_hunk_0_@indcpa_enc:vector.ph
  %i.d = mul nuw i64 %index, 3
  %i.e = mul nuw i64 %index, 3
  %i.f = mul nuw i64 %index, 3
  %i.g = getelementptr i8, ptr %2, i64 %i.c       ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.d       ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 3
  %i.j = getelementptr i8, ptr %2, i64 %i.e       ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 6
  %i.l = getelementptr i8, ptr %2, i64 %i.f       ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 9
  %i.n = load i8, ptr %i.g, align 1
  %i.o = load i8, ptr %i.i, align 1
  %i.p = load i8, ptr %i.k, align 1
  %i.q = load i8, ptr %i.m, align 1
  %i.r = insertelement <4 x i8> poison, i8 %i.n, i64 0
  %i.s = insertelement <4 x i8> %i.r, i8 %i.o, i64 1
  %i.t = insertelement <4 x i8> %i.s, i8 %i.p, i64 2
  %i.u = insertelement <4 x i8> %i.t, i8 %i.q, i64 3
  %i.v = zext <4 x i8> %i.u to <4 x i16>
  %i.w = getelementptr i8, ptr %i.g, i64 1
  %i.x = getelementptr i8, ptr %i.h, i64 4
  %i.y = getelementptr i8, ptr %i.j, i64 7
  %i.z = getelementptr i8, ptr %i.l, i64 10
  %i.aa = load i8, ptr %i.w, align 1
  %i.ab = load i8, ptr %i.x, align 1
  %i.ac = load i8, ptr %i.y, align 1
  %i.ad = load i8, ptr %i.z, align 1
  %i.ae = insertelement <4 x i8> poison, i8 %i.aa, i64 0
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.ab, i64 1
  %i.ag = insertelement <4 x i8> %i.af, i8 %i.ac, i64 2
  %i.ah = insertelement <4 x i8> %i.ag, i8 %i.ad, i64 3 ; 2 uses
  %i.ai = zext <4 x i8> %i.ah to <4 x i16>
  %i.aj = shl nuw <4 x i16> %i.ai, splat (i16 8)
  %i.ak = and <4 x i16> %i.aj, splat (i16 3840)
  %i.al = or disjoint <4 x i16> %i.ak, %i.v
  %i.am = shl nuw nsw i64 %index, 2
  %i.an = getelementptr i8, ptr %7, i64 %i.am
  %i.ao = lshr <4 x i8> %i.ah, splat (i8 4)
  %i.ap = zext nneg <4 x i8> %i.ao to <4 x i16>
  %i.aq = getelementptr i8, ptr %i.g, i64 2
  %i.ar = getelementptr i8, ptr %i.h, i64 5
  %i.as = getelementptr i8, ptr %i.j, i64 8
  %i.at = getelementptr i8, ptr %i.l, i64 11
  %i.au = load i8, ptr %i.aq, align 1
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = load i8, ptr %i.at, align 1
  %i.ay = insertelement <4 x i8> poison, i8 %i.au, i64 0
  %i.az = insertelement <4 x i8> %i.ay, i8 %i.av, i64 1
  %i.ba = insertelement <4 x i8> %i.az, i8 %i.aw, i64 2
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ax, i64 3
  %i.bc = zext <4 x i8> %i.bb to <4 x i16>
  %i.bd = shl nuw nsw <4 x i16> %i.bc, splat (i16 4)
  %i.be = or disjoint <4 x i16> %i.bd, %i.ap
  %interleaved.vec = shufflevector <4 x i16> %i.al, <4 x i16> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.an, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, 128
  br i1 %i.bf, label %poly_frombytes.exit.i, label %vector.body, !llvm.loop !23

poly_frombytes.exit.i:                            ; preds = %vector.body
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 512 ; 2 uses
  %i.bh = getelementptr i8, ptr %2, i64 384       ; 4 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %poly_frombytes.exit.i
  %index121 = phi i64 [ 0, %poly_frombytes.exit.i ], [ %index.next123, %vector.body120 ] ; 6 uses
  %i.bi = mul nuw nsw i64 %index121, 3
  %i.bj = mul nuw i64 %index121, 3
  %i.bk = mul nuw i64 %index121, 3
  %i.bl = mul nuw i64 %index121, 3
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bi  ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bh, i64 %i.bj  ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 3
  %i.bp = getelementptr i8, ptr %i.bh, i64 %i.bk  ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 6
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bl  ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 9
  %i.bt = load i8, ptr %i.bm, align 1
  %i.bu = load i8, ptr %i.bo, align 1
  %i.bv = load i8, ptr %i.bq, align 1
  %i.bw = load i8, ptr %i.bs, align 1
  %i.bx = insertelement <4 x i8> poison, i8 %i.bt, i64 0
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 1
  %i.bz = insertelement <4 x i8> %i.by, i8 %i.bv, i64 2
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bw, i64 3
  %i.cb = zext <4 x i8> %i.ca to <4 x i16>
  %i.cc = getelementptr i8, ptr %i.bm, i64 1
  %i.cd = getelementptr i8, ptr %i.bn, i64 4
  %i.ce = getelementptr i8, ptr %i.bp, i64 7
  %i.cf = getelementptr i8, ptr %i.br, i64 10
  %i.cg = load i8, ptr %i.cc, align 1
  %i.ch = load i8, ptr %i.cd, align 1
  %i.ci = load i8, ptr %i.ce, align 1
  %i.cj = load i8, ptr %i.cf, align 1
  %i.ck = insertelement <4 x i8> poison, i8 %i.cg, i64 0
  %i.cl = insertelement <4 x i8> %i.ck, i8 %i.ch, i64 1
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.ci, i64 2
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cj, i64 3 ; 2 uses
  %i.co = zext <4 x i8> %i.cn to <4 x i16>
  %i.cp = shl nuw <4 x i16> %i.co, splat (i16 8)
  %i.cq = and <4 x i16> %i.cp, splat (i16 3840)
  %i.cr = or disjoint <4 x i16> %i.cq, %i.cb
  %i.cs = shl nuw nsw i64 %index121, 2
  %i.ct = getelementptr i8, ptr %i.bg, i64 %i.cs
  %i.cu = lshr <4 x i8> %i.cn, splat (i8 4)
  %i.cv = zext nneg <4 x i8> %i.cu to <4 x i16>
  %i.cw = getelementptr i8, ptr %i.bm, i64 2
  %i.cx = getelementptr i8, ptr %i.bn, i64 5
  %i.cy = getelementptr i8, ptr %i.bp, i64 8
  %i.cz = getelementptr i8, ptr %i.br, i64 11
  %i.da = load i8, ptr %i.cw, align 1
  %i.db = load i8, ptr %i.cx, align 1
  %i.dc = load i8, ptr %i.cy, align 1
  %i.dd = load i8, ptr %i.cz, align 1
  %i.de = insertelement <4 x i8> poison, i8 %i.da, i64 0
  %i.df = insertelement <4 x i8> %i.de, i8 %i.db, i64 1
  %i.dg = insertelement <4 x i8> %i.df, i8 %i.dc, i64 2
  %i.dh = insertelement <4 x i8> %i.dg, i8 %i.dd, i64 3
  %i.di = zext <4 x i8> %i.dh to <4 x i16>
  %i.dj = shl nuw nsw <4 x i16> %i.di, splat (i16 4)
  %i.dk = or disjoint <4 x i16> %i.dj, %i.cv
  %interleaved.vec122 = shufflevector <4 x i16> %i.cr, <4 x i16> %i.dk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec122, ptr %i.ct, align 2
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next123, 128
  br i1 %i.dl, label %poly_frombytes.exit.1.i, label %vector.body120, !llvm.loop !24

poly_frombytes.exit.1.i:                          ; preds = %vector.body120
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 1024 ; 2 uses
  %i.dn = getelementptr i8, ptr %2, i64 768       ; 4 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %poly_frombytes.exit.1.i
  %index127 = phi i64 [ 0, %poly_frombytes.exit.1.i ], [ %index.next129, %vector.body126 ] ; 6 uses
  %i.do = mul nuw nsw i64 %index127, 3
  %i.dp = mul nuw i64 %index127, 3
  %i.dq = mul nuw i64 %index127, 3
  %i.dr = mul nuw i64 %index127, 3
  %i.ds = getelementptr i8, ptr %i.dn, i64 %i.do  ; 3 uses
  %i.dt = getelementptr i8, ptr %i.dn, i64 %i.dp  ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 3
  %i.dv = getelementptr i8, ptr %i.dn, i64 %i.dq  ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 6
  %i.dx = getelementptr i8, ptr %i.dn, i64 %i.dr  ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 9
  %i.dz = load i8, ptr %i.ds, align 1
  %i.ea = load i8, ptr %i.du, align 1
  %i.eb = load i8, ptr %i.dw, align 1
  %i.ec = load i8, ptr %i.dy, align 1
  %i.ed = insertelement <4 x i8> poison, i8 %i.dz, i64 0
  %i.ee = insertelement <4 x i8> %i.ed, i8 %i.ea, i64 1
  %i.ef = insertelement <4 x i8> %i.ee, i8 %i.eb, i64 2
  %i.eg = insertelement <4 x i8> %i.ef, i8 %i.ec, i64 3
  %i.eh = zext <4 x i8> %i.eg to <4 x i16>
  %i.ei = getelementptr i8, ptr %i.ds, i64 1
  %i.ej = getelementptr i8, ptr %i.dt, i64 4
  %i.ek = getelementptr i8, ptr %i.dv, i64 7
  %i.el = getelementptr i8, ptr %i.dx, i64 10
  %i.em = load i8, ptr %i.ei, align 1
  %i.en = load i8, ptr %i.ej, align 1
  %i.eo = load i8, ptr %i.ek, align 1
  %i.ep = load i8, ptr %i.el, align 1
  %i.eq = insertelement <4 x i8> poison, i8 %i.em, i64 0
  %i.er = insertelement <4 x i8> %i.eq, i8 %i.en, i64 1
  %i.es = insertelement <4 x i8> %i.er, i8 %i.eo, i64 2
  %i.et = insertelement <4 x i8> %i.es, i8 %i.ep, i64 3 ; 2 uses
  %i.eu = zext <4 x i8> %i.et to <4 x i16>
  %i.ev = shl nuw <4 x i16> %i.eu, splat (i16 8)
  %i.ew = and <4 x i16> %i.ev, splat (i16 3840)
  %i.ex = or disjoint <4 x i16> %i.ew, %i.eh
  %i.ey = shl nuw nsw i64 %index127, 2
  %i.ez = getelementptr i8, ptr %i.dm, i64 %i.ey
  %i.fa = lshr <4 x i8> %i.et, splat (i8 4)
  %i.fb = zext nneg <4 x i8> %i.fa to <4 x i16>
  %i.fc = getelementptr i8, ptr %i.ds, i64 2
  %i.fd = getelementptr i8, ptr %i.dt, i64 5
  %i.fe = getelementptr i8, ptr %i.dv, i64 8
  %i.ff = getelementptr i8, ptr %i.dx, i64 11
  %i.fg = load i8, ptr %i.fc, align 1
  %i.fh = load i8, ptr %i.fd, align 1
  %i.fi = load i8, ptr %i.fe, align 1
  %i.fj = load i8, ptr %i.ff, align 1
  %i.fk = insertelement <4 x i8> poison, i8 %i.fg, i64 0
  %i.fl = insertelement <4 x i8> %i.fk, i8 %i.fh, i64 1
  %i.fm = insertelement <4 x i8> %i.fl, i8 %i.fi, i64 2
  %i.fn = insertelement <4 x i8> %i.fm, i8 %i.fj, i64 3
  %i.fo = zext <4 x i8> %i.fn to <4 x i16>
  %i.fp = shl nuw nsw <4 x i16> %i.fo, splat (i16 4)
  %i.fq = or disjoint <4 x i16> %i.fp, %i.fb
  %interleaved.vec128 = shufflevector <4 x i16> %i.ex, <4 x i16> %i.fq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec128, ptr %i.ez, align 2
  %index.next129 = add nuw i64 %index127, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next129, 128
  br i1 %i.fr, label %vector.body132, label %vector.body126, !llvm.loop !25

vector.body132:                                   ; preds = %vector.body126, %vector.body132
  %index133 = phi i64 [ %index.next135, %vector.body132 ], [ 0, %vector.body126 ] ; 3 uses
  %i.fs = getelementptr i8, ptr %1, i64 %index133
  %wide.load = load <8 x i8>, ptr %i.fs, align 1  ; 8 uses
  %14 = trunc <8 x i8> %wide.load to <8 x i1>
  %i.ft = select <8 x i1> %14, <8 x i16> splat (i16 1665), <8 x i16> zeroinitializer
  %i.fu = shl nuw nsw i64 %index133, 4
  %i.fv = getelementptr i8, ptr %12, i64 %i.fu
  %i.fw = and <8 x i8> %wide.load, splat (i8 2)
  %i.fx = icmp eq <8 x i8> %i.fw, zeroinitializer
  %i.fy = select <8 x i1> %i.fx, <8 x i16> zeroinitializer, <8 x i16> splat (i16 1665)
  %i.fz = and <8 x i8> %wide.load, splat (i8 4)
  %i.ga = icmp eq <8 x i8> %i.fz, zeroinitializer
  %i.gb = select <8 x i1> %i.ga, <8 x i16> zeroinitializer, <8 x i16> splat (i16 1665)
  %i.gc = and <8 x i8> %wide.load, splat (i8 8)
  %i.gd = icmp eq <8 x i8> %i.gc, zeroinitializer
  %i.ge = select <8 x i1> %i.gd, <8 x i16> zeroinitializer, <8 x i16> splat (i16 1665)
  %i.gf = and <8 x i8> %wide.load, splat (i8 16)
  %i.gg = icmp eq <8 x i8> %i.gf, zeroinitializer
  %i.gh = select <8 x i1> %i.gg, <8 x i16> zeroinitializer, <8 x i16> splat (i16 1665)
  %i.gi = and <8 x i8> %wide.load, splat (i8 32)
  %i.gj = icmp eq <8 x i8> %i.gi, zeroinitializer
  %i.gk = select <8 x i1> %i.gj, <8 x i16> zeroinitializer, <8 x i16> splat (i16 1665)
  %i.gl = and <8 x i8> %wide.load, splat (i8 64)
  %i.gm = icmp eq <8 x i8> %i.gl, zeroinitializer
  %i.gn = select <8 x i1> %i.gm, <8 x i16> zeroinitializer, <8 x i16> splat (i16 1665)
  %15 = icmp slt <8 x i8> %wide.load, zeroinitializer
  %i.go = select <8 x i1> %15, <8 x i16> splat (i16 1665), <8 x i16> zeroinitializer
  %i.gp = shufflevector <8 x i16> %i.ft, <8 x i16> %i.fy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gq = shufflevector <8 x i16> %i.gb, <8 x i16> %i.ge, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gr = shufflevector <8 x i16> %i.gh, <8 x i16> %i.gk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gs = shufflevector <8 x i16> %i.gn, <8 x i16> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <16 x i16> %i.gp, <16 x i16> %i.gq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gu = shufflevector <16 x i16> %i.gr, <16 x i16> %i.gs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec134 = shufflevector <32 x i16> %i.gt, <32 x i16> %i.gu, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec134, ptr %i.fv, align 16
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next135, 32
  br i1 %i.gv, label %poly_frommsg.exit, label %vector.body132, !llvm.loop !26

poly_frommsg.exit:                                ; preds = %vector.body132
  call fastcc void @gen_matrix(ptr noundef %9, ptr noundef %i.a, i32 noundef 1)
  call fastcc void @poly_getnoise_eta2(ptr noundef nonnull %6, ptr noundef %3, i8 noundef zeroext 0)
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 6 uses
  call fastcc void @poly_getnoise_eta2(ptr noundef nonnull %i.gw, ptr noundef %3, i8 noundef zeroext 1)
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 1024 ; 6 uses
  call fastcc void @poly_getnoise_eta2(ptr noundef nonnull %i.gx, ptr noundef %3, i8 noundef zeroext 2)
  call fastcc void @poly_getnoise_eta2(ptr noundef nonnull %8, ptr noundef %3, i8 noundef zeroext 3)
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 512 ; 2 uses
  call fastcc void @poly_getnoise_eta2(ptr noundef nonnull %i.gy, ptr noundef %3, i8 noundef zeroext 4)
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 2 uses
  call fastcc void @poly_getnoise_eta2(ptr noundef nonnull %i.gz, ptr noundef %3, i8 noundef zeroext 5)
  call fastcc void @poly_getnoise_eta2(ptr noundef nonnull %13, ptr noundef %3, i8 noundef zeroext 6)
  call fastcc void @polyvec_ntt(ptr noundef %6)
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %poly_frommsg.exit
  %index139 = phi i64 [ 0, %poly_frommsg.exit ], [ %index.next142, %vector.body138 ] ; 2 uses
  %i.ha = getelementptr [2 x i8], ptr %6, i64 %index139 ; 3 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 16     ; 2 uses
  %wide.load140 = load <8 x i16>, ptr %i.ha, align 2 ; 2 uses
  %wide.load141 = load <8 x i16>, ptr %i.hb, align 2 ; 2 uses
  %i.hc = sext <8 x i16> %wide.load140 to <8 x i32>
  %i.hd = sext <8 x i16> %wide.load141 to <8 x i32>
  %i.he = mul nsw <8 x i32> %i.hc, splat (i32 20159)
  %i.hf = mul nsw <8 x i32> %i.hd, splat (i32 20159)
  %i.hg = ashr <8 x i32> %i.he, splat (i32 26)
  %i.hh = ashr <8 x i32> %i.hf, splat (i32 26)
  %i.hi = trunc nsw <8 x i32> %i.hg to <8 x i16>
  %i.hj = trunc nsw <8 x i32> %i.hh to <8 x i16>
  %i.hk = mul <8 x i16> %i.hi, splat (i16 -3329)
  %i.hl = mul <8 x i16> %i.hj, splat (i16 -3329)
  %i.hm = add <8 x i16> %i.hk, %wide.load140
  %i.hn = add <8 x i16> %i.hl, %wide.load141
  store <8 x i16> %i.hm, ptr %i.ha, align 2
  store <8 x i16> %i.hn, ptr %i.hb, align 2
  %index.next142 = add nuw i64 %index139, 16      ; 2 uses
  %i.ho = icmp eq i64 %index.next142, 256
  br i1 %i.ho, label %vector.body145, label %vector.body138, !llvm.loop !27

vector.body145:                                   ; preds = %vector.body138, %vector.body145
  %index146 = phi i64 [ %index.next149, %vector.body145 ], [ 0, %vector.body138 ] ; 2 uses
  %i.hp = getelementptr [2 x i8], ptr %i.gw, i64 %index146 ; 3 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 16     ; 2 uses
  %wide.load147 = load <8 x i16>, ptr %i.hp, align 2 ; 2 uses
  %wide.load148 = load <8 x i16>, ptr %i.hq, align 2 ; 2 uses
  %i.hr = sext <8 x i16> %wide.load147 to <8 x i32>
  %i.hs = sext <8 x i16> %wide.load148 to <8 x i32>
  %i.ht = mul nsw <8 x i32> %i.hr, splat (i32 20159)
  %i.hu = mul nsw <8 x i32> %i.hs, splat (i32 20159)
  %i.hv = ashr <8 x i32> %i.ht, splat (i32 26)
  %i.hw = ashr <8 x i32> %i.hu, splat (i32 26)
  %i.hx = trunc nsw <8 x i32> %i.hv to <8 x i16>
  %i.hy = trunc nsw <8 x i32> %i.hw to <8 x i16>
  %i.hz = mul <8 x i16> %i.hx, splat (i16 -3329)
  %i.ia = mul <8 x i16> %i.hy, splat (i16 -3329)
  %i.ib = add <8 x i16> %i.hz, %wide.load147
  %i.ic = add <8 x i16> %i.ia, %wide.load148
  store <8 x i16> %i.ib, ptr %i.hp, align 2
  store <8 x i16> %i.ic, ptr %i.hq, align 2
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.id = icmp eq i64 %index.next149, 256
  br i1 %i.id, label %vector.body152, label %vector.body145, !llvm.loop !28

vector.body152:                                   ; preds = %vector.body145, %vector.body152
  %index153 = phi i64 [ %index.next156, %vector.body152 ], [ 0, %vector.body145 ] ; 2 uses
  %i.ie = getelementptr [2 x i8], ptr %i.gx, i64 %index153 ; 3 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 16     ; 2 uses
  %wide.load154 = load <8 x i16>, ptr %i.ie, align 2 ; 2 uses
  %wide.load155 = load <8 x i16>, ptr %i.if, align 2 ; 2 uses
  %i.ig = sext <8 x i16> %wide.load154 to <8 x i32>
  %i.ih = sext <8 x i16> %wide.load155 to <8 x i32>
  %i.ii = mul nsw <8 x i32> %i.ig, splat (i32 20159)
  %i.ij = mul nsw <8 x i32> %i.ih, splat (i32 20159)
  %i.ik = ashr <8 x i32> %i.ii, splat (i32 26)
  %i.il = ashr <8 x i32> %i.ij, splat (i32 26)
  %i.im = trunc nsw <8 x i32> %i.ik to <8 x i16>
  %i.in = trunc nsw <8 x i32> %i.il to <8 x i16>
  %i.io = mul <8 x i16> %i.im, splat (i16 -3329)
  %i.ip = mul <8 x i16> %i.in, splat (i16 -3329)
  %i.iq = add <8 x i16> %i.io, %wide.load154
  %i.ir = add <8 x i16> %i.ip, %wide.load155
  store <8 x i16> %i.iq, ptr %i.ie, align 2
  store <8 x i16> %i.ir, ptr %i.if, align 2
  %index.next156 = add nuw i64 %index153, 16      ; 2 uses
  %i.is = icmp eq i64 %index.next156, 256
  br i1 %i.is, label %polyvec_reduce.exit.preheader.preheader, label %vector.body152, !llvm.loop !29

polyvec_reduce.exit.preheader.preheader:          ; preds = %vector.body152
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call fastcc void @poly_basemul(ptr noundef nonnull %10, ptr noundef nonnull readonly %9, ptr noundef nonnull readonly %6)
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 512
  call fastcc void @poly_basemul(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.it, ptr noundef nonnull readonly %i.gw)
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %wide.load161 = load <8 x i16>, ptr %10, align 16
  %wide.load162 = load <8 x i16>, ptr %i.iu, align 16
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.load163 = load <8 x i16>, ptr %5, align 16
  %wide.load164 = load <8 x i16>, ptr %i.iv, align 16
  %i.iw = add <8 x i16> %wide.load163, %wide.load161
  %i.ix = add <8 x i16> %wide.load164, %wide.load162
  store <8 x i16> %i.iw, ptr %10, align 16
  store <8 x i16> %i.ix, ptr %i.iu, align 16
  %i.iy = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %wide.load161.1 = load <8 x i16>, ptr %i.iy, align 16
  %wide.load162.1 = load <8 x i16>, ptr %i.iz, align 16
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 48
  %wide.load163.1 = load <8 x i16>, ptr %i.ja, align 16
  %wide.load164.1 = load <8 x i16>, ptr %i.jb, align 16
  %i.jc = add <8 x i16> %wide.load163.1, %wide.load161.1
  %i.jd = add <8 x i16> %wide.load164.1, %wide.load162.1
  store <8 x i16> %i.jc, ptr %i.iy, align 16
  store <8 x i16> %i.jd, ptr %i.iz, align 16
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %wide.load161.2 = load <8 x i16>, ptr %i.je, align 16
  %wide.load162.2 = load <8 x i16>, ptr %i.jf, align 16
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 80
  %wide.load163.2 = load <8 x i16>, ptr %i.jg, align 16
  %wide.load164.2 = load <8 x i16>, ptr %i.jh, align 16
  %i.ji = add <8 x i16> %wide.load163.2, %wide.load161.2
  %i.jj = add <8 x i16> %wide.load164.2, %wide.load162.2
  store <8 x i16> %i.ji, ptr %i.je, align 16
  store <8 x i16> %i.jj, ptr %i.jf, align 16
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %wide.load161.3 = load <8 x i16>, ptr %i.jk, align 16
  %wide.load162.3 = load <8 x i16>, ptr %i.jl, align 16
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 112
  %wide.load163.3 = load <8 x i16>, ptr %i.jm, align 16
  %wide.load164.3 = load <8 x i16>, ptr %i.jn, align 16
  %i.jo = add <8 x i16> %wide.load163.3, %wide.load161.3
  %i.jp = add <8 x i16> %wide.load164.3, %wide.load162.3
  store <8 x i16> %i.jo, ptr %i.jk, align 16
  store <8 x i16> %i.jp, ptr %i.jl, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %wide.load161.4 = load <8 x i16>, ptr %i.jq, align 16
  %wide.load162.4 = load <8 x i16>, ptr %i.jr, align 16
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 144
  %wide.load163.4 = load <8 x i16>, ptr %i.js, align 16
  %wide.load164.4 = load <8 x i16>, ptr %i.jt, align 16
  %i.ju = add <8 x i16> %wide.load163.4, %wide.load161.4
  %i.jv = add <8 x i16> %wide.load164.4, %wide.load162.4
  store <8 x i16> %i.ju, ptr %i.jq, align 16
  store <8 x i16> %i.jv, ptr %i.jr, align 16
  %i.jw = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %10, i64 176 ; 2 uses
  %wide.load161.5 = load <8 x i16>, ptr %i.jw, align 16
  %wide.load162.5 = load <8 x i16>, ptr %i.jx, align 16
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 176
  %wide.load163.5 = load <8 x i16>, ptr %i.jy, align 16
  %wide.load164.5 = load <8 x i16>, ptr %i.jz, align 16
  %i.ka = add <8 x i16> %wide.load163.5, %wide.load161.5
  %i.kb = add <8 x i16> %wide.load164.5, %wide.load162.5
  store <8 x i16> %i.ka, ptr %i.jw, align 16
  store <8 x i16> %i.kb, ptr %i.jx, align 16
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 208 ; 2 uses
  %wide.load161.6 = load <8 x i16>, ptr %i.kc, align 16
  %wide.load162.6 = load <8 x i16>, ptr %i.kd, align 16
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 208
  %wide.load163.6 = load <8 x i16>, ptr %i.ke, align 16
  %wide.load164.6 = load <8 x i16>, ptr %i.kf, align 16
  %i.kg = add <8 x i16> %wide.load163.6, %wide.load161.6
  %i.kh = add <8 x i16> %wide.load164.6, %wide.load162.6
  store <8 x i16> %i.kg, ptr %i.kc, align 16
  store <8 x i16> %i.kh, ptr %i.kd, align 16
  %i.ki = getelementptr inbounds nuw i8, ptr %10, i64 224 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %10, i64 240 ; 2 uses
  %wide.load161.7 = load <8 x i16>, ptr %i.ki, align 16
  %wide.load162.7 = load <8 x i16>, ptr %i.kj, align 16
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 240
  %wide.load163.7 = load <8 x i16>, ptr %i.kk, align 16
  %wide.load164.7 = load <8 x i16>, ptr %i.kl, align 16
  %i.km = add <8 x i16> %wide.load163.7, %wide.load161.7
  %i.kn = add <8 x i16> %wide.load164.7, %wide.load162.7
  store <8 x i16> %i.km, ptr %i.ki, align 16
  store <8 x i16> %i.kn, ptr %i.kj, align 16
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 256 ; 2 uses
end_hunk_0
begin_hunk_1_@_sodium_mlkem768_ref_dec:bb.a
  %i.ald = load i16, ptr %i.akv, align 8
  %i.ale = load i16, ptr %i.akw, align 8
  %i.alf = load i16, ptr %i.akx, align 8
  %i.alg = load i16, ptr %i.aky, align 8
  %i.alh = insertelement <8 x i16> poison, i16 %i.akz, i64 0
  %i.ali = insertelement <8 x i16> %i.alh, i16 %i.ala, i64 1
  %i.alj = insertelement <8 x i16> %i.ali, i16 %i.alb, i64 2
  %i.alk = insertelement <8 x i16> %i.alj, i16 %i.alc, i64 3
  %i.all = insertelement <8 x i16> %i.alk, i16 %i.ald, i64 4
  %i.alm = insertelement <8 x i16> %i.all, i16 %i.ale, i64 5
  %i.aln = insertelement <8 x i16> %i.alm, i16 %i.alf, i64 6
  %i.alo = insertelement <8 x i16> %i.aln, i16 %i.alg, i64 7
  %i.alp = sext <8 x i16> %i.alo to <8 x i32>     ; 2 uses
  %i.alq = lshr <8 x i32> %i.alp, splat (i32 15)
  %i.alr = and <8 x i32> %i.alq, splat (i32 3329)
  %i.als = add nsw <8 x i32> %i.alr, %i.alp
  %i.alt = mul <8 x i32> %i.als, splat (i32 161270)
  %i.alu = add <8 x i32> %i.alt, splat (i32 134176640)
  %i.alv = lshr <8 x i32> %i.alu, splat (i32 24)
  %i.alw = trunc nuw <8 x i32> %i.alv to <8 x i8>
  %i.alx = and <8 x i8> %i.alw, splat (i8 16)
  %i.aly = or disjoint <8 x i8> %i.akq, %i.alx
  %i.alz = getelementptr i8, ptr %i.aff, i64 10
  %i.ama = getelementptr i8, ptr %i.afg, i64 26
  %i.amb = getelementptr i8, ptr %i.afi, i64 42
  %i.amc = getelementptr i8, ptr %i.afk, i64 58
  %i.amd = getelementptr i8, ptr %i.afm, i64 74
  %i.ame = getelementptr i8, ptr %i.afo, i64 90
  %i.amf = getelementptr i8, ptr %i.afq, i64 106
  %i.amg = getelementptr i8, ptr %i.afs, i64 122
  %i.amh = load i16, ptr %i.alz, align 2
  %i.ami = load i16, ptr %i.ama, align 2
  %i.amj = load i16, ptr %i.amb, align 2
  %i.amk = load i16, ptr %i.amc, align 2
  %i.aml = load i16, ptr %i.amd, align 2
  %i.amm = load i16, ptr %i.ame, align 2
  %i.amn = load i16, ptr %i.amf, align 2
  %i.amo = load i16, ptr %i.amg, align 2
  %i.amp = insertelement <8 x i16> poison, i16 %i.amh, i64 0
  %i.amq = insertelement <8 x i16> %i.amp, i16 %i.ami, i64 1
  %i.amr = insertelement <8 x i16> %i.amq, i16 %i.amj, i64 2
  %i.ams = insertelement <8 x i16> %i.amr, i16 %i.amk, i64 3
  %i.amt = insertelement <8 x i16> %i.ams, i16 %i.aml, i64 4
  %i.amu = insertelement <8 x i16> %i.amt, i16 %i.amm, i64 5
  %i.amv = insertelement <8 x i16> %i.amu, i16 %i.amn, i64 6
  %i.amw = insertelement <8 x i16> %i.amv, i16 %i.amo, i64 7
  %i.amx = sext <8 x i16> %i.amw to <8 x i32>     ; 2 uses
  %i.amy = lshr <8 x i32> %i.amx, splat (i32 15)
  %i.amz = and <8 x i32> %i.amy, splat (i32 3329)
  %i.ana = add nsw <8 x i32> %i.amz, %i.amx
  %i.anb = mul <8 x i32> %i.ana, splat (i32 161270)
  %i.anc = add <8 x i32> %i.anb, splat (i32 134176640)
  %i.and = lshr <8 x i32> %i.anc, splat (i32 23)
  %i.ane = trunc <8 x i32> %i.and to <8 x i8>
  %i.anf = and <8 x i8> %i.ane, splat (i8 32)
  %i.ang = or disjoint <8 x i8> %i.aly, %i.anf
  %i.anh = getelementptr i8, ptr %i.aff, i64 12
  %i.ani = getelementptr i8, ptr %i.afg, i64 28
  %i.anj = getelementptr i8, ptr %i.afi, i64 44
  %i.ank = getelementptr i8, ptr %i.afk, i64 60
  %i.anl = getelementptr i8, ptr %i.afm, i64 76
  %i.anm = getelementptr i8, ptr %i.afo, i64 92
  %i.ann = getelementptr i8, ptr %i.afq, i64 108
  %i.ano = getelementptr i8, ptr %i.afs, i64 124
  %i.anp = load i16, ptr %i.anh, align 4
  %i.anq = load i16, ptr %i.ani, align 4
  %i.anr = load i16, ptr %i.anj, align 4
  %i.ans = load i16, ptr %i.ank, align 4
  %i.ant = load i16, ptr %i.anl, align 4
  %i.anu = load i16, ptr %i.anm, align 4
  %i.anv = load i16, ptr %i.ann, align 4
  %i.anw = load i16, ptr %i.ano, align 4
  %i.anx = insertelement <8 x i16> poison, i16 %i.anp, i64 0
  %i.any = insertelement <8 x i16> %i.anx, i16 %i.anq, i64 1
  %i.anz = insertelement <8 x i16> %i.any, i16 %i.anr, i64 2
  %i.aoa = insertelement <8 x i16> %i.anz, i16 %i.ans, i64 3
  %i.aob = insertelement <8 x i16> %i.aoa, i16 %i.ant, i64 4
  %i.aoc = insertelement <8 x i16> %i.aob, i16 %i.anu, i64 5
  %i.aod = insertelement <8 x i16> %i.aoc, i16 %i.anv, i64 6
  %i.aoe = insertelement <8 x i16> %i.aod, i16 %i.anw, i64 7
  %i.aof = sext <8 x i16> %i.aoe to <8 x i32>     ; 2 uses
  %i.aog = lshr <8 x i32> %i.aof, splat (i32 15)
  %i.aoh = and <8 x i32> %i.aog, splat (i32 3329)
  %i.aoi = add nsw <8 x i32> %i.aoh, %i.aof
  %i.aoj = mul <8 x i32> %i.aoi, splat (i32 161270)
  %i.aok = add <8 x i32> %i.aoj, splat (i32 134176640)
  %i.aol = lshr <8 x i32> %i.aok, splat (i32 22)
  %i.aom = trunc <8 x i32> %i.aol to <8 x i8>
  %i.aon = and <8 x i8> %i.aom, splat (i8 64)
  %i.aoo = or <8 x i8> %i.ang, %i.aon
  %i.aop = getelementptr i8, ptr %i.aff, i64 14
  %i.aoq = getelementptr i8, ptr %i.afg, i64 30
  %i.aor = getelementptr i8, ptr %i.afi, i64 46
  %i.aos = getelementptr i8, ptr %i.afk, i64 62
  %i.aot = getelementptr i8, ptr %i.afm, i64 78
  %i.aou = getelementptr i8, ptr %i.afo, i64 94
  %i.aov = getelementptr i8, ptr %i.afq, i64 110
  %i.aow = getelementptr i8, ptr %i.afs, i64 126
  %i.aox = load i16, ptr %i.aop, align 2
  %i.aoy = load i16, ptr %i.aoq, align 2
  %i.aoz = load i16, ptr %i.aor, align 2
  %i.apa = load i16, ptr %i.aos, align 2
  %i.apb = load i16, ptr %i.aot, align 2
  %i.apc = load i16, ptr %i.aou, align 2
  %i.apd = load i16, ptr %i.aov, align 2
  %i.ape = load i16, ptr %i.aow, align 2
  %i.apf = insertelement <8 x i16> poison, i16 %i.aox, i64 0
  %i.apg = insertelement <8 x i16> %i.apf, i16 %i.aoy, i64 1
  %i.aph = insertelement <8 x i16> %i.apg, i16 %i.aoz, i64 2
  %i.api = insertelement <8 x i16> %i.aph, i16 %i.apa, i64 3
  %i.apj = insertelement <8 x i16> %i.api, i16 %i.apb, i64 4
  %i.apk = insertelement <8 x i16> %i.apj, i16 %i.apc, i64 5
  %i.apl = insertelement <8 x i16> %i.apk, i16 %i.apd, i64 6
  %i.apm = insertelement <8 x i16> %i.apl, i16 %i.ape, i64 7
  %i.apn = sext <8 x i16> %i.apm to <8 x i32>     ; 2 uses
  %i.apo = lshr <8 x i32> %i.apn, splat (i32 15)
  %i.app = and <8 x i32> %i.apo, splat (i32 3329)
  %i.apq = add nsw <8 x i32> %i.app, %i.apn
  %i.apr = mul <8 x i32> %i.apq, splat (i32 161270)
  %i.aps = add <8 x i32> %i.apr, splat (i32 134176640)
  %i.apt = lshr <8 x i32> %i.aps, splat (i32 21)
  %i.apu = trunc <8 x i32> %i.apt to <8 x i8>
  %i.apv = and <8 x i8> %i.apu, splat (i8 -128)
  %i.apw = or <8 x i8> %i.aoo, %i.apv
  store <8 x i8> %i.apw, ptr %i.aew, align 8
  %index.next104 = add nuw i64 %index103, 8       ; 2 uses
  %i.apx = icmp eq i64 %index.next104, 32
  br i1 %i.apx, label %indcpa_dec.exit, label %vector.body102, !llvm.loop !50

indcpa_dec.exit:                                  ; preds = %vector.body102
  %i.apy = getelementptr i8, ptr %2, i64 2368
  %i.apz = getelementptr i8, ptr %2, i64 2336
  %i.aqa = getelementptr i8, ptr %2, i64 1152
  call void @sodium_memzero(ptr noundef nonnull %5, i64 noundef 1536) #4
  call void @sodium_memzero(ptr noundef nonnull %7, i64 noundef 512) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aqb, ptr noundef nonnull align 1 dereferenceable(32) %i.apz, i64 noundef 32, i1 noundef false) #4
  %i.aqc = call i32 @crypto_hash_sha3512(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 64) #4 ; 0 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call fastcc void @indcpa_enc(ptr noundef nonnull %i.d, ptr noundef %i.a, ptr noundef %i.aqa, ptr noundef nonnull %i.aqd)
  %i.aqe = call i32 @sodium_memcmp(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef 1088) #4
  %.neg = ashr i32 %i.aqe, 31
  %i.aqf = call i32 @crypto_xof_shake256_init(ptr noundef nonnull %8) #4 ; 0 uses
  %i.aqg = call i32 @crypto_xof_shake256_update(ptr noundef nonnull %8, ptr noundef %i.apy, i64 noundef 32) #4 ; 0 uses
  %i.aqh = call i32 @crypto_xof_shake256_update(ptr noundef nonnull %8, ptr noundef nonnull %1, i64 noundef 1088) #4 ; 0 uses
  %i.aqi = call i32 @crypto_xof_shake256_squeeze(ptr noundef nonnull %8, ptr noundef nonnull %i.c, i64 noundef 32) #4 ; 0 uses
  %.neg13 = trunc nsw i32 %.neg to i8
  %i.aqj = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %.neg13) #4, !srcloc !51
  %i.aqk = load <16 x i8>, ptr %i.b, align 16     ; 2 uses
  %i.aql = load <16 x i8>, ptr %i.c, align 16
  %i.aqm = xor <16 x i8> %i.aql, %i.aqk
  %i.aqn = insertelement <16 x i8> poison, i8 %i.aqj, i64 0
  %i.aqo = shufflevector <16 x i8> %i.aqn, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aqp = and <16 x i8> %i.aqm, %i.aqo
  %i.aqq = xor <16 x i8> %i.aqp, %i.aqk
  store <16 x i8> %i.aqq, ptr %i.b, align 16
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aqt = load <16 x i8>, ptr %i.aqr, align 16   ; 2 uses
  %i.aqu = load <16 x i8>, ptr %i.aqs, align 16
  %i.aqv = xor <16 x i8> %i.aqu, %i.aqt
  %i.aqw = and <16 x i8> %i.aqv, %i.aqo
  %i.aqx = xor <16 x i8> %i.aqw, %i.aqt
  store <16 x i8> %i.aqx, ptr %i.aqr, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 noundef 32, i1 noundef false) #4
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #4
  call void @sodium_memzero(ptr noundef nonnull %i.b, i64 noundef 64) #4
  call void @sodium_memzero(ptr noundef nonnull %i.c, i64 noundef 32) #4
  call void @sodium_memzero(ptr noundef nonnull %i.d, i64 noundef 1088) #4
  call void @sodium_memzero(ptr noundef nonnull %8, i64 noundef 256) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

declare i32 @sodium_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_xof_shake256_init(ptr noundef) local_unnamed_addr #2

declare i32 @crypto_xof_shake256_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_xof_shake256_squeeze(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @gen_matrix(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.crypto_xof_shake128_state, align 16 ; 14 uses
  %i.a = alloca [506 x i8], align 16              ; 14 uses
  %i.b = alloca [34 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef 32, i1 noundef false) #4
  %.not = trunc nuw i32 %2 to i1                  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %rej_uniform.exit._crit_edge.2
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %rej_uniform.exit._crit_edge.2 ] ; 3 uses
  %i.e = trunc i64 %indvars.iv to i8              ; 6 uses
  %i.f = getelementptr [1536 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %spec.select = select i1 %.not, i8 %i.e, i8 0
  %spec.select60 = select i1 %.not, i8 0, i8 %i.e
  store i8 %spec.select, ptr %i.c, align 16
  store i8 %spec.select60, ptr %i.d, align 1
  %i.g = call i32 @crypto_xof_shake128_init(ptr noundef nonnull %3) #4 ; 0 uses
  %i.h = call i32 @crypto_xof_shake128_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 34) #4 ; 0 uses
  %i.i = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 504) #4 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader
  %indvars.iv30.i = phi i64 [ 0, %.preheader ], [ %indvars.iv.next31.i, %bb.f ] ; 2 uses
  %indvars.iv.i = phi i64 [ 3, %.preheader ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.02528.i = phi i32 [ 0, %.preheader ], [ %.2.i, %bb.f ] ; 3 uses
  %i.j = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i ; 3 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  %i.m = getelementptr i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = zext i8 %i.n to i16
  %i.p = shl nuw i16 %i.o, 8
  %.masked.i = and i16 %i.p, 3840
  %i.q = or disjoint i16 %.masked.i, %i.l         ; 2 uses
  %i.r = lshr i8 %i.n, 4
  %i.s = zext nneg i8 %i.r to i16
  %i.t = getelementptr i8, ptr %i.j, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = shl nuw nsw i16 %i.v, 4
  %i.x = or disjoint i16 %i.w, %i.s               ; 2 uses
  %i.y = icmp samesign ult i16 %i.q, 3329
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = add nuw nsw i32 %.02528.i, 1
  %i.aa = zext nneg i32 %.02528.i to i64
  %i.ab = getelementptr [2 x i8], ptr %i.f, i64 %i.aa
  store i16 %i.q, ptr %i.ab, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.z, %bb.c ], [ %.02528.i, %bb.b ] ; 4 uses
  %i.ac = icmp ult i32 %.1.i, 256
  %i.ad = icmp samesign ult i16 %i.x, 3329
  %or.cond.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = add nuw nsw i32 %.1.i, 1
  %i.af = zext nneg i32 %.1.i to i64
  %i.ag = getelementptr [2 x i8], ptr %i.f, i64 %i.af
  store i16 %i.x, ptr %i.ag, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2.i = phi i32 [ %i.ae, %bb.e ], [ %.1.i, %bb.d ] ; 3 uses
  %i.ah = icmp ult i32 %.2.i, 256                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3
  %i.ai = icmp samesign ult i64 %indvars.iv.i, 502
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 3
  br i1 %i.aj, label %bb.b, label %rej_uniform.exit.preheader, !llvm.loop !52

rej_uniform.exit.preheader:                       ; preds = %bb.f
  br i1 %i.ah, label %.lr.ph, label %rej_uniform.exit._crit_edge

.lr.ph:                                           ; preds = %rej_uniform.exit.preheader, %rej_uniform.exit32
  %.02233 = phi i32 [ %i.bp, %rej_uniform.exit32 ], [ %.2.i, %rej_uniform.exit.preheader ] ; 3 uses
  %i.ak = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 168) #4 ; 0 uses
  %i.al = zext nneg i32 %.02233 to i64
  %i.am = getelementptr [2 x i8], ptr %i.f, i64 %i.al ; 2 uses
  %i.an = sub nuw nsw i32 256, %.02233            ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph
  %indvars.iv30.i23 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next31.i31, %bb.k ] ; 2 uses
  %indvars.iv.i24 = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next.i30, %bb.k ] ; 2 uses
  %.02528.i25 = phi i32 [ 0, %.lr.ph ], [ %.2.i29, %bb.k ] ; 3 uses
  %i.ao = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i23 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = getelementptr i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw i16 %i.at, 8
  %.masked.i26 = and i16 %i.au, 3840
  %i.av = or disjoint i16 %.masked.i26, %i.aq     ; 2 uses
  %i.aw = lshr i8 %i.as, 4
  %i.ax = zext nneg i8 %i.aw to i16
  %i.ay = getelementptr i8, ptr %i.ao, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = shl nuw nsw i16 %i.ba, 4
  %i.bc = or disjoint i16 %i.bb, %i.ax            ; 2 uses
  %i.bd = icmp samesign ult i16 %i.av, 3329
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = add nuw nsw i32 %.02528.i25, 1
  %i.bf = zext nneg i32 %.02528.i25 to i64
  %i.bg = getelementptr [2 x i8], ptr %i.am, i64 %i.bf
  store i16 %i.av, ptr %i.bg, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i27 = phi i32 [ %i.be, %bb.h ], [ %.02528.i25, %bb.g ] ; 4 uses
  %i.bh = icmp ult i32 %.1.i27, %i.an
  %i.bi = icmp samesign ult i16 %i.bc, 3329
  %or.cond.i28 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i28, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = add nuw nsw i32 %.1.i27, 1
  %i.bk = zext nneg i32 %.1.i27 to i64
  %i.bl = getelementptr [2 x i8], ptr %i.am, i64 %i.bk
  store i16 %i.bc, ptr %i.bl, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.i29 = phi i32 [ %i.bj, %bb.j ], [ %.1.i27, %bb.i ] ; 3 uses
  %i.bm = icmp ult i32 %.2.i29, %i.an
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i24, 3
  %i.bn = icmp samesign ult i64 %indvars.iv.i24, 166
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  %indvars.iv.next31.i31 = add nuw nsw i64 %indvars.iv30.i23, 3
  br i1 %i.bo, label %bb.g, label %rej_uniform.exit32, !llvm.loop !52

rej_uniform.exit32:                               ; preds = %bb.k
  %i.bp = add i32 %.2.i29, %.02233                ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 256
  br i1 %i.bq, label %.lr.ph, label %rej_uniform.exit._crit_edge, !llvm.loop !53

rej_uniform.exit._crit_edge:                      ; preds = %rej_uniform.exit32, %rej_uniform.exit.preheader
  %spec.select61 = select i1 %.not, i8 %i.e, i8 1
  %spec.select62 = select i1 %.not, i8 1, i8 %i.e
  store i8 %spec.select61, ptr %i.c, align 16
  store i8 %spec.select62, ptr %i.d, align 1
  %i.br = call i32 @crypto_xof_shake128_init(ptr noundef nonnull %3) #4 ; 0 uses
  %i.bs = call i32 @crypto_xof_shake128_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 34) #4 ; 0 uses
  %i.bt = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 504) #4 ; 0 uses
  %i.bu = getelementptr i8, ptr %i.f, i64 512     ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %rej_uniform.exit._crit_edge
  %indvars.iv30.i.1 = phi i64 [ 0, %rej_uniform.exit._crit_edge ], [ %indvars.iv.next31.i.1, %bb.p ] ; 2 uses
  %indvars.iv.i.1 = phi i64 [ 3, %rej_uniform.exit._crit_edge ], [ %indvars.iv.next.i.1, %bb.p ] ; 2 uses
  %.02528.i.1 = phi i32 [ 0, %rej_uniform.exit._crit_edge ], [ %.2.i.1, %bb.p ] ; 3 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i.1 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i16
  %i.by = getelementptr i8, ptr %i.bv, i64 1
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = zext i8 %i.bz to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %.masked.i.1 = and i16 %i.cb, 3840
  %i.cc = or disjoint i16 %.masked.i.1, %i.bx     ; 2 uses
  %i.cd = lshr i8 %i.bz, 4
  %i.ce = zext nneg i8 %i.cd to i16
  %i.cf = getelementptr i8, ptr %i.bv, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i16
  %i.ci = shl nuw nsw i16 %i.ch, 4
  %i.cj = or disjoint i16 %i.ci, %i.ce            ; 2 uses
  %i.ck = icmp samesign ult i16 %i.cc, 3329
  br i1 %i.ck, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = add nuw nsw i32 %.02528.i.1, 1
  %i.cm = zext nneg i32 %.02528.i.1 to i64
  %i.cn = getelementptr [2 x i8], ptr %i.bu, i64 %i.cm
  store i16 %i.cc, ptr %i.cn, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.1 = phi i32 [ %i.cl, %bb.m ], [ %.02528.i.1, %bb.l ] ; 4 uses
  %i.co = icmp ult i32 %.1.i.1, 256
  %i.cp = icmp samesign ult i16 %i.cj, 3329
  %or.cond.i.1 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.i.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = add nuw nsw i32 %.1.i.1, 1
  %i.cr = zext nneg i32 %.1.i.1 to i64
  %i.cs = getelementptr [2 x i8], ptr %i.bu, i64 %i.cr
  store i16 %i.cj, ptr %i.cs, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2.i.1 = phi i32 [ %i.cq, %bb.o ], [ %.1.i.1, %bb.n ] ; 3 uses
  %i.ct = icmp ult i32 %.2.i.1, 256               ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 3
  %i.cu = icmp samesign ult i64 %indvars.iv.i.1, 502
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  %indvars.iv.next31.i.1 = add nuw nsw i64 %indvars.iv30.i.1, 3
  br i1 %i.cv, label %bb.l, label %rej_uniform.exit.preheader.1, !llvm.loop !52

rej_uniform.exit.preheader.1:                     ; preds = %bb.p
  br i1 %i.ct, label %.lr.ph.1, label %rej_uniform.exit._crit_edge.1

.lr.ph.1:                                         ; preds = %rej_uniform.exit.preheader.1, %rej_uniform.exit32.1
  %.02233.1 = phi i32 [ %i.eb, %rej_uniform.exit32.1 ], [ %.2.i.1, %rej_uniform.exit.preheader.1 ] ; 3 uses
  %i.cw = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 168) #4 ; 0 uses
  %i.cx = zext nneg i32 %.02233.1 to i64
  %i.cy = getelementptr [2 x i8], ptr %i.bu, i64 %i.cx ; 2 uses
  %i.cz = sub nuw nsw i32 256, %.02233.1          ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.1
  %indvars.iv30.i23.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next31.i31.1, %bb.u ] ; 2 uses
  %indvars.iv.i24.1 = phi i64 [ 3, %.lr.ph.1 ], [ %indvars.iv.next.i30.1, %bb.u ] ; 2 uses
  %.02528.i25.1 = phi i32 [ 0, %.lr.ph.1 ], [ %.2.i29.1, %bb.u ] ; 3 uses
  %i.da = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i23.1 ; 3 uses
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i16
  %i.dd = getelementptr i8, ptr %i.da, i64 1
  %i.de = load i8, ptr %i.dd, align 1             ; 2 uses
  %i.df = zext i8 %i.de to i16
  %i.dg = shl nuw i16 %i.df, 8
  %.masked.i26.1 = and i16 %i.dg, 3840
  %i.dh = or disjoint i16 %.masked.i26.1, %i.dc   ; 2 uses
  %i.di = lshr i8 %i.de, 4
  %i.dj = zext nneg i8 %i.di to i16
  %i.dk = getelementptr i8, ptr %i.da, i64 2
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i16
  %i.dn = shl nuw nsw i16 %i.dm, 4
  %i.do = or disjoint i16 %i.dn, %i.dj            ; 2 uses
  %i.dp = icmp samesign ult i16 %i.dh, 3329
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dq = add nuw nsw i32 %.02528.i25.1, 1
  %i.dr = zext nneg i32 %.02528.i25.1 to i64
  %i.ds = getelementptr [2 x i8], ptr %i.cy, i64 %i.dr
  store i16 %i.dh, ptr %i.ds, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i27.1 = phi i32 [ %i.dq, %bb.r ], [ %.02528.i25.1, %bb.q ] ; 4 uses
  %i.dt = icmp ult i32 %.1.i27.1, %i.cz
  %i.du = icmp samesign ult i16 %i.do, 3329
  %or.cond.i28.1 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i28.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dv = add nuw nsw i32 %.1.i27.1, 1
  %i.dw = zext nneg i32 %.1.i27.1 to i64
  %i.dx = getelementptr [2 x i8], ptr %i.cy, i64 %i.dw
  store i16 %i.do, ptr %i.dx, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i29.1 = phi i32 [ %i.dv, %bb.t ], [ %.1.i27.1, %bb.s ] ; 3 uses
  %i.dy = icmp ult i32 %.2.i29.1, %i.cz
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i24.1, 3
  %i.dz = icmp samesign ult i64 %indvars.iv.i24.1, 166
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  %indvars.iv.next31.i31.1 = add nuw nsw i64 %indvars.iv30.i23.1, 3
  br i1 %i.ea, label %bb.q, label %rej_uniform.exit32.1, !llvm.loop !52

rej_uniform.exit32.1:                             ; preds = %bb.u
  %i.eb = add i32 %.2.i29.1, %.02233.1            ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 256
  br i1 %i.ec, label %.lr.ph.1, label %rej_uniform.exit._crit_edge.1, !llvm.loop !53

rej_uniform.exit._crit_edge.1:                    ; preds = %rej_uniform.exit32.1, %rej_uniform.exit.preheader.1
  %spec.select63 = select i1 %.not, i8 %i.e, i8 2
  %spec.select64 = select i1 %.not, i8 2, i8 %i.e
  store i8 %spec.select63, ptr %i.c, align 16
  store i8 %spec.select64, ptr %i.d, align 1
  %i.ed = call i32 @crypto_xof_shake128_init(ptr noundef nonnull %3) #4 ; 0 uses
  %i.ee = call i32 @crypto_xof_shake128_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 34) #4 ; 0 uses
  %i.ef = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 504) #4 ; 0 uses
  %i.eg = getelementptr i8, ptr %i.f, i64 1024    ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %rej_uniform.exit._crit_edge.1
  %indvars.iv30.i.2 = phi i64 [ 0, %rej_uniform.exit._crit_edge.1 ], [ %indvars.iv.next31.i.2, %bb.z ] ; 2 uses
  %indvars.iv.i.2 = phi i64 [ 3, %rej_uniform.exit._crit_edge.1 ], [ %indvars.iv.next.i.2, %bb.z ] ; 2 uses
  %.02528.i.2 = phi i32 [ 0, %rej_uniform.exit._crit_edge.1 ], [ %.2.i.2, %bb.z ] ; 3 uses
  %i.eh = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i.2 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i16
  %i.ek = getelementptr i8, ptr %i.eh, i64 1
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %i.em = zext i8 %i.el to i16
  %i.en = shl nuw i16 %i.em, 8
  %.masked.i.2 = and i16 %i.en, 3840
  %i.eo = or disjoint i16 %.masked.i.2, %i.ej     ; 2 uses
  %i.ep = lshr i8 %i.el, 4
  %i.eq = zext nneg i8 %i.ep to i16
  %i.er = getelementptr i8, ptr %i.eh, i64 2
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i16
  %i.eu = shl nuw nsw i16 %i.et, 4
  %i.ev = or disjoint i16 %i.eu, %i.eq            ; 2 uses
  %i.ew = icmp samesign ult i16 %i.eo, 3329
  br i1 %i.ew, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ex = add nuw nsw i32 %.02528.i.2, 1
  %i.ey = zext nneg i32 %.02528.i.2 to i64
  %i.ez = getelementptr [2 x i8], ptr %i.eg, i64 %i.ey
  store i16 %i.eo, ptr %i.ez, align 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i.2 = phi i32 [ %i.ex, %bb.w ], [ %.02528.i.2, %bb.v ] ; 4 uses
  %i.fa = icmp ult i32 %.1.i.2, 256
  %i.fb = icmp samesign ult i16 %i.ev, 3329
  %or.cond.i.2 = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i.2, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fc = add nuw nsw i32 %.1.i.2, 1
  %i.fd = zext nneg i32 %.1.i.2 to i64
  %i.fe = getelementptr [2 x i8], ptr %i.eg, i64 %i.fd
  store i16 %i.ev, ptr %i.fe, align 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2.i.2 = phi i32 [ %i.fc, %bb.y ], [ %.1.i.2, %bb.x ] ; 3 uses
  %i.ff = icmp ult i32 %.2.i.2, 256               ; 2 uses
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 3
  %i.fg = icmp samesign ult i64 %indvars.iv.i.2, 502
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  %indvars.iv.next31.i.2 = add nuw nsw i64 %indvars.iv30.i.2, 3
  br i1 %i.fh, label %bb.v, label %rej_uniform.exit.preheader.2, !llvm.loop !52

rej_uniform.exit.preheader.2:                     ; preds = %bb.z
  br i1 %i.ff, label %.lr.ph.2, label %rej_uniform.exit._crit_edge.2

.lr.ph.2:                                         ; preds = %rej_uniform.exit.preheader.2, %rej_uniform.exit32.2
  %.02233.2 = phi i32 [ %i.gn, %rej_uniform.exit32.2 ], [ %.2.i.2, %rej_uniform.exit.preheader.2 ] ; 3 uses
  %i.fi = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 168) #4 ; 0 uses
  %i.fj = zext nneg i32 %.02233.2 to i64
  %i.fk = getelementptr [2 x i8], ptr %i.eg, i64 %i.fj ; 2 uses
  %i.fl = sub nuw nsw i32 256, %.02233.2          ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.2
  %indvars.iv30.i23.2 = phi i64 [ 0, %.lr.ph.2 ], [ %indvars.iv.next31.i31.2, %bb.ae ] ; 2 uses
  %indvars.iv.i24.2 = phi i64 [ 3, %.lr.ph.2 ], [ %indvars.iv.next.i30.2, %bb.ae ] ; 2 uses
  %.02528.i25.2 = phi i32 [ 0, %.lr.ph.2 ], [ %.2.i29.2, %bb.ae ] ; 3 uses
  %i.fm = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i23.2 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i16
  %i.fp = getelementptr i8, ptr %i.fm, i64 1
  %i.fq = load i8, ptr %i.fp, align 1             ; 2 uses
  %i.fr = zext i8 %i.fq to i16
  %i.fs = shl nuw i16 %i.fr, 8
  %.masked.i26.2 = and i16 %i.fs, 3840
  %i.ft = or disjoint i16 %.masked.i26.2, %i.fo   ; 2 uses
  %i.fu = lshr i8 %i.fq, 4
  %i.fv = zext nneg i8 %i.fu to i16
  %i.fw = getelementptr i8, ptr %i.fm, i64 2
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i16
  %i.fz = shl nuw nsw i16 %i.fy, 4
  %i.ga = or disjoint i16 %i.fz, %i.fv            ; 2 uses
  %i.gb = icmp samesign ult i16 %i.ft, 3329
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = add nuw nsw i32 %.02528.i25.2, 1
  %i.gd = zext nneg i32 %.02528.i25.2 to i64
  %i.ge = getelementptr [2 x i8], ptr %i.fk, i64 %i.gd
  store i16 %i.ft, ptr %i.ge, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i27.2 = phi i32 [ %i.gc, %bb.ab ], [ %.02528.i25.2, %bb.aa ] ; 4 uses
  %i.gf = icmp ult i32 %.1.i27.2, %i.fl
  %i.gg = icmp samesign ult i16 %i.ga, 3329
  %or.cond.i28.2 = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond.i28.2, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gh = add nuw nsw i32 %.1.i27.2, 1
  %i.gi = zext nneg i32 %.1.i27.2 to i64
  %i.gj = getelementptr [2 x i8], ptr %i.fk, i64 %i.gi
  store i16 %i.ga, ptr %i.gj, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.i29.2 = phi i32 [ %i.gh, %bb.ad ], [ %.1.i27.2, %bb.ac ] ; 3 uses
  %i.gk = icmp ult i32 %.2.i29.2, %i.fl
  %indvars.iv.next.i30.2 = add nuw nsw i64 %indvars.iv.i24.2, 3
  %i.gl = icmp samesign ult i64 %indvars.iv.i24.2, 166
  %i.gm = select i1 %i.gk, i1 %i.gl, i1 false
  %indvars.iv.next31.i31.2 = add nuw nsw i64 %indvars.iv30.i23.2, 3
  br i1 %i.gm, label %bb.aa, label %rej_uniform.exit32.2, !llvm.loop !52

rej_uniform.exit32.2:                             ; preds = %bb.ae
  %i.gn = add i32 %.2.i29.2, %.02233.2            ; 2 uses
  %i.go = icmp ult i32 %i.gn, 256
  br i1 %i.go, label %.lr.ph.2, label %rej_uniform.exit._crit_edge.2, !llvm.loop !53

rej_uniform.exit._crit_edge.2:                    ; preds = %rej_uniform.exit32.2, %rej_uniform.exit.preheader.2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.af, label %.preheader, !llvm.loop !54

bb.af:                                            ; preds = %rej_uniform.exit._crit_edge.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @poly_getnoise_eta2(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2) unnamed_addr #0 {
vector.ph:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %3 = alloca %struct.crypto_xof_shake256_state, align 16 ; 6 uses
  %i.b = alloca [33 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef 32, i1 noundef false) #4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %2, ptr %i.c, align 16
  %i.d = call i32 @crypto_xof_shake256_init(ptr noundef nonnull %3) #4 ; 0 uses
  %i.e = call i32 @crypto_xof_shake256_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 33) #4 ; 0 uses
  %i.f = call i32 @crypto_xof_shake256_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 128) #4 ; 0 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl nuw nsw i64 %index, 2
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %wide.load = load <4 x i32>, ptr %i.h, align 16 ; 2 uses
  %i.i = and <4 x i32> %wide.load, splat (i32 1431655765)
  %i.j = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.k = and <4 x i32> %i.j, splat (i32 1431655765)
  %i.l = add nuw <4 x i32> %i.k, %i.i             ; 12 uses
  %i.m = shl nuw nsw i64 %index, 4
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %i.o = lshr <4 x i32> %i.l, splat (i32 4)
  %i.p = lshr <4 x i32> %i.l, splat (i32 8)
  %i.q = lshr <4 x i32> %i.l, splat (i32 12)
  %i.r = lshr <4 x i32> %i.l, splat (i32 18)
  %i.s = and <4 x i32> %i.r, splat (i32 3)
  %i.t = lshr <4 x i32> %i.l, splat (i32 22)
  %i.u = and <4 x i32> %i.t, splat (i32 3)
  %i.v = lshr <4 x i32> %i.l, splat (i32 26)
  %i.w = and <4 x i32> %i.v, splat (i32 3)
  %i.x = lshr <4 x i32> %i.l, splat (i32 30)
  %i.y = shufflevector <4 x i32> %i.l, <4 x i32> %i.o, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = shufflevector <4 x i32> %i.p, <4 x i32> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aa = shufflevector <8 x i32> %i.y, <8 x i32> %i.z, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ab = and <16 x i32> %i.aa, splat (i32 3)
  %i.ac = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ad = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ae = shufflevector <8 x i32> %i.ac, <8 x i32> %i.ad, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.af = lshr <16 x i32> %i.ae, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.ag = and <16 x i32> %i.af, splat (i32 3)
  %i.ah = sub nsw <16 x i32> %i.ab, %i.ag
  %i.ai = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aj = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ak = shufflevector <8 x i32> %i.ai, <8 x i32> %i.aj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = lshr <16 x i32> %i.ak, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %i.am = and <16 x i32> %i.al, splat (i32 3)
  %i.an = shufflevector <4 x i32> %i.s, <4 x i32> %i.u, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ao = shufflevector <4 x i32> %i.w, <4 x i32> %i.x, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ap = shufflevector <8 x i32> %i.an, <8 x i32> %i.ao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aq = sub nsw <16 x i32> %i.am, %i.ap
  %i.ar = shufflevector <16 x i32> %i.ah, <16 x i32> %i.aq, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
end_hunk_1
