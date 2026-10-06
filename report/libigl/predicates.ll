Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/predicates?download=true
inline.NumInlined: 13
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_Z13orient3dadaptPdS_S_S_d:bb.a
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double %i.dm) ; 2 uses
  %i.do = fsub double %i.ck, %i.dn                ; 4 uses
  %i.dp = fsub double %i.ck, %i.do                ; 2 uses
  %i.dq = fadd double %i.do, %i.dp
  %i.dr = fsub double %i.dp, %i.dn
  %i.ds = fsub double %i.ck, %i.dq
  %i.dt = fadd double %i.dr, %i.ds
  store double %i.dt, ptr %i.a, align 16, !tbaa !11
  %i.du = fadd double %i.ct, %i.do                ; 5 uses
  %i.dv = fsub double %i.du, %i.ct                ; 2 uses
  %i.dw = fsub double %i.du, %i.dv
  %i.dx = fsub double %i.do, %i.dv
  %i.dy = fsub double %i.ct, %i.dw
  %i.dz = fadd double %i.dx, %i.dy                ; 3 uses
  %i.ea = fsub double %i.dz, %i.cs                ; 4 uses
  %i.eb = fsub double %i.dz, %i.ea                ; 2 uses
  %i.ec = fadd double %i.ea, %i.eb
  %i.ed = fsub double %i.eb, %i.cs
  %i.ee = fsub double %i.dz, %i.ec
  %i.ef = fadd double %i.ed, %i.ee
  store double %i.ef, ptr %i.ag, align 8, !tbaa !11
  %i.eg = fadd double %i.du, %i.ea                ; 3 uses
  %i.eh = fsub double %i.eg, %i.du                ; 2 uses
  %i.ei = fsub double %i.eg, %i.eh
  %i.ej = fsub double %i.ea, %i.eh
  %i.ek = fsub double %i.du, %i.ei
  %i.el = fadd double %i.ej, %i.ek
  store double %i.el, ptr %i.ah, align 16, !tbaa !11
  store double %i.eg, ptr %i.ai, align 8, !tbaa !11
  %i.em = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.a, double noundef %i.bv, ptr noundef %i.d)
  %i.en = extractelement <2 x double> %i.dl, i64 1
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cj, double %i.en) ; 2 uses
  %i.ep = fsub double %i.cn, %i.eo                ; 4 uses
  %i.eq = fsub double %i.cn, %i.ep                ; 2 uses
  %i.er = fadd double %i.ep, %i.eq
  %i.es = fsub double %i.eq, %i.eo
  %i.et = fsub double %i.cn, %i.er
  %i.eu = fadd double %i.es, %i.et
  store double %i.eu, ptr %i.b, align 16, !tbaa !11
  %i.ev = extractelement <2 x double> %i.bz, i64 1 ; 3 uses
  %i.ew = fadd double %i.ev, %i.ep                ; 5 uses
  %i.ex = fsub double %i.ew, %i.ev                ; 2 uses
  %i.ey = fsub double %i.ew, %i.ex
  %i.ez = fsub double %i.ep, %i.ex
  %i.fa = fsub double %i.ev, %i.ey
  %i.fb = fadd double %i.ez, %i.fa                ; 3 uses
  %i.fc = fsub double %i.fb, %i.cz                ; 4 uses
  %i.fd = fsub double %i.fb, %i.fc                ; 2 uses
  %i.fe = fadd double %i.fc, %i.fd
  %i.ff = fsub double %i.fd, %i.cz
  %i.fg = fsub double %i.fb, %i.fe
  %i.fh = fadd double %i.ff, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.fh, ptr %i.fi, align 8, !tbaa !11
  %i.fj = fadd double %i.ew, %i.fc                ; 3 uses
  %i.fk = fsub double %i.fj, %i.ew                ; 2 uses
  %i.fl = fsub double %i.fj, %i.fk
  %i.fm = fsub double %i.fc, %i.fk
  %i.fn = fsub double %i.ew, %i.fl
  %i.fo = fadd double %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.fo, ptr %i.fp, align 16, !tbaa !11
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.fj, ptr %i.fq, align 8, !tbaa !11
  %i.fr = extractelement <4 x double> %i.bg, i64 1 ; 8 uses
  %i.fs = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.b, double noundef %i.fr, ptr noundef %i.e)
  %i.ft = shufflevector <4 x double> %i.as, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.fu = shufflevector <4 x double> %i.ba, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.fv = fmul <2 x double> %i.ft, %i.fu          ; 3 uses
  %i.fw = insertelement <2 x double> %i.bw, double %i.cy, i64 1 ; 2 uses
  %i.fx = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fy = insertelement <2 x double> %i.fx, double %i.bs, i64 1 ; 2 uses
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fy, <2 x double> %i.fv)
  %i.ga = insertelement <2 x double> %i.bx, double %i.da, i64 1
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.fy, <2 x double> %i.fz)
  %i.gc = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gd = insertelement <2 x double> %i.gc, double %i.bt, i64 1
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.gd, <2 x double> %i.gb)
  %i.gf = fneg <2 x double> %i.ge                 ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 1
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.bt, double %i.gg) ; 3 uses
  %i.gi = extractelement <2 x double> %i.gf, i64 0
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.cm, double %i.gi) ; 2 uses
  %i.gk = fsub double %i.gh, %i.gj                ; 4 uses
  %i.gl = fsub double %i.gh, %i.gk                ; 2 uses
  %i.gm = fadd double %i.gk, %i.gl
  %i.gn = fsub double %i.gl, %i.gj
  %i.go = fsub double %i.gh, %i.gm
  %i.gp = fadd double %i.gn, %i.go
  store double %i.gp, ptr %i.c, align 16, !tbaa !11
  %i.gq = extractelement <2 x double> %i.fv, i64 1 ; 3 uses
  %i.gr = fadd double %i.gq, %i.gk                ; 5 uses
  %i.gs = fsub double %i.gr, %i.gq                ; 2 uses
  %i.gt = fsub double %i.gr, %i.gs
  %i.gu = fsub double %i.gk, %i.gs
  %i.gv = fsub double %i.gq, %i.gt
  %i.gw = fadd double %i.gu, %i.gv                ; 3 uses
  %i.gx = extractelement <2 x double> %i.fv, i64 0 ; 3 uses
  %i.gy = fsub double %i.gw, %i.gx                ; 4 uses
  %i.gz = fsub double %i.gw, %i.gy                ; 2 uses
  %i.ha = fadd double %i.gy, %i.gz
  %i.hb = fsub double %i.gz, %i.gx
  %i.hc = fsub double %i.gw, %i.ha
  %i.hd = fadd double %i.hb, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double %i.hd, ptr %i.he, align 8, !tbaa !11
  %i.hf = fadd double %i.gr, %i.gy                ; 3 uses
  %i.hg = fsub double %i.hf, %i.gr                ; 2 uses
  %i.hh = fsub double %i.hf, %i.hg
  %i.hi = fsub double %i.gy, %i.hg
  %i.hj = fsub double %i.gr, %i.hh
  %i.hk = fadd double %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %i.hk, ptr %i.hl, align 16, !tbaa !11
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %i.hf, ptr %i.hm, align 8, !tbaa !11
  %i.hn = extractelement <4 x double> %i.bg, i64 2 ; 8 uses
  %i.ho = call fastcc noundef i32 @_ZL24scale_expansion_zeroelimiPddS_(i32 noundef 4, ptr noundef %i.c, double noundef %i.hn, ptr noundef %i.f)
  %i.hp = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.em, ptr noundef %i.d, i32 noundef %i.fs, ptr noundef %i.e, ptr noundef %i.g)
  %i.hq = call fastcc noundef i32 @_ZL27fast_expansion_sum_zeroelimiPdiS_S_(i32 noundef %i.hp, ptr noundef %i.g, i32 noundef %i.ho, ptr noundef %i.f, ptr noundef %i.h) ; 4 uses
  %i.hr = load double, ptr %i.h, align 16, !tbaa !11 ; 3 uses
  %i.hs = icmp sgt i32 %i.hq, 1
  br i1 %i.hs, label %.lr.ph.preheader.i, label %_ZL8estimateiPd.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.hq to i64
  %i.ht = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.ht, 7                    ; 3 uses
  %i.hu = add nsw i32 %i.hq, -2
  %i.hv = icmp ult i32 %i.hu, 7
  br i1 %i.hv, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ht, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %.078.i = phi double [ %i.hr, %.lr.ph.preheader.i.new ], [ %i.ja, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !11
  %i.hy = fadd double %.078.i, %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !11
  %i.ic = fadd double %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load double, ptr %i.ie, align 8, !tbaa !11
  %i.ig = fadd double %i.ic, %i.if
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !11
  %i.ik = fadd double %i.ig, %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = load double, ptr %i.im, align 8, !tbaa !11
  %i.io = fadd double %i.ik, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !11
  %i.is = fadd double %i.io, %i.ir
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !11
  %i.iw = fadd double %i.is, %i.iv
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !11
  %i.ja = fadd double %i.iw, %i.iz                ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL8estimateiPd.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

_ZL8estimateiPd.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL8estimateiPd.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL8estimateiPd.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %_ZL8estimateiPd.exit.loopexit.unr-lcssa ]
  %.078.i.epil.init = phi double [ %i.hr, %.lr.ph.preheader.i ], [ %i.ja, %_ZL8estimateiPd.exit.loopexit.unr-lcssa ]
  %lcmp.mod2793 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2793)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.078.i.epil = phi double [ %.078.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.jd, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.epil
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !11
  %i.jd = fadd double %.078.i.epil, %i.jc         ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL8estimateiPd.exit, label %.lr.ph.i.epil, !llvm.loop !37

_ZL8estimateiPd.exit:                             ; preds = %_ZL8estimateiPd.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.07.lcssa.i = phi double [ %i.hr, %bb.a ], [ %i.ja, %_ZL8estimateiPd.exit.loopexit.unr-lcssa ], [ %i.jd, %.lr.ph.i.epil ] ; 6 uses
  %i.je = load double, ptr @_ZL12o3derrboundB, align 8, !tbaa !11
  %i.jf = fmul double %4, %i.je                   ; 2 uses
  %i.jg = fcmp ult double %.07.lcssa.i, %i.jf
  %i.jh = fneg double %.07.lcssa.i
  %i.ji = fcmp ugt double %i.jf, %i.jh
  %or.cond2736 = and i1 %i.jg, %i.ji
  br i1 %or.cond2736, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %_ZL8estimateiPd.exit
  %i.jj = insertelement <4 x double> %i.ap, double -0.000000e+00, i64 3 ; 2 uses
  %i.jk = fsub <4 x double> %i.jj, %i.as          ; 2 uses
  %i.jl = fadd <4 x double> %i.as, %i.jk
  %i.jm = fsub <4 x double> %i.jk, %i.ar
  %i.jn = fsub <4 x double> %i.jj, %i.jl
  %i.jo = fadd <4 x double> %i.jm, %i.jn          ; 5 uses
  %i.jp = insertelement <4 x double> %i.ax, double -0.000000e+00, i64 3 ; 2 uses
  %i.jq = fsub <4 x double> %i.jp, %i.ba          ; 2 uses
  %i.jr = fadd <4 x double> %i.ba, %i.jq
  %i.js = fsub <4 x double> %i.jq, %i.az
  %i.jt = fsub <4 x double> %i.jp, %i.jr
  %i.ju = fadd <4 x double> %i.js, %i.jt          ; 5 uses
  %i.jv = insertelement <4 x double> %i.bd, double 1.000000e+00, i64 3
  %i.jw = fsub <4 x double> %i.jv, %i.bg          ; 2 uses
  %i.jx = insertelement <4 x double> %i.jw, double -0.000000e+00, i64 3
  %i.jy = fadd <4 x double> %i.bg, %i.jx
  %i.jz = fsub <4 x double> %i.jw, %i.bf
  %i.ka = insertelement <4 x double> %i.bd, double -0.000000e+00, i64 3
  %i.kb = fsub <4 x double> %i.ka, %i.jy
  %i.kc = fadd <4 x double> %i.jz, %i.kb          ; 10 uses
  %i.kd = extractelement <4 x double> %i.jo, i64 2 ; 13 uses
  %i.ke = fcmp oeq double %i.kd, 0.000000e+00     ; 3 uses
  %i.kf = extractelement <4 x double> %i.jo, i64 0 ; 13 uses
  %i.kg = fcmp oeq double %i.kf, 0.000000e+00     ; 4 uses
  %or.cond = select i1 %i.ke, i1 %i.kg, i1 false
  %i.kh = extractelement <4 x double> %i.jo, i64 1 ; 13 uses
  %i.ki = fcmp oeq double %i.kh, 0.000000e+00     ; 4 uses
  %or.cond3 = select i1 %or.cond, i1 %i.ki, i1 false
  %i.kj = extractelement <4 x double> %i.ju, i64 1 ; 20 uses
  %i.kk = fcmp oeq double %i.kj, 0.000000e+00     ; 5 uses
  %or.cond5 = select i1 %or.cond3, i1 %i.kk, i1 false
  %i.kl = extractelement <4 x double> %i.ju, i64 2 ; 19 uses
  %i.km = fcmp oeq double %i.kl, 0.000000e+00     ; 5 uses
  %or.cond7 = select i1 %or.cond5, i1 %i.km, i1 false
  %i.kn = extractelement <4 x double> %i.ju, i64 0 ; 19 uses
  %i.ko = fcmp oeq double %i.kn, 0.000000e+00     ; 5 uses
  %or.cond9 = select i1 %or.cond7, i1 %i.ko, i1 false
  %i.kp = extractelement <4 x double> %i.kc, i64 0 ; 9 uses
  %i.kq = fcmp oeq double %i.kp, 0.000000e+00     ; 5 uses
  %or.cond11 = select i1 %or.cond9, i1 %i.kq, i1 false
  %i.kr = extractelement <4 x double> %i.kc, i64 1 ; 9 uses
  %i.ks = fcmp oeq double %i.kr, 0.000000e+00     ; 5 uses
  %or.cond13 = select i1 %or.cond11, i1 %i.ks, i1 false
  %i.kt = extractelement <4 x double> %i.kc, i64 2 ; 9 uses
  %i.ku = fcmp oeq double %i.kt, 0.000000e+00     ; 5 uses
  %or.cond15 = select i1 %or.cond13, i1 %i.ku, i1 false
  br i1 %or.cond15, label %bb.bc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.kv = load double, ptr @_ZL12o3derrboundC, align 8, !tbaa !11
  %i.kw = load double, ptr @_ZL14resulterrbound, align 8, !tbaa !11
  %i.kx = tail call double @llvm.fabs.f64(double %.07.lcssa.i)
  %i.ky = fmul double %i.kx, %i.kw
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.kv, double %4, double %i.ky) ; 2 uses
  %i.la = fneg <2 x double> %i.cr
  %i.lb = fneg double %i.gx
  %i.lc = extractelement <4 x double> %i.as, i64 0 ; 7 uses
  %i.ld = shufflevector <4 x double> %i.ju, <4 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.le = fmul <2 x double> %i.cp, %i.ld          ; 5 uses
  %i.lf = insertelement <4 x double> %i.ba, double 1.000000e+00, i64 3
  %i.lg = fmul <4 x double> %i.jo, %i.lf          ; 4 uses
  %i.lh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.as, <4 x double> %i.ju, <4 x double> %i.lg)
  %i.li = fmul double %i.lc, %i.kj                ; 4 uses
  %5 = shufflevector <4 x double> %i.ba, <4 x double> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %6 = shufflevector <4 x double> %i.jo, <4 x double> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.lj = shufflevector <2 x double> %i.le, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lk = insertelement <4 x double> %i.lj, double %i.li, i64 2
  %i.ll = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %5, <4 x double> %6, <4 x double> %i.lk)
  %i.lm = fsub <4 x double> %i.lh, %i.ll
  %i.ln = shufflevector <2 x double> %i.la, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = insertelement <4 x double> %i.ln, double %i.lb, i64 2
  %i.lo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.as, <4 x double> %i.ba, <4 x double> %7)
  %i.lp = fmul <4 x double> %i.lo, %i.kc
  %i.lq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bg, <4 x double> %i.lm, <4 x double> %i.lp) ; 3 uses
  %i.lr = extractelement <4 x double> %i.lq, i64 0
  %i.ls = extractelement <4 x double> %i.lq, i64 1
  %i.lt = fadd double %i.lr, %i.ls
  %i.lu = extractelement <4 x double> %i.lq, i64 2
  %i.lv = fadd double %i.lt, %i.lu
  %i.lw = fadd double %i.lv, %.07.lcssa.i         ; 3 uses
  %i.lx = fcmp ult double %i.lw, %i.kz
  %i.ly = fneg double %i.lw
  %i.lz = fcmp ugt double %i.kz, %i.ly
  %or.cond2738 = and i1 %i.lx, %i.lz
  br i1 %or.cond2738, label %bb.d, label %bb.bc

bb.d:                                             ; preds = %bb.c
  br i1 %i.ke, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.kk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.j, align 16, !tbaa !11
  store double 0.000000e+00, ptr %i.k, align 16, !tbaa !11
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ma = fneg double %i.kj                       ; 3 uses
  %i.mb = fmul double %i.lc, %i.ma                ; 2 uses
  %i.mc = fmul double %i.af, %i.ma                ; 2 uses
  %i.md = fadd double %i.kj, %i.mc
  %i.me = fsub double %i.mc, %i.md                ; 2 uses
  %i.mf = fsub double %i.ma, %i.me                ; 2 uses
  %i.mg = fneg double %i.me                       ; 2 uses
  %i.mh = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mh, double %i.mb)
  %i.mj = fneg double %i.mf
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.mh, double %i.mi)
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.bp, double %i.mk)
  %i.mm = fneg double %i.ml
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.bp, double %i.mm)
  store double %i.mn, ptr %i.j, align 16, !tbaa !11
  %i.mo = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %i.mb, ptr %i.mo, align 8, !tbaa !11
  %i.mp = extractelement <4 x double> %i.as, i64 1
  %i.mq = fmul double %i.mp, %i.kj                ; 2 uses
  %i.mr = fmul double %i.kj, %i.af                ; 2 uses
  %i.ms = fsub double %i.mr, %i.kj
  %i.mt = fsub double %i.mr, %i.ms                ; 2 uses
  %i.mu = fsub double %i.kj, %i.mt                ; 2 uses
  %i.mv = fneg double %i.mt                       ; 2 uses
  %i.mw = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.mw, double %i.mq)
  %i.my = fneg double %i.mu
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.my, double %i.mw, double %i.mx)
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.bu, double %i.mz)
  %i.nb = fneg double %i.na
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.bu, double %i.nb)
  store double %i.nc, ptr %i.k, align 16, !tbaa !11
  %i.nd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double %i.mq, ptr %i.nd, align 8, !tbaa !11
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ne = fmul double %i.kd, %i.af                ; 2 uses
  %i.nf = fsub double %i.ne, %i.kd
  %i.ng = fsub double %i.ne, %i.nf                ; 2 uses
  %i.nh = fsub double %i.kd, %i.ng                ; 3 uses
  %i.ni = fneg double %i.ng                       ; 4 uses
  %i.nj = extractelement <4 x double> %i.lg, i64 2 ; 5 uses
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.bs, double %i.nj)
  %i.nl = fneg double %i.nh                       ; 2 uses
  %i.nm = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.bs, double %i.nk)
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.bt, double %i.nm)
  %i.no = fneg double %i.nn
  %i.np = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.bt, double %i.no) ; 4 uses
  br i1 %i.kk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.np, ptr %i.j, align 16, !tbaa !11
  %i.nq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %i.nj, ptr %i.nq, align 8, !tbaa !11
  %i.nr = fneg double %i.kd                       ; 3 uses
  %i.ns = extractelement <4 x double> %i.ba, i64 0
  %i.nt = fmul double %i.ns, %i.nr                ; 2 uses
  %i.nu = fmul double %i.af, %i.nr                ; 2 uses
  %i.nv = fadd double %i.kd, %i.nu
  %i.nw = fsub double %i.nu, %i.nv                ; 2 uses
  %i.nx = fsub double %i.nr, %i.nw                ; 2 uses
  %i.ny = fneg double %i.nw                       ; 2 uses
  %i.nz = extractelement <2 x double> %i.cc, i64 0 ; 2 uses
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.ny, double %i.nz, double %i.nt)
  %i.ob = fneg double %i.nx
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.ob, double %i.nz, double %i.oa)
  %i.od = tail call double @llvm.fmuladd.f64(double %i.ny, double %i.cj, double %i.oc)
  %i.oe = fneg double %i.od
  %i.of = tail call double @llvm.fmuladd.f64(double %i.nx, double %i.cj, double %i.oe)
  store double %i.of, ptr %i.k, align 16, !tbaa !11
  %i.og = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double %i.nt, ptr %i.og, align 8, !tbaa !11
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.oh = fmul double %i.kj, %i.af                ; 2 uses
  %i.oi = fsub double %i.oh, %i.kj
  %i.oj = fsub double %i.oh, %i.oi                ; 2 uses
  %i.ok = fsub double %i.kj, %i.oj                ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.oo = extractelement <4 x double> %i.as, i64 1
  %i.op = fmul double %i.oo, %i.kj                ; 4 uses
  %i.oq = fneg double %i.oj
  %i.or = fneg double %i.ok
  %i.os = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ou = insertelement <2 x double> poison, double %i.li, i64 0
  %i.ov = insertelement <2 x double> %i.ou, double %i.op, i64 1
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ot, <2 x double> %i.bn, <2 x double> %i.ov)
  %i.ox = insertelement <2 x double> poison, double %i.or, i64 0
  %i.oy = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.bn, <2 x double> %i.ow)
  %i.pa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ot, <2 x double> %i.bo, <2 x double> %i.oz)
  %i.pb = fneg <2 x double> %i.pa                 ; 2 uses
  %i.pc = extractelement <2 x double> %i.pb, i64 0
  %i.pd = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.bp, double %i.pc) ; 2 uses
  %i.pe = fsub double %i.np, %i.pd                ; 4 uses
  %i.pf = fsub double %i.np, %i.pe                ; 2 uses
  %i.pg = fadd double %i.pe, %i.pf
  %i.ph = fsub double %i.pf, %i.pd
  %i.pi = fsub double %i.np, %i.pg
  %i.pj = fadd double %i.ph, %i.pi
  store double %i.pj, ptr %i.j, align 16, !tbaa !11
  %i.pk = fadd double %i.nj, %i.pe                ; 5 uses
  %i.pl = fsub double %i.pk, %i.nj                ; 2 uses
  %i.pm = fsub double %i.pk, %i.pl
  %i.pn = fsub double %i.pe, %i.pl
  %i.po = fsub double %i.nj, %i.pm
  %i.pp = fadd double %i.pn, %i.po                ; 3 uses
  %i.pq = fsub double %i.pp, %i.li                ; 4 uses
  %i.pr = fsub double %i.pp, %i.pq                ; 2 uses
  %i.ps = fadd double %i.pq, %i.pr
  %i.pt = fsub double %i.pr, %i.li
  %i.pu = fsub double %i.pp, %i.ps
  %i.pv = fadd double %i.pt, %i.pu
  store double %i.pv, ptr %i.ol, align 8, !tbaa !11
  %i.pw = fadd double %i.pk, %i.pq                ; 3 uses
  %i.px = fsub double %i.pw, %i.pk                ; 2 uses
  %i.py = fsub double %i.pw, %i.px
  %i.pz = fsub double %i.pq, %i.px
  %i.qa = fsub double %i.pk, %i.py
  %i.qb = fadd double %i.pz, %i.qa
  store double %i.qb, ptr %i.om, align 16, !tbaa !11
  store double %i.pw, ptr %i.on, align 8, !tbaa !11
  %i.qc = extractelement <2 x double> %i.pb, i64 1
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.ok, double %i.bu, double %i.qc) ; 3 uses
  %i.qe = extractelement <4 x double> %i.ba, i64 0
  %i.qf = fmul double %i.kd, %i.qe                ; 3 uses
  %i.qg = extractelement <2 x double> %i.cc, i64 0 ; 2 uses
  %i.qh = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.qg, double %i.qf)
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.qg, double %i.qh)
  %i.qj = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.cj, double %i.qi)
  %i.qk = fneg double %i.qj
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.cj, double %i.qk) ; 2 uses
  %i.qm = fsub double %i.qd, %i.ql                ; 4 uses
  %i.qn = fsub double %i.qd, %i.qm                ; 2 uses
  %i.qo = fadd double %i.qm, %i.qn
  %i.qp = fsub double %i.qn, %i.ql
  %i.qq = fsub double %i.qd, %i.qo
  %i.qr = fadd double %i.qp, %i.qq
  store double %i.qr, ptr %i.k, align 16, !tbaa !11
  %i.qs = fadd double %i.op, %i.qm                ; 5 uses
  %i.qt = fsub double %i.qs, %i.op                ; 2 uses
  %i.qu = fsub double %i.qs, %i.qt
  %i.qv = fsub double %i.qm, %i.qt
  %i.qw = fsub double %i.op, %i.qu
  %i.qx = fadd double %i.qv, %i.qw                ; 3 uses
  %i.qy = fsub double %i.qx, %i.qf                ; 4 uses
  %i.qz = fsub double %i.qx, %i.qy                ; 2 uses
  %i.ra = fadd double %i.qy, %i.qz
  %i.rb = fsub double %i.qz, %i.qf
  %i.rc = fsub double %i.qx, %i.ra
  %i.rd = fadd double %i.rb, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double %i.rd, ptr %i.re, align 8, !tbaa !11
  %i.rf = fadd double %i.qs, %i.qy                ; 3 uses
  %i.rg = fsub double %i.rf, %i.qs                ; 2 uses
  %i.rh = fsub double %i.rf, %i.rg
  %i.ri = fsub double %i.qy, %i.rg
  %i.rj = fsub double %i.qs, %i.rh
  %i.rk = fadd double %i.ri, %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store double %i.rk, ptr %i.rl, align 16, !tbaa !11
  %i.rm = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store double %i.rf, ptr %i.rm, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.g
  %.02674 = phi i32 [ 1, %bb.f ], [ 2, %bb.g ], [ 2, %bb.i ], [ 4, %bb.j ] ; 2 uses
  br i1 %i.kg, label %bb.l, label %bb.o

end_hunk_0
