inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cftexp2:bb.a
  %i.bdo = extractelement <2 x double> %i.bdg, i64 0
  %i.bdp = fadd double %i.bdo, %i.bdi
  store double %i.bdp, ptr %i.azr, align 8, !tbaa !8
  %i.bdq = extractelement <2 x double> %i.bdg, i64 1
  %i.bdr = fsub double %i.bdh, %i.bdq
  store double %i.bdr, ptr %i.azp, align 8, !tbaa !8
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.aam ; 2 uses
  %i.bds = icmp slt i64 %indvars.iv.next150, %i.ad
  br i1 %i.bds, label %cftfx42.exit114, label %._crit_edge132, !llvm.loop !125

._crit_edge132:                                   ; preds = %cftfx42.exit114, %cftfx42.exit114.us, %._crit_edge128.._crit_edge132_crit_edge
  %.pre-phi160 = phi i32 [ %.pre159, %._crit_edge128.._crit_edge132_crit_edge ], [ %i.aan, %cftfx42.exit114.us ], [ %i.aaj, %cftfx42.exit114 ] ; 2 uses
  %i.bdt = icmp slt i32 %.pre-phi160, %i.a
  br i1 %i.bdt, label %bb.e, label %._crit_edge136, !llvm.loop !126

._crit_edge136:                                   ; preds = %._crit_edge132, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftfx42(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 128
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr [8 x i8], ptr %3, i64 %i.b ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 -64      ; 2 uses
  tail call void @cftf161(ptr noundef %1, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = getelementptr i8, ptr %i.c, i64 -256     ; 2 uses
  tail call void @cftf162(ptr noundef nonnull %i.e, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.g, ptr noundef %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call void @cftf162(ptr noundef nonnull %i.h, ptr noundef %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 -128     ; 4 uses
  tail call void @cftf081(ptr noundef %1, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @cftf082(ptr noundef nonnull %i.j, ptr noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @cftf081(ptr noundef nonnull %i.k, ptr noundef %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @cftf082(ptr noundef nonnull %i.l, ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf162(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load double, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load double, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !8 ; 2 uses
  %i.t = fsub double %i.q, %i.s                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !8 ; 2 uses
  %i.y = fadd double %i.v, %i.x                   ; 2 uses
  %i.z = fadd double %i.q, %i.s                   ; 2 uses
  %i.aa = fsub double %i.v, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load <2 x double>, ptr %0, align 8, !tbaa !8 ; 4 uses
  %i.au = load <2 x double>, ptr %i.o, align 8, !tbaa !8
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.aw = fadd <2 x double> %i.at, %i.av
  %i.ax = fsub <2 x double> %i.at, %i.av
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> %i.aw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ba = insertelement <2 x double> poison, double %i.t, i64 0
  %i.bb = insertelement <2 x double> poison, double %i.y, i64 0
  %i.bc = insertelement <2 x double> poison, double %i.y, i64 0
  %i.bd = fadd <2 x double> %i.ba, %i.bc
  %i.be = fsub <2 x double> %i.az, %i.bb
  %i.bf = shufflevector <2 x double> %i.bd, <2 x double> %i.be, <2 x i32> <i32 2, i32 0>
  %i.bg = insertelement <2 x double> poison, double %i.b, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bi = fmul <2 x double> %i.bh, %i.bf          ; 2 uses
  %i.bj = fsub <2 x double> %i.ay, %i.bi          ; 3 uses
  %i.bk = load <2 x double>, ptr %i.ab, align 8, !tbaa !8
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bm = load <2 x double>, ptr %i.ac, align 8, !tbaa !8 ; 2 uses
  %i.bn = fsub <2 x double> %i.bl, %i.bm          ; 3 uses
  %i.bo = fadd <2 x double> %i.bl, %i.bm          ; 3 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> %i.bn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.f, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bs = fneg <2 x double> %i.bp
  %i.bt = shufflevector <2 x double> %i.bn, <2 x double> %i.bs, <2 x i32> <i32 1, i32 2>
  %i.bu = fmul <2 x double> %i.br, %i.bt
  %i.bv = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bp, <2 x double> %i.bu) ; 2 uses
  %i.by = load <2 x double>, ptr %i.ad, align 8, !tbaa !8
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ca = load <2 x double>, ptr %i.ag, align 8, !tbaa !8 ; 2 uses
  %i.cb = fsub <2 x double> %i.bz, %i.ca          ; 4 uses
  %i.cc = fadd <2 x double> %i.bz, %i.ca          ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.h, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cg = fneg <2 x double> %i.cd
  %i.ch = shufflevector <2 x double> %i.cb, <2 x double> %i.cg, <2 x i32> <i32 1, i32 2>
  %i.ci = fmul <2 x double> %i.cf, %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cd, <2 x double> %i.ci) ; 2 uses
  %i.cm = fsub <2 x double> %i.bx, %i.cl          ; 2 uses
  %i.cn = load <2 x double>, ptr %i.ah, align 8, !tbaa !8
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cp = load <2 x double>, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %i.cq = fsub <2 x double> %i.co, %i.cp          ; 3 uses
  %i.cr = fadd <2 x double> %i.co, %i.cp          ; 3 uses
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> %i.cq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ct = insertelement <2 x double> poison, double %i.n, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cv = fneg <2 x double> %i.cs
  %i.cw = shufflevector <2 x double> %i.cq, <2 x double> %i.cv, <2 x i32> <i32 1, i32 2>
  %i.cx = fmul <2 x double> %i.cu, %i.cw
  %i.cy = insertelement <2 x double> poison, double %i.l, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.cs, <2 x double> %i.cx) ; 2 uses
  %i.db = load <2 x double>, ptr %i.aj, align 8, !tbaa !8
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dd = load <2 x double>, ptr %i.am, align 8, !tbaa !8 ; 2 uses
  %i.de = fsub <2 x double> %i.dc, %i.dd          ; 3 uses
  %i.df = fadd <2 x double> %i.dc, %i.dd          ; 3 uses
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> %i.de, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dh = fneg <2 x double> %i.dg
  %i.di = shufflevector <2 x double> %i.de, <2 x double> %i.dh, <2 x i32> <i32 1, i32 2>
  %i.dj = fmul <2 x double> %i.cz, %i.di
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.dg, <2 x double> %i.dj) ; 2 uses
  %i.dl = fsub <2 x double> %i.da, %i.dk          ; 3 uses
  %i.dm = load <2 x double>, ptr %i.an, align 8, !tbaa !8 ; 2 uses
  %i.dn = load <2 x double>, ptr %i.ao, align 8, !tbaa !8
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dp = fadd <2 x double> %i.dm, %i.do          ; 2 uses
  %i.dq = fsub <2 x double> %i.dm, %i.do          ; 4 uses
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> %i.dp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ds = fneg <2 x double> %i.dr
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> %i.dq, <2 x i32> <i32 1, i32 2>
  %i.du = fmul <2 x double> %i.ck, %i.dt
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.dr, <2 x double> %i.du) ; 2 uses
  %i.dw = load <2 x double>, ptr %i.ap, align 8, !tbaa !8 ; 2 uses
  %i.dx = load <2 x double>, ptr %i.as, align 8, !tbaa !8
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dz = fadd <2 x double> %i.dw, %i.dy          ; 3 uses
  %i.ea = fsub <2 x double> %i.dw, %i.dy          ; 3 uses
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ec = fneg <2 x double> %i.eb
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> %i.ea, <2 x i32> <i32 1, i32 2>
  %i.ee = fmul <2 x double> %i.bw, %i.ed
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.eb, <2 x double> %i.ee) ; 2 uses
  %i.eg = fsub <2 x double> %i.dv, %i.ef          ; 2 uses
  %i.eh = fadd <2 x double> %i.ay, %i.bi          ; 2 uses
  %i.ei = fadd <2 x double> %i.bx, %i.cl
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ek = fadd <2 x double> %i.da, %i.dk
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.em = fadd <2 x double> %i.dv, %i.ef          ; 2 uses
  %i.en = fadd <2 x double> %i.eh, %i.el          ; 2 uses
  %i.eo = fadd <2 x double> %i.ej, %i.em          ; 2 uses
  %2 = fadd <2 x double> %i.en, %i.eo
  %3 = fsub <2 x double> %i.en, %i.eo
  %4 = shufflevector <2 x double> %2, <2 x double> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %4, ptr %0, align 8, !tbaa !8
  %i.ep = fsub <2 x double> %i.eh, %i.el
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.er = fsub <2 x double> %i.ej, %i.em
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.et = fsub <4 x double> %i.eq, %i.es
  %i.eu = fadd <4 x double> %i.eq, %i.es
  %i.ev = shufflevector <4 x double> %i.et, <4 x double> %i.eu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.ev, ptr %i.ah, align 8, !tbaa !8
  %foldExtExtBinop = fsub <2 x double> %i.bj, %i.dl
  %i.ew = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ex = fadd <2 x double> %i.cm, %i.eg
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ez = fsub <2 x double> %i.cm, %i.eg          ; 3 uses
  %foldExtExtBinop428 = fsub <2 x double> %i.ez, %i.ey
  %i.fa = extractelement <2 x double> %foldExtExtBinop428, i64 1
  %i.fb = fmul double %i.b, %i.fa                 ; 2 uses
  %i.fc = fadd double %i.ew, %i.fb
  store double %i.fc, ptr %i.p, align 8, !tbaa !8
  %i.fd = fadd <2 x double> %i.bj, %i.dl          ; 3 uses
  %i.fe = fadd <2 x double> %i.ez, %i.ey
  %i.ff = fmul <2 x double> %i.bh, %i.fe          ; 3 uses
  %foldExtExtBinop430 = fadd <2 x double> %i.fd, %i.ff
  %i.fg = extractelement <2 x double> %foldExtExtBinop430, i64 1
  store double %i.fg, ptr %i.u, align 8, !tbaa !8
  %i.fh = fsub double %i.ew, %i.fb
  store double %i.fh, ptr %i.ad, align 8, !tbaa !8
  %foldExtExtBinop432 = fsub <2 x double> %i.bj, %i.dl
  %i.fi = extractelement <2 x double> %foldExtExtBinop432, i64 1 ; 2 uses
  %foldExtExtBinop434 = fsub <2 x double> %i.ey, %i.ez
  %i.fj = extractelement <2 x double> %foldExtExtBinop434, i64 0
  %i.fk = fmul double %i.b, %i.fj                 ; 2 uses
  %i.fl = fsub <2 x double> %i.fd, %i.ff
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fm, ptr %i.af, align 8, !tbaa !8
  %i.fn = fadd double %i.fi, %i.fk
  store double %i.fn, ptr %i.al, align 8, !tbaa !8
  %foldExtExtBinop436 = fadd <2 x double> %i.fd, %i.ff
  %i.fo = extractelement <2 x double> %foldExtExtBinop436, i64 0
  store double %i.fo, ptr %i.ap, align 8, !tbaa !8
  %i.fp = fsub double %i.fi, %i.fk
  store double %i.fp, ptr %i.ar, align 8, !tbaa !8
  %i.fq = shufflevector <2 x double> %i.bo, <2 x double> %i.bn, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fr = fneg <2 x double> %i.fq
  %i.fs = shufflevector <2 x double> %i.bo, <2 x double> %i.fr, <2 x i32> <i32 3, i32 1>
  %i.ft = fmul <2 x double> %i.ck, %i.fs
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.fq, <2 x double> %i.ft) ; 2 uses
  %i.fv = shufflevector <2 x double> %i.cc, <2 x double> %i.cb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fw = fneg <2 x double> %i.fv
  %i.fx = shufflevector <2 x double> %i.cb, <2 x double> %i.fw, <2 x i32> <i32 0, i32 2>
  %i.fy = fmul <2 x double> %i.br, %i.fx
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.fv, <2 x double> %i.fy) ; 2 uses
  %i.ga = fsub <2 x double> %i.fu, %i.fz          ; 2 uses
  %i.gb = shufflevector <2 x double> %i.cr, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gc = fneg <2 x double> %i.gb
  %i.gd = shufflevector <2 x double> %i.cr, <2 x double> %i.gc, <2 x i32> <i32 3, i32 1>
  %i.ge = fmul <2 x double> %i.cz, %i.gd
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.gb, <2 x double> %i.ge) ; 2 uses
  %i.gg = shufflevector <2 x double> %i.df, <2 x double> %i.de, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gh = fneg <2 x double> %i.gg
  %i.gi = shufflevector <2 x double> %i.df, <2 x double> %i.gh, <2 x i32> <i32 3, i32 1>
  %i.gj = fmul <2 x double> %i.cu, %i.gi
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.gg, <2 x double> %i.gj) ; 2 uses
  %i.gl = fsub <2 x double> %i.gf, %i.gk          ; 2 uses
  %i.gm = shufflevector <2 x double> %i.dp, <2 x double> %i.dq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gn = fneg <2 x double> %i.gm
  %i.go = shufflevector <2 x double> %i.dq, <2 x double> %i.gn, <2 x i32> <i32 1, i32 2>
  %i.gp = fmul <2 x double> %i.bw, %i.go
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.gm, <2 x double> %i.gp) ; 2 uses
  %i.gr = shufflevector <2 x double> %i.dz, <2 x double> %i.ea, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gs = fneg <2 x double> %i.gr
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> %i.dz, <2 x i32> <i32 1, i32 2>
  %i.gu = fmul <2 x double> %i.cf, %i.gt
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.gr, <2 x double> %i.gu) ; 2 uses
  %i.gw = fadd <2 x double> %i.gq, %i.gv          ; 2 uses
  %i.gx = fsub <2 x double> %i.ga, %i.gw          ; 2 uses
  %i.gy = fadd <2 x double> %i.ga, %i.gw
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ha = fadd <2 x double> %i.fu, %i.fz          ; 2 uses
  %i.hb = fadd <2 x double> %i.gf, %i.gk          ; 3 uses
  %i.hc = fsub <2 x double> %i.gq, %i.gv          ; 2 uses
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.he = fadd double %i.z, %i.aa
  %i.hf = fsub double %i.z, %i.aa
  %i.hg = fmul double %i.b, %i.he                 ; 2 uses
  %i.hh = fmul double %i.b, %i.hf                 ; 2 uses
  %foldExtExtBinop438 = fadd <2 x double> %i.at, %i.av
  %i.hi = extractelement <2 x double> %foldExtExtBinop438, i64 0 ; 2 uses
  %foldExtExtBinop440 = fsub <2 x double> %i.at, %i.av
  %i.hj = extractelement <2 x double> %foldExtExtBinop440, i64 1 ; 2 uses
  %i.hk = fadd double %i.hj, %i.hh
  %i.hl = fsub double %i.hi, %i.hg
  %i.hm = fadd double %i.hi, %i.hg                ; 2 uses
  %i.hn = fsub double %i.hj, %i.hh                ; 2 uses
  %i.ho = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hk, i64 1 ; 2 uses
  %i.hq = fadd <2 x double> %i.hp, %i.gl          ; 2 uses
  %i.hr = fadd <2 x double> %i.hq, %i.gx
  store <2 x double> %i.hr, ptr %i.o, align 8, !tbaa !8
  %i.hs = fsub <2 x double> %i.hq, %i.gx
  store <2 x double> %i.hs, ptr %i.ac, align 8, !tbaa !8
  %i.ht = fsub <2 x double> %i.hp, %i.gl          ; 2 uses
  %i.hu = fsub <2 x double> %i.ht, %i.gz          ; 2 uses
  %i.hv = fadd <2 x double> %i.ht, %i.gz          ; 2 uses
  %i.hw = shufflevector <2 x double> %i.hu, <2 x double> %i.hv, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hw, ptr %i.ai, align 8, !tbaa !8
  %i.hx = shufflevector <2 x double> %i.hv, <2 x double> %i.hu, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hx, ptr %i.ao, align 8, !tbaa !8
  %i.hy = extractelement <2 x double> %i.hb, i64 1
  %i.hz = fsub double %i.hm, %i.hy                ; 2 uses
  %i.ia = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ib = fsub <2 x double> %i.ia, %i.hc          ; 3 uses
  %i.ic = fadd <2 x double> %i.ha, %i.hd          ; 3 uses
  %foldExtExtBinop442 = fsub <2 x double> %i.ic, %i.ib
  %i.id = extractelement <2 x double> %foldExtExtBinop442, i64 0
  %i.ie = fmul double %i.b, %i.id                 ; 2 uses
  %i.if = fadd double %i.hz, %i.ie
  store double %i.if, ptr %i.w, align 8, !tbaa !8
  %i.ig = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.hm, i64 1
  %i.ii = fadd <2 x double> %i.ih, %i.hb          ; 3 uses
  %i.ij = fadd <2 x double> %i.ic, %i.ib
  %i.ik = fmul <2 x double> %i.bh, %i.ij          ; 3 uses
  %foldExtExtBinop444 = fadd <2 x double> %i.ii, %i.ik
  %i.il = extractelement <2 x double> %foldExtExtBinop444, i64 0
  store double %i.il, ptr %i.r, align 8, !tbaa !8
  %i.im = fsub double %i.hz, %i.ie
  store double %i.im, ptr %i.ag, align 8, !tbaa !8
  %i.in = extractelement <2 x double> %i.hb, i64 0
  %i.io = fsub double %i.hn, %i.in                ; 2 uses
  %foldExtExtBinop446 = fsub <2 x double> %i.ib, %i.ic
  %i.ip = extractelement <2 x double> %foldExtExtBinop446, i64 1
  %i.iq = fmul double %i.b, %i.ip                 ; 2 uses
  %i.ir = fsub <2 x double> %i.ii, %i.ik
  store <2 x double> %i.ir, ptr %i.ae, align 8, !tbaa !8
  %i.is = insertelement <2 x double> %i.ii, double %i.io, i64 0
  %i.it = insertelement <2 x double> %i.ik, double %i.iq, i64 0
  %i.iu = fadd <2 x double> %i.is, %i.it
  store <2 x double> %i.iu, ptr %i.ak, align 8, !tbaa !8
  %i.iv = fsub double %i.io, %i.iq
  store double %i.iv, ptr %i.aq, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf082(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !8 ; 5 uses
  %i.t = load <2 x double>, ptr %0, align 8, !tbaa !8
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.v = load <2 x double>, ptr %i.f, align 8, !tbaa !8 ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.u, %i.v
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %i.x = fadd <2 x double> %i.u, %i.v             ; 3 uses
  %foldExtExtBinop160 = fsub <2 x double> %i.u, %i.v
  %i.y = extractelement <2 x double> %foldExtExtBinop160, i64 0 ; 2 uses
  %i.z = load <2 x double>, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.j, align 8, !tbaa !8 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = fadd <2 x double> %i.ac, %i.aa          ; 3 uses
  %i.ae = fsub <2 x double> %i.z, %i.ab           ; 3 uses
  %foldExtExtBinop162 = fsub <2 x double> %i.ae, %i.ad
  %i.af = extractelement <2 x double> %foldExtExtBinop162, i64 0
  %i.ag = fmul double %i.b, %i.af                 ; 2 uses
  %foldExtExtBinop164 = fsub <2 x double> %i.ad, %i.ae
  %i.ah = extractelement <2 x double> %foldExtExtBinop164, i64 1
  %i.ai = fmul double %i.b, %i.ah                 ; 2 uses
  %i.aj = fadd <2 x double> %i.ae, %i.ad
  %i.ak = insertelement <2 x double> poison, double %i.b, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, %i.aj          ; 3 uses
  %i.an = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ao = load <2 x double>, ptr %i.k, align 8, !tbaa !8 ; 2 uses
  %i.ap = load double, ptr %i.m, align 8, !tbaa !8
  %i.aq = load <2 x double>, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.ar = load double, ptr %i.l, align 8, !tbaa !8
  %i.as = load <2 x double>, ptr %i.o, align 8, !tbaa !8 ; 2 uses
  %i.at = load double, ptr %i.q, align 8, !tbaa !8
  %i.au = load <2 x double>, ptr %i.r, align 8, !tbaa !8 ; 2 uses
  %i.av = load double, ptr %i.p, align 8, !tbaa !8
  %i.aw = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  %i.ax = shufflevector <2 x double> %i.aq, <2 x double> %i.au, <2 x i32> <i32 0, i32 2> ; 2 uses
end_hunk_0
