inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@bitrv2:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf161(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !8 ; 2 uses
  %i.e = fmul double %i.b, %i.d                   ; 2 uses
  %i.f = fadd double %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.ab = fsub <2 x double> %i.z, %i.aa           ; 2 uses
  %i.ac = load <2 x double>, ptr %i.h, align 8, !tbaa !8 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.i, align 8, !tbaa !8 ; 2 uses
  %i.ae = fsub <2 x double> %i.ac, %i.ad
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = fsub <2 x double> %i.ab, %i.af          ; 2 uses
  %i.ah = fadd <2 x double> %i.ab, %i.af          ; 2 uses
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> %i.ah, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aj = load <2 x double>, ptr %i.k, align 8, !tbaa !8 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.l, align 8, !tbaa !8 ; 2 uses
  %i.al = fsub <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = load <2 x double>, ptr %i.m, align 8, !tbaa !8 ; 2 uses
  %i.an = load <2 x double>, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.ao = fsub <2 x double> %i.am, %i.an
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aq = fsub <2 x double> %i.al, %i.ap          ; 3 uses
  %i.ar = fadd <2 x double> %i.al, %i.ap          ; 3 uses
  %i.as = shufflevector <2 x double> %i.aq, <2 x double> %i.ar, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.at = insertelement <2 x double> poison, double %i.e, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.av = fneg <2 x double> %i.as
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.ax = fmul <2 x double> %i.au, %i.aw
  %i.ay = insertelement <2 x double> poison, double %i.f, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.as, <2 x double> %i.ax) ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %i.b, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = load <2 x double>, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.be = load <2 x double>, ptr %i.v, align 8, !tbaa !8 ; 2 uses
  %i.bf = fsub <2 x double> %i.bd, %i.be          ; 2 uses
  %i.bg = load <2 x double>, ptr %i.w, align 8, !tbaa !8 ; 2 uses
  %i.bh = load <2 x double>, ptr %i.x, align 8, !tbaa !8 ; 2 uses
  %i.bi = fsub <2 x double> %i.bg, %i.bh
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bk = fsub <2 x double> %i.bf, %i.bj          ; 3 uses
  %i.bl = fadd <2 x double> %i.bf, %i.bj          ; 3 uses
  %i.bm = shufflevector <2 x double> %i.bk, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bn = fneg <2 x double> %i.bm
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.bp = fmul <2 x double> %i.az, %i.bo
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.bm, <2 x double> %i.bp) ; 2 uses
  %i.br = shufflevector <2 x double> %i.ah, <2 x double> %i.ag, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bs = shufflevector <2 x double> %i.ar, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bt = fneg <2 x double> %i.bs
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> %i.ar, <2 x i32> <i32 1, i32 2>
  %i.bv = fmul <2 x double> %i.az, %i.bu
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.bs, <2 x double> %i.bv) ; 2 uses
  %i.bx = shufflevector <2 x double> %i.bl, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.by = fneg <2 x double> %i.bx
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.ca = fmul <2 x double> %i.au, %i.bz
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bx, <2 x double> %i.ca) ; 2 uses
  %i.cc = fsub <2 x double> %i.bw, %i.cb          ; 2 uses
  %i.cd = fadd <2 x double> %i.bw, %i.cb
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cf = fadd <2 x double> %i.ba, %i.bq          ; 2 uses
  %i.cg = fsub <2 x double> %i.ba, %i.bq
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ci = load <2 x double>, ptr %i.p, align 8, !tbaa !8 ; 2 uses
  %i.cj = load <2 x double>, ptr %i.q, align 8, !tbaa !8 ; 2 uses
  %i.ck = fadd <2 x double> %i.ci, %i.cj          ; 3 uses
  %i.cl = load <2 x double>, ptr %i.r, align 8, !tbaa !8 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.s, align 8, !tbaa !8 ; 2 uses
  %i.cn = fadd <2 x double> %i.cl, %i.cm          ; 3 uses
  %i.co = fadd <2 x double> %i.ck, %i.cn          ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.ck, %i.cn
  %i.cp = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop350 = fsub <2 x double> %i.ck, %i.cn
  %i.cq = extractelement <2 x double> %foldExtExtBinop350, i64 1 ; 2 uses
  %i.cr = fsub <2 x double> %i.ci, %i.cj
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ct = fsub <2 x double> %i.cl, %i.cm          ; 4 uses
  %foldExtExtBinop352 = fsub <2 x double> %i.cs, %i.ct
  %i.cu = extractelement <2 x double> %foldExtExtBinop352, i64 1 ; 2 uses
  %foldExtExtBinop354 = fadd <2 x double> %i.cs, %i.ct
  %i.cv = extractelement <2 x double> %foldExtExtBinop354, i64 0 ; 2 uses
  %i.cw = fsub <2 x double> %i.cs, %i.ct
  %i.cx = fadd <2 x double> %i.cs, %i.ct
  %i.cy = fadd <2 x double> %i.z, %i.aa           ; 3 uses
  %i.cz = fadd <2 x double> %i.ac, %i.ad          ; 3 uses
  %i.da = fadd <2 x double> %i.cy, %i.cz          ; 2 uses
  %foldExtExtBinop356 = fsub <2 x double> %i.cy, %i.cz
  %i.db = extractelement <2 x double> %foldExtExtBinop356, i64 0 ; 2 uses
  %foldExtExtBinop358 = fsub <2 x double> %i.cy, %i.cz
  %i.dc = extractelement <2 x double> %foldExtExtBinop358, i64 1 ; 2 uses
  %i.dd = fadd <2 x double> %i.aj, %i.ak          ; 3 uses
  %i.de = fadd <2 x double> %i.am, %i.an          ; 3 uses
  %i.df = fadd <2 x double> %i.dd, %i.de          ; 2 uses
  %foldExtExtBinop360 = fsub <2 x double> %i.dd, %i.de
  %i.dg = extractelement <2 x double> %foldExtExtBinop360, i64 0 ; 2 uses
  %foldExtExtBinop362 = fsub <2 x double> %i.dd, %i.de
  %i.dh = extractelement <2 x double> %foldExtExtBinop362, i64 1 ; 2 uses
  %i.di = fadd double %i.cv, %i.cu
  %i.dj = fsub double %i.cu, %i.cv
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.di, i64 1
  %i.dm = fmul <2 x double> %i.bc, %i.dl          ; 2 uses
  %i.dn = fadd <2 x double> %i.bd, %i.be          ; 3 uses
  %i.do = fadd <2 x double> %i.bg, %i.bh          ; 3 uses
  %i.dp = fadd <2 x double> %i.dn, %i.do          ; 2 uses
  %foldExtExtBinop364 = fsub <2 x double> %i.dn, %i.do
  %i.dq = extractelement <2 x double> %foldExtExtBinop364, i64 0 ; 2 uses
  %foldExtExtBinop366 = fsub <2 x double> %i.dn, %i.do
  %i.dr = extractelement <2 x double> %foldExtExtBinop366, i64 1 ; 2 uses
  %i.ds = extractelement <2 x double> %i.cw, i64 0 ; 2 uses
  %i.dt = extractelement <2 x double> %i.cx, i64 1 ; 2 uses
  %i.du = fsub double %i.ds, %i.dt
  %i.dv = fadd double %i.ds, %i.dt
  %i.dw = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.du, i64 1
  %i.dy = fmul <2 x double> %i.bc, %i.dx          ; 2 uses
  %i.dz = fsub <2 x double> %i.br, %i.dy          ; 2 uses
  %i.ea = fadd <2 x double> %i.dz, %i.cc
  store <2 x double> %i.ea, ptr %i.i, align 8, !tbaa !8
  %i.eb = fsub <2 x double> %i.dz, %i.cc
  store <2 x double> %i.eb, ptr %i.n, align 8, !tbaa !8
  %i.ec = fadd <2 x double> %i.br, %i.dy          ; 2 uses
  %i.ed = fsub <2 x double> %i.ec, %i.ce          ; 2 uses
  %i.ee = fadd <2 x double> %i.ec, %i.ce          ; 2 uses
  %i.ef = shufflevector <2 x double> %i.ed, <2 x double> %i.ee, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ef, ptr %i.s, align 8, !tbaa !8
  %i.eg = shufflevector <2 x double> %i.ee, <2 x double> %i.ed, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.eg, ptr %i.x, align 8, !tbaa !8
  %i.eh = fadd <2 x double> %i.ai, %i.dm          ; 2 uses
  %i.ei = fadd <2 x double> %i.eh, %i.cf
  store <2 x double> %i.ei, ptr %i.g, align 8, !tbaa !8
  %i.ej = fsub <2 x double> %i.eh, %i.cf
  store <2 x double> %i.ej, ptr %i.l, align 8, !tbaa !8
  %i.ek = fsub <2 x double> %i.ai, %i.dm          ; 2 uses
  %i.el = fsub <2 x double> %i.ek, %i.ch          ; 2 uses
  %i.em = fadd <2 x double> %i.ek, %i.ch          ; 2 uses
  %i.en = shufflevector <2 x double> %i.el, <2 x double> %i.em, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.en, ptr %i.q, align 8, !tbaa !8
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> %i.el, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.eo, ptr %i.v, align 8, !tbaa !8
  %i.ep = fsub double %i.dg, %i.dr                ; 2 uses
  %i.eq = fadd double %i.dh, %i.dq                ; 2 uses
  %i.er = fsub double %i.ep, %i.eq
  %i.es = fmul double %i.b, %i.er                 ; 2 uses
  %i.et = fadd double %i.eq, %i.ep
  %i.eu = fmul double %i.b, %i.et                 ; 2 uses
  %i.ev = fadd double %i.dg, %i.dr                ; 2 uses
  %i.ew = fsub double %i.dh, %i.dq                ; 2 uses
  %i.ex = fsub double %i.ev, %i.ew
  %i.ey = fmul double %i.b, %i.ex                 ; 2 uses
  %i.ez = fadd double %i.ew, %i.ev
  %i.fa = fmul double %i.b, %i.ez                 ; 2 uses
  %i.fb = fsub double %i.db, %i.cq                ; 2 uses
  %i.fc = fadd double %i.dc, %i.cp                ; 2 uses
  %i.fd = fadd double %i.db, %i.cq                ; 2 uses
  %i.fe = fsub double %i.dc, %i.cp                ; 2 uses
  %i.ff = fadd double %i.fb, %i.es
  store double %i.ff, ptr %i.h, align 8, !tbaa !8
  %i.fg = fadd double %i.fc, %i.eu
  store double %i.fg, ptr %i.j, align 8, !tbaa !8
  %i.fh = fsub double %i.fb, %i.es
  store double %i.fh, ptr %i.m, align 8, !tbaa !8
  %i.fi = fsub double %i.fc, %i.eu
  store double %i.fi, ptr %i.o, align 8, !tbaa !8
  %i.fj = fsub double %i.fd, %i.fa
  store double %i.fj, ptr %i.r, align 8, !tbaa !8
  %i.fk = fadd double %i.fe, %i.ey
  store double %i.fk, ptr %i.t, align 8, !tbaa !8
  %i.fl = fadd double %i.fd, %i.fa
  store double %i.fl, ptr %i.w, align 8, !tbaa !8
  %i.fm = fsub double %i.fe, %i.ey
  store double %i.fm, ptr %i.y, align 8, !tbaa !8
  %2 = fadd <2 x double> %i.da, %i.co             ; 2 uses
  %3 = fadd <2 x double> %i.df, %i.dp             ; 2 uses
  %4 = fadd <2 x double> %2, %3
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = fsub <2 x double> %2, %3
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.fn = shufflevector <4 x double> %7, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.fo = shufflevector <4 x double> %5, <4 x double> %i.fn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.fo, ptr %0, align 8, !tbaa !8
  %8 = fsub <2 x double> %i.da, %i.co
  %i.fp = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fq = fsub <2 x double> %i.df, %i.dp
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.fs = fsub <4 x double> %i.fp, %i.fr
  %i.ft = fadd <4 x double> %i.fp, %i.fr
  %i.fu = shufflevector <4 x double> %i.fs, <4 x double> %i.ft, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.fu, ptr %i.p, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv216(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load <2 x double>, ptr %i.g, align 8, !tbaa !8
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !8
  %i.o = load <2 x double>, ptr %i.j, align 8, !tbaa !8
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !8
  store <2 x double> %i.n, ptr %i.b, align 8, !tbaa !8
  store <2 x double> %i.p, ptr %i.d, align 8, !tbaa !8
  %i.q = load <2 x double>, ptr %i.h, align 8, !tbaa !8
  %i.r = load <2 x double>, ptr %i.l, align 8, !tbaa !8
  %i.s = load <2 x double>, ptr %i.a, align 8, !tbaa !8
  store <2 x double> %i.m, ptr %i.a, align 8, !tbaa !8
  store <2 x double> %i.s, ptr %i.g, align 8, !tbaa !8
  %i.t = load <2 x double>, ptr %i.e, align 8, !tbaa !8
  store <2 x double> %i.q, ptr %i.e, align 8, !tbaa !8
  store <2 x double> %i.t, ptr %i.h, align 8, !tbaa !8
  %i.u = load <2 x double>, ptr %i.k, align 8, !tbaa !8
  %i.v = load <2 x double>, ptr %i.c, align 8, !tbaa !8
  store <2 x double> %i.o, ptr %i.c, align 8, !tbaa !8
  store <2 x double> %i.v, ptr %i.j, align 8, !tbaa !8
  %i.w = load <2 x double>, ptr %i.i, align 8, !tbaa !8
  store <2 x double> %i.u, ptr %i.i, align 8, !tbaa !8
  store <2 x double> %i.w, ptr %i.k, align 8, !tbaa !8
  %i.x = load <2 x double>, ptr %i.f, align 8, !tbaa !8
  store <2 x double> %i.r, ptr %i.f, align 8, !tbaa !8
  store <2 x double> %i.x, ptr %i.l, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf081(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 3 uses
  %i.o = load <2 x double>, ptr %i.c, align 8, !tbaa !8 ; 3 uses
  %i.p = fadd <2 x double> %i.n, %i.o             ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.n, %i.o
  %i.q = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop126 = fsub <2 x double> %i.n, %i.o
  %i.r = extractelement <2 x double> %foldExtExtBinop126, i64 1 ; 2 uses
  %i.s = load <2 x double>, ptr %i.e, align 8, !tbaa !8 ; 3 uses
  %i.t = load <2 x double>, ptr %i.f, align 8, !tbaa !8 ; 3 uses
  %i.u = fadd <2 x double> %i.s, %i.t             ; 2 uses
  %foldExtExtBinop128 = fsub <2 x double> %i.s, %i.t
  %i.v = extractelement <2 x double> %foldExtExtBinop128, i64 0 ; 2 uses
  %foldExtExtBinop130 = fsub <2 x double> %i.s, %i.t
  %i.w = extractelement <2 x double> %foldExtExtBinop130, i64 1 ; 2 uses
  %2 = fadd <2 x double> %i.p, %i.u               ; 2 uses
  %i.x = fsub double %i.q, %i.w                   ; 2 uses
  %i.y = fadd double %i.r, %i.v                   ; 2 uses
  %i.z = fadd double %i.q, %i.w                   ; 2 uses
  %i.aa = fsub double %i.r, %i.v                  ; 2 uses
  %i.ab = load <2 x double>, ptr %i.h, align 8, !tbaa !8 ; 3 uses
  %i.ac = load <2 x double>, ptr %i.i, align 8, !tbaa !8 ; 3 uses
  %i.ad = fadd <2 x double> %i.ab, %i.ac          ; 2 uses
  %foldExtExtBinop132 = fsub <2 x double> %i.ab, %i.ac
  %i.ae = extractelement <2 x double> %foldExtExtBinop132, i64 0 ; 2 uses
  %foldExtExtBinop134 = fsub <2 x double> %i.ab, %i.ac
  %i.af = extractelement <2 x double> %foldExtExtBinop134, i64 1 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.k, align 8, !tbaa !8 ; 3 uses
  %i.ah = load <2 x double>, ptr %i.l, align 8, !tbaa !8 ; 3 uses
  %i.ai = fadd <2 x double> %i.ag, %i.ah          ; 2 uses
  %foldExtExtBinop136 = fsub <2 x double> %i.ag, %i.ah
  %i.aj = extractelement <2 x double> %foldExtExtBinop136, i64 0 ; 2 uses
  %foldExtExtBinop138 = fsub <2 x double> %i.ag, %i.ah
  %i.ak = extractelement <2 x double> %foldExtExtBinop138, i64 1 ; 2 uses
  %3 = fadd <2 x double> %i.ad, %i.ai             ; 2 uses
  %i.al = fsub double %i.ae, %i.ak                ; 2 uses
  %i.am = fadd double %i.af, %i.aj                ; 2 uses
  %i.an = fadd double %i.ae, %i.ak                ; 2 uses
  %i.ao = fsub double %i.af, %i.aj                ; 2 uses
  %i.ap = fsub double %i.al, %i.am
  %i.aq = fmul double %i.b, %i.ap                 ; 2 uses
  %i.ar = fadd double %i.am, %i.al
  %i.as = fmul double %i.b, %i.ar                 ; 2 uses
  %i.at = fsub double %i.an, %i.ao
  %i.au = fmul double %i.b, %i.at                 ; 2 uses
  %i.av = fadd double %i.ao, %i.an
  %i.aw = fmul double %i.b, %i.av                 ; 2 uses
  %i.ax = fadd double %i.x, %i.aq
  store double %i.ax, ptr %i.c, align 8, !tbaa !8
  %i.ay = fadd double %i.y, %i.as
  store double %i.ay, ptr %i.d, align 8, !tbaa !8
  %i.az = fsub double %i.x, %i.aq
  store double %i.az, ptr %i.i, align 8, !tbaa !8
  %i.ba = fsub double %i.y, %i.as
  store double %i.ba, ptr %i.j, align 8, !tbaa !8
  %i.bb = fsub double %i.z, %i.aw
  store double %i.bb, ptr %i.f, align 8, !tbaa !8
  %i.bc = fadd double %i.aa, %i.au
  store double %i.bc, ptr %i.g, align 8, !tbaa !8
  %i.bd = fadd double %i.z, %i.aw
  store double %i.bd, ptr %i.l, align 8, !tbaa !8
  %i.be = fsub double %i.aa, %i.au
  store double %i.be, ptr %i.m, align 8, !tbaa !8
  %4 = fadd <2 x double> %2, %3
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = fsub <2 x double> %2, %3
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.bf = shufflevector <4 x double> %7, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x double> %5, <4 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.bg, ptr %0, align 8, !tbaa !8
  %8 = fsub <2 x double> %i.p, %i.u
  %i.bh = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bi = fsub <2 x double> %i.ad, %i.ai
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.bk = fsub <4 x double> %i.bh, %i.bj
  %i.bl = fadd <4 x double> %i.bh, %i.bj
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.bm, ptr %i.e, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv208(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !8
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !8
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !8
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !8
  store <2 x double> %i.g, ptr %i.c, align 8, !tbaa !8
  %i.h = load <2 x double>, ptr %i.b, align 8, !tbaa !8
  store <2 x double> %i.f, ptr %i.b, align 8, !tbaa !8
  store <2 x double> %i.h, ptr %i.d, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf040(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !8 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %0, align 8, !tbaa !8
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !8
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.b, align 8, !tbaa !8
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.g, align 8, !tbaa !8
  %i.ab = fsub double %i.j, %i.w
  store double %i.ab, ptr %i.l, align 8, !tbaa !8
  %i.ac = fadd double %i.k, %i.v
  store double %i.ac, ptr %i.q, align 8, !tbaa !8
  %i.ad = fadd double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !8
  %i.ae = fsub double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftx020(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.d = fadd <2 x double> %i.b, %i.c
  store <2 x double> %i.d, ptr %0, align 8, !tbaa !8
  %i.e = fsub <2 x double> %i.b, %i.c
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftb1st(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !8 ; 2 uses
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = fsub double %i.e, %i.h                   ; 2 uses
  %i.q = fsub double %i.n, %i.k                   ; 2 uses
  %i.r = sext i32 %i.b to i64                     ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !8 ; 2 uses
  %i.u = sext i32 %i.d to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !8 ; 2 uses
  %i.x = fadd double %i.t, %i.w                   ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8 ; 2 uses
  %i.ac = fadd double %i.z, %i.ab                 ; 2 uses
  %i.ad = fsub double %i.t, %i.w                  ; 2 uses
  %i.ae = fsub double %i.z, %i.ab                 ; 2 uses
  %i.af = fadd double %i.i, %i.x
  store double %i.af, ptr %1, align 8, !tbaa !8
  %i.ag = fsub double %i.o, %i.ac
  store double %i.ag, ptr %i.j, align 8, !tbaa !8
  %i.ah = fsub double %i.i, %i.x
  store double %i.ah, ptr %i.s, align 8, !tbaa !8
  %i.ai = fadd double %i.o, %i.ac
  store double %i.ai, ptr %i.y, align 8, !tbaa !8
  %i.aj = fadd double %i.p, %i.ae
  store double %i.aj, ptr %i.g, align 8, !tbaa !8
  %i.ak = fadd double %i.q, %i.ad
  store double %i.ak, ptr %i.m, align 8, !tbaa !8
  %i.al = fsub double %i.p, %i.ae
  store double %i.al, ptr %i.v, align 8, !tbaa !8
  %i.am = fsub double %i.q, %i.ad
  store double %i.am, ptr %i.aa, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8 ; 4 uses
  %i.at = add nsw i32 %i.a, -2                    ; 2 uses
  %i.au = icmp sgt i32 %i.a, 4
  br i1 %i.au, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.at to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.r
  %invariant.gep711 = getelementptr [8 x i8], ptr %1, i64 %i.r
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.0685693 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bn, %.lr.ph ]
  %.0686692 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.bg, %.lr.ph ]
  %.0687691 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bc, %.lr.ph ]
  %.0688690 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.ax, %.lr.ph ]
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next704
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !8 ; 4 uses
  %i.ay = fadd double %.0688690, %i.ax
  %i.az = fmul double %i.aq, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv703 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !8 ; 4 uses
  %i.bd = fadd double %.0687691, %i.bc
  %i.be = fmul double %i.aq, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !8 ; 4 uses
  %i.bh = fadd double %.0686692, %i.bg
  %i.bi = fmul double %i.as, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !8 ; 3 uses
  %i.bl = fsub double %.0685693, %i.bk
  %i.bm = fmul double %i.as, %i.bl
  %i.bn = fneg double %i.bk                       ; 3 uses
  %i.bo = add nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, %i.r             ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bp ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 16     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.br, i64 24
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bo ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bp ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %i.cb = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.cc = getelementptr i8, ptr %i.by, i64 24
  %i.cd = load <2 x double>, ptr %i.bq, align 8, !tbaa !8 ; 3 uses
  %i.ce = load double, ptr %i.bs, align 8, !tbaa !8
  %i.cf = load <2 x double>, ptr %i.br, align 8, !tbaa !8 ; 3 uses
  %i.cg = load double, ptr %i.bt, align 8, !tbaa !8
  %foldExtExtBinop = fadd <2 x double> %i.cd, %i.cf ; 2 uses
  %i.ch = fneg double %i.ce
  %i.ci = fsub double %i.ch, %i.cg                ; 2 uses
end_hunk_0
