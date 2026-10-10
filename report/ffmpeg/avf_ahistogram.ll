Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_ahistogram?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@activate:bb.a
  %i.hy = load i32, ptr %i.en, align 8, !tbaa !94
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !75 ; 2 uses
  %.not406.i = icmp eq ptr %i.ib, null
  br i1 %.not406.i, label %.loopexit432.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge447.i
  %i.ic = load i32, ptr %i.ey, align 8, !tbaa !97
  %i.id = icmp sgt i32 %i.ic, -1
  br i1 %i.id, label %bb.r, label %.loopexit432.i

bb.r:                                             ; preds = %bb.q
  %i.ie = load ptr, ptr %i.ez, align 8, !tbaa !46
  %i.if = load i32, ptr %i.ci, align 4, !tbaa !40
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = select i1 %i.ig, i32 0, i32 %i.hl
  %i.ii = mul nsw i32 %i.ih, %i.ae
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !95
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %indvars.iv512.i
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !87
  br i1 %i.ev, label %.lr.ph450.i, label %.loopexit432.i

.lr.ph450.i:                                      ; preds = %bb.r, %.lr.ph450.i
  %indvars.iv507.i = phi i64 [ %indvars.iv.next508.i, %.lr.ph450.i ], [ 0, %bb.r ] ; 2 uses
  %i.ip = load ptr, ptr %i.ew, align 8, !tbaa !45
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv507.i
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !88
  %i.is = call i32 %i.ip(float noundef %i.ir, i32 noundef %i.ae) #11, !inline_history !56
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.it ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !96
  %i.iw = add i64 %i.iv, 1
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !96
  %indvars.iv.next508.i = add nuw nsw i64 %indvars.iv507.i, 1 ; 2 uses
  %exitcond511.not.i = icmp eq i64 %indvars.iv.next508.i, %wide.trip.count505.i
  br i1 %exitcond511.not.i, label %.loopexit432.i, label %.lr.ph450.i, !llvm.loop !61

.loopexit432.i:                                   ; preds = %.lr.ph450.i, %bb.r, %bb.q, %._crit_edge447.i
  %indvars.iv.next513.i = add nuw nsw i64 %indvars.iv512.i, 1 ; 2 uses
  %i.ix = load i32, ptr %i.eq, align 4, !tbaa !43
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next513.i, %i.iy
  br i1 %i.iz, label %bb.p, label %.loopexit431.i, !llvm.loop !62

.loopexit431.i:                                   ; preds = %.loopexit432.i, %.loopexit429.i, %.preheader430.i, %.preheader433.i, %._crit_edge.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.jb = load i32, ptr %i.el, align 4, !tbaa !93
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.jc
  call void @av_frame_free(ptr noundef nonnull %i.jd) #11
  %i.je = load i32, ptr %i.el, align 4, !tbaa !93 ; 3 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.jf
  store ptr %i.r, ptr %i.jg, align 8, !tbaa !75
  %i.jh = add nsw i32 %i.je, 1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !97
  %.not408.i = icmp slt i32 %i.je, %i.jj
  %spec.store.select413.i = select i1 %.not408.i, i32 %i.jh, i32 0
  store i32 %spec.store.select413.i, ptr %i.el, align 4, !tbaa !93
  %i.jk = getelementptr inbounds nuw i8, ptr %i.y, i64 84 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !47 ; 3 uses
  %i.jm = mul nsw i32 %i.jl, %i.ae                ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph465.i, label %.preheader428.i

.lr.ph465.i:                                      ; preds = %.loopexit431.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !44 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !46 ; 2 uses
  %wide.trip.count531.i = zext nneg i32 %i.jm to i64 ; 3 uses
  %min.iters.check61 = icmp ult i32 %i.jm, 4
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph465.i
  %n.vec63 = and i64 %wide.trip.count531.i, 2147483644 ; 3 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ splat (i64 1), %vector.ph62 ], [ %i.jy, %vector.body64 ]
  %vec.phi66 = phi <2 x i64> [ splat (i64 1), %vector.ph62 ], [ %i.jz, %vector.body64 ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %index65 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %wide.load = load <2 x i64>, ptr %i.js, align 8, !tbaa !96
  %wide.load67 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !96
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %index65 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load68 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !96
  %wide.load69 = load <2 x i64>, ptr %i.jv, align 8, !tbaa !96
  %i.jw = sub <2 x i64> %wide.load, %wide.load68
  %i.jx = sub <2 x i64> %wide.load67, %wide.load69
  %i.jy = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.jw, <2 x i64> %vec.phi) ; 2 uses
  %i.jz = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.jx, <2 x i64> %vec.phi66) ; 2 uses
  %index.next70 = add nuw i64 %index65, 4         ; 2 uses
  %i.ka = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.ka, label %middle.block71, label %vector.body64, !llvm.loop !63

middle.block71:                                   ; preds = %vector.body64
  %rdx.minmax = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.jy, <2 x i64> %i.jz)
  %i.kb = call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n72 = icmp eq i64 %n.vec63, %wide.trip.count531.i
  br i1 %cmp.n72, label %.preheader428.i, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %.lr.ph465.i, %middle.block71
  %indvars.iv528.i.ph = phi i64 [ 0, %.lr.ph465.i ], [ %n.vec63, %middle.block71 ]
  %.0381463.i.ph = phi i64 [ 1, %.lr.ph465.i ], [ %i.kb, %middle.block71 ]
  br label %scalar.ph60

.preheader428.i:                                  ; preds = %scalar.ph60, %middle.block71, %.loopexit431.i
  %.0381.lcssa.i = phi i64 [ 1, %.loopexit431.i ], [ %i.kb, %middle.block71 ], [ %..0381.i, %scalar.ph60 ] ; 2 uses
  %i.kc = icmp sgt i32 %i.jl, 0
  br i1 %i.kc, label %.lr.ph487.i, label %._crit_edge488.i

.lr.ph487.i:                                      ; preds = %.preheader428.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ke = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.kg = add i64 %.0381.lcssa.i, 1
  %i.kh = uitofp nsz i64 %i.kg to double
  %i.ki = call nsz double @llvm.log2.f64(double %i.kh) ; 2 uses
  %i.kj = uitofp nsz i64 %.0381.lcssa.i to double ; 3 uses
  %i.kk = call nsz double @llvm.sqrt.f64(double %i.kj)
  %i.kl = add nsw i32 %i.ac, -1
  %i.km = sitofp nsz i32 %i.kl to double
  %i.kn = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ko = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.kp = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 4 uses
  %i.kq = sext i32 %i.ae to i64
  %wide.trip.count536.i = zext nneg i32 %i.ae to i64
  br label %bb.s

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %indvars.iv528.i = phi i64 [ %indvars.iv.next529.i, %scalar.ph60 ], [ %indvars.iv528.i.ph, %scalar.ph60.preheader ] ; 3 uses
  %.0381463.i = phi i64 [ %..0381.i, %scalar.ph60 ], [ %.0381463.i.ph, %scalar.ph60.preheader ]
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv528.i
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !96
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv528.i
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !96
  %i.kv = sub i64 %i.ks, %i.ku
  %..0381.i = call i64 @llvm.umax.i64(i64 %i.kv, i64 %.0381463.i) ; 2 uses
  %indvars.iv.next529.i = add nuw nsw i64 %indvars.iv528.i, 1 ; 2 uses
  %exitcond532.not.i = icmp eq i64 %indvars.iv.next529.i, %wide.trip.count531.i
  br i1 %exitcond532.not.i, label %.preheader428.i, label %scalar.ph60, !llvm.loop !64

bb.s:                                             ; preds = %._crit_edge485.i, %.lr.ph487.i
  %i.kw = phi i32 [ %i.jl, %.lr.ph487.i ], [ %i.sf, %._crit_edge485.i ] ; 3 uses
  %indvars.iv538.i = phi i64 [ 0, %.lr.ph487.i ], [ %indvars.iv.next539.i, %._crit_edge485.i ] ; 3 uses
  %i.kx = load ptr, ptr %i.kd, align 8, !tbaa !46
  %i.ky = mul nsw i64 %indvars.iv538.i, %i.kq     ; 2 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.ky
  %i.la = load ptr, ptr %i.ke, align 8, !tbaa !44
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.ky
  %i.lc = load i32, ptr %i.ci, align 4, !tbaa !40
  %i.ld = icmp eq i32 %i.lc, 1
  br i1 %i.ld, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.le = sitofp nsz i32 %i.kw to float
  %i.lf = fdiv nsz float 2.550000e+02, %i.le      ; 3 uses
  %i.lg = fpext nnan nsz float %i.lf to double
  %i.lh = fmul nnan nsz double %i.lg, f0x400921FB54442D18
  %i.li = fptrunc nnan nsz double %i.lh to float
  %i.lj = trunc nuw nsw i64 %indvars.iv538.i to i32
  %i.lk = uitofp nsz nneg i32 %i.lj to double
  %i.ll = fmul nnan nsz double %i.lk, f0x401921FB54442D18
  %i.lm = sitofp nsz i32 %i.kw to double
  %i.ln = fdiv nsz double %i.ll, %i.lm
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.ln) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.lo = fpext nnan nsz float %i.li to double
  %i.lp = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %cos.i, i64 1
  %i.lr = fmul nsz <2 x double> %i.lq, splat (double 5.000000e-01)
  %i.ls = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lu = fmul nsz <2 x double> %i.lr, %i.lt
  %i.lv = fptrunc <2 x double> %i.lu to <2 x float> ; 2 uses
  %i.lw = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> %i.lv, <2 x i32> <i32 0, i32 2>
  %i.ly = fptosi float %i.lf to i32
  %i.lz = call i32 @llvm.smax.i32(i32 %i.ly, i32 0)
  %i.ma = call i32 @llvm.umin.i32(i32 %i.lz, i32 255)
  %i.mb = trunc nuw i32 %i.ma to i8
  %i.mc = fpext <2 x float> %i.lx to <2 x double>
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0380.i = phi i8 [ %i.mb, %bb.t ], [ -1, %bb.s ]
  %i.md = phi <2 x double> [ %i.mc, %bb.t ], [ undef, %bb.s ]
  %i.me = phi <2 x float> [ %i.lv, %bb.t ], [ undef, %bb.s ] ; 2 uses
  br i1 %i.cl, label %.lr.ph484.i, label %._crit_edge485.i

.lr.ph484.i:                                      ; preds = %bb.u
  %i.mf = fadd nsz <2 x float> %i.me, splat (float 1.280000e+02)
  %i.mg = fptosi <2 x float> %i.mf to <2 x i32>
  %i.mh = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mg, <2 x i32> zeroinitializer)
  %1 = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mh, <2 x i32> splat (i32 255))
  %2 = trunc nuw <2 x i32> %1 to <2 x i8>         ; 2 uses
  %3 = extractelement <2 x float> %i.me, i64 1
  %4 = fpext nsz float %3 to double
  %5 = extractelement <2 x i8> %2, i64 0
  %6 = extractelement <2 x i8> %2, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.aj, %.lr.ph484.i
  %indvars.iv533.i = phi i64 [ 0, %.lr.ph484.i ], [ %indvars.iv.next534.i, %bb.aj ] ; 12 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv533.i
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !96
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv533.i
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !96
  %i.mm = sub i64 %i.mj, %i.ml
  %i.mn = uitofp nsz i64 %i.mm to double          ; 5 uses
  %i.mo = load i32, ptr %i.kf, align 4, !tbaa !98
  switch i32 %i.mo, label %bb.ab [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.mp = fdiv nsz double %i.mn, %i.kj
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.mq = call nsz double @llvm.sqrt.f64(double %i.mn)
  %i.mr = fdiv nsz double %i.mq, %i.kk
  br label %bb.ac

bb.y:                                             ; preds = %bb.v
  %i.ms = call nsz double @cbrt(double noundef %i.mn) #12
  %i.mt = call nsz double @cbrt(double noundef %i.kj) #12
  %i.mu = fdiv nsz double %i.ms, %i.mt
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.mv = fadd nsz double %i.mn, 1.000000e+00
  %i.mw = call nsz double @llvm.log2.f64(double %i.mv)
  %i.mx = fdiv nsz double %i.mw, %i.ki
  br label %bb.ac

bb.aa:                                            ; preds = %bb.v
  %i.my = fadd nsz double %i.mn, 1.000000e+00
  %i.mz = call nsz double @llvm.log2.f64(double %i.my)
  %i.na = fdiv nsz double %i.mz, %i.ki
  %i.nb = fsub nsz double 1.000000e+00, %i.na     ; 2 uses
  %i.nc = fcmp nsz oeq double %i.nb, 1.000000e+00
  %spec.store.select.i = select i1 %i.nc, double 0.000000e+00, double %i.nb
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 347) #11
  call void @abort() #13
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.0377.i = phi nsz double [ %i.mp, %bb.w ], [ %i.mr, %bb.x ], [ %i.mu, %bb.y ], [ %i.mx, %bb.z ], [ %spec.store.select.i, %bb.aa ] ; 4 uses
  %i.nd = fmul nsz double %.0377.i, %i.km
  %i.ne = fptosi double %i.nd to i32              ; 4 uses
  %i.nf = load i32, ptr %i.ci, align 4, !tbaa !40
  switch i32 %i.nf, label %bb.aj [
    i32 0, label %bb.ad
    i32 1, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ng = icmp sgt i32 %i.ne, 0
  br i1 %i.ng, label %.lr.ph480.i, label %._crit_edge481.i

.lr.ph480.i:                                      ; preds = %bb.ad
  %i.nh = sub nsw i32 %i.ac, %i.ne                ; 3 uses
  %i.ni = load ptr, ptr %i.af, align 8, !tbaa !82 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !87
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 76
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !39 ; 2 uses
  %i.nn = mul nsw i32 %i.nm, %i.nh
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds i8, ptr %i.nk, i64 %i.no
  %i.nq = load ptr, ptr %i.ni, align 8, !tbaa !87
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 64
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !39 ; 2 uses
  %i.nt = mul nsw i32 %i.ns, %i.nh
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds i8, ptr %i.nq, i64 %i.nu
  %i.nw = sext i32 %i.ns to i64
  %i.nx = sext i32 %i.nm to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph480.i
  %.0375478.i = phi ptr [ %i.np, %.lr.ph480.i ], [ %i.oc, %bb.ae ] ; 2 uses
  %.0376477.i = phi ptr [ %i.nv, %.lr.ph480.i ], [ %i.ob, %bb.ae ] ; 2 uses
  %.1385476.i = phi i32 [ %i.nh, %.lr.ph480.i ], [ %i.oa, %bb.ae ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.0376477.i, i64 %indvars.iv533.i
  store i8 -1, ptr %i.ny, align 1, !tbaa !99
  %i.nz = getelementptr inbounds nuw i8, ptr %.0375478.i, i64 %indvars.iv533.i
  store i8 -1, ptr %i.nz, align 1, !tbaa !99
  %i.oa = add nsw i32 %.1385476.i, 1              ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %.0376477.i, i64 %i.nw
  %i.oc = getelementptr inbounds i8, ptr %.0375478.i, i64 %i.nx
  %i.od = icmp slt i32 %i.oa, %i.ac
  br i1 %i.od, label %bb.ae, label %._crit_edge481.i, !llvm.loop !65

._crit_edge481.i:                                 ; preds = %bb.ae, %bb.ad
  %i.oe = load i32, ptr %i.ko, align 4, !tbaa !38
  %i.of = icmp sgt i32 %i.oe, %i.ac
  br i1 %i.of, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %._crit_edge481.i
  %i.og = fmul nsz double %.0377.i, 2.550000e+02
  %i.oh = fptosi double %i.og to i32
  %i.oi = call i32 @llvm.smax.i32(i32 %i.oh, i32 0)
  %.0.i422426.i = call i32 @llvm.umin.i32(i32 %i.oi, i32 255)
  %.0.i422.i = trunc nuw i32 %.0.i422426.i to i8
  %i.oj = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !87
  %i.ol = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  %i.on = load i32, ptr %i.om, align 8, !tbaa !39
  %i.oo = mul nsw i32 %i.on, %i.ol
  %i.op = trunc nuw nsw i64 %indvars.iv533.i to i32 ; 4 uses
  %i.oq = add nsw i32 %i.oo, %i.op
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds i8, ptr %i.ok, i64 %i.or
  store i8 %.0.i422.i, ptr %i.os, align 1, !tbaa !99
  %i.ot = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !87
  %i.ow = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 68
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !39
  %i.oz = mul nsw i32 %i.oy, %i.ow
  %i.pa = add nsw i32 %i.oz, %i.op
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds i8, ptr %i.ov, i64 %i.pb
  store i8 127, ptr %i.pc, align 1, !tbaa !99
  %i.pd = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !87
  %i.pg = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 72
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !39
  %i.pj = mul nsw i32 %i.pi, %i.pg
  %i.pk = add nsw i32 %i.pj, %i.op
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds i8, ptr %i.pf, i64 %i.pl
  store i8 127, ptr %i.pm, align 1, !tbaa !99
  %i.pn = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !87
  %i.pq = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 76
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !39
  %i.pt = mul nsw i32 %i.ps, %i.pq
  %i.pu = add nsw i32 %i.pt, %i.op
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds i8, ptr %i.pp, i64 %i.pv
  store i8 -1, ptr %i.pw, align 1, !tbaa !99
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  %i.px = load ptr, ptr %i.kn, align 8, !tbaa !41
  %.idx578.i = mul nuw nsw i64 %indvars.iv533.i, 12
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %.idx578.i ; 3 uses
  %i.pz = icmp sgt i32 %i.ne, 0
  br i1 %i.pz, label %.lr.ph473.i, label %._crit_edge474.i

.lr.ph473.i:                                      ; preds = %bb.ag
  %i.qa = sub nsw i32 %i.ac, %i.ne                ; 5 uses
  %i.qb = load ptr, ptr %i.af, align 8, !tbaa !82 ; 8 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !87
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 64
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !39 ; 2 uses
  %i.qf = mul nsw i32 %i.qe, %i.qa
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds i8, ptr %i.qc, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %indvars.iv533.i
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !99
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !87
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qb, i64 76
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !39 ; 2 uses
  %i.qo = mul nsw i32 %i.qn, %i.qa
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds i8, ptr %i.ql, i64 %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !87
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qb, i64 72
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !39 ; 2 uses
  %i.qv = mul nsw i32 %i.qu, %i.qa
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %i.qs, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !87
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qb, i64 68
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !39 ; 2 uses
  %i.rc = mul nsw i32 %i.rb, %i.qa
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds i8, ptr %i.qz, i64 %i.rd
  %i.rf = sext i32 %i.qe to i64
  %i.rg = sext i32 %i.rb to i64
  %i.rh = sext i32 %i.qu to i64
  %i.ri = sext i32 %i.qn to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph473.i
  %.0371470.i = phi ptr [ %i.qq, %.lr.ph473.i ], [ %i.rr, %bb.ai ] ; 2 uses
  %.0372469.i = phi ptr [ %i.qx, %.lr.ph473.i ], [ %i.rq, %bb.ai ] ; 2 uses
  %.0373468.i = phi ptr [ %i.re, %.lr.ph473.i ], [ %i.rp, %bb.ai ] ; 2 uses
  %.0374467.i = phi ptr [ %i.qh, %.lr.ph473.i ], [ %i.ro, %bb.ai ] ; 2 uses
  %.2386466.i = phi i32 [ %i.qa, %.lr.ph473.i ], [ %i.rs, %bb.ai ]
  %i.rj = getelementptr inbounds nuw i8, ptr %.0374467.i, i64 %indvars.iv533.i ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !99
  %.not412.i = icmp eq i8 %i.qj, %i.rk
  br i1 %.not412.i, label %bb.ai, label %._crit_edge474.i

bb.ai:                                            ; preds = %bb.ah
  store i8 %.0380.i, ptr %i.rj, align 1, !tbaa !99
  %i.rl = getelementptr inbounds nuw i8, ptr %.0373468.i, i64 %indvars.iv533.i
  store i8 %5, ptr %i.rl, align 1, !tbaa !99
  %i.rm = getelementptr inbounds nuw i8, ptr %.0372469.i, i64 %indvars.iv533.i
  store i8 %6, ptr %i.rm, align 1, !tbaa !99
  %i.rn = getelementptr inbounds nuw i8, ptr %.0371470.i, i64 %indvars.iv533.i
  store i8 -1, ptr %i.rn, align 1, !tbaa !99
  %i.ro = getelementptr inbounds i8, ptr %.0374467.i, i64 %i.rf
  %i.rp = getelementptr inbounds i8, ptr %.0373468.i, i64 %i.rg
  %i.rq = getelementptr inbounds i8, ptr %.0372469.i, i64 %i.rh
  %i.rr = getelementptr inbounds i8, ptr %.0371470.i, i64 %i.ri
  %i.rs = add nsw i32 %.2386466.i, 1              ; 2 uses
  %i.rt = icmp slt i32 %i.rs, %i.ac
  br i1 %i.rt, label %bb.ah, label %._crit_edge474.i, !llvm.loop !66

._crit_edge474.i:                                 ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ru = load <2 x float>, ptr %i.py, align 4, !tbaa !88
  %i.rv = fpext <2 x float> %i.ru to <2 x double>
  %i.rw = insertelement <2 x double> poison, double %.0377.i, i64 0
  %i.rx = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ry = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rx, <2 x double> %i.md, <2 x double> %i.rv)
  %i.rz = fptrunc <2 x double> %i.ry to <2 x float>
  store <2 x float> %i.rz, ptr %i.py, align 4, !tbaa !88
  %i.sa = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !88
  %i.sc = fpext nsz float %i.sb to double
  %i.sd = call nsz double @llvm.fmuladd.f64(double %.0377.i, double %4, double %i.sc)
  %i.se = fptrunc nsz double %i.sd to float
  store float %i.se, ptr %i.sa, align 4, !tbaa !88
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge474.i, %bb.af, %._crit_edge481.i, %bb.ac
  %indvars.iv.next534.i = add nuw nsw i64 %indvars.iv533.i, 1 ; 2 uses
  %exitcond537.not.i = icmp eq i64 %indvars.iv.next534.i, %wide.trip.count536.i
  br i1 %exitcond537.not.i, label %._crit_edge485.loopexit.i, label %bb.v, !llvm.loop !67

._crit_edge485.loopexit.i:                        ; preds = %bb.aj
  %.pre.i = load i32, ptr %i.jk, align 4, !tbaa !47
  br label %._crit_edge485.i

._crit_edge485.i:                                 ; preds = %._crit_edge485.loopexit.i, %bb.u
  %i.sf = phi i32 [ %.pre.i, %._crit_edge485.loopexit.i ], [ %i.kw, %bb.u ] ; 2 uses
  %indvars.iv.next539.i = add nuw nsw i64 %indvars.iv538.i, 1 ; 2 uses
  %i.sg = sext i32 %i.sf to i64
  %i.sh = icmp slt i64 %indvars.iv.next539.i, %i.sg
  br i1 %i.sh, label %bb.s, label %._crit_edge488.i, !llvm.loop !68

._crit_edge488.i:                                 ; preds = %._crit_edge485.i, %.preheader428.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 6 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !38
  %i.sk = icmp sgt i32 %i.sj, %i.ac
  br i1 %i.sk, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %._crit_edge488.i
  %i.sl = load i32, ptr %i.ci, align 4, !tbaa !40
  %i.sm = icmp eq i32 %i.sl, 1
  %or.cond497.i = select i1 %i.sm, i1 %i.cl, i1 false
  br i1 %or.cond497.i, label %.lr.ph490.i, label %.loopexit.i

.lr.ph490.i:                                      ; preds = %bb.ak
  %i.sn = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.so = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 4 uses
  %wide.trip.count544.i = zext nneg i32 %i.ae to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph490.i
  %indvars.iv541.i = phi i64 [ 0, %.lr.ph490.i ], [ %indvars.iv.next542.i, %bb.al ] ; 3 uses
  %i.sp = load ptr, ptr %i.sn, align 8, !tbaa !41
  %.idx579.i = mul nuw nsw i64 %indvars.iv541.i, 12
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %.idx579.i ; 3 uses
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !88
  %i.ss = fptoui float %i.sr to i8
  %i.st = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !87
  %i.sv = load i32, ptr %i.so, align 4, !tbaa !48
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 64
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !39
  %i.sy = mul nsw i32 %i.sx, %i.sv
  %i.sz = trunc nuw nsw i64 %indvars.iv541.i to i32 ; 4 uses
  %i.ta = add nsw i32 %i.sy, %i.sz
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %i.su, i64 %i.tb
  store i8 %i.ss, ptr %i.tc, align 1, !tbaa !99
  %i.td = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.te = load float, ptr %i.td, align 4, !tbaa !88
  %i.tf = fptoui float %i.te to i8
  %i.tg = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !87
  %i.tj = load i32, ptr %i.so, align 4, !tbaa !48
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tg, i64 68
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !39
  %i.tm = mul nsw i32 %i.tl, %i.tj
  %i.tn = add nsw i32 %i.tm, %i.sz
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds i8, ptr %i.ti, i64 %i.to
  store i8 %i.tf, ptr %i.tp, align 1, !tbaa !99
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !88
  %i.ts = fptoui float %i.tr to i8
  %i.tt = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !87
  %i.tw = load i32, ptr %i.so, align 4, !tbaa !48
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 72
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !39
  %i.tz = mul nsw i32 %i.ty, %i.tw
  %i.ua = add nsw i32 %i.tz, %i.sz
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds i8, ptr %i.tv, i64 %i.ub
  store i8 %i.ts, ptr %i.uc, align 1, !tbaa !99
  %i.ud = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !87
  %i.ug = load i32, ptr %i.so, align 4, !tbaa !48
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 76
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !39
  %i.uj = mul nsw i32 %i.ui, %i.ug
  %i.uk = add nsw i32 %i.uj, %i.sz
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds i8, ptr %i.uf, i64 %i.ul
  store i8 -1, ptr %i.um, align 1, !tbaa !99
  %indvars.iv.next542.i = add nuw nsw i64 %indvars.iv541.i, 1 ; 2 uses
  %exitcond545.not.i = icmp eq i64 %indvars.iv.next542.i, %wide.trip.count544.i
  br i1 %exitcond545.not.i, label %.loopexit.i, label %bb.al, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.al, %bb.ak
  %i.un = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !100
  %i.up = icmp eq i32 %i.uo, 1
  br i1 %i.up, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %.loopexit.i
  %i.uq = add nsw i32 %i.ac, 1                    ; 8 uses
  %i.ur = sext i32 %i.ae to i64                   ; 12 uses
  %i.us = load i32, ptr %i.si, align 4, !tbaa !38 ; 6 uses
  %i.ut = icmp sgt i32 %i.us, %i.uq
  br i1 %i.ut, label %.lr.ph494.i.preheader, label %.split.us.thread.i

.lr.ph494.i.preheader:                            ; preds = %.preheader.i
  %i.uu = add i32 %i.us, -2
  %i.uv = sub i32 %i.ac, %i.us
  %i.uw = and i32 %i.uv, 1
  %lcmp.mod.not.not = icmp eq i32 %i.uw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph494.i.prol, label %.lr.ph494.i.prol.loopexit

.lr.ph494.i.prol:                                 ; preds = %.lr.ph494.i.preheader
  %.3387.i.prol = add nsw i32 %i.us, -1           ; 2 uses
  %i.ux = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !87 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 64
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !39 ; 2 uses
  %i.vb = mul nsw i32 %i.va, %.3387.i.prol
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds i8, ptr %i.uy, i64 %i.vc
  %i.ve = add nsw i32 %i.us, -2
  %i.vf = mul nsw i32 %i.va, %i.ve
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds i8, ptr %i.uy, i64 %i.vg
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vd, ptr align 1 %i.vh, i64 %i.ur, i1 false)
  br label %.lr.ph494.i.prol.loopexit

.lr.ph494.i.prol.loopexit:                        ; preds = %.lr.ph494.i.prol, %.lr.ph494.i.preheader
  %.3387.in492.i.unr = phi i32 [ %i.us, %.lr.ph494.i.preheader ], [ %.3387.i.prol, %.lr.ph494.i.prol ]
  %i.vi = icmp eq i32 %i.uu, %i.ac
  br i1 %i.vi, label %._crit_edge495.i, label %.lr.ph494.i

.split.us.thread.i:                               ; preds = %.preheader.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 3 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !48
  %i.vl = add nsw i32 %i.vk, 1
  store i32 %i.vl, ptr %i.vj, align 4, !tbaa !48
  br label %bb.an

.thread.i:                                        ; preds = %.loopexit.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 3 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !48
  %i.vo = add nsw i32 %i.vn, 1                    ; 2 uses
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !48
  br label %bb.am

.lr.ph494.i:                                      ; preds = %.lr.ph494.i.prol.loopexit, %.lr.ph494.i
  %.3387.in492.i = phi i32 [ %.3387.i.1, %.lr.ph494.i ], [ %.3387.in492.i.unr, %.lr.ph494.i.prol.loopexit ] ; 4 uses
  %.3387.i = add nsw i32 %.3387.in492.i, -1
  %i.vp = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !87 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 64
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !39 ; 2 uses
  %i.vt = mul nsw i32 %i.vs, %.3387.i
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds i8, ptr %i.vq, i64 %i.vu
  %i.vw = add nsw i32 %.3387.in492.i, -2
  %i.vx = mul nsw i32 %i.vs, %i.vw
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds i8, ptr %i.vq, i64 %i.vy
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vv, ptr align 1 %i.vz, i64 %i.ur, i1 false)
  %.3387.i.1 = add nsw i32 %.3387.in492.i, -2     ; 3 uses
  %i.wa = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !87 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 64
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !39 ; 2 uses
  %i.we = mul nsw i32 %i.wd, %.3387.i.1
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds i8, ptr %i.wb, i64 %i.wf
  %i.wh = add nsw i32 %.3387.in492.i, -3
end_hunk_0
begin_hunk_1_@config_output:bb.a
bb.g:                                             ; preds = %bb.f
  %i.af = mul nsw i32 %i.h, 3
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call ptr @av_malloc_array(i64 noundef %i.ag, i64 noundef 4) #11 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !41
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.a, %bb.d, %bb.b, %bb.h
  %.0 = phi i32 [ -558323010, %bb.d ], [ -558323010, %bb.b ], [ 0, %bb.h ], [ -558323010, %bb.a ], [ -12, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @get_lin_bin_abs(float noundef %0, i32 noundef %1) #5 {
bb.a:
  %i.a = tail call nsz float @llvm.fabs.f32(float %0) ; 2 uses
  %i.b = fcmp nsz ogt float %i.a, 0.000000e+00
  %i.c = select nsz i1 %i.b, float %i.a, float 0.000000e+00 ; 2 uses
  %i.d = fcmp nsz ogt float %i.c, 1.000000e+00
  %..i = select nsz i1 %i.d, float 1.000000e+00, float %i.c
  %i.e = add nsw i32 %1, -1
  %i.f = sitofp nsz i32 %i.e to float
  %i.g = fmul nnan nsz float %..i, %i.f
  %i.h = tail call i64 @llvm.lrint.i64.f32(float %i.g)
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @get_lin_bin_sign(float noundef %0, i32 noundef %1) #5 {
bb.a:
  %i.a = fcmp nsz ogt float %0, -1.000000e+00
  %i.b = select nsz i1 %i.a, float %0, float -1.000000e+00 ; 2 uses
  %i.c = fcmp nsz ogt float %i.b, 1.000000e+00
  %..i = select nsz i1 %i.c, float 1.000000e+00, float %i.b
  %i.d = fadd nnan nsz float %..i, 1.000000e+00
  %i.e = fmul nnan nsz float %i.d, 5.000000e-01
  %i.f = add nsw i32 %1, -1
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = fmul nsz float %i.e, %i.g
  %i.i = tail call i64 @llvm.lrint.i64.f32(float %i.h)
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @get_log_bin_abs(float noundef %0, i32 noundef %1) #5 {
bb.a:
  %i.a = tail call nsz float @llvm.fabs.f32(float %0)
  %i.b = tail call nsz float @llvm.log10.f32(float %i.a)
  %i.c = fdiv nsz float %i.b, 6.000000e+00
  %i.d = fadd nsz float %i.c, 1.000000e+00        ; 2 uses
  %i.e = fcmp nsz ogt float %i.d, 0.000000e+00
  %i.f = select nsz i1 %i.e, float %i.d, float 0.000000e+00 ; 2 uses
  %i.g = fcmp nsz ogt float %i.f, 1.000000e+00
  %..i = select nsz i1 %i.g, float 1.000000e+00, float %i.f
  %i.h = add nsw i32 %1, -1
  %i.i = sitofp nsz i32 %i.h to float
  %i.j = fmul nsz float %..i, %i.i
  %i.k = tail call i64 @llvm.lrint.i64.f32(float %i.j)
  %i.l = trunc i64 %i.k to i32
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i32 @get_log_bin_sign(float noundef %0, i32 noundef %1) #5 {
bb.a:
  %i.a = sdiv i32 %1, 2                           ; 2 uses
  %i.b = fcmp nsz ogt float %0, 0.000000e+00
  %i.c = tail call nsz float @llvm.fabs.f32(float %0)
  %i.d = tail call nsz float @llvm.log10.f32(float %i.c)
  %i.e = fdiv nsz float %i.d, 6.000000e+00
  %i.f = fadd nsz float %i.e, 1.000000e+00        ; 2 uses
  %i.g = fcmp nsz ogt float %i.f, 0.000000e+00
  %i.h = select nsz i1 %i.g, float %i.f, float 0.000000e+00 ; 2 uses
  %i.i = fcmp nsz ogt float %i.h, 1.000000e+00
  %..i = select nsz i1 %i.i, float 1.000000e+00, float %i.h
  %i.j = sitofp nsz i32 %i.a to float
  %i.k = fmul nsz float %..i, %i.j
  %i.l = tail call i64 @llvm.lrint.i64.f32(float %i.k) ; 2 uses
  %i.m = sub nsw i64 0, %i.l
  %i.n = select i1 %i.b, i64 %i.l, i64 %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = add i32 %i.a, %i.o
  ret i32 %i.p
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #6

declare ptr @av_default_item_name(ptr noundef) #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare ptr @ff_make_sample_format_list(ptr noundef) local_unnamed_addr #4

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #4

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @ff_inlink_make_frame_writable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @cbrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #6

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"p1 long", !9, i64 0}
!24 = !{!"float", !5, i64 0}
!25 = !{!"p1 float", !9, i64 0}
!26 = !{!"AudioHistogramContext", !10, i64 0, !21, i64 8, !6, i64 16, !6, i64 20, !22, i64 24, !23, i64 32, !23, i64 40, !6, i64 48, !6, i64 52, !24, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !25, i64 96, !5, i64 104, !6, i64 912, !6, i64 916, !9, i64 920}
!27 = !{!26, !6, i64 916}
!28 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!29 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!30 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!31 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!32 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!33 = !{!"AVFilterFormatsConfig", !31, i64 0, !31, i64 8, !32, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!34 = !{!"AVFilterLink", !28, i64 0, !13, i64 8, !28, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !29, i64 72, !22, i64 96, !30, i64 104, !6, i64 112, !6, i64 116, !33, i64 120, !33, i64 168}
!35 = !{!34, !28, i64 16}
!36 = !{!26, !6, i64 60}
!37 = !{!26, !6, i64 16}
!38 = !{!26, !6, i64 20}
!39 = !{!6, !6, i64 0}
!40 = !{!26, !6, i64 76}
!41 = !{!26, !25, i64 96}
!42 = !{!26, !6, i64 48}
!43 = !{!34, !6, i64 76}
!44 = !{!26, !23, i64 32}
!45 = !{!26, !9, i64 920}
!46 = !{!26, !23, i64 40}
!47 = !{!26, !6, i64 84}
!48 = !{!26, !6, i64 68}
!49 = distinct !{!49, !20}
!50 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20, !89, !90}
!54 = distinct !{!54, !20, !90, !89}
!55 = distinct !{!55, !20}
!56 = distinct !{null}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20, !89, !90}
!64 = distinct !{!64, !20, !90, !89}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = !{!18, !15, i64 32}
!72 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!18, !15, i64 56}
!75 = !{!21, !21, i64 0}
!76 = !{!"p2 omnipotent char", !14, i64 0}
!77 = !{!"long", !5, i64 0}
!78 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!79 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!80 = !{!"AVFrame", !5, i64 0, !5, i64 64, !76, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 124, !77, i64 136, !77, i64 144, !22, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !78, i64 248, !6, i64 256, !30, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !77, i64 304, !79, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !77, i64 344, !77, i64 352, !77, i64 360, !77, i64 368, !9, i64 376, !29, i64 384, !77, i64 408, !6, i64 416}
!81 = !{!80, !6, i64 112}
!82 = !{!26, !21, i64 8}
!83 = !{!80, !6, i64 104}
!84 = !{!34, !6, i64 40}
!85 = !{!80, !6, i64 108}
!86 = !{!34, !6, i64 44}
!87 = !{!12, !12, i64 0}
!88 = !{!24, !24, i64 0}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!80, !77, i64 136}
!92 = !{!80, !77, i64 408}
!93 = !{!26, !6, i64 92}
!94 = !{!26, !6, i64 912}
!95 = !{!80, !76, i64 96}
!96 = !{!77, !77, i64 0}
!97 = !{!26, !6, i64 88}
!98 = !{!26, !6, i64 52}
!99 = !{!5, !5, i64 0}
!100 = !{!26, !6, i64 72}
!101 = !{!34, !6, i64 64}
!102 = !{!26, !6, i64 28}
!103 = !{!26, !6, i64 24}
!104 = !{!34, !28, i64 0}
!105 = !{!26, !24, i64 56}
!106 = !{!26, !6, i64 80}
end_hunk_1
