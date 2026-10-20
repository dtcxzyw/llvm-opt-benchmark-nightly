Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 555
begin_hunk_0_@_ZN10tetgenmesh13unifysegmentsEv:bb.a
  %.182250 = phi ptr [ %.081268, %.lr.ph253 ], [ %.283, %bb.x ] ; 6 uses
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %indvars.iv275 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !224 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !220
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !225 ; 2 uses
  %i.ct = sext i32 %i.cs to i64                   ; 3 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !220
  %.not99 = icmp eq ptr %i.cy, %i.bp
  br i1 %.not99, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ct
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !59
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !59
  %i.de = xor i32 %i.dd, 1                        ; 2 uses
  %.pre = sext i32 %i.de to i64                   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %.pre
  %.pre290 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !59
  %.phi.trans.insert291 = sext i32 %.pre290 to i64
  %.phi.trans.insert292 = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.phi.trans.insert291
  %.pre293 = load ptr, ptr %.phi.trans.insert292, align 8, !tbaa !220
  %i.df = icmp eq ptr %.pre293, %i.bp
  br i1 %i.df, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.j, %bb.k
  %.sroa.11.0335 = phi i32 [ %i.de, %bb.k ], [ %i.cs, %bb.j ] ; 2 uses
  %.pre-phi334 = phi i64 [ %.pre, %bb.k ], [ %i.ct, %bb.j ]
  %i.dg = load ptr, ptr %i.bd, align 8, !tbaa !263 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !202 ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 1
  br i1 %i.dj, label %.lr.ph, label %bb.v

.lr.ph:                                           ; preds = %.thread
  %i.dk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %.pre-phi334
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 64
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !202
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = icmp sgt i64 %i.dn, %indvars.iv.next
  br i1 %i.do, label %bb.m, label %._crit_edge, !llvm.loop !806

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ]
  %.078246 = phi ptr [ %.182250, %.lr.ph ], [ %i.dq, %bb.l ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.078246, i64 128
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !273 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.078246, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !224
  %i.dt = getelementptr inbounds nuw i8, ptr %.078246, i64 24 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !225
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !59
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !220 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !224
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !225
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !59
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !220 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.em = load double, ptr %i.el, align 8, !tbaa !58
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !58
  %i.ep = load double, ptr %i.bp, align 8, !tbaa !58 ; 2 uses
  %i.eq = load double, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %i.er = fsub double %i.ep, %i.eq                ; 3 uses
  %i.es = load double, ptr %i.cd, align 8, !tbaa !58 ; 2 uses
  %i.et = load double, ptr %i.ce, align 8, !tbaa !58 ; 2 uses
  %i.eu = fsub double %i.es, %i.et                ; 6 uses
  %i.ev = load double, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.ew = load double, ptr %i.cg, align 8, !tbaa !58 ; 2 uses
  %i.ex = fsub double %i.ev, %i.ew                ; 3 uses
  %i.ey = load <2 x double>, ptr %i.ea, align 8, !tbaa !58 ; 2 uses
  %i.ez = fmul double %i.eu, %i.eu
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.er, double %i.er, double %i.ez)
  %i.fb = tail call noundef double @llvm.fmuladd.f64(double %i.ex, double %i.ex, double %i.fa)
  %i.fc = load <2 x double>, ptr %i.ek, align 8, !tbaa !58 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = shufflevector <2 x double> %i.ey, <2 x double> %i.fc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fg = fsub <2 x double> %i.fe, %i.ff          ; 4 uses
  %i.fh = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = shufflevector <2 x double> %i.ey, <2 x double> %i.fc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fk = fsub <2 x double> %i.fi, %i.fj          ; 6 uses
  %i.fl = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = insertelement <2 x double> poison, double %i.em, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.eo, i64 1 ; 2 uses
  %i.fp = fsub <2 x double> %i.fm, %i.fo          ; 4 uses
  %i.fq = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = fsub <2 x double> %i.fj, %i.fr          ; 6 uses
  %i.ft = fmul <2 x double> %i.fk, %i.fk
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fg, <2 x double> %i.ft)
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fp, <2 x double> %i.fu) ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fy = fcmp olt <2 x double> %i.fx, %i.fv      ; 7 uses
  %i.fz = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fsub <2 x double> %i.ff, %i.ga          ; 4 uses
  %i.gc = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = fsub <2 x double> %i.fo, %i.gd          ; 4 uses
  %i.gf = fmul <2 x double> %i.fs, %i.fs
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.gb, <2 x double> %i.gf)
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.ge, <2 x double> %i.gg)
  %i.gi = select <2 x i1> %i.fy, <2 x double> %i.fv, <2 x double> %i.fx
  %i.gj = fcmp olt <2 x double> %i.gi, %i.gh      ; 6 uses
  %i.gk = select <2 x i1> %i.fy, <2 x double> %i.ge, <2 x double> %i.fp
  %i.gl = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = select <2 x i1> %i.gj, <2 x double> %i.gm, <2 x double> %i.gk
  %i.go = fneg <2 x double> %i.gn                 ; 3 uses
  %i.gp = select <2 x i1> %i.fy, <2 x double> %i.gm, <2 x double> %i.ge
  %i.gq = select <2 x i1> %i.gj, <2 x double> %i.fp, <2 x double> %i.gp ; 3 uses
  %i.gr = insertelement <2 x double> poison, double %i.er, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = select <2 x i1> %i.fy, <2 x double> %i.gs, <2 x double> %i.gb
  %i.gu = select <2 x i1> %i.gj, <2 x double> %i.fg, <2 x double> %i.gt ; 3 uses
  %i.gv = select <2 x i1> %i.fy, <2 x double> %i.gb, <2 x double> %i.fg
  %i.gw = select <2 x i1> %i.gj, <2 x double> %i.gs, <2 x double> %i.gv ; 3 uses
  %i.gx = shufflevector <2 x i1> %i.fy, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gy = insertelement <2 x double> %i.fs, double %i.eu, i64 1
  %i.gz = shufflevector <2 x double> %i.fk, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.ha = select <2 x i1> %i.gx, <2 x double> %i.gy, <2 x double> %i.gz
  %i.hb = shufflevector <2 x i1> %i.gj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hc = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hd = insertelement <2 x double> %i.hc, double %i.eu, i64 0
  %i.he = select <2 x i1> %i.hb, <2 x double> %i.hd, <2 x double> %i.ha ; 3 uses
  %i.hf = fneg <2 x double> %i.he
  %i.hg = shufflevector <2 x double> %i.he, <2 x double> %i.hf, <2 x i32> <i32 1, i32 2>
  %i.hh = shufflevector <2 x double> %i.go, <2 x double> %i.gu, <2 x i32> <i32 0, i32 2>
  %i.hi = fmul <2 x double> %i.hg, %i.hh
  %i.hj = shufflevector <2 x double> %i.gq, <2 x double> %i.gw, <2 x i32> <i32 0, i32 2>
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.hj, <2 x double> %i.hi) ; 4 uses
  %i.hl = fmul <2 x double> %i.gu, %i.go
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gq, <2 x double> %i.hl) ; 4 uses
  %i.hn = shufflevector <2 x i1> %i.fy, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hp = insertelement <2 x double> %i.ho, double %i.eu, i64 1
  %i.hq = shufflevector <2 x double> %i.fk, <2 x double> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.hr = select <2 x i1> %i.hn, <2 x double> %i.hp, <2 x double> %i.hq
  %i.hs = shufflevector <2 x i1> %i.gj, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = insertelement <2 x double> %i.fk, double %i.eu, i64 0
  %i.hu = select <2 x i1> %i.hs, <2 x double> %i.ht, <2 x double> %i.hr ; 3 uses
  %i.hv = fneg <2 x double> %i.hu
  %i.hw = shufflevector <2 x double> %i.hu, <2 x double> %i.hv, <2 x i32> <i32 1, i32 2>
  %i.hx = shufflevector <2 x double> %i.go, <2 x double> %i.gu, <2 x i32> <i32 1, i32 3>
  %i.hy = fmul <2 x double> %i.hw, %i.hx
  %i.hz = shufflevector <2 x double> %i.gq, <2 x double> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %i.hz, <2 x double> %i.hy) ; 4 uses
  %i.ib = extractelement <2 x double> %i.hk, i64 0
  %i.ic = extractelement <2 x double> %i.hk, i64 1
  %i.id = extractelement <2 x double> %i.ia, i64 0
  %i.ie = fmul <2 x double> %i.hm, %i.hm
  %i.if = shufflevector <2 x double> %i.hk, <2 x double> %i.ia, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.if, <2 x double> %i.ie)
  %i.ih = extractelement <2 x double> %i.ia, i64 1
  %i.ii = shufflevector <2 x double> %i.hk, <2 x double> %i.ia, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ii, <2 x double> %i.ig) ; 2 uses
  %i.ik = extractelement <2 x double> %i.ij, i64 0
  %i.il = tail call double @sqrt(double noundef %i.ik) #45
  %i.im = extractelement <2 x double> %i.ij, i64 1
  %i.in = tail call double @sqrt(double noundef %i.im) #45
  %shift = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.hm, %shift
  %i.io = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.ib, double %i.id, double %i.io)
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ih, double %i.ip)
  %i.ir = fmul double %i.il, %i.in
  %i.is = fdiv double %i.iq, %i.ir                ; 3 uses
  %i.it = fcmp ogt double %i.is, 1.000000e+00
  %i.iu = fcmp olt double %i.is, -1.000000e+00
  %spec.store.select.i = select i1 %i.iu, double -1.000000e+00, double %i.is
  %.019.i = select i1 %i.it, double 1.000000e+00, double %spec.store.select.i
  %i.iv = tail call double @acos(double noundef %.019.i) #45 ; 2 uses
  %i.iw = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ek)
  %1 = fcmp ogt double %i.iw, 0.000000e+00
  %i.ix = load double, ptr @_ZN10tetgenmesh2PIE, align 8
  %2 = fneg double %i.iv
  %3 = tail call double @llvm.fmuladd.f64(double %i.ix, double 2.000000e+00, double %2)
  %.0.i101 = select i1 %1, double %3, double %i.iv
  %i.iy = load ptr, ptr %i.dr, align 8, !tbaa !224
  %i.iz = load i32, ptr %i.dt, align 8, !tbaa !225
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !59
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !220 ; 3 uses
  %i.jg = load i32, ptr %i.dk, align 4, !tbaa !59
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.jh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !220 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !58
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !58
  %i.jo = load double, ptr %i.bp, align 8, !tbaa !58 ; 2 uses
  %i.jp = load double, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %i.jq = fsub double %i.jo, %i.jp                ; 3 uses
  %i.jr = load double, ptr %i.cd, align 8, !tbaa !58 ; 2 uses
  %i.js = load double, ptr %i.ce, align 8, !tbaa !58 ; 2 uses
  %i.jt = fsub double %i.jr, %i.js                ; 6 uses
  %i.ju = load double, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.jv = load double, ptr %i.cg, align 8, !tbaa !58 ; 2 uses
  %i.jw = fsub double %i.ju, %i.jv                ; 3 uses
  %i.jx = load <2 x double>, ptr %i.jf, align 8, !tbaa !58 ; 2 uses
  %i.jy = fmul double %i.jt, %i.jt
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.jq, double %i.jq, double %i.jy)
  %i.ka = tail call noundef double @llvm.fmuladd.f64(double %i.jw, double %i.jw, double %i.jz)
  %i.kb = load <2 x double>, ptr %i.jj, align 8, !tbaa !58 ; 2 uses
  %i.kc = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = shufflevector <2 x double> %i.jx, <2 x double> %i.kb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kf = fsub <2 x double> %i.kd, %i.ke          ; 4 uses
  %i.kg = insertelement <2 x double> poison, double %i.js, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = shufflevector <2 x double> %i.jx, <2 x double> %i.kb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kj = fsub <2 x double> %i.kh, %i.ki          ; 6 uses
  %i.kk = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.km = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %i.jn, i64 1 ; 2 uses
  %i.ko = fsub <2 x double> %i.kl, %i.kn          ; 4 uses
  %i.kp = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kq = shufflevector <2 x double> %i.kp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kr = fsub <2 x double> %i.ki, %i.kq          ; 6 uses
  %i.ks = fmul <2 x double> %i.kj, %i.kj
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.kf, <2 x double> %i.ks)
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.ko, <2 x double> %i.kt) ; 2 uses
  %i.kv = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kx = fcmp olt <2 x double> %i.kw, %i.ku      ; 7 uses
  %i.ky = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = fsub <2 x double> %i.ke, %i.kz          ; 4 uses
  %i.lb = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = fsub <2 x double> %i.kn, %i.lc          ; 4 uses
  %i.le = fmul <2 x double> %i.kr, %i.kr
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.la, <2 x double> %i.le)
  %i.lg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.ld, <2 x double> %i.lf)
  %i.lh = select <2 x i1> %i.kx, <2 x double> %i.ku, <2 x double> %i.kw
  %i.li = fcmp olt <2 x double> %i.lh, %i.lg      ; 6 uses
  %i.lj = select <2 x i1> %i.kx, <2 x double> %i.ld, <2 x double> %i.ko
  %i.lk = insertelement <2 x double> poison, double %i.jw, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lm = select <2 x i1> %i.li, <2 x double> %i.ll, <2 x double> %i.lj
  %i.ln = fneg <2 x double> %i.lm                 ; 3 uses
  %i.lo = select <2 x i1> %i.kx, <2 x double> %i.ll, <2 x double> %i.ld
  %i.lp = select <2 x i1> %i.li, <2 x double> %i.ko, <2 x double> %i.lo ; 3 uses
  %i.lq = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ls = select <2 x i1> %i.kx, <2 x double> %i.lr, <2 x double> %i.la
  %i.lt = select <2 x i1> %i.li, <2 x double> %i.kf, <2 x double> %i.ls ; 3 uses
  %i.lu = select <2 x i1> %i.kx, <2 x double> %i.la, <2 x double> %i.kf
  %i.lv = select <2 x i1> %i.li, <2 x double> %i.lr, <2 x double> %i.lu ; 3 uses
  %i.lw = insertelement <2 x double> %i.kr, double %i.jt, i64 0
  %i.lx = shufflevector <2 x double> %i.kr, <2 x double> %i.kj, <2 x i32> <i32 0, i32 3>
  %i.ly = select <2 x i1> %i.kx, <2 x double> %i.lw, <2 x double> %i.lx
  %i.lz = insertelement <2 x double> %i.kj, double %i.jt, i64 1
  %i.ma = select <2 x i1> %i.li, <2 x double> %i.lz, <2 x double> %i.ly ; 3 uses
  %i.mb = shufflevector <2 x double> %i.lt, <2 x double> %i.ln, <2 x i32> <i32 0, i32 3>
  %i.mc = shufflevector <2 x double> %i.lv, <2 x double> %i.lp, <2 x i32> <i32 0, i32 3>
  %i.md = fmul <2 x double> %i.lt, %i.ln
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.lp, <2 x double> %i.md) ; 4 uses
  %foldExtExtBinop352 = fmul <2 x double> %i.me, %i.me
  %i.mf = extractelement <2 x double> %foldExtExtBinop352, i64 0
  %i.mg = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mh = fmul <2 x double> %i.me, %i.mg          ; 2 uses
  %i.mi = insertelement <2 x double> %i.kr, double %i.jt, i64 1
  %i.mj = shufflevector <2 x double> %i.kj, <2 x double> %i.kr, <2 x i32> <i32 0, i32 3>
  %i.mk = select <2 x i1> %i.kx, <2 x double> %i.mi, <2 x double> %i.mj
  %i.ml = insertelement <2 x double> %i.kj, double %i.jt, i64 0
  %i.mm = select <2 x i1> %i.li, <2 x double> %i.ml, <2 x double> %i.mk ; 3 uses
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> %i.ma, <2 x i32> <i32 0, i32 3>
  %i.mo = fneg <2 x double> %i.mn                 ; 2 uses
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> %i.mm, <2 x i32> <i32 0, i32 3>
  %i.mq = fmul <2 x double> %i.mb, %i.mp
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.ma, <2 x double> %i.mq) ; 4 uses
  %i.ms = shufflevector <2 x double> %i.ma, <2 x double> %i.lt, <2 x i32> <i32 0, i32 3>
  %i.mt = shufflevector <2 x double> %i.ln, <2 x double> %i.mo, <2 x i32> <i32 0, i32 3>
  %i.mu = fmul <2 x double> %i.ms, %i.mt
  %i.mv = shufflevector <2 x double> %i.lp, <2 x double> %i.lv, <2 x i32> <i32 0, i32 3>
  %i.mw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.mm, <2 x double> %i.mu) ; 4 uses
  %i.mx = extractelement <2 x double> %i.mr, i64 0
  %i.my = extractelement <2 x double> %i.mw, i64 0 ; 2 uses
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.my, double %i.my, double %i.mf)
  %i.na = insertelement <2 x double> %i.mh, double %i.mz, i64 0
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.mr, <2 x double> %i.na) ; 2 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  %i.nd = tail call double @sqrt(double noundef %i.nc) #45
  %i.ne = shufflevector <2 x double> %i.mr, <2 x double> %i.mw, <2 x i32> <i32 1, i32 3>
  %i.nf = shufflevector <2 x double> %i.mh, <2 x double> %i.nb, <2 x i32> <i32 0, i32 3>
  %i.ng = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> %i.ne, <2 x double> %i.nf) ; 2 uses
  %i.nh = extractelement <2 x double> %i.ng, i64 1
  %i.ni = tail call double @sqrt(double noundef %i.nh) #45
  %i.nj = extractelement <2 x double> %i.ng, i64 0
  %i.nk = extractelement <2 x double> %i.mw, i64 1
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.mx, double %i.nk, double %i.nj)
  %i.nm = fmul double %i.nd, %i.ni
  %i.nn = fdiv double %i.nl, %i.nm                ; 3 uses
  %i.no = fcmp ogt double %i.nn, 1.000000e+00
  %i.np = fcmp olt double %i.nn, -1.000000e+00
  %spec.store.select.i116 = select i1 %i.np, double -1.000000e+00, double %i.nn
  %.019.i117 = select i1 %i.no, double 1.000000e+00, double %spec.store.select.i116
  %i.nq = tail call double @acos(double noundef %.019.i117) #45 ; 2 uses
  %i.nr = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.jf, ptr noundef nonnull %i.jj)
  %4 = fcmp ogt double %i.nr, 0.000000e+00
  %5 = load double, ptr @_ZN10tetgenmesh2PIE, align 8
  %6 = fneg double %i.nq
  %7 = tail call double @llvm.fmuladd.f64(double %5, double 2.000000e+00, double %6)
  %.0.i118 = select i1 %4, double %7, double %i.nq
  %i.ns = fcmp ult double %.0.i101, %.0.i118
  %.pre294.pre = load ptr, ptr %i.bd, align 8, !tbaa !263 ; 15 uses
  br i1 %i.ns, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %.078.lcssa.ph = phi ptr [ %i.dq, %bb.l ], [ %.078246, %bb.m ]
  %.phi.trans.insert295 = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 24
  %.pre296 = load ptr, ptr %.phi.trans.insert295, align 8, !tbaa !200 ; 3 uses
  %.not.i = icmp eq ptr %.pre296, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.nt = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 24
  %i.nu = load ptr, ptr %.pre296, align 8, !tbaa !111
  store ptr %i.nu, ptr %i.nt, align 8, !tbaa !200
  br label %_ZN10tetgenmesh10memorypool5allocEv.exit

bb.o:                                             ; preds = %._crit_edge
  %i.nv = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 80 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !199 ; 2 uses
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %bb.p, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 16
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !198
  br label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ny = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 8 ; 3 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !197 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !111 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %bb.q, label %._crit_edge297

._crit_edge297:                                   ; preds = %bb.p
  %.phi.trans.insert298 = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 48
  %.pre299 = load i32, ptr %.phi.trans.insert298, align 8, !tbaa !192
  %.phi.trans.insert300 = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 60
  %.pre301 = load i32, ptr %.phi.trans.insert300, align 4, !tbaa !195
  %.pre305 = sext i32 %.pre299 to i64
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.oc = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 60
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !195 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 52
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !194
  %i.og = mul nsw i32 %i.of, %i.od
  %i.oh = sext i32 %i.og to i64
  %i.oi = add nsw i64 %i.oh, 8
  %i.oj = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 48
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !192
  %i.ol = sext i32 %i.ok to i64                   ; 2 uses
  %i.om = add nsw i64 %i.oi, %i.ol
  %i.on = tail call noalias ptr @malloc(i64 noundef %i.om) #50 ; 3 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.op = tail call ptr @__cxa_allocate_exception(i64 4) #45 ; 2 uses
  store i32 1, ptr %i.op, align 16, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.op, ptr nonnull @_ZTIi, ptr null) #48
  unreachable

bb.s:                                             ; preds = %bb.q
  store ptr %i.on, ptr %i.nz, align 8, !tbaa !111
  store ptr null, ptr %i.on, align 8, !tbaa !111
  %.pre7.i = load ptr, ptr %i.ny, align 8, !tbaa !197
  %.pre8.i = load ptr, ptr %.pre7.i, align 8, !tbaa !111
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge297, %bb.s
  %.pre-phi306 = phi i64 [ %.pre305, %._crit_edge297 ], [ %i.ol, %bb.s ] ; 2 uses
  %i.oq = phi i32 [ %.pre301, %._crit_edge297 ], [ %i.od, %bb.s ]
  %i.or = phi ptr [ %i.oa, %._crit_edge297 ], [ %.pre8.i, %bb.s ] ; 2 uses
  store ptr %i.or, ptr %i.ny, align 8, !tbaa !197
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = ptrtoint ptr %i.os to i64               ; 2 uses
  %i.ou = add i64 %.pre-phi306, %i.ot
  %i.ov = urem i64 %i.ot, %.pre-phi306
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = inttoptr i64 %i.ow to ptr
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.oy = phi i32 [ %i.nw, %._crit_edge.i ], [ %i.oq, %bb.t ]
  %i.oz = phi ptr [ %.pre9.i, %._crit_edge.i ], [ %i.ox, %bb.t ] ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 16
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 52
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !194
  %i.pe = sext i32 %i.pd to i64
  %i.pf = add i64 %i.pe, %i.pb
  %i.pg = inttoptr i64 %i.pf to ptr
  store ptr %i.pg, ptr %i.pa, align 8, !tbaa !198
  %i.ph = add nsw i32 %i.oy, -1
  store i32 %i.ph, ptr %i.nv, align 8, !tbaa !199
  %i.pi = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 72 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !201
  %i.pk = add nsw i64 %i.pj, 1
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !201
  br label %_ZN10tetgenmesh10memorypool5allocEv.exit

_ZN10tetgenmesh10memorypool5allocEv.exit:         ; preds = %bb.n, %bb.u
  %.0.i119 = phi ptr [ %.pre296, %bb.n ], [ %i.oz, %bb.u ] ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.pre294.pre, i64 64 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !202
  %i.pn = add nsw i64 %i.pm, 1
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !202
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i119, i64 16
  store ptr %i.cn, ptr %i.po, align 8, !tbaa !224
  %i.pp = getelementptr inbounds nuw i8, ptr %.0.i119, i64 24
  store i32 %.sroa.11.0335, ptr %i.pp, align 8, !tbaa !225
  %i.pq = getelementptr inbounds nuw i8, ptr %.078.lcssa.ph, i64 128 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !273
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i119, i64 128
  store ptr %i.pr, ptr %i.ps, align 8, !tbaa !273
  store ptr %.0.i119, ptr %i.pq, align 8, !tbaa !273
  br label %bb.x

bb.v:                                             ; preds = %.thread
  %i.pt = icmp eq i64 %i.di, 1
  %i.pu = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dg) ; 5 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store ptr %i.cn, ptr %i.pv, align 8, !tbaa !224
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  store i32 %.sroa.11.0335, ptr %i.pw, align 8, !tbaa !225
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 128
  store ptr null, ptr %i.px, align 8, !tbaa !273
  br i1 %i.pt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.py = getelementptr inbounds nuw i8, ptr %.182250, i64 128
  store ptr %i.pu, ptr %i.py, align 8, !tbaa !273
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %_ZN10tetgenmesh10memorypool5allocEv.exit, %bb.w, %bb.k, %bb.i
  %.283 = phi ptr [ %.182250, %bb.i ], [ %.182250, %bb.k ], [ %.182250, %_ZN10tetgenmesh10memorypool5allocEv.exit ], [ %.182250, %bb.w ], [ %i.pu, %bb.v ] ; 2 uses
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, 1 ; 2 uses
  %i.pz = load i32, ptr %i.ca, align 4, !tbaa !59
  %i.qa = sext i32 %i.pz to i64
  %i.qb = icmp slt i64 %indvars.iv.next276, %i.qa
  br i1 %i.qb, label %bb.i, label %.preheader242, !llvm.loop !807

.lr.ph257:                                        ; preds = %.preheader242, %bb.aa
  %i.qc = phi ptr [ %i.qx, %bb.aa ], [ %i.ci, %.preheader242 ] ; 2 uses
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %bb.aa ], [ 0, %.preheader242 ]
  %.179255 = phi ptr [ %i.rg, %bb.aa ], [ %.182.lcssa, %.preheader242 ] ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.179255, i64 16 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !224 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.179255, i64 24
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !225 ; 2 uses
  %i.qh = ashr i32 %i.qg, 1
  %i.qi = sext i32 %i.qh to i64                   ; 2 uses
  %i.qj = getelementptr [8 x i8], ptr %i.qe, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 48
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !220
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = and i64 %i.qm, -8
  %i.qo = inttoptr i64 %i.qn to ptr               ; 4 uses
  %.not97 = icmp eq ptr %storemerge267, %i.qo
  br i1 %.not97, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph257
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24 ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !220
  %.not98 = icmp eq ptr %i.qq, null
  br i1 %.not98, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.qr = load ptr, ptr %i.j, align 8, !tbaa !252 ; 2 uses
  store ptr null, ptr %i.qp, align 8, !tbaa !220
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !200
  store ptr %i.qt, ptr %i.qo, align 8, !tbaa !111
  store ptr %i.qo, ptr %i.qs, align 8, !tbaa !200
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 64 ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !202
  %i.qw = add nsw i64 %i.qv, -1
  store i64 %i.qw, ptr %i.qu, align 8, !tbaa !202
  %.pre302 = load ptr, ptr %i.qd, align 8, !tbaa !224
  %.pre303 = load ptr, ptr %i.bd, align 8, !tbaa !263
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %.lr.ph257
  %i.qx = phi ptr [ %.pre303, %bb.z ], [ %i.qc, %bb.y ], [ %i.qc, %.lr.ph257 ] ; 3 uses
  %i.qy = phi ptr [ %.pre302, %bb.z ], [ %i.qe, %bb.y ], [ %i.qe, %.lr.ph257 ] ; 2 uses
  %i.qz = getelementptr [8 x i8], ptr %i.qy, i64 %i.qi
  %i.ra = getelementptr i8, ptr %i.qz, i64 48
  store ptr %storemerge267, ptr %i.ra, align 8, !tbaa !220
  %i.rb = ptrtoint ptr %i.qy to i64
  %i.rc = sext i32 %i.qg to i64
  %i.rd = or i64 %i.rb, %i.rc
  %i.re = inttoptr i64 %i.rd to ptr
  store ptr %i.re, ptr %storemerge267, align 8, !tbaa !220
  %i.rf = getelementptr inbounds nuw i8, ptr %.179255, i64 128
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !273
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !202 ; 3 uses
end_hunk_0
