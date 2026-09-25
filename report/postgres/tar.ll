Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tar?download=true
inline.NumInlined: 12
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@tarCreateHeader:bb.a
  %i.r = lshr i8 %i.q, 3
  %i.s = lshr i32 %4, 6
  %i.t = trunc i32 %i.s to i8
  %i.u = lshr i16 %i.n, 9
  %i.v = trunc nuw nsw i16 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.x = insertelement <4 x i8> poison, i8 %i.v, i64 0
  %i.y = insertelement <4 x i8> %i.x, i8 %i.t, i64 1
  %i.z = insertelement <4 x i8> %i.y, i8 %i.r, i64 2
  %i.aa = insertelement <4 x i8> %i.z, i8 %i.p, i64 3
  %i.ab = and <4 x i8> %i.aa, splat (i8 7)
  %i.ac = or disjoint <4 x i8> %i.ab, splat (i8 48)
  store <4 x i8> %i.ac, ptr %i.w, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 48, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 48, ptr %i.ae, align 1
  store i8 48, ptr %i.m, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ag = icmp ult i32 %5, 2097152
  br i1 %i.ag, label %.lr.ph24.i54, label %.lr.ph.i50

.lr.ph24.i54:                                     ; preds = %.lr.ph24.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 32, ptr %i.ah, align 1
  %i.ai = trunc i32 %5 to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = or disjoint i8 %i.aj, 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = trunc i32 %5 to i8
  %i.an = lshr i8 %i.am, 3
  %i.ao = and i8 %i.an, 7
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = lshr i32 %5, 6
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 7
  %i.au = or disjoint i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = lshr i32 %5, 9
  %i.ax = lshr i32 %5, 12
  %i.ay = lshr i32 %5, 15
  %i.az = lshr i32 %5, 18
  %i.ba = trunc i32 %i.aw to i8
  %i.bb = trunc i32 %i.ax to i8
  %i.bc = trunc nuw nsw i32 %i.ay to i8
  %i.bd = trunc nuw nsw i32 %i.az to i8
  %i.be = insertelement <4 x i8> poison, i8 %i.bd, i64 0
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bc, i64 1
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bb, i64 2
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.ba, i64 3
  %i.bi = and <4 x i8> %i.bh, <i8 -1, i8 7, i8 7, i8 7>
  %i.bj = or disjoint <4 x i8> %i.bi, splat (i8 48)
  br label %print_tar_number.exit58

.lr.ph.i50:                                       ; preds = %.lr.ph24.i
  %i.bk = trunc i32 %5 to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = lshr i32 %5, 8
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = lshr i32 %5, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = lshr i32 %5, 24
  %i.bt = trunc nuw i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.bt, ptr %i.bu, align 1
  br label %print_tar_number.exit58

print_tar_number.exit58:                          ; preds = %.lr.ph.i50, %.lr.ph24.i54
  %storemerge = phi <4 x i8> [ <i8 -128, i8 0, i8 0, i8 0>, %.lr.ph.i50 ], [ %i.bj, %.lr.ph24.i54 ]
  store <4 x i8> %storemerge, ptr %i.af, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bw = icmp ult i32 %6, 2097152
  br i1 %i.bw, label %.lr.ph24.i64, label %.lr.ph.i60

.lr.ph24.i64:                                     ; preds = %print_tar_number.exit58
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 32, ptr %i.bx, align 1
  %i.by = trunc i32 %6 to i8
  %i.bz = and i8 %i.by, 7
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = trunc i32 %6 to i8
  %i.cd = lshr i8 %i.cc, 3
  %i.ce = and i8 %i.cd, 7
  %i.cf = or disjoint i8 %i.ce, 48
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = lshr i32 %6, 6
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = or disjoint i8 %i.cj, 48
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = lshr i32 %6, 9
  %i.cn = lshr i32 %6, 12
  %i.co = lshr i32 %6, 15
  %i.cp = lshr i32 %6, 18
  %i.cq = trunc i32 %i.cm to i8
  %i.cr = trunc i32 %i.cn to i8
  %i.cs = trunc nuw nsw i32 %i.co to i8
  %i.ct = trunc nuw nsw i32 %i.cp to i8
  %i.cu = insertelement <4 x i8> poison, i8 %i.ct, i64 0
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cs, i64 1
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cr, i64 2
  %i.cx = insertelement <4 x i8> %i.cw, i8 %i.cq, i64 3
  %i.cy = and <4 x i8> %i.cx, <i8 -1, i8 7, i8 7, i8 7>
  %i.cz = or disjoint <4 x i8> %i.cy, splat (i8 48)
  br label %print_tar_number.exit68

.lr.ph.i60:                                       ; preds = %print_tar_number.exit58
  %i.da = trunc i32 %6 to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 %i.da, ptr %i.db, align 1
  %i.dc = lshr i32 %6, 8
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = lshr i32 %6, 16
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = lshr i32 %6, 24
  %i.dj = trunc nuw i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.dj, ptr %i.dk, align 1
  br label %print_tar_number.exit68

print_tar_number.exit68:                          ; preds = %.lr.ph.i60, %.lr.ph24.i64
  %storemerge145 = phi <4 x i8> [ <i8 -128, i8 0, i8 0, i8 0>, %.lr.ph.i60 ], [ %i.cz, %.lr.ph24.i64 ]
  store <4 x i8> %storemerge145, ptr %i.bv, align 1
  %i.dl = and i32 %4, 61440
  %i.dm = icmp eq i32 %i.dl, 16384                ; 2 uses
  %or.cond48 = or i1 %.not, %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  br i1 %or.cond48, label %print_tar_number.exit73.loopexit, label %bb.f

print_tar_number.exit73.loopexit:                 ; preds = %print_tar_number.exit68
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 32, ptr %i.do, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.dn, i8 48, i64 11, i1 false)
  br label %print_tar_number.exit73

bb.f:                                             ; preds = %print_tar_number.exit68
  %i.dp = icmp ult i64 %3, 8589934592
  br i1 %i.dp, label %.lr.ph24.i79, label %.lr.ph.i75

.lr.ph24.i79:                                     ; preds = %bb.f
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 32, ptr %i.dq, align 1
  %i.dr = trunc i64 %3 to i8
  %i.ds = and i8 %i.dr, 7
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = trunc i64 %3 to i8
  %i.dw = lshr i8 %i.dv, 3
  %i.dx = and i8 %i.dw, 7
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %i.dy, ptr %i.dz, align 1
  %i.ea = lshr i64 %3, 6
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = and i8 %i.eb, 7
  %i.ed = or disjoint i8 %i.ec, 48
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %i.ed, ptr %i.ee, align 1
  %i.ef = insertelement <4 x i64> poison, i64 %3, i64 0
  %i.eg = shufflevector <4 x i64> %i.ef, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eh = lshr <4 x i64> %i.eg, <i64 18, i64 15, i64 12, i64 9>
  %i.ei = lshr i64 %3, 21
  %i.ej = lshr i64 %3, 24
  %i.ek = lshr i64 %3, 27
  %i.el = lshr i64 %3, 30
  %i.em = trunc <4 x i64> %i.eh to <4 x i8>
  %i.en = trunc i64 %i.ei to i8
  %i.eo = trunc i64 %i.ej to i8
  %i.ep = trunc nuw nsw i64 %i.ek to i8
  %i.eq = trunc nuw nsw i64 %i.el to i8
  %i.er = insertelement <8 x i8> poison, i8 %i.eq, i64 0
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ep, i64 1
  %i.et = insertelement <8 x i8> %i.es, i8 %i.eo, i64 2
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.en, i64 3
  %i.ev = shufflevector <4 x i8> %i.em, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i8> %i.eu, <8 x i8> %i.ev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ex = and <8 x i8> %i.ew, <i8 -1, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  %i.ey = or disjoint <8 x i8> %i.ex, splat (i8 48)
  store <8 x i8> %i.ey, ptr %i.dn, align 1
  br label %print_tar_number.exit73

.lr.ph.i75:                                       ; preds = %bb.f
  %8 = trunc i64 %3 to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 %8, ptr %9, align 1
  %10 = lshr i64 %3, 8
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %3, 16
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %14, ptr %15, align 1
  %16 = lshr i64 %3, 24
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %17, ptr %18, align 1
  %19 = lshr i64 %3, 32
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 %20, ptr %21, align 1
  %22 = lshr i64 %3, 40
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %23, ptr %24, align 1
  %25 = lshr i64 %3, 48
  %26 = trunc i64 %25 to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %26, ptr %i.ez, align 1
  %27 = lshr i64 %3, 56
  %28 = trunc nuw i64 %27 to i8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %28, ptr %29, align 1
  store <4 x i8> <i8 -128, i8 0, i8 0, i8 0>, ptr %i.dn, align 1
  br label %print_tar_number.exit73

print_tar_number.exit73:                          ; preds = %.lr.ph.i75, %.lr.ph24.i79, %print_tar_number.exit73.loopexit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fb = icmp ult i64 %7, 8589934592
  br i1 %i.fb, label %.lr.ph24.i89, label %.lr.ph.i85

.lr.ph24.i89:                                     ; preds = %print_tar_number.exit73
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 32, ptr %i.fc, align 1
  %i.fd = trunc i64 %7 to i8
  %i.fe = and i8 %i.fd, 7
  %i.ff = or disjoint i8 %i.fe, 48
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %i.ff, ptr %i.fg, align 1
  %i.fh = trunc i64 %7 to i8
  %i.fi = lshr i8 %i.fh, 3
  %i.fj = and i8 %i.fi, 7
  %i.fk = or disjoint i8 %i.fj, 48
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %i.fk, ptr %i.fl, align 1
  %i.fm = lshr i64 %7, 6
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = and i8 %i.fn, 7
  %i.fp = or disjoint i8 %i.fo, 48
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.fp, ptr %i.fq, align 1
  %i.fr = insertelement <4 x i64> poison, i64 %7, i64 0
  %i.fs = shufflevector <4 x i64> %i.fr, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ft = lshr <4 x i64> %i.fs, <i64 18, i64 15, i64 12, i64 9>
  %i.fu = lshr i64 %7, 21
  %i.fv = lshr i64 %7, 24
  %i.fw = lshr i64 %7, 27
  %i.fx = lshr i64 %7, 30
  %i.fy = trunc <4 x i64> %i.ft to <4 x i8>
  %i.fz = trunc i64 %i.fu to i8
  %i.ga = trunc i64 %i.fv to i8
  %i.gb = trunc nuw nsw i64 %i.fw to i8
  %i.gc = trunc nuw nsw i64 %i.fx to i8
  %i.gd = insertelement <8 x i8> poison, i8 %i.gc, i64 0
  %i.ge = insertelement <8 x i8> %i.gd, i8 %i.gb, i64 1
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.ga, i64 2
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fz, i64 3
  %i.gh = shufflevector <4 x i8> %i.fy, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gi = shufflevector <8 x i8> %i.gg, <8 x i8> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gj = and <8 x i8> %i.gi, <i8 -1, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7, i8 7>
  %i.gk = or disjoint <8 x i8> %i.gj, splat (i8 48)
  store <8 x i8> %i.gk, ptr %i.fa, align 1
  br label %print_tar_number.exit93

.lr.ph.i85:                                       ; preds = %print_tar_number.exit73
  %30 = trunc i64 %7 to i8
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 147
  store i8 %30, ptr %31, align 1
  %32 = lshr i64 %7, 8
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %33, ptr %34, align 1
  %35 = lshr i64 %7, 16
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 %36, ptr %37, align 1
  %38 = lshr i64 %7, 24
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %39, ptr %40, align 1
  %41 = lshr i64 %7, 32
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 143
  store i8 %42, ptr %43, align 1
  %44 = lshr i64 %7, 40
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 142
  store i8 %45, ptr %46, align 1
  %47 = lshr i64 %7, 48
  %48 = trunc i64 %47 to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 141
  store i8 %48, ptr %i.gl, align 1
  %49 = lshr i64 %7, 56
  %50 = trunc nuw i64 %49 to i8
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %50, ptr %51, align 1
  store <4 x i8> <i8 -128, i8 0, i8 0, i8 0>, ptr %i.fa, align 1
  br label %print_tar_number.exit93

print_tar_number.exit93:                          ; preds = %.lr.ph.i85, %.lr.ph24.i89
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %print_tar_number.exit93
  store i8 50, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 157
  %i.go = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.gn, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 100) #10 ; 0 uses
  br label %print_tar_number.exit98

bb.h:                                             ; preds = %print_tar_number.exit93
  br i1 %i.dm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 53, ptr %i.gm, align 1
  br label %print_tar_number.exit98

bb.j:                                             ; preds = %bb.h
  store i8 48, ptr %i.gm, align 1
  br label %print_tar_number.exit98

print_tar_number.exit98:                          ; preds = %bb.i, %bb.j, %bb.g
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gp, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false) #10
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 263
  store i16 12336, ptr %i.gq, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 265
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gr, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 noundef 9, i1 false) #10
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gs, ptr noundef nonnull align 1 dereferenceable(9) @.str.5, i64 noundef 9, i1 false) #10
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 32, ptr %i.gu, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gt, i8 48, i64 7, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 32, ptr %i.gw, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.gv, i8 48, i64 7, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %print_tar_number.exit98
  %indvars.iv.i104 = phi i64 [ 0, %print_tar_number.exit98 ], [ %indvars.iv.next.i105.1, %bb.o ] ; 5 uses
  %.010.i = phi i32 [ 256, %print_tar_number.exit98 ], [ %.1.i.1, %bb.o ] ; 2 uses
  %i.gx = trunc i64 %indvars.iv.i104 to i32
  %i.gy = add nsw i32 %i.gx, -156
  %or.cond.i = icmp ult i32 %i.gy, -8
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i104
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = zext i8 %i.ha to i32
  %i.hc = add i32 %.010.i, %i.hb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.hc, %bb.l ], [ %.010.i, %bb.k ] ; 2 uses
  %i.hd = trunc i64 %indvars.iv.i104 to i32
  %i.he = add nsw i32 %i.hd, -156
  %or.cond.i.1 = icmp ult i32 %i.he, -8
  br i1 %or.cond.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i104
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = zext i8 %i.hh to i32
  %i.hj = add i32 %.1.i, %i.hi
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1 = phi i32 [ %i.hj, %bb.n ], [ %.1.i, %bb.m ] ; 14 uses
  %indvars.iv.next.i105.1 = add nuw nsw i64 %indvars.iv.i104, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i105.1, 512
  br i1 %exitcond.not.i.1, label %tarChecksum.exit, label %bb.k, !llvm.loop !0

tarChecksum.exit:                                 ; preds = %bb.o
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.hl = icmp ult i32 %.1.i.1, 2097152
  %i.hm = trunc i32 %.1.i.1 to i8                 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  br i1 %i.hl, label %.lr.ph24.i111, label %.lr.ph.i107

.lr.ph24.i111:                                    ; preds = %tarChecksum.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 32, ptr %i.ho, align 1
  %i.hp = and i8 %i.hm, 7
  %i.hq = or disjoint i8 %i.hp, 48
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.hq, ptr %i.hr, align 1
  %i.hs = trunc i32 %.1.i.1 to i8
  %i.ht = lshr i8 %i.hs, 3
  %i.hu = and i8 %i.ht, 7
  %i.hv = or disjoint i8 %i.hu, 48
  store i8 %i.hv, ptr %i.hn, align 1
  %i.hw = lshr i32 %.1.i.1, 6
  %i.hx = trunc i32 %i.hw to i8
  %i.hy = and i8 %i.hx, 7
  %i.hz = or disjoint i8 %i.hy, 48
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.hz, ptr %i.ia, align 1
  %i.ib = lshr i32 %.1.i.1, 9
  %i.ic = lshr i32 %.1.i.1, 12
  %i.id = lshr i32 %.1.i.1, 15
  %i.ie = lshr i32 %.1.i.1, 18
  %i.if = trunc i32 %i.ib to i8
  %i.ig = trunc i32 %i.ic to i8
  %i.ih = trunc nuw nsw i32 %i.id to i8
  %i.ii = trunc nuw nsw i32 %i.ie to i8
  %i.ij = insertelement <4 x i8> poison, i8 %i.ii, i64 0
  %i.ik = insertelement <4 x i8> %i.ij, i8 %i.ih, i64 1
  %i.il = insertelement <4 x i8> %i.ik, i8 %i.ig, i64 2
  %i.im = insertelement <4 x i8> %i.il, i8 %i.if, i64 3
  %i.in = and <4 x i8> %i.im, <i8 -1, i8 7, i8 7, i8 7>
  %i.io = or disjoint <4 x i8> %i.in, splat (i8 48)
  store <4 x i8> %i.io, ptr %i.hk, align 1
  br label %print_tar_number.exit115

.lr.ph.i107:                                      ; preds = %tarChecksum.exit
  %i.ip = sext i32 %.1.i.1 to i64                 ; 2 uses
  store i8 -128, ptr %i.hk, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.hm, ptr %i.iq, align 1
  %i.ir = lshr i32 %.1.i.1, 8
  %i.is = trunc i32 %i.ir to i8
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.is, ptr %i.it, align 1
  %i.iu = lshr i32 %.1.i.1, 16
  %i.iv = trunc i32 %i.iu to i8
  store i8 %i.iv, ptr %i.hn, align 1
  %i.iw = lshr i32 %.1.i.1, 24
  %i.ix = trunc nuw i32 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 %i.ix, ptr %i.iy, align 1
  %i.iz = ashr i32 %.1.i.1, 31
  %i.ja = trunc nsw i32 %i.iz to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 151
  store i8 %i.ja, ptr %i.jb, align 1
  %i.jc = lshr i64 %i.ip, 40
  %i.jd = trunc i64 %i.jc to i8
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.jd, ptr %i.je, align 1
  %i.jf = lshr i64 %i.ip, 48
  %i.jg = trunc i64 %i.jf to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %i.jg, ptr %i.jh, align 1
  br label %print_tar_number.exit115

print_tar_number.exit115:                         ; preds = %.lr.ph.i107, %.lr.ph24.i111, %bb.c, %bb.a
  %.0 = phi i32 [ 2, %bb.c ], [ 1, %bb.a ], [ 0, %.lr.ph24.i111 ], [ 0, %.lr.ph.i107 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !11}
end_hunk_0
