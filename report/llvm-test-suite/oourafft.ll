inline.NumInlined: 15
inline.NumDeleted: 2
begin_hunk_0_@cft1st:bb.a
  %i.ef = getelementptr i8, ptr %i.dl, i64 280    ; 2 uses
  %i.eg = load double, ptr %i.ee, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ei = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.eh, i64 1 ; 2 uses
  %i.ek = fadd <2 x double> %i.ed, %i.ej          ; 2 uses
  %i.el = fsub <2 x double> %i.dq, %i.dw          ; 2 uses
  %i.em = fsub <2 x double> %i.ed, %i.ej          ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 160 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dl, i64 288
  %i.ep = load double, ptr %i.en, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.er = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.eq, i64 1 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dj, i64 176 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.dl, i64 304
  %i.ev = load double, ptr %i.et, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ex = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1 ; 2 uses
  %i.ez = fadd <2 x double> %i.es, %i.ey          ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dj, i64 168 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.dl, i64 296    ; 2 uses
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dj, i64 184 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.dl, i64 312    ; 2 uses
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fj = load double, ptr %i.fh, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1 ; 2 uses
  %i.fm = fadd <2 x double> %i.ff, %i.fl          ; 2 uses
  %i.fn = fsub <2 x double> %i.es, %i.ey          ; 2 uses
  %i.fo = fsub <2 x double> %i.ff, %i.fl          ; 2 uses
  %i.fp = fadd <2 x double> %i.dx, %i.ez          ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 0
  store double %i.fq, ptr %i.dk, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fr = fadd <2 x double> %i.ek, %i.fm          ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 0
  store double %i.fs, ptr %i.dy, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ft = fsub <2 x double> %i.dx, %i.ez          ; 2 uses
  %i.fu = fsub <2 x double> %i.ek, %i.fm          ; 2 uses
  %i.fv = fneg <2 x double> %i.fu
  %i.fw = fmul <2 x double> %strided.vec313, %i.fv
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.ft, <2 x double> %i.fw) ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  store double %i.fy, ptr %i.en, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.fz = fmul <2 x double> %strided.vec313, %i.ft
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.fu, <2 x double> %i.fz) ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  store double %i.gb, ptr %i.fa, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gc = fsub <2 x double> %i.el, %i.fo          ; 2 uses
  %i.gd = fadd <2 x double> %i.em, %i.fn          ; 2 uses
  %i.ge = fneg <2 x double> %i.gd
  %i.gf = fmul <2 x double> %i.dd, %i.ge
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.gc, <2 x double> %i.gf) ; 2 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 0
  store double %i.gh, ptr %i.dr, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gi = shufflevector <2 x double> %i.fr, <2 x double> %i.gg, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gi, ptr %i.dz, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gj = fmul <2 x double> %i.dd, %i.gc
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.gd, <2 x double> %i.gj) ; 2 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 0
  store double %i.gl, ptr %i.ee, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gm = shufflevector <2 x double> %i.gk, <2 x double> %i.fx, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gm, ptr %i.ef, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gn = fadd <2 x double> %i.el, %i.fo          ; 2 uses
  %i.go = fsub <2 x double> %i.em, %i.fn          ; 2 uses
  %i.gp = fneg <2 x double> %i.go
  %i.gq = fmul <2 x double> %i.di, %i.gp
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.gn, <2 x double> %i.gq) ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  store double %i.gs, ptr %i.et, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gt = shufflevector <2 x double> %i.ga, <2 x double> %i.gr, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gt, ptr %i.fb, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gu = fmul <2 x double> %i.di, %i.gn
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.go, <2 x double> %i.gu) ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  store double %i.gw, ptr %i.fg, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.gy = getelementptr i8, ptr %i.cs, i64 80
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !8, !alias.scope !51
  %i.ha = load double, ptr %i.gy, align 8, !tbaa !8, !alias.scope !51
  %i.hb = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.ha, i64 1 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.he = getelementptr i8, ptr %i.cs, i64 88
  %i.hf = load double, ptr %i.hd, align 8, !tbaa !8, !alias.scope !51
  %i.hg = load double, ptr %i.he, align 8, !tbaa !8, !alias.scope !51
  %i.hh = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hg, i64 1 ; 4 uses
  %i.hj = fmul <2 x double> %strided.vec, splat (double 2.000000e+00) ; 2 uses
  %i.hk = fneg <2 x double> %i.hj
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hi, <2 x double> %i.hc) ; 2 uses
  %i.hm = fneg <2 x double> %i.hi
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.hc, <2 x double> %i.hm) ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dj, i64 192 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.dl, i64 320
  %i.hq = load double, ptr %i.ho, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hr = load double, ptr %i.hp, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hs = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.hr, i64 1 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dj, i64 208 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.dl, i64 336
  %i.hw = load double, ptr %i.hu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hx = load double, ptr %i.hv, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.hy = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hx, i64 1 ; 2 uses
  %i.ia = fadd <2 x double> %i.ht, %i.hz          ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dj, i64 200 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.dl, i64 328    ; 2 uses
  %i.id = load double, ptr %i.ib, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.if = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.ie, i64 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dj, i64 216 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.dl, i64 344    ; 2 uses
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.il = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.ik, i64 1 ; 2 uses
  %i.in = fadd <2 x double> %i.ig, %i.im          ; 2 uses
  %i.io = fsub <2 x double> %i.ht, %i.hz          ; 2 uses
  %i.ip = fsub <2 x double> %i.ig, %i.im          ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dj, i64 224 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.dl, i64 352
  %i.is = load double, ptr %i.iq, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.it = load double, ptr %i.ir, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.iu = insertelement <2 x double> poison, double %i.is, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %i.it, i64 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dj, i64 240 ; 2 uses
  %i.ix = getelementptr i8, ptr %i.dl, i64 368
  %i.iy = load double, ptr %i.iw, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.iz = load double, ptr %i.ix, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ja = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.iz, i64 1 ; 2 uses
  %i.jc = fadd <2 x double> %i.iv, %i.jb          ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dj, i64 232 ; 2 uses
  %i.je = getelementptr i8, ptr %i.dl, i64 360    ; 2 uses
  %i.jf = load double, ptr %i.jd, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jg = load double, ptr %i.je, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jh = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.ji = insertelement <2 x double> %i.jh, double %i.jg, i64 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dj, i64 248 ; 2 uses
  %i.jk = getelementptr i8, ptr %i.dl, i64 376    ; 2 uses
  %i.jl = load double, ptr %i.jj, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jm = load double, ptr %i.jk, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jn = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jo = insertelement <2 x double> %i.jn, double %i.jm, i64 1 ; 2 uses
  %i.jp = fadd <2 x double> %i.ji, %i.jo          ; 2 uses
  %i.jq = fsub <2 x double> %i.iv, %i.jb          ; 2 uses
  %i.jr = fsub <2 x double> %i.ji, %i.jo          ; 2 uses
  %i.js = fadd <2 x double> %i.ia, %i.jc          ; 2 uses
  %i.jt = extractelement <2 x double> %i.js, i64 0
  store double %i.jt, ptr %i.ho, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ju = shufflevector <2 x double> %i.gv, <2 x double> %i.js, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ju, ptr %i.fh, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jv = fadd <2 x double> %i.in, %i.jp          ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 0
  store double %i.jw, ptr %i.ib, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.jx = fsub <2 x double> %i.ia, %i.jc          ; 2 uses
  %i.jy = fsub <2 x double> %i.in, %i.jp          ; 2 uses
  %i.jz = fneg <2 x double> %strided.vec313       ; 2 uses
  %i.ka = fneg <2 x double> %i.jy
  %i.kb = fmul <2 x double> %strided.vec, %i.ka
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.jx, <2 x double> %i.kb) ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0
  store double %i.kd, ptr %i.iq, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ke = fmul <2 x double> %strided.vec, %i.jx
  %i.kf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.jy, <2 x double> %i.ke) ; 2 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 0
  store double %i.kg, ptr %i.jd, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kh = fsub <2 x double> %i.io, %i.jr          ; 2 uses
  %i.ki = fadd <2 x double> %i.ip, %i.jq          ; 2 uses
  %i.kj = fneg <2 x double> %i.ki
  %i.kk = fmul <2 x double> %i.hi, %i.kj
  %i.kl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.kh, <2 x double> %i.kk) ; 2 uses
  %i.km = extractelement <2 x double> %i.kl, i64 0
  store double %i.km, ptr %i.hu, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kn = shufflevector <2 x double> %i.jv, <2 x double> %i.kl, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.kn, ptr %i.ic, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ko = fmul <2 x double> %i.hi, %i.kh
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.ki, <2 x double> %i.ko) ; 2 uses
  %i.kq = extractelement <2 x double> %i.kp, i64 0
  store double %i.kq, ptr %i.ih, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kr = shufflevector <2 x double> %i.kp, <2 x double> %i.kc, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.kr, ptr %i.ii, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ks = fadd <2 x double> %i.io, %i.jr          ; 2 uses
  %i.kt = fsub <2 x double> %i.ip, %i.jq          ; 2 uses
  %i.ku = fneg <2 x double> %i.kt
  %i.kv = fmul <2 x double> %i.hn, %i.ku
  %i.kw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.ks, <2 x double> %i.kv) ; 2 uses
  %i.kx = extractelement <2 x double> %i.kw, i64 0
  store double %i.kx, ptr %i.iw, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.ky = shufflevector <2 x double> %i.kf, <2 x double> %i.kw, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ky, ptr %i.je, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %i.kz = fmul <2 x double> %i.hn, %i.ks
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.kt, <2 x double> %i.kz) ; 2 uses
  %3 = shufflevector <2 x double> %i.la, <2 x double> %i.fp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %3, ptr %i.jj, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %4 = extractelement <2 x double> %i.la, i64 1
  store double %4, ptr %i.jk, align 8, !tbaa !8, !alias.scope !53, !noalias !55
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader315

.lr.ph.preheader315:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv300.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ci, %middle.block ]
  %indvars.iv.ph = phi i64 [ 16, %vector.memcheck ], [ 16, %.lr.ph.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader315, %.lr.ph
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %.lr.ph ], [ %indvars.iv300.ph, %.lr.ph.preheader315 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader315 ] ; 2 uses
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 2 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next301
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv300
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %.idx = shl nuw nsw i64 %indvars.iv.next301, 4
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 15 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 48 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 56 ; 2 uses
  %i.lp = load <2 x double>, ptr %i.lc, align 8, !tbaa !8 ; 4 uses
  %i.lq = load double, ptr %i.le, align 8, !tbaa !8 ; 2 uses
  %i.lr = load <2 x double>, ptr %i.lf, align 8, !tbaa !8 ; 3 uses
  %i.ls = load double, ptr %i.lg, align 8, !tbaa !8 ; 2 uses
  %i.lt = fmul double %i.lq, 2.000000e+00         ; 2 uses
  %i.lu = fneg double %i.lt
  %i.lv = extractelement <2 x double> %i.lr, i64 0 ; 2 uses
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lu, double %i.ls, double %i.lv) ; 2 uses
  %i.lx = fneg double %i.ls
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.lv, double %i.lx) ; 2 uses
  %i.lz = load double, ptr %i.lj, align 8, !tbaa !8 ; 2 uses
  %i.ma = load double, ptr %i.lh, align 8, !tbaa !8 ; 2 uses
  %i.mb = load double, ptr %i.li, align 8, !tbaa !8 ; 2 uses
  %i.mc = fadd double %i.ma, %i.mb                ; 2 uses
  %i.md = fsub double %i.ma, %i.mb                ; 2 uses
  %i.me = load double, ptr %i.lo, align 8, !tbaa !8 ; 2 uses
  %i.mf = load double, ptr %i.lk, align 8, !tbaa !8 ; 2 uses
  %i.mg = load double, ptr %i.ll, align 8, !tbaa !8 ; 2 uses
  %i.mh = load double, ptr %i.lm, align 8, !tbaa !8 ; 2 uses
  %i.mi = load double, ptr %i.ln, align 8, !tbaa !8 ; 2 uses
  %i.mj = fadd double %i.mi, %i.me                ; 2 uses
  %i.mk = fsub double %i.lz, %i.mf                ; 2 uses
  %i.ml = fadd double %i.mg, %i.mh                ; 2 uses
  %i.mm = fadd double %i.lz, %i.mf                ; 2 uses
  %i.mn = fsub double %i.mg, %i.mh                ; 2 uses
  %i.mo = fsub double %i.mi, %i.me                ; 2 uses
  %i.mp = fadd double %i.mc, %i.ml
  store double %i.mp, ptr %i.lh, align 8, !tbaa !8
  %i.mq = fadd double %i.mm, %i.mj
  store double %i.mq, ptr %i.lj, align 8, !tbaa !8
  %i.mr = fsub double %i.mc, %i.ml
  %i.ms = fsub double %i.mm, %i.mj                ; 2 uses
  %i.mt = fadd double %i.mk, %i.mn                ; 2 uses
  %i.mu = fsub double %i.md, %i.mo
  %i.mv = insertelement <2 x double> poison, double %i.mt, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.ms, i64 1
  %i.mx = fneg <2 x double> %i.mw
  %i.my = shufflevector <2 x double> %i.lr, <2 x double> %i.lp, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.mz = shufflevector <2 x double> %i.mx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.na = insertelement <4 x double> %i.mz, double %i.mu, i64 2
  %i.nb = insertelement <4 x double> %i.na, double %i.mr, i64 3 ; 2 uses
  %i.nc = fmul <4 x double> %i.my, %i.nb
  %i.nd = shufflevector <2 x double> %i.lr, <2 x double> %i.lp, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.ne = shufflevector <4 x double> %i.nb, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nf = insertelement <4 x double> %i.ne, double %i.mt, i64 2
  %i.ng = insertelement <4 x double> %i.nf, double %i.ms, i64 3
  %i.nh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nd, <4 x double> %i.ng, <4 x double> %i.nc)
  %i.ni = shufflevector <4 x double> %i.nh, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %i.ni, ptr %i.li, align 8, !tbaa !8
  %i.nj = fadd double %i.md, %i.mo                ; 2 uses
  %i.nk = fsub double %i.mk, %i.mn                ; 2 uses
  %i.nl = fneg double %i.nk
  %i.nm = fmul double %i.ly, %i.nl
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.nj, double %i.nm)
  store double %i.nn, ptr %i.lm, align 8, !tbaa !8
  %i.no = fmul double %i.ly, %i.nj
  %i.np = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.nk, double %i.no)
  store double %i.np, ptr %i.lo, align 8, !tbaa !8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.ns = extractelement <2 x double> %i.lp, i64 0
  %i.nt = fmul double %i.ns, 2.000000e+00         ; 2 uses
  %i.nu = fneg double %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.lh, i64 64 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.lh, i64 80 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lh, i64 72
  %i.ny = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lh, i64 112
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lh, i64 120
  %i.ob = fneg double %i.lq
  %i.oc = load <2 x double>, ptr %i.nq, align 8, !tbaa !8 ; 3 uses
  %i.od = load double, ptr %i.nr, align 8, !tbaa !8 ; 2 uses
  %i.oe = extractelement <2 x double> %i.oc, i64 0 ; 2 uses
  %i.of = tail call double @llvm.fmuladd.f64(double %i.nu, double %i.od, double %i.oe) ; 2 uses
  %i.og = fneg double %i.od
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.nt, double %i.oe, double %i.og) ; 2 uses
  %i.oi = load <2 x double>, ptr %i.nv, align 8, !tbaa !8
  %i.oj = shufflevector <2 x double> %i.oi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ok = load <2 x double>, ptr %i.nw, align 8, !tbaa !8
  %i.ol = shufflevector <2 x double> %i.ok, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.om = fsub <4 x double> %i.oj, %i.ol          ; 3 uses
  %i.on = fadd <4 x double> %i.oj, %i.ol          ; 3 uses
  %i.oo = shufflevector <4 x double> %i.om, <4 x double> %i.on, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.op = load <4 x double>, ptr %i.ny, align 8, !tbaa !8 ; 3 uses
  %i.oq = shufflevector <4 x double> %i.op, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.or = fsub <4 x double> %i.op, %i.oq          ; 3 uses
  %i.os = fadd <4 x double> %i.op, %i.oq          ; 3 uses
  %i.ot = shufflevector <4 x double> %i.or, <4 x double> %i.os, <4 x i32> <i32 1, i32 0, i32 6, i32 7> ; 2 uses
  %i.ou = extractelement <4 x double> %i.on, i64 2
  %i.ov = extractelement <4 x double> %i.os, i64 2
  %i.ow = fadd double %i.ou, %i.ov
  store double %i.ow, ptr %i.nv, align 8, !tbaa !8
  %i.ox = extractelement <4 x double> %i.on, i64 3
  %i.oy = extractelement <4 x double> %i.os, i64 3
  %i.oz = fadd double %i.ox, %i.oy
  store double %i.oz, ptr %i.nx, align 8, !tbaa !8
  %i.pa = fsub <4 x double> %i.oo, %i.ot          ; 3 uses
  %i.pb = fadd <4 x double> %i.oo, %i.ot          ; 2 uses
  %i.pc = shufflevector <4 x double> %i.pa, <4 x double> %i.pb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.pd = shufflevector <4 x double> %i.pb, <4 x double> %i.pa, <2 x i32> <i32 1, i32 7>
  %i.pe = fneg <2 x double> %i.pd
  %i.pf = shufflevector <2 x double> %i.lp, <2 x double> %i.oc, <4 x i32> <i32 3, i32 3, i32 0, i32 0>
  %i.pg = shufflevector <4 x double> %i.pa, <4 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.ph = shufflevector <2 x double> %i.pe, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.pi = shufflevector <4 x double> %i.ph, <4 x double> %i.pg, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pj = fmul <4 x double> %i.pf, %i.pi
  %i.pk = shufflevector <2 x double> %i.oc, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.pl = insertelement <4 x double> poison, double %i.ob, i64 0
  %i.pm = shufflevector <4 x double> %i.pl, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.pn = shufflevector <4 x double> %i.pk, <4 x double> %i.pm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.po = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pn, <4 x double> %i.pc, <4 x double> %i.pj)
  store <4 x double> %i.po, ptr %i.nw, align 8, !tbaa !8
  %i.pp = extractelement <4 x double> %i.om, i64 0
  %i.pq = extractelement <4 x double> %i.or, i64 1
  %i.pr = fadd double %i.pp, %i.pq                ; 2 uses
  %i.ps = extractelement <4 x double> %i.om, i64 1
  %i.pt = extractelement <4 x double> %i.or, i64 0
  %i.pu = fsub double %i.ps, %i.pt                ; 2 uses
  %i.pv = fneg double %i.pu
  %i.pw = fmul double %i.oh, %i.pv
  %i.px = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pr, double %i.pw)
  store double %i.px, ptr %i.nz, align 8, !tbaa !8
  %i.py = fmul double %i.oh, %i.pr
  %i.pz = tail call double @llvm.fmuladd.f64(double %i.of, double %i.pu, double %i.py)
  store double %i.pz, ptr %i.oa, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %i.qa = icmp samesign ult i64 %indvars.iv.next, %i.bw
  br i1 %i.qa, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cftmdl(i32 noundef range(i32 9, -2147483648) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #14 {
bb.a:
  %i.a = shl i32 %1, 2                            ; 3 uses
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 5 uses
  %i.d = zext nneg i32 %1 to i64                  ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.c ; 9 uses
  %i.e = add nsw i64 %i.d, -1
  %i.f = lshr i64 %i.e, 1
  %i.g = add nuw i64 %i.f, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %1, 51
  br i1 %min.iters.check, label %.lr.ph.preheader1107, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = shl nuw nsw i64 %i.d, 3
  %i.i = add nsw i64 %i.h, -8                     ; 2 uses
  %i.j = and i64 %i.i, -16                        ; 4 uses
  %i.k = or i64 %i.i, 8
  %scevgep = getelementptr i8, ptr %2, i64 %i.k   ; 7 uses
  %scevgep444 = getelementptr i8, ptr %2, i64 8   ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 %i.j
  %scevgep445 = getelementptr i8, ptr %i.l, i64 16 ; 7 uses
  %i.m = shl nuw nsw i64 %i.d, 4                  ; 3 uses
  %scevgep446 = getelementptr i8, ptr %2, i64 %i.m ; 7 uses
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %scevgep447 = getelementptr i8, ptr %i.o, i64 8 ; 7 uses
  %i.p = getelementptr i8, ptr %2, i64 %i.m
  %scevgep448 = getelementptr i8, ptr %i.p, i64 8 ; 7 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.n
  %scevgep449 = getelementptr i8, ptr %i.q, i64 16 ; 7 uses
  %i.r = shl nuw nsw i64 %i.d, 3                  ; 2 uses
end_hunk_0
