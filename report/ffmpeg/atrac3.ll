Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3?download=true
inline.NumInlined: 47
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@atrac3_decode_frame:bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.p ], [ %i.nl, %.loopexit.i.i ] ; 13 uses
  %i.hs = or disjoint i64 %indvars.iv.i.i, 255    ; 3 uses
  %i.ht = shl nuw nsw i64 %indvars.iv125.i.i, 10
  %i.hu = add nuw i64 %i.ht, 1024                 ; 2 uses
  %scevgep166 = getelementptr i8, ptr %i.hq, i64 %i.hu
  %scevgep168 = getelementptr i8, ptr %i.hr, i64 %i.hu
  %i.hv = shl nuw nsw i64 %indvars.iv125.i.i, 10
  %i.hw = add nuw i64 %i.hv, 1024                 ; 2 uses
  %scevgep146 = getelementptr i8, ptr %i.hq, i64 %i.hw
  %scevgep148 = getelementptr i8, ptr %i.hr, i64 %i.hw
  %i.hx = shl nuw nsw i64 %indvars.iv125.i.i, 10
  %i.hy = add nuw i64 %i.hx, 1024                 ; 2 uses
  %scevgep126 = getelementptr i8, ptr %i.hq, i64 %i.hy
  %scevgep128 = getelementptr i8, ptr %i.hr, i64 %i.hy
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv125.i.i
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !45 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv125.i.i
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !45 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ia, %i.ic
  br i1 %.not.i.i, label %.loopexit90.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.id = shl nsw i32 %i.ic, 1
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr @matrix_coeffs, i64 %i.ie
  %i.ig = shl nsw i32 %i.ia, 1
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr @matrix_coeffs, i64 %i.ih
  %i.ij = load <2 x float>, ptr %i.if, align 8, !tbaa !30
  %i.ik = load <2 x float>, ptr %i.ii, align 8, !tbaa !30 ; 3 uses
  %i.il = extractelement <2 x float> %i.ik, i64 0
  %i.im = fpext nsz float %i.il to double         ; 8 uses
  %i.in = fsub nsz <2 x float> %i.ij, %i.ik       ; 2 uses
  %i.io = extractelement <2 x float> %i.in, i64 0
  %i.ip = fpext nsz float %i.io to double         ; 8 uses
  %i.iq = extractelement <2 x float> %i.ik, i64 1
  %i.ir = fpext nsz float %i.iq to double         ; 8 uses
  %i.is = extractelement <2 x float> %i.in, i64 1
  %i.it = fpext nsz float %i.is to double         ; 8 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i.i ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !30
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i.i ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !30
  %i.iy = fpext nsz float %i.iv to double         ; 2 uses
  %i.iz = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 0.000000e+00, double %i.im)
  %i.ja = fpext nsz float %i.ix to double
  %i.jb = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 0.000000e+00, double %i.ir)
  %i.jc = fmul nsz double %i.jb, %i.ja
  %i.jd = tail call nsz double @llvm.fmuladd.f64(double %i.iy, double %i.iz, double %i.jc)
  %i.je = fptrunc nsz double %i.jd to float       ; 2 uses
  store float %i.je, ptr %i.iu, align 4, !tbaa !30
  %i.jf = fpext nsz float %i.je to double
  %i.jg = fneg nsz double %i.jf
  %i.jh = tail call nsz double @llvm.fmuladd.f64(double %i.iy, double 2.000000e+00, double %i.jg)
  %i.ji = fptrunc nsz double %i.jh to float
  store float %i.ji, ptr %i.iw, align 4, !tbaa !30
  %indvars.iv.next104.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next104.i.i ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !30
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next104.i.i ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !30
  %i.jn = fpext nsz float %i.jk to double         ; 2 uses
  %i.jo = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 1.250000e-01, double %i.im)
  %i.jp = fpext nsz float %i.jm to double
  %i.jq = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 1.250000e-01, double %i.ir)
  %i.jr = fmul nsz double %i.jq, %i.jp
  %i.js = tail call nsz double @llvm.fmuladd.f64(double %i.jn, double %i.jo, double %i.jr)
  %i.jt = fptrunc nsz double %i.js to float       ; 2 uses
  store float %i.jt, ptr %i.jj, align 4, !tbaa !30
  %i.ju = fpext nsz float %i.jt to double
  %i.jv = fneg nsz double %i.ju
  %i.jw = tail call nsz double @llvm.fmuladd.f64(double %i.jn, double 2.000000e+00, double %i.jv)
  %i.jx = fptrunc nsz double %i.jw to float
  store float %i.jx, ptr %i.jl, align 4, !tbaa !30
  %indvars.iv.next104.1.i.i = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next104.1.i.i ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !30
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next104.1.i.i ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !30
  %i.kc = fpext nsz float %i.jz to double         ; 2 uses
  %i.kd = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 2.500000e-01, double %i.im)
  %i.ke = fpext nsz float %i.kb to double
  %i.kf = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 2.500000e-01, double %i.ir)
  %i.kg = fmul nsz double %i.kf, %i.ke
  %i.kh = tail call nsz double @llvm.fmuladd.f64(double %i.kc, double %i.kd, double %i.kg)
  %i.ki = fptrunc nsz double %i.kh to float       ; 2 uses
  store float %i.ki, ptr %i.jy, align 4, !tbaa !30
  %i.kj = fpext nsz float %i.ki to double
  %i.kk = fneg nsz double %i.kj
  %i.kl = tail call nsz double @llvm.fmuladd.f64(double %i.kc, double 2.000000e+00, double %i.kk)
  %i.km = fptrunc nsz double %i.kl to float
  store float %i.km, ptr %i.ka, align 4, !tbaa !30
  %indvars.iv.next104.2.i.i = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next104.2.i.i ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !30
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next104.2.i.i ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !30
  %i.kr = fpext nsz float %i.ko to double         ; 2 uses
  %i.ks = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 3.750000e-01, double %i.im)
  %i.kt = fpext nsz float %i.kq to double
  %i.ku = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 3.750000e-01, double %i.ir)
  %i.kv = fmul nsz double %i.ku, %i.kt
  %i.kw = tail call nsz double @llvm.fmuladd.f64(double %i.kr, double %i.ks, double %i.kv)
  %i.kx = fptrunc nsz double %i.kw to float       ; 2 uses
  store float %i.kx, ptr %i.kn, align 4, !tbaa !30
  %i.ky = fpext nsz float %i.kx to double
  %i.kz = fneg nsz double %i.ky
  %i.la = tail call nsz double @llvm.fmuladd.f64(double %i.kr, double 2.000000e+00, double %i.kz)
  %i.lb = fptrunc nsz double %i.la to float
  store float %i.lb, ptr %i.kp, align 4, !tbaa !30
  %indvars.iv.next104.3.i.i = or disjoint i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next104.3.i.i ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !30
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next104.3.i.i ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !30
  %i.lg = fpext nsz float %i.ld to double         ; 2 uses
  %i.lh = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 5.000000e-01, double %i.im)
  %i.li = fpext nsz float %i.lf to double
  %i.lj = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 5.000000e-01, double %i.ir)
  %i.lk = fmul nsz double %i.lj, %i.li
  %i.ll = tail call nsz double @llvm.fmuladd.f64(double %i.lg, double %i.lh, double %i.lk)
  %i.lm = fptrunc nsz double %i.ll to float       ; 2 uses
  store float %i.lm, ptr %i.lc, align 4, !tbaa !30
  %i.ln = fpext nsz float %i.lm to double
  %i.lo = fneg nsz double %i.ln
  %i.lp = tail call nsz double @llvm.fmuladd.f64(double %i.lg, double 2.000000e+00, double %i.lo)
  %i.lq = fptrunc nsz double %i.lp to float
  store float %i.lq, ptr %i.le, align 4, !tbaa !30
  %indvars.iv.next104.4.i.i = or disjoint i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next104.4.i.i ; 2 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !30
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next104.4.i.i ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !30
  %i.lv = fpext nsz float %i.ls to double         ; 2 uses
  %i.lw = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 6.250000e-01, double %i.im)
  %i.lx = fpext nsz float %i.lu to double
  %i.ly = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 6.250000e-01, double %i.ir)
  %i.lz = fmul nsz double %i.ly, %i.lx
  %i.ma = tail call nsz double @llvm.fmuladd.f64(double %i.lv, double %i.lw, double %i.lz)
  %i.mb = fptrunc nsz double %i.ma to float       ; 2 uses
  store float %i.mb, ptr %i.lr, align 4, !tbaa !30
  %i.mc = fpext nsz float %i.mb to double
  %i.md = fneg nsz double %i.mc
  %i.me = tail call nsz double @llvm.fmuladd.f64(double %i.lv, double 2.000000e+00, double %i.md)
  %i.mf = fptrunc nsz double %i.me to float
  store float %i.mf, ptr %i.lt, align 4, !tbaa !30
  %indvars.iv.next104.5.i.i = or disjoint i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next104.5.i.i ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !30
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next104.5.i.i ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !30
  %i.mk = fpext nsz float %i.mh to double         ; 2 uses
  %i.ml = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 7.500000e-01, double %i.im)
  %i.mm = fpext nsz float %i.mj to double
  %i.mn = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 7.500000e-01, double %i.ir)
  %i.mo = fmul nsz double %i.mn, %i.mm
  %i.mp = tail call nsz double @llvm.fmuladd.f64(double %i.mk, double %i.ml, double %i.mo)
  %i.mq = fptrunc nsz double %i.mp to float       ; 2 uses
  store float %i.mq, ptr %i.mg, align 4, !tbaa !30
  %i.mr = fpext nsz float %i.mq to double
  %i.ms = fneg nsz double %i.mr
  %i.mt = tail call nsz double @llvm.fmuladd.f64(double %i.mk, double 2.000000e+00, double %i.ms)
  %i.mu = fptrunc nsz double %i.mt to float
  store float %i.mu, ptr %i.mi, align 4, !tbaa !30
  %indvars.iv.next104.6.i.i = or disjoint i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next104.6.i.i ; 2 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !30
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.next104.6.i.i ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !30
  %i.mz = fpext nsz float %i.mw to double         ; 2 uses
  %i.na = tail call nsz double @llvm.fmuladd.f64(double %i.ip, double 8.750000e-01, double %i.im)
  %i.nb = fpext nsz float %i.my to double
  %i.nc = tail call nsz double @llvm.fmuladd.f64(double %i.it, double 8.750000e-01, double %i.ir)
  %i.nd = fmul nsz double %i.nc, %i.nb
  %i.ne = tail call nsz double @llvm.fmuladd.f64(double %i.mz, double %i.na, double %i.nd)
  %i.nf = fptrunc nsz double %i.ne to float       ; 2 uses
  store float %i.nf, ptr %i.mv, align 4, !tbaa !30
  %i.ng = fpext nsz float %i.nf to double
  %i.nh = fneg nsz double %i.ng
  %i.ni = tail call nsz double @llvm.fmuladd.f64(double %i.mz, double 2.000000e+00, double %i.nh)
  %i.nj = fptrunc nsz double %i.ni to float
  store float %i.nj, ptr %i.mx, align 4, !tbaa !30
  %i.nk = or disjoint i64 %indvars.iv.i.i, 8
  br label %.loopexit90.i.i

.loopexit90.i.i:                                  ; preds = %.lr.ph.i.i, %bb.q
  %.1.i.i = phi i64 [ %indvars.iv.i.i, %bb.q ], [ %i.nk, %.lr.ph.i.i ] ; 19 uses
  %i.nl = add nuw nsw i64 %indvars.iv.i.i, 256    ; 2 uses
  %i.nm = icmp samesign ult i64 %.1.i.i, %i.nl    ; 3 uses
  switch i32 %i.ic, label %bb.s [
    i32 0, label %.preheader.i.i
    i32 1, label %.preheader87.i.i
    i32 2, label %bb.r
    i32 3, label %bb.r
  ]

.preheader87.i.i:                                 ; preds = %.loopexit90.i.i
  br i1 %i.nm, label %.lr.ph95.i.i.preheader, label %.loopexit.i.i

.lr.ph95.i.i.preheader:                           ; preds = %.preheader87.i.i
  %i.nn = sub nsw i64 %indvars.iv123.i.i, %.1.i.i ; 3 uses
  %min.iters.check153 = icmp ult i64 %i.nn, 4
  br i1 %min.iters.check153, label %.lr.ph95.i.i.preheader186, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph95.i.i.preheader
  %i.no = shl nuw nsw i64 %.1.i.i, 2              ; 2 uses
  %scevgep145 = getelementptr i8, ptr %i.hq, i64 %i.no
  %scevgep147 = getelementptr i8, ptr %i.hr, i64 %i.no
  %bound0149 = icmp ult ptr %scevgep145, %scevgep148
  %bound1150 = icmp ult ptr %scevgep147, %scevgep146
  %found.conflict151 = and i1 %bound0149, %bound1150
  br i1 %found.conflict151, label %.lr.ph95.i.i.preheader186, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck144
  %n.vec155 = and i64 %i.nn, -4                   ; 3 uses
  %i.np = add i64 %.1.i.i, %n.vec155
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 2 uses
  %i.nq = add nuw i64 %.1.i.i, %index157          ; 2 uses
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.nq ; 2 uses
  %wide.load158 = load <4 x float>, ptr %i.nr, align 4, !tbaa !30, !alias.scope !80, !noalias !83
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.nq ; 2 uses
  %wide.load159 = load <4 x float>, ptr %i.ns, align 4, !tbaa !30, !alias.scope !83 ; 2 uses
  %i.nt = fadd nsz <4 x float> %wide.load158, %wide.load159
  %i.nu = fmul nsz <4 x float> %i.nt, splat (float 2.000000e+00)
  store <4 x float> %i.nu, ptr %i.nr, align 4, !tbaa !30, !alias.scope !80, !noalias !83
  %i.nv = fmul nsz <4 x float> %wide.load159, splat (float -2.000000e+00)
  store <4 x float> %i.nv, ptr %i.ns, align 4, !tbaa !30, !alias.scope !83
  %index.next160 = add nuw i64 %index157, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.nw, label %middle.block161, label %vector.body156, !llvm.loop !85

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %i.nn, %n.vec155
  br i1 %cmp.n162, label %.loopexit.i.i, label %.lr.ph95.i.i.preheader186

.lr.ph95.i.i.preheader186:                        ; preds = %vector.memcheck144, %.lr.ph95.i.i.preheader, %middle.block161
  %indvars.iv113.i.i.ph = phi i64 [ %.1.i.i, %vector.memcheck144 ], [ %.1.i.i, %.lr.ph95.i.i.preheader ], [ %i.np, %middle.block161 ] ; 6 uses
  %xtraiter213 = and i64 %indvars.iv113.i.i.ph, 1
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %.lr.ph95.i.i.prol.loopexit, label %.lr.ph95.i.i.prol

.lr.ph95.i.i.prol:                                ; preds = %.lr.ph95.i.i.preheader186
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv113.i.i.ph ; 2 uses
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !30
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv113.i.i.ph ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !30 ; 2 uses
  %i.ob = fadd nsz float %i.ny, %i.oa
  %i.oc = fmul nsz float %i.ob, 2.000000e+00
  store float %i.oc, ptr %i.nx, align 4, !tbaa !30
  %i.od = fmul nsz float %i.oa, -2.000000e+00
  store float %i.od, ptr %i.nz, align 4, !tbaa !30
  %indvars.iv.next114.i.i.prol = add nuw nsw i64 %indvars.iv113.i.i.ph, 1
  br label %.lr.ph95.i.i.prol.loopexit

.lr.ph95.i.i.prol.loopexit:                       ; preds = %.lr.ph95.i.i.prol, %.lr.ph95.i.i.preheader186
  %indvars.iv113.i.i.unr = phi i64 [ %indvars.iv113.i.i.ph, %.lr.ph95.i.i.preheader186 ], [ %indvars.iv.next114.i.i.prol, %.lr.ph95.i.i.prol ]
  %i.oe = icmp eq i64 %i.hs, %indvars.iv113.i.i.ph
  br i1 %i.oe, label %.loopexit.i.i, label %.lr.ph95.i.i

.preheader.i.i:                                   ; preds = %.loopexit90.i.i
  br i1 %i.nm, label %.lr.ph97.i.i.preheader, label %.loopexit.i.i

.lr.ph97.i.i.preheader:                           ; preds = %.preheader.i.i
  %i.of = sub nsw i64 %indvars.iv123.i.i, %.1.i.i ; 3 uses
  %min.iters.check133 = icmp ult i64 %i.of, 4
  br i1 %min.iters.check133, label %.lr.ph97.i.i.preheader185, label %vector.memcheck124

vector.memcheck124:                               ; preds = %.lr.ph97.i.i.preheader
  %i.og = shl nuw nsw i64 %.1.i.i, 2              ; 2 uses
  %scevgep125 = getelementptr i8, ptr %i.hq, i64 %i.og
  %scevgep127 = getelementptr i8, ptr %i.hr, i64 %i.og
  %bound0129 = icmp ult ptr %scevgep125, %scevgep128
  %bound1130 = icmp ult ptr %scevgep127, %scevgep126
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph97.i.i.preheader185, label %vector.ph134

vector.ph134:                                     ; preds = %vector.memcheck124
  %n.vec135 = and i64 %i.of, -4                   ; 3 uses
  %i.oh = add i64 %.1.i.i, %n.vec135
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next140, %vector.body136 ] ; 2 uses
  %i.oi = add nuw i64 %.1.i.i, %index137          ; 2 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.oi ; 2 uses
  %wide.load138 = load <4 x float>, ptr %i.oj, align 4, !tbaa !30, !alias.scope !86, !noalias !89
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.oi ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.ok, align 4, !tbaa !30, !alias.scope !89 ; 2 uses
  %i.ol = fmul nsz <4 x float> %wide.load139, splat (float 2.000000e+00)
  store <4 x float> %i.ol, ptr %i.oj, align 4, !tbaa !30, !alias.scope !86, !noalias !89
  %i.om = fsub nsz <4 x float> %wide.load138, %wide.load139
  %i.on = fmul nsz <4 x float> %i.om, splat (float 2.000000e+00)
  store <4 x float> %i.on, ptr %i.ok, align 4, !tbaa !30, !alias.scope !89
  %index.next140 = add nuw i64 %index137, 4       ; 2 uses
  %i.oo = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.oo, label %middle.block141, label %vector.body136, !llvm.loop !91

middle.block141:                                  ; preds = %vector.body136
  %cmp.n142 = icmp eq i64 %i.of, %n.vec135
  br i1 %cmp.n142, label %.loopexit.i.i, label %.lr.ph97.i.i.preheader185

.lr.ph97.i.i.preheader185:                        ; preds = %vector.memcheck124, %.lr.ph97.i.i.preheader, %middle.block141
  %indvars.iv118.i.i.ph = phi i64 [ %.1.i.i, %vector.memcheck124 ], [ %.1.i.i, %.lr.ph97.i.i.preheader ], [ %i.oh, %middle.block141 ] ; 6 uses
  %xtraiter216 = and i64 %indvars.iv118.i.i.ph, 1
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.lr.ph97.i.i.prol.loopexit, label %.lr.ph97.i.i.prol

.lr.ph97.i.i.prol:                                ; preds = %.lr.ph97.i.i.preheader185
  %i.op = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv118.i.i.ph ; 2 uses
  %i.oq = load float, ptr %i.op, align 4, !tbaa !30
  %i.or = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv118.i.i.ph ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !30 ; 2 uses
  %i.ot = fmul nsz float %i.os, 2.000000e+00
  store float %i.ot, ptr %i.op, align 4, !tbaa !30
  %i.ou = fsub nsz float %i.oq, %i.os
  %i.ov = fmul nsz float %i.ou, 2.000000e+00
  store float %i.ov, ptr %i.or, align 4, !tbaa !30
  %indvars.iv.next119.i.i.prol = add nuw nsw i64 %indvars.iv118.i.i.ph, 1
  br label %.lr.ph97.i.i.prol.loopexit

.lr.ph97.i.i.prol.loopexit:                       ; preds = %.lr.ph97.i.i.prol, %.lr.ph97.i.i.preheader185
  %indvars.iv118.i.i.unr = phi i64 [ %indvars.iv118.i.i.ph, %.lr.ph97.i.i.preheader185 ], [ %indvars.iv.next119.i.i.prol, %.lr.ph97.i.i.prol ]
  %i.ow = icmp eq i64 %i.hs, %indvars.iv118.i.i.ph
  br i1 %i.ow, label %.loopexit.i.i, label %.lr.ph97.i.i

.lr.ph97.i.i:                                     ; preds = %.lr.ph97.i.i.prol.loopexit, %.lr.ph97.i.i
  %indvars.iv118.i.i = phi i64 [ %indvars.iv.next119.i.i.1, %.lr.ph97.i.i ], [ %indvars.iv118.i.i.unr, %.lr.ph97.i.i.prol.loopexit ] ; 4 uses
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv118.i.i ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !30
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv118.i.i ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !30 ; 2 uses
  %i.pb = fmul nsz float %i.pa, 2.000000e+00
  store float %i.pb, ptr %i.ox, align 4, !tbaa !30
  %i.pc = fsub nsz float %i.oy, %i.pa
  %i.pd = fmul nsz float %i.pc, 2.000000e+00
  store float %i.pd, ptr %i.oz, align 4, !tbaa !30
  %indvars.iv.next119.i.i = add nuw nsw i64 %indvars.iv118.i.i, 1 ; 2 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv.next119.i.i ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !30
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv.next119.i.i ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !30 ; 2 uses
  %i.pi = fmul nsz float %i.ph, 2.000000e+00
  store float %i.pi, ptr %i.pe, align 4, !tbaa !30
  %i.pj = fsub nsz float %i.pf, %i.ph
  %i.pk = fmul nsz float %i.pj, 2.000000e+00
  store float %i.pk, ptr %i.pg, align 4, !tbaa !30
  %indvars.iv.next119.i.i.1 = add nuw nsw i64 %indvars.iv118.i.i, 2 ; 2 uses
  %exitcond122.not.i.i.1 = icmp eq i64 %indvars.iv.next119.i.i.1, %indvars.iv123.i.i
  br i1 %exitcond122.not.i.i.1, label %.loopexit.i.i, label %.lr.ph97.i.i, !llvm.loop !92

.lr.ph95.i.i:                                     ; preds = %.lr.ph95.i.i.prol.loopexit, %.lr.ph95.i.i
  %indvars.iv113.i.i = phi i64 [ %indvars.iv.next114.i.i.1, %.lr.ph95.i.i ], [ %indvars.iv113.i.i.unr, %.lr.ph95.i.i.prol.loopexit ] ; 4 uses
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv113.i.i ; 2 uses
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !30
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv113.i.i ; 2 uses
  %i.po = load float, ptr %i.pn, align 4, !tbaa !30 ; 2 uses
  %i.pp = fadd nsz float %i.pm, %i.po
  %i.pq = fmul nsz float %i.pp, 2.000000e+00
  store float %i.pq, ptr %i.pl, align 4, !tbaa !30
  %i.pr = fmul nsz float %i.po, -2.000000e+00
  store float %i.pr, ptr %i.pn, align 4, !tbaa !30
  %indvars.iv.next114.i.i = add nuw nsw i64 %indvars.iv113.i.i, 1 ; 2 uses
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv.next114.i.i ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !30
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv.next114.i.i ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !30 ; 2 uses
  %i.pw = fadd nsz float %i.pt, %i.pv
  %i.px = fmul nsz float %i.pw, 2.000000e+00
  store float %i.px, ptr %i.ps, align 4, !tbaa !30
  %i.py = fmul nsz float %i.pv, -2.000000e+00
  store float %i.py, ptr %i.pu, align 4, !tbaa !30
  %indvars.iv.next114.i.i.1 = add nuw nsw i64 %indvars.iv113.i.i, 2 ; 2 uses
  %exitcond117.not.i.i.1 = icmp eq i64 %indvars.iv.next114.i.i.1, %indvars.iv123.i.i
  br i1 %exitcond117.not.i.i.1, label %.loopexit.i.i, label %.lr.ph95.i.i, !llvm.loop !93

bb.r:                                             ; preds = %.loopexit90.i.i, %.loopexit90.i.i
  br i1 %i.nm, label %.lr.ph93.i.i.preheader, label %.loopexit.i.i

.lr.ph93.i.i.preheader:                           ; preds = %bb.r
  %i.pz = sub nsw i64 %indvars.iv123.i.i, %.1.i.i ; 3 uses
  %min.iters.check173 = icmp ult i64 %i.pz, 4
  br i1 %min.iters.check173, label %.lr.ph93.i.i.preheader188, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.lr.ph93.i.i.preheader
  %i.qa = shl nuw nsw i64 %.1.i.i, 2              ; 2 uses
  %scevgep165 = getelementptr i8, ptr %i.hq, i64 %i.qa
  %scevgep167 = getelementptr i8, ptr %i.hr, i64 %i.qa
  %bound0169 = icmp ult ptr %scevgep165, %scevgep168
  %bound1170 = icmp ult ptr %scevgep167, %scevgep166
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph93.i.i.preheader188, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck164
  %n.vec175 = and i64 %i.pz, -4                   ; 3 uses
  %i.qb = add i64 %.1.i.i, %n.vec175
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next180, %vector.body176 ] ; 2 uses
  %i.qc = add nuw i64 %.1.i.i, %index177          ; 2 uses
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.qc ; 2 uses
  %wide.load178 = load <4 x float>, ptr %i.qd, align 4, !tbaa !30, !alias.scope !94, !noalias !97 ; 2 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.qc ; 2 uses
  %wide.load179 = load <4 x float>, ptr %i.qe, align 4, !tbaa !30, !alias.scope !97 ; 2 uses
  %i.qf = fadd nsz <4 x float> %wide.load178, %wide.load179
  store <4 x float> %i.qf, ptr %i.qd, align 4, !tbaa !30, !alias.scope !94, !noalias !97
  %i.qg = fsub nsz <4 x float> %wide.load178, %wide.load179
  store <4 x float> %i.qg, ptr %i.qe, align 4, !tbaa !30, !alias.scope !97
  %index.next180 = add nuw i64 %index177, 4       ; 2 uses
  %i.qh = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.qh, label %middle.block181, label %vector.body176, !llvm.loop !99

middle.block181:                                  ; preds = %vector.body176
  %cmp.n182 = icmp eq i64 %i.pz, %n.vec175
  br i1 %cmp.n182, label %.loopexit.i.i, label %.lr.ph93.i.i.preheader188

.lr.ph93.i.i.preheader188:                        ; preds = %vector.memcheck164, %.lr.ph93.i.i.preheader, %middle.block181
  %indvars.iv108.i.i.ph = phi i64 [ %.1.i.i, %vector.memcheck164 ], [ %.1.i.i, %.lr.ph93.i.i.preheader ], [ %i.qb, %middle.block181 ] ; 6 uses
  %xtraiter210 = and i64 %indvars.iv108.i.i.ph, 1
  %lcmp.mod211.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %.lr.ph93.i.i.preheader188
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv108.i.i.ph ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !30 ; 2 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv108.i.i.ph ; 2 uses
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !30 ; 2 uses
  %i.qm = fadd nsz float %i.qj, %i.ql
  store float %i.qm, ptr %i.qi, align 4, !tbaa !30
  %i.qn = fsub nsz float %i.qj, %i.ql
  store float %i.qn, ptr %i.qk, align 4, !tbaa !30
  %indvars.iv.next109.i.i.prol = add nuw nsw i64 %indvars.iv108.i.i.ph, 1
  br label %.lr.ph93.i.i.prol.loopexit

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %.lr.ph93.i.i.preheader188
  %indvars.iv108.i.i.unr = phi i64 [ %indvars.iv108.i.i.ph, %.lr.ph93.i.i.preheader188 ], [ %indvars.iv.next109.i.i.prol, %.lr.ph93.i.i.prol ]
  %i.qo = icmp eq i64 %i.hs, %indvars.iv108.i.i.ph
  br i1 %i.qo, label %.loopexit.i.i, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i
  %indvars.iv108.i.i = phi i64 [ %indvars.iv.next109.i.i.1, %.lr.ph93.i.i ], [ %indvars.iv108.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 4 uses
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv108.i.i ; 2 uses
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !30 ; 2 uses
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv108.i.i ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !30 ; 2 uses
  %i.qt = fadd nsz float %i.qq, %i.qs
  store float %i.qt, ptr %i.qp, align 4, !tbaa !30
  %i.qu = fsub nsz float %i.qq, %i.qs
  store float %i.qu, ptr %i.qr, align 4, !tbaa !30
  %indvars.iv.next109.i.i = add nuw nsw i64 %indvars.iv108.i.i, 1 ; 2 uses
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %indvars.iv.next109.i.i ; 2 uses
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !30 ; 2 uses
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv.next109.i.i ; 2 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !30 ; 2 uses
  %i.qz = fadd nsz float %i.qw, %i.qy
  store float %i.qz, ptr %i.qv, align 4, !tbaa !30
  %i.ra = fsub nsz float %i.qw, %i.qy
  store float %i.ra, ptr %i.qx, align 4, !tbaa !30
  %indvars.iv.next109.i.i.1 = add nuw nsw i64 %indvars.iv108.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next109.i.i.1, %indvars.iv123.i.i
  br i1 %exitcond.not.i.i.1, label %.loopexit.i.i, label %.lr.ph93.i.i, !llvm.loop !100

bb.s:                                             ; preds = %.loopexit90.i.i
  unreachable

.loopexit.i.i:                                    ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i, %.lr.ph95.i.i.prol.loopexit, %.lr.ph95.i.i, %.lr.ph97.i.i.prol.loopexit, %.lr.ph97.i.i, %middle.block181, %middle.block161, %middle.block141, %bb.r, %.preheader.i.i, %.preheader87.i.i
  %indvars.iv.next126.i.i = add nuw nsw i64 %indvars.iv125.i.i, 1 ; 2 uses
  %indvars.iv.next124.i.i = add nuw nsw i64 %indvars.iv123.i.i, 256
  %exitcond132.not.i.i = icmp eq i64 %indvars.iv.next126.i.i, 4
  br i1 %exitcond132.not.i.i, label %reverse_matrixing.exit.i, label %bb.q, !llvm.loop !101

reverse_matrixing.exit.i:                         ; preds = %.loopexit.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !45 ; 2 uses
  %.not.i179.i = icmp eq i32 %i.rc, 7
  br i1 %.not.i179.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %reverse_matrixing.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !45
  %.not28.i.i = icmp eq i32 %i.re, 7
  br i1 %.not28.i.i, label %channel_weighting.exit.i, label %get_channel_weights.exit.i.i

bb.u:                                             ; preds = %reverse_matrixing.exit.i
  %i.rf = load i32, ptr %i.fo, align 8, !tbaa !45
  %i.rg = and i32 %i.rc, 7
  %i.rh = uitofp nneg i32 %i.rg to float
  %i.ri = fdiv nsz float %i.rh, 7.000000e+00      ; 4 uses
  %i.rj = fneg nsz float %i.ri
  %i.rk = tail call nsz float @llvm.fmuladd.f32(float %i.rj, float %i.ri, float 2.000000e+00)
  %i.rl = tail call nsz float @llvm.sqrt.f32(float %i.rk) ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.rf, 0
  br i1 %.not.i.i.i, label %get_channel_weights.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  br label %get_channel_weights.exit.i.i

get_channel_weights.exit.i.i:                     ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.6.0.i.i = phi nsz float [ %i.ri, %bb.v ], [ %i.rl, %bb.u ], [ 1.000000e+00, %bb.t ]
  %.sroa.0.0.i.i = phi nsz float [ %i.rl, %bb.v ], [ %i.ri, %bb.u ], [ 1.000000e+00, %bb.t ]
  %i.rm = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !45 ; 2 uses
  %i.ro = icmp eq i32 %i.rn, 7
  br i1 %i.ro, label %get_channel_weights.exit30.i.i, label %bb.w

bb.w:                                             ; preds = %get_channel_weights.exit.i.i
  %i.rp = load i32, ptr %i.fp, align 8, !tbaa !45
  %i.rq = and i32 %i.rn, 7
  %i.rr = uitofp nneg i32 %i.rq to float
  %i.rs = fdiv nsz float %i.rr, 7.000000e+00      ; 4 uses
  %i.rt = fneg nsz float %i.rs
  %i.ru = tail call nsz float @llvm.fmuladd.f32(float %i.rt, float %i.rs, float 2.000000e+00)
  %i.rv = tail call nsz float @llvm.sqrt.f32(float %i.ru) ; 2 uses
  %.not.i29.i.i = icmp eq i32 %i.rp, 0
  br i1 %.not.i29.i.i, label %get_channel_weights.exit30.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  br label %get_channel_weights.exit30.i.i

get_channel_weights.exit30.i.i:                   ; preds = %bb.x, %bb.w, %get_channel_weights.exit.i.i
  %.sroa.15.0.i.i = phi nsz float [ %i.rs, %bb.x ], [ %i.rv, %bb.w ], [ 1.000000e+00, %get_channel_weights.exit.i.i ] ; 4 uses
  %.sroa.10.0.i.i = phi nsz float [ %i.rv, %bb.x ], [ %i.rs, %bb.w ], [ 1.000000e+00, %get_channel_weights.exit.i.i ] ; 4 uses
  %i.rw = insertelement <2 x float> poison, float %.sroa.0.0.i.i, i64 0
  %i.rx = insertelement <2 x float> %i.rw, float %.sroa.10.0.i.i, i64 1 ; 2 uses
  %i.ry = fpext <2 x float> %i.rx to <2 x double> ; 8 uses
  %i.rz = insertelement <2 x float> poison, float %.sroa.6.0.i.i, i64 0
  %i.sa = insertelement <2 x float> %i.rz, float %.sroa.15.0.i.i, i64 1
  %i.sb = fsub nsz <2 x float> %i.sa, %i.rx
  %i.sc = fpext <2 x float> %i.sb to <2 x double> ; 8 uses
  %i.sd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> zeroinitializer, <2 x double> %i.ry) ; 2 uses
  %i.se = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> splat (double 1.250000e-01), <2 x double> %i.ry) ; 2 uses
  %i.sf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> splat (double 2.500000e-01), <2 x double> %i.ry) ; 2 uses
  %i.sg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> splat (double 3.750000e-01), <2 x double> %i.ry) ; 2 uses
  %i.sh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ry) ; 2 uses
  %i.si = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> splat (double 6.250000e-01), <2 x double> %i.ry) ; 2 uses
  %i.sj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> splat (double 7.500000e-01), <2 x double> %i.ry) ; 2 uses
  %i.sk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> splat (double 8.750000e-01), <2 x double> %i.ry) ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hq, i64 1056
  %scevgep109 = getelementptr i8, ptr %i.hq, i64 4096
  %scevgep110 = getelementptr i8, ptr %i.hr, i64 1056
  %scevgep111 = getelementptr i8, ptr %i.hr, i64 4096
  %i.sl = extractelement <2 x double> %i.sd, i64 0
  %i.sm = extractelement <2 x double> %i.sd, i64 1
  %i.sn = extractelement <2 x double> %i.se, i64 0
  %i.so = extractelement <2 x double> %i.se, i64 1
  %i.sp = extractelement <2 x double> %i.sf, i64 0
  %i.sq = extractelement <2 x double> %i.sf, i64 1
  %i.sr = extractelement <2 x double> %i.sg, i64 0
  %i.ss = extractelement <2 x double> %i.sg, i64 1
  %i.st = extractelement <2 x double> %i.sh, i64 0
  %i.su = extractelement <2 x double> %i.sh, i64 1
  %i.sv = extractelement <2 x double> %i.si, i64 0
  %i.sw = extractelement <2 x double> %i.si, i64 1
  %i.sx = extractelement <2 x double> %i.sj, i64 0
  %i.sy = extractelement <2 x double> %i.sj, i64 1
  %i.sz = extractelement <2 x double> %i.sk, i64 0
  %i.ta = extractelement <2 x double> %i.sk, i64 1
  %bound0 = icmp ult ptr %scevgep, %scevgep111
  %bound1 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %.sroa.10.0.i.i, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %.sroa.15.0.i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph37.preheader.i.i

.loopexit.i182.i:                                 ; preds = %vector.body118, %.lr.ph37.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i180.i, 256
  %i.tb = icmp samesign ult i64 %indvars.iv.i180.i, 768
  %indvars.iv.next46.i.i = add nuw nsw i64 %indvars.iv45.i.i, 256
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 256
  br i1 %i.tb, label %.lr.ph37.preheader.i.i, label %channel_weighting.exit.i, !llvm.loop !102

.lr.ph37.preheader.i.i:                           ; preds = %.loopexit.i182.i, %get_channel_weights.exit30.i.i
  %indvars.iv52.i.i = phi i64 [ 512, %get_channel_weights.exit30.i.i ], [ %indvars.iv.next53.i.i, %.loopexit.i182.i ] ; 2 uses
  %indvars.iv45.i.i = phi i64 [ 264, %get_channel_weights.exit30.i.i ], [ %indvars.iv.next46.i.i, %.loopexit.i182.i ] ; 4 uses
  %indvars.iv.i180.i = phi i64 [ 256, %get_channel_weights.exit30.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i182.i ] ; 11 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i180.i ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !30
  %i.te = fpext nsz float %i.td to double
end_hunk_0
