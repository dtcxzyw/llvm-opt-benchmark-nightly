inline.NumInlined: 1130
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN19rotation_derivative18prepare_derivativeE24rotation_derivative_dldq:bb.a
  %i.azg = insertelement <2 x double> %i.azf, double %i.azc, i64 1
  %i.azh = fmul <2 x double> %i.aze, %i.azg
  %i.azi = fdiv <2 x double> %i.azh, %i.ck        ; 2 uses
  %i.azj = load double, ptr %i.ei, align 8, !tbaa !69
  %i.azk = extractelement <2 x double> %i.azi, i64 1
  %i.azl = fmul double %i.azj, %i.azk
  %i.azm = extractelement <2 x double> %i.azi, i64 0
  %i.azn = tail call double @llvm.fmuladd.f64(double %i.azm, double %i.azb, double %i.azl)
  %i.azo = load double, ptr %i.fo, align 8, !tbaa !69
  %i.azp = fmul double %i.aza, %i.azo
  %i.azq = fdiv double %i.azp, %i.ct
  %i.azr = load double, ptr %i.er, align 8, !tbaa !69
  %i.azs = tail call double @llvm.fmuladd.f64(double %i.azq, double %i.azr, double %i.azn)
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 576
  store double %i.azs, ptr %i.azt, align 8, !tbaa !69
  %i.azu = load double, ptr %i.ez, align 8, !tbaa !69 ; 2 uses
  %i.azv = load double, ptr %i.mb, align 8, !tbaa !69 ; 2 uses
  %i.azw = fmul double %i.azu, %i.azv
  %i.azx = fdiv double %i.azw, %i.cl
  %i.azy = load double, ptr %i.fc, align 8, !tbaa !69 ; 2 uses
  %i.azz = load double, ptr %i.fo, align 8, !tbaa !69 ; 2 uses
  %i.baa = insertelement <2 x double> poison, double %i.azv, i64 0
  %i.bab = shufflevector <2 x double> %i.baa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bac = insertelement <2 x double> poison, double %i.azy, i64 0
  %i.bad = insertelement <2 x double> %i.bac, double %i.azz, i64 1
  %i.bae = fmul <2 x double> %i.bab, %i.bad
  %i.baf = fdiv <2 x double> %i.bae, %i.dn        ; 2 uses
  %i.bag = extractelement <2 x double> %i.baf, i64 0
  %i.bah = fmul double %i.azy, %i.bag
  %i.bai = tail call double @llvm.fmuladd.f64(double %i.azx, double %i.azu, double %i.bah)
  %i.baj = extractelement <2 x double> %i.baf, i64 1
  %i.bak = tail call double @llvm.fmuladd.f64(double %i.baj, double %i.azz, double %i.bai)
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 704
  store double %i.bak, ptr %i.bal, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK19rotation_derivative20calc_derivative_implILb1ELb1ELb1EEEvRA4_A4_KN12colvarmodule7rvectorEPS2_PSt5arrayIS2_Lm4EEPS8_IS9_Lm4EE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 384, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load double, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load double, ptr %i.d, align 8, !tbaa !69 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load double, ptr %i.h, align 8, !tbaa !69 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load double, ptr %i.l, align 8, !tbaa !69 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load double, ptr %i.p, align 8, !tbaa !69 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load double, ptr %i.t, align 8, !tbaa !69 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load double, ptr %i.x, align 8, !tbaa !69 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !69 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = load double, ptr %i.af, align 8, !tbaa !69 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !69 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ao = load double, ptr %i.an, align 8, !tbaa !69 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.as = load double, ptr %i.ar, align 8, !tbaa !69 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aw = load double, ptr %i.av, align 8, !tbaa !69 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = load double, ptr %i.az, align 8, !tbaa !69 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.be = load double, ptr %i.bd, align 8, !tbaa !69 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !69 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.4556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bz = load <6 x double>, ptr %1, align 8, !tbaa !69, !noalias !193 ; 7 uses
  %i.ca = load double, ptr %i.g, align 8, !tbaa !29, !noalias !195 ; 3 uses
  %i.cb = load double, ptr %i.f, align 8, !tbaa !25, !noalias !195 ; 3 uses
  %i.cc = load double, ptr %i.c, align 8, !tbaa !28, !noalias !198 ; 3 uses
  %i.cd = extractelement <6 x double> %i.bz, i64 0
  %i.ce = fmul double %i.b, %i.cd
  %i.cf = fmul double %i.b, %i.cc
  %i.cg = extractelement <6 x double> %i.bz, i64 2
  %i.ch = fmul double %i.b, %i.cg
  %i.ci = fmul double %i.e, %i.cb
  %i.cj = extractelement <6 x double> %i.bz, i64 4
  %i.ck = fmul double %i.e, %i.cj
  %i.cl = fmul double %i.e, %i.ca
  %i.cm = fadd double %i.ce, %i.ci
  %i.cn = fadd double %i.cf, %i.ck
  %i.co = fadd double %i.ch, %i.cl
  %i.cp = load <3 x double>, ptr %i.j, align 8, !tbaa !69, !noalias !201 ; 4 uses
  %i.cq = shufflevector <3 x double> %i.cp, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.cr = load double, ptr %i.k, align 8, !tbaa !28, !noalias !201 ; 2 uses
  %i.cs = extractelement <3 x double> %i.cp, i64 0
  %i.ct = fmul double %i.i, %i.cs
  %i.cu = fmul double %i.i, %i.cr
  %i.cv = extractelement <3 x double> %i.cp, i64 2
  %i.cw = fmul double %i.i, %i.cv
  %i.cx = fadd double %i.cm, %i.ct
  %i.cy = fadd double %i.cn, %i.cu
  %i.cz = fadd double %i.co, %i.cw
  %i.da = load <3 x double>, ptr %i.n, align 8, !tbaa !69, !noalias !204 ; 4 uses
  %i.db = shufflevector <3 x double> %i.da, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dc = load double, ptr %i.o, align 8, !tbaa !28, !noalias !204 ; 2 uses
  %i.dd = extractelement <3 x double> %i.da, i64 0
  %i.de = fmul double %i.m, %i.dd
  %i.df = fmul double %i.m, %i.dc
  %i.dg = extractelement <3 x double> %i.da, i64 2
  %i.dh = fmul double %i.m, %i.dg
  %i.di = fadd double %i.cx, %i.de
  %i.dj = fadd double %i.cy, %i.df
  %i.dk = fadd double %i.cz, %i.dh
  %i.dl = load <3 x double>, ptr %i.r, align 8, !tbaa !69, !noalias !207 ; 4 uses
  %i.dm = shufflevector <3 x double> %i.dl, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dn = load double, ptr %i.s, align 8, !tbaa !28, !noalias !207 ; 2 uses
  %i.do = extractelement <3 x double> %i.dl, i64 0
  %i.dp = fmul double %i.q, %i.do
  %i.dq = fmul double %i.q, %i.dn
  %i.dr = extractelement <3 x double> %i.dl, i64 2
  %i.ds = fmul double %i.q, %i.dr
  %i.dt = fadd double %i.di, %i.dp
  %i.du = fadd double %i.dj, %i.dq
  %i.dv = fadd double %i.dk, %i.ds
  %i.dw = load <2 x double>, ptr %i.bl, align 8, !tbaa !69 ; 2 uses
  %i.dx = load <2 x double>, ptr %i.bm, align 8, !tbaa !69
  %i.dy = load <4 x double>, ptr %i.bw, align 8, !tbaa !69 ; 7 uses
  %i.dz = load double, ptr %i.bx, align 8, !tbaa !69
  %i.ea = shufflevector <6 x double> %i.bz, <6 x double> poison, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %i.eb = shufflevector <4 x double> %i.dy, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.ec = shufflevector <2 x double> %i.dw, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ed = shufflevector <3 x double> %i.ec, <3 x double> %i.eb, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.ee = fmul <4 x double> %i.ea, %i.ed
  %i.ef = shufflevector <6 x double> %i.bz, <6 x double> poison, <4 x i32> <i32 3, i32 1, i32 5, i32 3>
  %i.eg = shufflevector <2 x double> %i.dw, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.eh = shufflevector <4 x double> %i.eg, <4 x double> %i.dy, <4 x i32> <i32 0, i32 1, i32 0, i32 5>
  %i.ei = fmul <4 x double> %i.ef, %i.eh
  %i.ej = fadd <4 x double> %i.ee, %i.ei
  %i.ek = shufflevector <2 x double> %i.dx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.el = shufflevector <4 x double> %i.ek, <4 x double> %i.dy, <4 x i32> <i32 0, i32 0, i32 0, i32 6>
  %i.em = fmul <4 x double> %i.cq, %i.el
  %i.en = fadd <4 x double> %i.ej, %i.em
  %i.eo = shufflevector <4 x double> %i.ek, <4 x double> %i.dy, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.ep = fmul <4 x double> %i.db, %i.eo
  %i.eq = fadd <4 x double> %i.en, %i.ep
  %i.er = insertelement <4 x double> poison, double %i.bo, i64 0
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.et = load double, ptr %i.es, align 8, !tbaa !69 ; 3 uses
  %i.eu = load <3 x double>, ptr %i.v, align 8, !tbaa !69, !noalias !210 ; 4 uses
  %i.ev = shufflevector <3 x double> %i.eu, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ew = load double, ptr %i.w, align 8, !tbaa !28, !noalias !210 ; 4 uses
  %i.ex = extractelement <3 x double> %i.eu, i64 0
  %i.ey = fmul double %i.u, %i.ex
  %i.ez = fmul double %i.u, %i.ew
  %i.fa = extractelement <3 x double> %i.eu, i64 2 ; 3 uses
  %i.fb = fmul double %i.u, %i.fa
  %i.fc = fadd double %i.dt, %i.ey
  %i.fd = fadd double %i.du, %i.ez
  %i.fe = fadd double %i.dv, %i.fb
  %i.ff = insertelement <4 x double> poison, double %i.bq, i64 0
  %i.fg = insertelement <4 x double> %i.ff, double %i.et, i64 1
  %i.fh = shufflevector <4 x double> %i.fg, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fi = fmul <4 x double> %i.ev, %i.fh
  %5 = fmul double %i.fa, %i.et
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ft = load <3 x double>, ptr %i.z, align 8, !tbaa !69, !noalias !213 ; 4 uses
  %i.fu = shufflevector <3 x double> %i.ft, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fv = load double, ptr %i.aa, align 8, !tbaa !28, !noalias !213 ; 2 uses
  %i.fw = extractelement <3 x double> %i.ft, i64 0
  %i.fx = fmul double %i.y, %i.fw
  %i.fy = fmul double %i.y, %i.fv
  %i.fz = extractelement <3 x double> %i.ft, i64 2
  %i.ga = fmul double %i.y, %i.fz
  %i.gb = fadd double %i.fc, %i.fx
  %i.gc = fadd double %i.fd, %i.fy
  %i.gd = fadd double %i.fe, %i.ga
  %i.ge = load <3 x double>, ptr %i.ad, align 8, !tbaa !69, !noalias !216 ; 4 uses
  %i.gf = shufflevector <3 x double> %i.ge, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gg = load double, ptr %i.ae, align 8, !tbaa !28, !noalias !216 ; 2 uses
  %i.gh = extractelement <3 x double> %i.ge, i64 0
  %i.gi = fmul double %i.ac, %i.gh
  %i.gj = fmul double %i.ac, %i.gg
  %i.gk = extractelement <3 x double> %i.ge, i64 2
  %i.gl = fmul double %i.ac, %i.gk
  %i.gm = fadd double %i.gb, %i.gi
  %i.gn = fadd double %i.gc, %i.gj
  %i.go = fadd double %i.gd, %i.gl
  %i.gp = load <3 x double>, ptr %i.ah, align 8, !tbaa !69, !noalias !219 ; 4 uses
  %i.gq = shufflevector <3 x double> %i.gp, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gr = load double, ptr %i.ai, align 8, !tbaa !28, !noalias !219 ; 2 uses
  %i.gs = extractelement <3 x double> %i.gp, i64 0
  %i.gt = fmul double %i.ag, %i.gs
  %i.gu = fmul double %i.ag, %i.gr
  %i.gv = extractelement <3 x double> %i.gp, i64 2
  %i.gw = fmul double %i.ag, %i.gv
  %i.gx = fadd double %i.gm, %i.gt
  %i.gy = fadd double %i.gn, %i.gu
  %i.gz = fadd double %i.go, %i.gw
  %i.ha = load <3 x double>, ptr %i.al, align 8, !tbaa !69, !noalias !222 ; 4 uses
  %i.hb = shufflevector <3 x double> %i.ha, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hc = load double, ptr %i.am, align 8, !tbaa !28, !noalias !222 ; 2 uses
  %i.hd = extractelement <3 x double> %i.ha, i64 0
  %i.he = fmul double %i.ak, %i.hd
  %i.hf = fmul double %i.ak, %i.hc
  %i.hg = extractelement <3 x double> %i.ha, i64 2
  %i.hh = fmul double %i.ak, %i.hg
  %i.hi = fadd double %i.gx, %i.he
  %i.hj = fadd double %i.gy, %i.hf
  %i.hk = fadd double %i.gz, %i.hh
  %i.hl = load <3 x double>, ptr %i.ap, align 8, !tbaa !69, !noalias !225 ; 4 uses
  %i.hm = shufflevector <3 x double> %i.hl, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hn = load double, ptr %i.aq, align 8, !tbaa !28, !noalias !225 ; 2 uses
  %i.ho = extractelement <3 x double> %i.hl, i64 0
  %i.hp = fmul double %i.ao, %i.ho
  %i.hq = fmul double %i.ao, %i.hn
  %i.hr = extractelement <3 x double> %i.hl, i64 2
  %i.hs = fmul double %i.ao, %i.hr
  %i.ht = fadd double %i.hi, %i.hp
  %i.hu = fadd double %i.hj, %i.hq
  %i.hv = fadd double %i.hk, %i.hs
  %i.hw = load <3 x double>, ptr %i.at, align 8, !tbaa !69, !noalias !228 ; 4 uses
  %i.hx = shufflevector <3 x double> %i.hw, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hy = load double, ptr %i.au, align 8, !tbaa !28, !noalias !228 ; 2 uses
  %i.hz = extractelement <3 x double> %i.hw, i64 0
  %i.ia = fmul double %i.as, %i.hz
  %i.ib = fmul double %i.as, %i.hy
  %i.ic = extractelement <3 x double> %i.hw, i64 2
  %i.id = fmul double %i.as, %i.ic
  %i.ie = fadd double %i.ht, %i.ia
  %i.if = fadd double %i.hu, %i.ib
  %i.ig = fadd double %i.hv, %i.id
  %i.ih = load <3 x double>, ptr %i.ax, align 8, !tbaa !69, !noalias !231 ; 4 uses
  %i.ii = shufflevector <3 x double> %i.ih, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ij = load double, ptr %i.ay, align 8, !tbaa !28, !noalias !231 ; 2 uses
  %i.ik = extractelement <3 x double> %i.ih, i64 0
  %i.il = fmul double %i.aw, %i.ik
  %i.im = fmul double %i.aw, %i.ij
  %i.in = extractelement <3 x double> %i.ih, i64 2
  %i.io = fmul double %i.aw, %i.in
  %i.ip = fadd double %i.ie, %i.il
  %i.iq = fadd double %i.if, %i.im
  %i.ir = fadd double %i.ig, %i.io
  %i.is = load <3 x double>, ptr %i.bb, align 8, !tbaa !69, !noalias !234 ; 4 uses
  %i.it = shufflevector <3 x double> %i.is, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.iu = load double, ptr %i.bc, align 8, !tbaa !28, !noalias !234 ; 2 uses
  %i.iv = extractelement <3 x double> %i.is, i64 0
  %i.iw = fmul double %i.ba, %i.iv
  %i.ix = fmul double %i.ba, %i.iu
  %i.iy = extractelement <3 x double> %i.is, i64 2
  %i.iz = fmul double %i.ba, %i.iy
  %i.ja = fadd double %i.ip, %i.iw
  %i.jb = fadd double %i.iq, %i.ix
  %i.jc = fadd double %i.ir, %i.iz
  %i.jd = load <3 x double>, ptr %i.bf, align 8, !tbaa !69, !noalias !237 ; 4 uses
  %i.je = shufflevector <3 x double> %i.jd, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.jf = load double, ptr %i.bg, align 8, !tbaa !28, !noalias !237 ; 2 uses
  %i.jg = extractelement <3 x double> %i.jd, i64 0
  %i.jh = fmul double %i.be, %i.jg
  %i.ji = fmul double %i.be, %i.jf
  %i.jj = extractelement <3 x double> %i.jd, i64 2
  %i.jk = fmul double %i.be, %i.jj
  %i.jl = fadd double %i.ja, %i.jh
  %i.jm = fadd double %i.jb, %i.ji
  %i.jn = fadd double %i.jc, %i.jk
  %i.jo = load <3 x double>, ptr %i.bj, align 8, !tbaa !69, !noalias !240 ; 4 uses
  %i.jp = shufflevector <3 x double> %i.jo, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.jq = load double, ptr %i.bk, align 8, !tbaa !28, !noalias !240 ; 2 uses
  %i.jr = extractelement <3 x double> %i.jo, i64 0
  %i.js = fmul double %i.bi, %i.jr
  %i.jt = fmul double %i.bi, %i.jq
  %i.ju = extractelement <3 x double> %i.jo, i64 2
  %i.jv = fmul double %i.bi, %i.ju
  %i.jw = fadd double %i.jl, %i.js
  %i.jx = fadd double %i.jm, %i.jt
  %i.jy = fadd double %i.jn, %i.jv
  store double %i.jw, ptr %2, align 8, !tbaa !69
  store double %i.jx, ptr %.sroa.4556.0..sroa_idx, align 8, !tbaa !69
  store double %i.jy, ptr %.sroa.5557.0..sroa_idx, align 8, !tbaa !69
  %i.jz = load <2 x double>, ptr %i.br, align 8, !tbaa !69 ; 2 uses
  %i.ka = load <2 x double>, ptr %i.bs, align 8, !tbaa !69 ; 2 uses
  %i.kb = load <2 x double>, ptr %i.bt, align 8, !tbaa !69 ; 2 uses
  %i.kc = load <2 x double>, ptr %i.bu, align 8, !tbaa !69 ; 2 uses
  %i.kd = load <2 x double>, ptr %i.bv, align 8, !tbaa !69 ; 2 uses
  %i.ke = load <2 x double>, ptr %i.fj, align 8, !tbaa !69 ; 3 uses
  %i.kf = load double, ptr %i.fk, align 8, !tbaa !69
  %i.kg = shufflevector <2 x double> %i.jz, <2 x double> %i.ke, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.kh = fmul <4 x double> %i.fu, %i.kg
  %i.ki = shufflevector <2 x double> %i.jz, <2 x double> %i.ke, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.kj = fmul <4 x double> %i.gf, %i.ki
  %i.kk = load <2 x double>, ptr %i.fl, align 8, !tbaa !69 ; 3 uses
  %i.kl = load double, ptr %i.fm, align 8, !tbaa !69
  %i.km = shufflevector <2 x double> %i.ka, <2 x double> %i.kk, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.kn = fmul <4 x double> %i.gq, %i.km
  %i.ko = shufflevector <2 x double> %i.ka, <2 x double> %i.kk, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.kp = fmul <4 x double> %i.hb, %i.ko
  %i.kq = load <2 x double>, ptr %i.fn, align 8, !tbaa !69 ; 3 uses
  %i.kr = load double, ptr %i.fo, align 8, !tbaa !69
  %i.ks = shufflevector <2 x double> %i.kb, <2 x double> %i.kq, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.kt = fmul <4 x double> %i.hm, %i.ks
  %i.ku = shufflevector <2 x double> %i.kb, <2 x double> %i.kq, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.kv = fmul <4 x double> %i.hx, %i.ku
  %i.kw = load <2 x double>, ptr %i.fp, align 8, !tbaa !69 ; 3 uses
  %i.kx = load double, ptr %i.fq, align 8, !tbaa !69
  %i.ky = shufflevector <2 x double> %i.kc, <2 x double> %i.kw, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.kz = fmul <4 x double> %i.ii, %i.ky
  %i.la = shufflevector <2 x double> %i.kc, <2 x double> %i.kw, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.lb = fmul <4 x double> %i.it, %i.la
  %i.lc = load <2 x double>, ptr %i.fr, align 8, !tbaa !69 ; 3 uses
  %i.ld = load double, ptr %i.fs, align 8, !tbaa !69
  %i.le = shufflevector <2 x double> %i.kd, <2 x double> %i.lc, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.lf = fmul <4 x double> %i.je, %i.le
  %i.lg = shufflevector <2 x double> %i.kd, <2 x double> %i.lc, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.lh = fmul <4 x double> %i.jp, %i.lg
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ll = load <2 x double>, ptr %i.by, align 8, !tbaa !69 ; 2 uses
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ln = shufflevector <4 x double> %i.er, <4 x double> %i.lm, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.lo = fmul <4 x double> %i.dm, %i.ln
  %i.lp = fadd <4 x double> %i.eq, %i.lo
  %i.lq = fadd <4 x double> %i.lp, %i.fi
  %i.lr = fadd <4 x double> %i.lq, %i.kh
  %i.ls = fadd <4 x double> %i.lr, %i.kj
  %i.lt = fadd <4 x double> %i.ls, %i.kn
  %i.lu = fadd <4 x double> %i.lt, %i.kp
  %i.lv = fadd <4 x double> %i.lu, %i.kt
  %i.lw = fadd <4 x double> %i.lv, %i.kv
  %i.lx = fadd <4 x double> %i.lw, %i.kz
  %i.ly = fadd <4 x double> %i.lx, %i.lb
  %i.lz = fadd <4 x double> %i.ly, %i.lf
  %i.ma = fadd <4 x double> %i.lz, %i.lh
  store <4 x double> %i.ma, ptr %3, align 8, !tbaa !69
  %i.mb = load <4 x double>, ptr %i.li, align 8, !tbaa !69 ; 7 uses
  %i.mc = load double, ptr %i.lj, align 8, !tbaa !69
  %i.md = insertelement <4 x double> poison, double %i.cc, i64 0
  %i.me = insertelement <4 x double> %i.md, double %i.cb, i64 1
  %i.mf = insertelement <4 x double> %i.me, double %i.ca, i64 2
  %i.mg = shufflevector <4 x double> %i.mf, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.mh = shufflevector <4 x double> %i.dy, <4 x double> %i.mb, <4 x i32> <i32 0, i32 6, i32 2, i32 4> ; 2 uses
  %i.mi = shufflevector <4 x double> %i.mh, <4 x double> %i.mb, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.mj = insertelement <4 x double> %i.mi, double %i.dz, i64 2 ; 2 uses
  %i.mk = fmul <4 x double> %i.mg, %i.mj
  %i.ml = shufflevector <6 x double> %i.bz, <6 x double> poison, <4 x i32> <i32 4, i32 0, i32 2, i32 4>
  %i.mm = shufflevector <4 x double> %i.dy, <4 x double> %i.mj, <4 x i32> <i32 6, i32 7, i32 0, i32 poison>
  %i.mn = shufflevector <4 x double> %i.mm, <4 x double> %i.mb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mo = fmul <4 x double> %i.ml, %i.mn
  %i.mp = fadd <4 x double> %i.mk, %i.mo
  %i.mq = insertelement <4 x double> poison, double %i.cr, i64 0
  %i.mr = shufflevector <4 x double> %i.mq, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ms = shufflevector <4 x double> %i.mr, <4 x double> %i.mh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mt = shufflevector <4 x double> %i.dy, <4 x double> %i.cq, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.mu = shufflevector <4 x double> %i.mt, <4 x double> %i.cq, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.mv = shufflevector <4 x double> %i.mu, <4 x double> %i.mb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.mw = fmul <4 x double> %i.ms, %i.mv
  %i.mx = fadd <4 x double> %i.mp, %i.mw
  %i.my = shufflevector <3 x double> %i.da, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.mz = insertelement <4 x double> poison, double %i.dc, i64 0
  %i.na = shufflevector <4 x double> %i.mz, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.nb = shufflevector <4 x double> %i.na, <4 x double> %i.my, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.nc = shufflevector <4 x double> %i.lm, <4 x double> %i.mb, <4 x i32> <i32 0, i32 7, i32 0, i32 7>
  %i.nd = fmul <4 x double> %i.nb, %i.nc
  %i.ne = fadd <4 x double> %i.mx, %i.nd
  %i.nf = shufflevector <3 x double> %i.dl, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ng = insertelement <4 x double> poison, double %i.dn, i64 0
  %i.nh = shufflevector <4 x double> %i.ng, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ni = shufflevector <4 x double> %i.nh, <4 x double> %i.nf, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !69 ; 3 uses
  %i.nl = shufflevector <3 x double> %i.eu, <3 x double> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.nm = insertelement <2 x double> %i.nl, double %i.ew, i64 0
  %i.nn = insertelement <2 x double> poison, double %i.et, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.nk, i64 1
  %6 = fmul <2 x double> %i.nm, %i.no
  %7 = fmul double %i.ew, %i.nk
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %8 = shufflevector <2 x double> %6, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = insertelement <4 x double> %8, double %5, i64 2
  %10 = insertelement <4 x double> %9, double %7, i64 3
  %i.nx = load <4 x double>, ptr %i.np, align 8, !tbaa !69 ; 4 uses
  %i.ny = load double, ptr %i.nr, align 8, !tbaa !69
  %i.nz = load double, ptr %i.nq, align 8, !tbaa !69
  %i.oa = shufflevector <3 x double> %i.ft, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ob = insertelement <4 x double> poison, double %i.fv, i64 0
  %i.oc = shufflevector <4 x double> %i.ob, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.od = shufflevector <4 x double> %i.oc, <4 x double> %i.oa, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.oe = shufflevector <2 x double> %i.ke, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.of = shufflevector <4 x double> %i.oe, <4 x double> %i.nx, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.og = fmul <4 x double> %i.od, %i.of
  %i.oh = shufflevector <3 x double> %i.ge, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.oi = insertelement <4 x double> poison, double %i.gg, i64 0
  %i.oj = shufflevector <4 x double> %i.oi, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.ok = shufflevector <4 x double> %i.oj, <4 x double> %i.oh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ol = shufflevector <4 x double> %i.nx, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.om = insertelement <2 x double> %i.ol, double %i.kf, i64 0
  %i.on = shufflevector <2 x double> %i.om, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.oo = fmul <4 x double> %i.ok, %i.on
  %i.op = shufflevector <3 x double> %i.gp, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.oq = insertelement <4 x double> poison, double %i.gr, i64 0
  %i.or = shufflevector <4 x double> %i.oq, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.os = shufflevector <4 x double> %i.or, <4 x double> %i.op, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ot = shufflevector <2 x double> %i.kk, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.ou = shufflevector <4 x double> %i.ot, <4 x double> %i.nx, <4 x i32> <i32 0, i32 6, i32 2, i32 6>
  %i.ov = fmul <4 x double> %i.os, %i.ou
  %i.ow = shufflevector <3 x double> %i.ha, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.ox = insertelement <4 x double> poison, double %i.hc, i64 0
  %i.oy = shufflevector <4 x double> %i.ox, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.oz = shufflevector <4 x double> %i.oy, <4 x double> %i.ow, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.pa = shufflevector <4 x double> %i.nx, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.pb = insertelement <2 x double> %i.pa, double %i.kl, i64 0
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pd = fmul <4 x double> %i.oz, %i.pc
  %i.pe = load <4 x double>, ptr %i.ns, align 8, !tbaa !69 ; 4 uses
  %i.pf = load double, ptr %i.nu, align 8, !tbaa !69
  %i.pg = load double, ptr %i.nt, align 8, !tbaa !69
  %i.ph = shufflevector <3 x double> %i.hl, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.pi = insertelement <4 x double> poison, double %i.hn, i64 0
  %i.pj = shufflevector <4 x double> %i.pi, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.pk = shufflevector <4 x double> %i.pj, <4 x double> %i.ph, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.pl = shufflevector <2 x double> %i.kq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.pm = shufflevector <4 x double> %i.pl, <4 x double> %i.pe, <4 x i32> <i32 0, i32 4, i32 2, i32 4>
  %i.pn = fmul <4 x double> %i.pk, %i.pm
  %i.po = shufflevector <3 x double> %i.hw, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.pp = insertelement <4 x double> poison, double %i.hy, i64 0
  %i.pq = shufflevector <4 x double> %i.pp, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.pr = shufflevector <4 x double> %i.pq, <4 x double> %i.po, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ps = shufflevector <4 x double> %i.pe, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.pt = insertelement <2 x double> %i.ps, double %i.kr, i64 0
  %i.pu = shufflevector <2 x double> %i.pt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pv = fmul <4 x double> %i.pr, %i.pu
  %i.pw = shufflevector <3 x double> %i.ih, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.px = insertelement <4 x double> poison, double %i.ij, i64 0
  %i.py = shufflevector <4 x double> %i.px, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.pz = shufflevector <4 x double> %i.py, <4 x double> %i.pw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.qa = shufflevector <2 x double> %i.kw, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.qb = shufflevector <4 x double> %i.qa, <4 x double> %i.pe, <4 x i32> <i32 0, i32 6, i32 2, i32 6>
  %i.qc = fmul <4 x double> %i.pz, %i.qb
  %i.qd = shufflevector <3 x double> %i.is, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.qe = insertelement <4 x double> poison, double %i.iu, i64 0
  %i.qf = shufflevector <4 x double> %i.qe, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.qg = shufflevector <4 x double> %i.qf, <4 x double> %i.qd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.qh = shufflevector <4 x double> %i.pe, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.qi = insertelement <2 x double> %i.qh, double %i.kx, i64 0
  %i.qj = shufflevector <2 x double> %i.qi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qk = fmul <4 x double> %i.qg, %i.qj
  %i.ql = load <2 x double>, ptr %i.nv, align 8, !tbaa !69 ; 3 uses
  %i.qm = load double, ptr %i.nw, align 8, !tbaa !69
  %i.qn = shufflevector <3 x double> %i.jd, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.qo = insertelement <4 x double> poison, double %i.jf, i64 0
  %i.qp = shufflevector <4 x double> %i.qo, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.qq = shufflevector <4 x double> %i.qp, <4 x double> %i.qn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.qr = shufflevector <2 x double> %i.lc, <2 x double> %i.ql, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.qs = fmul <4 x double> %i.qq, %i.qr
  %i.qt = shufflevector <3 x double> %i.jo, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 2> ; 2 uses
  %i.qu = insertelement <4 x double> poison, double %i.jq, i64 0
  %i.qv = shufflevector <4 x double> %i.qu, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.qw = shufflevector <4 x double> %i.qv, <4 x double> %i.qt, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.qx = insertelement <2 x double> %i.ql, double %i.ld, i64 0
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qz = fmul <4 x double> %i.qw, %i.qy
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !69
  %i.re = load <2 x double>, ptr %i.lk, align 8, !tbaa !69 ; 3 uses
  %i.rf = shufflevector <2 x double> %i.ll, <2 x double> %i.re, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.rg = fmul <4 x double> %i.ni, %i.rf
  %i.rh = fadd <4 x double> %i.ne, %i.rg
  %i.ri = fadd <4 x double> %i.rh, %10
  %i.rj = fadd <4 x double> %i.ri, %i.og
  %i.rk = fadd <4 x double> %i.rj, %i.oo
  %i.rl = fadd <4 x double> %i.rk, %i.ov
  %i.rm = fadd <4 x double> %i.rl, %i.pd
  %i.rn = fadd <4 x double> %i.rm, %i.pn
  %i.ro = fadd <4 x double> %i.rn, %i.pv
  %i.rp = fadd <4 x double> %i.ro, %i.qc
  %i.rq = fadd <4 x double> %i.rp, %i.qk
  %i.rr = fadd <4 x double> %i.rq, %i.qs
  %i.rs = fadd <4 x double> %i.rr, %i.qz
  %i.rt = shufflevector <4 x double> %i.rs, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.rt, ptr %.sroa.4370.0..sroa_idx, align 8, !tbaa !69
  %i.ru = load <2 x double>, ptr %i.ra, align 8, !tbaa !69 ; 3 uses
  %i.rv = shufflevector <6 x double> %i.bz, <6 x double> poison, <4 x i32> <i32 2, i32 0, i32 4, i32 2>
  %i.rw = shufflevector <2 x double> %i.ru, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison> ; 2 uses
  %i.rx = shufflevector <4 x double> %i.mb, <4 x double> %i.rw, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ry = shufflevector <4 x double> %i.rx, <4 x double> %i.rw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.rz = fmul <4 x double> %i.rv, %i.ry
  %i.sa = insertelement <4 x double> poison, double %i.ca, i64 0
  %i.sb = insertelement <4 x double> %i.sa, double %i.cb, i64 1
  %i.sc = insertelement <4 x double> %i.sb, double %i.cc, i64 2
  %i.sd = shufflevector <4 x double> %i.sc, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.se = shufflevector <2 x double> %i.ru, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.sf = insertelement <3 x double> %i.se, double %i.mc, i64 0
  %i.sg = shufflevector <2 x double> %i.ru, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.sh = shufflevector <3 x double> %i.sf, <3 x double> %i.sg, <4 x i32> <i32 0, i32 1, i32 3, i32 1>
  %i.si = fmul <4 x double> %i.sd, %i.sh
  %i.sj = fadd <4 x double> %i.rz, %i.si
  %i.sk = load <2 x double>, ptr %i.rb, align 8, !tbaa !69 ; 2 uses
  %i.sl = shufflevector <3 x double> %i.cp, <3 x double> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 2>
  %i.sm = shufflevector <4 x double> %i.sl, <4 x double> %i.mr, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.sn = shufflevector <4 x double> %i.mb, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> %i.sk, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.sp = fmul <4 x double> %i.sm, %i.so
  %i.sq = fadd <4 x double> %i.sj, %i.sp
  %i.sr = shufflevector <4 x double> %i.my, <4 x double> %i.na, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ss = shufflevector <2 x double> %i.re, <2 x double> %i.sk, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.st = fmul <4 x double> %i.sr, %i.ss
  %i.su = fadd <4 x double> %i.sq, %i.st
  %i.sv = shufflevector <4 x double> %i.nf, <4 x double> %i.nh, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.sw = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sx = insertelement <2 x double> %i.sw, double %i.rd, i64 1
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.sz = fmul <4 x double> %i.sv, %i.sy
  %i.ta = fadd <4 x double> %i.su, %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !69 ; 3 uses
  %i.td = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.te = insertelement <2 x double> %i.td, double %i.tc, i64 1
  %11 = fmul <2 x double> %i.nl, %i.te
  %12 = fmul double %i.ew, %i.tc
  %13 = fmul double %i.fa, %i.tc
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 696
  %14 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = insertelement <4 x double> %14, double %12, i64 2
  %16 = insertelement <4 x double> %15, double %13, i64 3
  %i.tk = fadd <4 x double> %i.ta, %16
  %i.tl = load <2 x double>, ptr %i.tf, align 8, !tbaa !69 ; 2 uses
  %i.tm = shufflevector <4 x double> %i.oa, <4 x double> %i.oc, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.tn = shufflevector <2 x double> %i.ol, <2 x double> %i.tl, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.to = fmul <4 x double> %i.tm, %i.tn
  %i.tp = fadd <4 x double> %i.tk, %i.to
  %i.tq = shufflevector <4 x double> %i.oh, <4 x double> %i.oj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.tr = insertelement <2 x double> %i.tl, double %i.nz, i64 0
  %i.ts = shufflevector <2 x double> %i.tr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.tt = fmul <4 x double> %i.tq, %i.ts
  %i.tu = fadd <4 x double> %i.tp, %i.tt
  %i.tv = load <2 x double>, ptr %i.tg, align 8, !tbaa !69 ; 2 uses
  %i.tw = shufflevector <4 x double> %i.op, <4 x double> %i.or, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.tx = shufflevector <2 x double> %i.pa, <2 x double> %i.tv, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ty = fmul <4 x double> %i.tw, %i.tx
  %i.tz = fadd <4 x double> %i.tu, %i.ty
  %i.ua = shufflevector <4 x double> %i.ow, <4 x double> %i.oy, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ub = insertelement <2 x double> %i.tv, double %i.ny, i64 0
  %i.uc = shufflevector <2 x double> %i.ub, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ud = fmul <4 x double> %i.ua, %i.uc
  %i.ue = fadd <4 x double> %i.tz, %i.ud
  %i.uf = load <2 x double>, ptr %i.th, align 8, !tbaa !69 ; 2 uses
  %i.ug = shufflevector <4 x double> %i.ph, <4 x double> %i.pj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.uh = shufflevector <2 x double> %i.ps, <2 x double> %i.uf, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ui = fmul <4 x double> %i.ug, %i.uh
  %i.uj = fadd <4 x double> %i.ue, %i.ui
  %i.uk = shufflevector <4 x double> %i.po, <4 x double> %i.pq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ul = insertelement <2 x double> %i.uf, double %i.pg, i64 0
  %i.um = shufflevector <2 x double> %i.ul, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.un = fmul <4 x double> %i.uk, %i.um
  %i.uo = fadd <4 x double> %i.uj, %i.un
  %i.up = load <2 x double>, ptr %i.ti, align 8, !tbaa !69 ; 2 uses
  %i.uq = shufflevector <4 x double> %i.pw, <4 x double> %i.py, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ur = shufflevector <2 x double> %i.qh, <2 x double> %i.up, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.us = fmul <4 x double> %i.uq, %i.ur
  %i.ut = fadd <4 x double> %i.uo, %i.us
  %i.uu = shufflevector <4 x double> %i.qd, <4 x double> %i.qf, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.uv = insertelement <2 x double> %i.up, double %i.pf, i64 0
  %i.uw = shufflevector <2 x double> %i.uv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ux = fmul <4 x double> %i.uu, %i.uw
  %i.uy = fadd <4 x double> %i.ut, %i.ux
  %i.uz = load <2 x double>, ptr %i.tj, align 8, !tbaa !69 ; 2 uses
  %i.va = shufflevector <4 x double> %i.qn, <4 x double> %i.qp, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.vb = shufflevector <2 x double> %i.ql, <2 x double> %i.uz, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.vc = fmul <4 x double> %i.va, %i.vb
  %i.vd = fadd <4 x double> %i.uy, %i.vc
  %i.ve = shufflevector <4 x double> %i.qt, <4 x double> %i.qv, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.vf = insertelement <2 x double> %i.uz, double %i.qm, i64 0
  %i.vg = shufflevector <2 x double> %i.vf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.vh = fmul <4 x double> %i.ve, %i.vg
  %i.vi = fadd <4 x double> %i.vd, %i.vh
  store <4 x double> %i.vi, ptr %.sroa.5278.0..sroa_idx, align 8, !tbaa !69
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress uwtable
define void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) initializes((0, 72)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.46", align 8    ; 9 uses
  %4 = alloca %"class.std::vector.46", align 8    ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !76     ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN12colvarmodule8rotation24build_correlation_matrixERKSt6vectorINS_7rvectorESaIS2_EES6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = load ptr, ptr %2, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.m = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %.039.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.b ] ; 3 uses
  %i.n = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.y, %bb.b ]
  %i.o = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.p = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.ae, %bb.b ]
  %i.q = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.aj, %bb.b ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.039.i ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.039.i ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !69 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !29 ; 3 uses
  %i.w = load <2 x double>, ptr %i.r, align 8, !tbaa !69 ; 3 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.t, <2 x double> %i.n) ; 2 uses
  %i.z = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.v, i64 0
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.aa, <2 x double> %i.o) ; 2 uses
  %i.ac = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = insertelement <2 x double> %i.z, double %i.v, i64 1
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ad, <2 x double> %i.p) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.t, <2 x double> %i.q) ; 2 uses
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.v, double %i.m) ; 2 uses
  %i.al = add nuw i64 %.039.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !78

._crit_edge.i:                                    ; preds = %bb.b
  store <2 x double> %i.y, ptr %0, align 8, !tbaa !69
  store <2 x double> %i.ab, ptr %i.i, align 8, !tbaa !69
  store <2 x double> %i.ae, ptr %i.j, align 8, !tbaa !69
  store <2 x double> %i.aj, ptr %i.k, align 8, !tbaa !69
  store double %i.ak, ptr %i.l, align 8, !tbaa !77
  br label %_ZN12colvarmodule8rotation24build_correlation_matrixERKSt6vectorINS_7rvectorESaIS2_EES6_.exit

_ZN12colvarmodule8rotation24build_correlation_matrixERKSt6vectorINS_7rvectorESaIS2_EES6_.exit: ; preds = %bb.a, %._crit_edge.i
  tail call void @_ZN12colvarmodule8rotation26calc_optimal_rotation_implEv(ptr noundef nonnull align 8 dereferenceable(568) %0)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.an = load i8, ptr %i.am, align 8, !tbaa !63, !range !243, !noundef !193
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.c, label %bb.l

bb.c:                                             ; preds = %_ZN12colvarmodule8rotation24build_correlation_matrixERKSt6vectorINS_7rvectorESaIS2_EES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN12colvarmodule10atom_group14pos_aos_to_soaERKSt6vectorINS_7rvectorESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.46") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZN12colvarmodule10atom_group14pos_aos_to_soaERKSt6vectorINS_7rvectorESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.46") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.aq = load ptr, ptr %1, align 8, !tbaa !76
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73
  %i.ax = load ptr, ptr %2, align 8, !tbaa !76
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 24
  invoke void @_ZN12colvarmodule8rotation15debug_gradientsERS0_RKSt6vectorIdSaIdEES6_mm(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.au, i64 noundef %i.bb)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %4, align 8, !tbaa !244   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !246
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bi = load ptr, ptr %3, align 8, !tbaa !244   ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIdSaIdEED2Ev.exit11, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !246
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit11

_ZNSt6vectorIdSaIdEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit13

bb.i:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !244   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIdSaIdEED2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !246
  %i.bt = ptrtoint ptr %i.bs to i64
end_hunk_0
