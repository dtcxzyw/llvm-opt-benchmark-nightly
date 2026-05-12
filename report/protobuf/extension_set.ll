inline.NumInlined: 3767
inline.NumDeleted: 1290
begin_hunk_0_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.cd = or i32 %i.cc, 1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %3 = xor i64 %i.cf, 63
  %i.cg = mul nuw nsw i64 %3, 9
  %i.ch = add nuw nsw i64 %i.cg, 73
  %i.ci = lshr i64 %i.ch, 6
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.cn = or i32 %i.cm, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %4 = xor i64 %i.cp, 63
  %i.cq = mul nuw nsw i64 %4, 9
  %i.cr = add nuw nsw i64 %i.cq, 73
  %i.cs = lshr i64 %i.cr, 6
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !148
  %i.cw = or i64 %i.cv, 1
  %i.cx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %5 = xor i64 %i.cx, 63
  %i.cy = mul nuw nsw i64 %5, 9
  %i.cz = add nuw nsw i64 %i.cy, 73
  %i.da = lshr i64 %i.cz, 6
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !148
  %i.df = or i64 %i.de, 1
  %i.dg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %6 = xor i64 %i.dg, 63
  %i.dh = mul nuw nsw i64 %6, 9
  %i.di = add nuw nsw i64 %i.dh, 73
  %i.dj = lshr i64 %i.di, 6
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = or i32 %i.dm, 1
  %i.do = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dn, i1 true)
  %7 = xor i32 %i.do, 31
  %i.dp = mul nuw nsw i32 %7, 9
  %i.dq = add nuw nsw i32 %i.dp, 73
  %i.dr = lshr i32 %i.dq, 6
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = or i32 %i.dw, 1
  %i.dy = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dx, i1 true)
  %8 = xor i32 %i.dy, 31
  %i.dz = mul nuw nsw i32 %8, 9
  %i.ea = add nuw nsw i32 %i.dz, 73
  %i.eb = lshr i32 %i.ea, 6
end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !148
  %i.eg = or i64 %i.ef, 1
  %i.eh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eg, i1 true)
  %9 = xor i64 %i.eh, 63
  %i.ei = mul nuw nsw i64 %9, 9
  %i.ej = add nuw nsw i64 %i.ei, 73
  %i.ek = lshr i64 %i.ej, 6
end_hunk_6
begin_hunk_7_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !148
  %i.ep = or i64 %i.eo, 1
  %i.eq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ep, i1 true)
  %10 = xor i64 %i.eq, 63
  %i.er = mul nuw nsw i64 %10, 9
  %i.es = add nuw nsw i64 %i.er, 73
  %i.et = lshr i64 %i.es, 6
end_hunk_7
begin_hunk_8_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ez = xor i32 %i.ex, %i.ey
  %i.fa = or i32 %i.ez, 1
  %i.fb = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fa, i1 true)
  %11 = xor i32 %i.fb, 31
  %i.fc = mul nuw nsw i32 %11, 9
  %i.fd = add nuw nsw i32 %i.fc, 73
  %i.fe = lshr i32 %i.fd, 6
end_hunk_8
begin_hunk_9_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.fm = xor i32 %i.fk, %i.fl
  %i.fn = or i32 %i.fm, 1
  %i.fo = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fn, i1 true)
  %12 = xor i32 %i.fo, 31
  %i.fp = mul nuw nsw i32 %12, 9
  %i.fq = add nuw nsw i32 %i.fp, 73
  %i.fr = lshr i32 %i.fq, 6
end_hunk_9
begin_hunk_10_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.fy = xor i64 %i.fw, %i.fx
  %i.fz = or i64 %i.fy, 1
  %i.ga = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fz, i1 true)
  %13 = xor i64 %i.ga, 63
  %i.gb = mul nuw nsw i64 %13, 9
  %i.gc = add nuw nsw i64 %i.gb, 73
  %i.gd = lshr i64 %i.gc, 6
end_hunk_10
begin_hunk_11_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.gk = xor i64 %i.gi, %i.gj
  %i.gl = or i64 %i.gk, 1
  %i.gm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gl, i1 true)
  %14 = xor i64 %i.gm, 63
  %i.gn = mul nuw nsw i64 %14, 9
  %i.go = add nuw nsw i64 %i.gn, 73
  %i.gp = lshr i64 %i.go, 6
end_hunk_11
begin_hunk_12_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.gt = or i32 %i.gs, 1
  %i.gu = sext i32 %i.gt to i64
  %i.gv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gu, i1 true)
  %15 = xor i64 %i.gv, 63
  %i.gw = mul nuw nsw i64 %15, 9
  %i.gx = add nuw nsw i64 %i.gw, 73
  %i.gy = lshr i64 %i.gx, 6
end_hunk_12
begin_hunk_13_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.hd = or i32 %i.hc, 1
  %i.he = sext i32 %i.hd to i64
  %i.hf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.he, i1 true)
  %16 = xor i64 %i.hf, 63
  %i.hg = mul nuw nsw i64 %16, 9
  %i.hh = add nuw nsw i64 %i.hg, 73
  %i.hi = lshr i64 %i.hh, 6
end_hunk_13
begin_hunk_14_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.iw = or i32 %i.iv, 1
  %i.ix = sext i32 %i.iw to i64
  %i.iy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ix, i1 true)
  %17 = xor i64 %i.iy, 63
  %i.iz = mul nuw nsw i64 %17, 9
  %i.ja = add nuw nsw i64 %i.iz, 73
  %i.jb = lshr i64 %i.ja, 6
end_hunk_14
begin_hunk_15_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !148
  %i.jf = or i64 %i.je, 1
  %i.jg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %18 = xor i64 %i.jg, 63
  %i.jh = mul nuw nsw i64 %18, 9
  %i.ji = add nuw nsw i64 %i.jh, 73
  %i.jj = lshr i64 %i.ji, 6
end_hunk_15
begin_hunk_16_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3
  %i.jn = or i32 %i.jm, 1
  %i.jo = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jn, i1 true)
  %19 = xor i32 %i.jo, 31
  %i.jp = mul nuw nsw i32 %19, 9
  %i.jq = add nuw nsw i32 %i.jp, 73
  %i.jr = lshr i32 %i.jq, 6
end_hunk_16
begin_hunk_17_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !148
  %i.jw = or i64 %i.jv, 1
  %i.jx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jw, i1 true)
  %20 = xor i64 %i.jx, 63
  %i.jy = mul nuw nsw i64 %20, 9
  %i.jz = add nuw nsw i64 %i.jy, 73
  %i.ka = lshr i64 %i.jz, 6
end_hunk_17
begin_hunk_18_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.kg = xor i32 %i.ke, %i.kf
  %i.kh = or i32 %i.kg, 1
  %i.ki = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kh, i1 true)
  %21 = xor i32 %i.ki, 31
  %i.kj = mul nuw nsw i32 %21, 9
  %i.kk = add nuw nsw i32 %i.kj, 73
  %i.kl = lshr i32 %i.kk, 6
end_hunk_18
begin_hunk_19_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ks = xor i64 %i.kq, %i.kr
  %i.kt = or i64 %i.ks, 1
  %i.ku = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kt, i1 true)
  %22 = xor i64 %i.ku, 63
  %i.kv = mul nuw nsw i64 %22, 9
  %i.kw = add nuw nsw i64 %i.kv, 73
  %i.kx = lshr i64 %i.kw, 6
end_hunk_19
begin_hunk_20_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.lb = or i32 %i.la, 1
  %i.lc = sext i32 %i.lb to i64
  %i.ld = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lc, i1 true)
  %23 = xor i64 %i.ld, 63
  %i.le = mul nuw nsw i64 %23, 9
  %i.lf = add nuw nsw i64 %i.le, 73
  %i.lg = lshr i64 %i.lf, 6
end_hunk_20
begin_hunk_21_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
bb.t:                                             ; preds = %.loopexit
  %i.lk = or i32 %i.lj, 1
  %i.ll = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lk, i1 true)
  %24 = xor i32 %i.ll, 31
  %i.lm = mul nuw nsw i32 %24, 9
  %i.ln = add nuw nsw i32 %i.lm, 73
  %i.lo = lshr i32 %i.ln, 6
end_hunk_21
begin_hunk_22_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.lq = shl i32 %1, 3
  %i.lr = or disjoint i32 %i.lq, 3
  %i.ls = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lr, i1 true)
  %25 = xor i32 %i.ls, 31
  %i.lt = mul nuw nsw i32 %25, 9
  %i.lu = add nuw nsw i32 %i.lt, 73
  %i.lv = lshr i32 %i.lu, 6
end_hunk_22
begin_hunk_23_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.lz = shl i32 %1, 3
  %i.ma = or disjoint i32 %i.lz, 1
  %i.mb = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ma, i1 true)
  %26 = xor i32 %i.mb, 31
  %i.mc = mul nuw nsw i32 %26, 9
  %i.md = add nuw nsw i32 %i.mc, 73
  %i.me = lshr i32 %i.md, 6
end_hunk_23
begin_hunk_24_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.mw = or i32 %i.mv, 1
  %i.mx = sext i32 %i.mw to i64
  %i.my = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mx, i1 true)
  %27 = xor i64 %i.my, 63
  %i.mz = mul nuw nsw i64 %27, 9
  %i.na = add nuw nsw i64 %i.mz, 73
  %i.nb = lshr i64 %i.na, 6
end_hunk_24
begin_hunk_25_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ng = or i32 %i.nf, 1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nh, i1 true)
  %28 = xor i64 %i.ni, 63
  %i.nj = mul nuw nsw i64 %28, 9
  %i.nk = add nuw nsw i64 %i.nj, 73
  %i.nl = lshr i64 %i.nk, 6
end_hunk_25
begin_hunk_26_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !148
  %i.ob = or i64 %i.oa, 1
  %i.oc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ob, i1 true)
  %29 = xor i64 %i.oc, 63
  %i.od = mul nuw nsw i64 %29, 9
  %i.oe = add nuw nsw i64 %i.od, 73
  %i.of = lshr i64 %i.oe, 6
end_hunk_26
begin_hunk_27_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !148
  %i.ok = or i64 %i.oj, 1
  %i.ol = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ok, i1 true)
  %30 = xor i64 %i.ol, 63
  %i.om = mul nuw nsw i64 %30, 9
  %i.on = add nuw nsw i64 %i.om, 73
  %i.oo = lshr i64 %i.on, 6
end_hunk_27
begin_hunk_28_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !3
  %i.pe = or i32 %i.pd, 1
  %i.pf = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pe, i1 true)
  %31 = xor i32 %i.pf, 31
  %i.pg = mul nuw nsw i32 %31, 9
  %i.ph = add nuw nsw i32 %i.pg, 73
  %i.pi = lshr i32 %i.ph, 6
end_hunk_28
begin_hunk_29_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !3
  %i.po = or i32 %i.pn, 1
  %i.pp = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.po, i1 true)
  %32 = xor i32 %i.pp, 31
  %i.pq = mul nuw nsw i32 %32, 9
  %i.pr = add nuw nsw i32 %i.pq, 73
  %i.ps = lshr i32 %i.pr, 6
end_hunk_29
begin_hunk_30_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !148
  %i.qj = or i64 %i.qi, 1
  %i.qk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qj, i1 true)
  %33 = xor i64 %i.qk, 63
  %i.ql = mul nuw nsw i64 %33, 9
  %i.qm = add nuw nsw i64 %i.ql, 73
  %i.qn = lshr i64 %i.qm, 6
end_hunk_30
begin_hunk_31_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !148
  %i.qs = or i64 %i.qr, 1
  %i.qt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qs, i1 true)
  %34 = xor i64 %i.qt, 63
  %i.qu = mul nuw nsw i64 %34, 9
  %i.qv = add nuw nsw i64 %i.qu, 73
  %i.qw = lshr i64 %i.qv, 6
end_hunk_31
begin_hunk_32_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ro = xor i32 %i.rm, %i.rn
  %i.rp = or i32 %i.ro, 1
  %i.rq = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rp, i1 true)
  %35 = xor i32 %i.rq, 31
  %i.rr = mul nuw nsw i32 %35, 9
  %i.rs = add nuw nsw i32 %i.rr, 73
  %i.rt = lshr i32 %i.rs, 6
end_hunk_32
begin_hunk_33_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.sb = xor i32 %i.rz, %i.sa
  %i.sc = or i32 %i.sb, 1
  %i.sd = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sc, i1 true)
  %36 = xor i32 %i.sd, 31
  %i.se = mul nuw nsw i32 %36, 9
  %i.sf = add nuw nsw i32 %i.se, 73
  %i.sg = lshr i32 %i.sf, 6
end_hunk_33
begin_hunk_34_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.sz = xor i64 %i.sx, %i.sy
  %i.ta = or i64 %i.sz, 1
  %i.tb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ta, i1 true)
  %37 = xor i64 %i.tb, 63
  %i.tc = mul nuw nsw i64 %37, 9
  %i.td = add nuw nsw i64 %i.tc, 73
  %i.te = lshr i64 %i.td, 6
end_hunk_34
begin_hunk_35_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.tl = xor i64 %i.tj, %i.tk
  %i.tm = or i64 %i.tl, 1
  %i.tn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.tm, i1 true)
  %38 = xor i64 %i.tn, 63
  %i.to = mul nuw nsw i64 %38, 9
  %i.tp = add nuw nsw i64 %i.to, 73
  %i.tq = lshr i64 %i.tp, 6
end_hunk_35
begin_hunk_36_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.uk = trunc i64 %i.uj to i32
  %i.ul = or i32 %i.uk, 1
  %i.um = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ul, i1 true)
  %39 = xor i32 %i.um, 31
  %i.un = mul nuw nsw i32 %39, 9
  %i.uo = add nuw nsw i32 %i.un, 73
  %i.up = lshr i32 %i.uo, 6
end_hunk_36
begin_hunk_37_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.uy = trunc i64 %i.ux to i32
  %i.uz = or i32 %i.uy, 1
  %i.va = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.uz, i1 true)
  %40 = xor i32 %i.va, 31
  %i.vb = mul nuw nsw i32 %40, 9
  %i.vc = add nuw nsw i32 %i.vb, 73
  %i.vd = lshr i32 %i.vc, 6
end_hunk_37
begin_hunk_38_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.vz = trunc i64 %i.vy to i32
  %i.wa = or i32 %i.vz, 1
  %i.wb = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.wa, i1 true)
  %41 = xor i32 %i.wb, 31
  %i.wc = mul nuw nsw i32 %41, 9
  %i.wd = add nuw nsw i32 %i.wc, 73
  %i.we = lshr i32 %i.wd, 6
end_hunk_38
begin_hunk_39_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.wn = trunc i64 %i.wm to i32
  %i.wo = or i32 %i.wn, 1
  %i.wp = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.wo, i1 true)
  %42 = xor i32 %i.wp, 31
  %i.wq = mul nuw nsw i32 %42, 9
  %i.wr = add nuw nsw i32 %i.wq, 73
  %i.ws = lshr i32 %i.wr, 6
end_hunk_39
begin_hunk_40_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.xk = or i32 %i.xj, 1
  %i.xl = sext i32 %i.xk to i64
  %i.xm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.xl, i1 true)
  %43 = xor i64 %i.xm, 63
  %i.xn = mul nuw nsw i64 %43, 9
  %i.xo = add nuw nsw i64 %i.xn, 73
  %i.xp = lshr i64 %i.xo, 6
end_hunk_40
begin_hunk_41_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.xu = or i32 %i.xt, 1
  %i.xv = sext i32 %i.xu to i64
  %i.xw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.xv, i1 true)
  %44 = xor i64 %i.xw, 63
  %i.xx = mul nuw nsw i64 %44, 9
  %i.xy = add nuw nsw i64 %i.xx, 73
  %i.xz = lshr i64 %i.xy, 6
end_hunk_41
begin_hunk_42_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.zv = trunc i64 %i.zu to i32
  %i.zw = or i32 %i.zv, 1
  %i.zx = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zw, i1 true)
  %45 = xor i32 %i.zx, 31
  %i.zy = mul nuw nsw i32 %45, 9
  %i.zz = add nuw nsw i32 %i.zy, 73
  %i.aaa = lshr i32 %i.zz, 6
end_hunk_42
begin_hunk_43_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ace = shl i32 %1, 3
  %i.acf = or disjoint i32 %i.ace, 1
  %i.acg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.acf, i1 true)
  %46 = xor i32 %i.acg, 31
  %i.ach = mul nuw nsw i32 %46, 9
  %i.aci = add nuw nsw i32 %i.ach, 73
  %i.acj = lshr i32 %i.aci, 6
end_hunk_43
begin_hunk_44_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.aco = or i32 %i.acn, 1
  %i.acp = sext i32 %i.aco to i64
  %i.acq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.acp, i1 true)
  %47 = xor i64 %i.acq, 63
  %i.acr = mul nuw nsw i64 %47, 9
  %i.acs = add nuw nsw i64 %i.acr, 73
  %i.act = lshr i64 %i.acs, 6
end_hunk_44
begin_hunk_45_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.acv = load i64, ptr %0, align 8, !tbaa !13
  %i.acw = or i64 %i.acv, 1
  %i.acx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.acw, i1 true)
  %48 = xor i64 %i.acx, 63
  %i.acy = mul nuw nsw i64 %48, 9
  %i.acz = add nuw nsw i64 %i.acy, 73
  %i.ada = lshr i64 %i.acz, 6
end_hunk_45
begin_hunk_46_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.adc = load i32, ptr %0, align 8, !tbaa !13
  %i.add = or i32 %i.adc, 1
  %i.ade = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.add, i1 true)
  %49 = xor i32 %i.ade, 31
  %i.adf = mul nuw nsw i32 %49, 9
  %i.adg = add nuw nsw i32 %i.adf, 73
  %i.adh = lshr i32 %i.adg, 6
end_hunk_46
begin_hunk_47_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.adk = load i64, ptr %0, align 8, !tbaa !13
  %i.adl = or i64 %i.adk, 1
  %i.adm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.adl, i1 true)
  %50 = xor i64 %i.adm, 63
  %i.adn = mul nuw nsw i64 %50, 9
  %i.ado = add nuw nsw i64 %i.adn, 73
  %i.adp = lshr i64 %i.ado, 6
end_hunk_47
begin_hunk_48_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.adu = xor i32 %i.ads, %i.adt
  %i.adv = or i32 %i.adu, 1
  %i.adw = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adv, i1 true)
  %51 = xor i32 %i.adw, 31
  %i.adx = mul nuw nsw i32 %51, 9
  %i.ady = add nuw nsw i32 %i.adx, 73
  %i.adz = lshr i32 %i.ady, 6
end_hunk_48
begin_hunk_49_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.aef = xor i64 %i.aed, %i.aee
  %i.aeg = or i64 %i.aef, 1
  %i.aeh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aeg, i1 true)
  %52 = xor i64 %i.aeh, 63
  %i.aei = mul nuw nsw i64 %52, 9
  %i.aej = add nuw nsw i64 %i.aei, 73
  %i.aek = lshr i64 %i.aej, 6
end_hunk_49
begin_hunk_50_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.aep = trunc i64 %i.aeo to i32
  %i.aeq = or i32 %i.aep, 1
  %i.aer = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeq, i1 true)
  %53 = xor i32 %i.aer, 31
  %i.aes = mul nuw nsw i32 %53, 9
  %i.aet = add nuw nsw i32 %i.aes, 73
  %i.aeu = lshr i32 %i.aet, 6
end_hunk_50
begin_hunk_51_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.afb = trunc i64 %i.afa to i32
  %i.afc = or i32 %i.afb, 1
  %i.afd = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afc, i1 true)
  %54 = xor i32 %i.afd, 31
  %i.afe = mul nuw nsw i32 %54, 9
  %i.aff = add nuw nsw i32 %i.afe, 73
  %i.afg = lshr i32 %i.aff, 6
end_hunk_51
begin_hunk_52_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.afl = or i32 %i.afk, 1
  %i.afm = sext i32 %i.afl to i64
  %i.afn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.afm, i1 true)
  %55 = xor i64 %i.afn, 63
  %i.afo = mul nuw nsw i64 %55, 9
  %i.afp = add nuw nsw i64 %i.afo, 73
  %i.afq = lshr i64 %i.afp, 6
end_hunk_52
begin_hunk_53_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.age = trunc i64 %i.agd to i32
  %i.agf = or i32 %i.age, 1
  %i.agg = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agf, i1 true)
  %56 = xor i32 %i.agg, 31
  %i.agh = mul nuw nsw i32 %56, 9
  %i.agi = add nuw nsw i32 %i.agh, 73
  %i.agj = lshr i32 %i.agi, 6
end_hunk_53
begin_hunk_54_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.agw = or i32 %i.agv, 1
  %i.agx = sext i32 %i.agw to i64
  %i.agy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.agx, i1 true)
  %57 = xor i64 %i.agy, 63
  %i.agz = mul nuw nsw i64 %57, 9
  %i.aha = add nuw nsw i64 %i.agz, 73
  %i.ahb = lshr i64 %i.aha, 6
end_hunk_54
begin_hunk_55_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !148
  %i.ahf = or i64 %i.ahe, 1
  %i.ahg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ahf, i1 true)
  %58 = xor i64 %i.ahg, 63
  %i.ahh = mul nuw nsw i64 %58, 9
  %i.ahi = add nuw nsw i64 %i.ahh, 73
  %i.ahj = lshr i64 %i.ahi, 6
end_hunk_55
begin_hunk_56_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !3
  %i.ahn = or i32 %i.ahm, 1
  %i.aho = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahn, i1 true)
  %59 = xor i32 %i.aho, 31
  %i.ahp = mul nuw nsw i32 %59, 9
  %i.ahq = add nuw nsw i32 %i.ahp, 73
  %i.ahr = lshr i32 %i.ahq, 6
end_hunk_56
begin_hunk_57_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !148
  %i.ahw = or i64 %i.ahv, 1
  %i.ahx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ahw, i1 true)
  %60 = xor i64 %i.ahx, 63
  %i.ahy = mul nuw nsw i64 %60, 9
  %i.ahz = add nuw nsw i64 %i.ahy, 73
  %i.aia = lshr i64 %i.ahz, 6
end_hunk_57
begin_hunk_58_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.aig = xor i32 %i.aie, %i.aif
  %i.aih = or i32 %i.aig, 1
  %i.aii = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aih, i1 true)
  %61 = xor i32 %i.aii, 31
  %i.aij = mul nuw nsw i32 %61, 9
  %i.aik = add nuw nsw i32 %i.aij, 73
  %i.ail = lshr i32 %i.aik, 6
end_hunk_58
begin_hunk_59_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ais = xor i64 %i.aiq, %i.air
  %i.ait = or i64 %i.ais, 1
  %i.aiu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ait, i1 true)
  %62 = xor i64 %i.aiu, 63
  %i.aiv = mul nuw nsw i64 %62, 9
  %i.aiw = add nuw nsw i64 %i.aiv, 73
  %i.aix = lshr i64 %i.aiw, 6
end_hunk_59
begin_hunk_60_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ajd = trunc i64 %i.ajc to i32
  %i.aje = or i32 %i.ajd, 1
  %i.ajf = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aje, i1 true)
  %63 = xor i32 %i.ajf, 31
  %i.ajg = mul nuw nsw i32 %63, 9
  %i.ajh = add nuw nsw i32 %i.ajg, 73
  %i.aji = lshr i32 %i.ajh, 6
end_hunk_60
begin_hunk_61_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.ajq = trunc i64 %i.ajp to i32
  %i.ajr = or i32 %i.ajq, 1
  %i.ajs = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ajr, i1 true)
  %64 = xor i32 %i.ajs, 31
  %i.ajt = mul nuw nsw i32 %64, 9
  %i.aju = add nuw nsw i32 %i.ajt, 73
  %i.ajv = lshr i32 %i.aju, 6
end_hunk_61
begin_hunk_62_@_ZNK6google8protobuf8internal12ExtensionSet9Extension8ByteSizeEi:bb.a
  %i.akb = or i32 %i.aka, 1
  %i.akc = sext i32 %i.akb to i64
  %i.akd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.akc, i1 true)
  %65 = xor i64 %i.akd, 63
  %i.ake = mul nuw nsw i64 %65, 9
  %i.akf = add nuw nsw i64 %i.ake, 73
  %i.akg = lshr i64 %i.akf, 6
end_hunk_62
begin_hunk_63_@_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi:bb.a
  %i.j = load i64, ptr @_ZN6google8protobuf8internal14WireFormatLite23kMessageSetItemTagsSizeE, align 8, !tbaa !148
  %i.k = or i32 %1, 1
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 true)
  %2 = xor i32 %i.l, 31
  %i.m = mul nuw nsw i32 %2, 9
  %i.n = add nuw nsw i32 %i.m, 73
  %i.o = lshr i32 %i.n, 6
end_hunk_63
begin_hunk_64_@_ZNK6google8protobuf8internal12ExtensionSet9Extension22MessageSetItemByteSizeEi:bb.a
  %i.w = trunc i64 %i.v to i32
  %i.x = or i32 %i.w, 1
  %i.y = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %3 = xor i32 %i.y, 31
  %i.z = mul nuw nsw i32 %3, 9
  %i.aa = add nuw nsw i32 %i.z, 73
  %i.ab = lshr i32 %i.aa, 6
end_hunk_64
begin_hunk_65_@_ZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEv:bb.a
bb.g:                                             ; preds = %bb.f
  %i.al = or i32 %i.aa, 1
  %i.am = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.al, i1 true)
  %1 = xor i32 %i.am, 31
  %i.an = mul nuw nsw i32 %1, 9
  %i.ao = add nuw nsw i32 %i.an, 73
  %i.ap = lshr i32 %i.ao, 6
end_hunk_65
begin_hunk_66_@_ZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEv:bb.a
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = or i32 %i.ax, 1
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true)
  %2 = xor i32 %i.az, 31
  %i.ba = mul nuw nsw i32 %2, 9
  %i.bb = add nuw nsw i32 %i.ba, 73
  %i.bc = lshr i32 %i.bb, 6
end_hunk_66
begin_hunk_67_@_ZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEv:bb.a
bb.k:                                             ; preds = %bb.j
  %i.cb = or i32 %i.bq, 1
  %i.cc = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cb, i1 true)
  %3 = xor i32 %i.cc, 31
  %i.cd = mul nuw nsw i32 %3, 9
  %i.ce = add nuw nsw i32 %i.cd, 73
  %i.cf = lshr i32 %i.ce, 6
end_hunk_67
begin_hunk_68_@_ZNK6google8protobuf8internal12ExtensionSet18MessageSetByteSizeEv:bb.a
  %i.cn = trunc i64 %i.cm to i32
  %i.co = or i32 %i.cn, 1
  %i.cp = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.co, i1 true)
  %4 = xor i32 %i.cp, 31
  %i.cq = mul nuw nsw i32 %4, 9
  %i.cr = add nuw nsw i32 %i.cq, 73
  %i.cs = lshr i32 %i.cr, 6
end_hunk_68
begin_hunk_69_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
bb.h:                                             ; preds = %bb.g
  %i.bi = or i32 %i.ax, 1
  %i.bj = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %5 = xor i32 %i.bj, 31
  %i.bk = mul nuw nsw i32 %5, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
end_hunk_69
begin_hunk_70_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = or i32 %i.bu, 1
  %i.bw = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bv, i1 true)
  %6 = xor i32 %i.bw, 31
  %i.bx = mul nuw nsw i32 %6, 9
  %i.by = add nuw nsw i32 %i.bx, 73
  %i.bz = lshr i32 %i.by, 6
end_hunk_70
begin_hunk_71_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
bb.r:                                             ; preds = %bb.q
  %i.fb = or i32 %i.eq, 1
  %i.fc = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fb, i1 true)
  %7 = xor i32 %i.fc, 31
  %i.fd = mul nuw nsw i32 %7, 9
  %i.fe = add nuw nsw i32 %i.fd, 73
  %i.ff = lshr i32 %i.fe, 6
end_hunk_71
begin_hunk_72_@"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNKS2_18MessageSetByteSizeEvE3$_0NS2_8PrefetchEEEvT_SO_T0_T1_":bb.a
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = or i32 %i.fn, 1
  %i.fp = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %8 = xor i32 %i.fp, 31
  %i.fq = mul nuw nsw i32 %8, 9
  %i.fr = add nuw nsw i32 %i.fq, 73
  %i.fs = lshr i32 %i.fr, 6
end_hunk_72
