Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_ahistogram?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@activate:bb.a

.lr.ph446.i:                                      ; preds = %bb.p, %.lr.ph446.i
  %indvars.iv502.i = phi i64 [ %indvars.iv.next503.i, %.lr.ph446.i ], [ 0, %bb.p ] ; 2 uses
  %i.hq = load ptr, ptr %i.ew, align 8, !tbaa !45
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv502.i
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !88
  %i.ht = call i32 %i.hq(float noundef %i.hs, i32 noundef %i.ae) #11, !inline_history !56
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hu ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !96
  %i.hx = add i64 %i.hw, 1
  store i64 %i.hx, ptr %i.hv, align 8, !tbaa !96
  %indvars.iv.next503.i = add nuw nsw i64 %indvars.iv502.i, 1 ; 2 uses
  %exitcond506.not.i = icmp eq i64 %indvars.iv.next503.i, %wide.trip.count505.i
  br i1 %exitcond506.not.i, label %._crit_edge447.i, label %.lr.ph446.i, !llvm.loop !60

._crit_edge447.i:                                 ; preds = %.lr.ph446.i, %bb.p
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
  %i.kw = phi i32 [ %i.jl, %.lr.ph487.i ], [ %i.sj, %._crit_edge485.i ] ; 3 uses
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
  %i.lv = fptrunc nsz <2 x double> %i.lu to <2 x float> ; 2 uses
  %i.lw = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> %i.lv, <2 x i32> <i32 0, i32 2>
  %i.ly = fptosi float %i.lf to i32
  %i.lz = call i32 @llvm.smax.i32(i32 %i.ly, i32 0)
  %i.ma = call i32 @llvm.umin.i32(i32 %i.lz, i32 255)
  %i.mb = trunc nuw i32 %i.ma to i8
  %i.mc = fpext nsz <2 x float> %i.lx to <2 x double>
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0380.i = phi i8 [ %i.mb, %bb.t ], [ -1, %bb.s ]
  %i.md = phi <2 x double> [ %i.mc, %bb.t ], [ undef, %bb.s ]
  %i.me = phi <2 x float> [ %i.lv, %bb.t ], [ undef, %bb.s ] ; 2 uses
  br i1 %i.cl, label %.lr.ph484.i, label %._crit_edge485.i

.lr.ph484.i:                                      ; preds = %bb.u
  %i.mf = extractelement <2 x float> %i.me, i64 1
  %i.mg = fadd nsz <2 x float> %i.me, splat (float 1.280000e+02)
  %i.mh = fptosi <2 x float> %i.mg to <2 x i32>
  %i.mi = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mh, <2 x i32> zeroinitializer) ; 2 uses
  %i.mj = extractelement <2 x i32> %i.mi, i64 0
  %.0.i416424.i = call i32 @llvm.umin.i32(i32 %i.mj, i32 255)
  %.0.i416.i = trunc nuw i32 %.0.i416424.i to i8
  %i.mk = extractelement <2 x i32> %i.mi, i64 1
  %.0.i425.i = call i32 @llvm.umin.i32(i32 %i.mk, i32 255)
  %.0.i.i = trunc nuw i32 %.0.i425.i to i8
  %i.ml = fpext nsz float %i.mf to double
  br label %bb.v

bb.v:                                             ; preds = %bb.aj, %.lr.ph484.i
  %indvars.iv533.i = phi i64 [ 0, %.lr.ph484.i ], [ %indvars.iv.next534.i, %bb.aj ] ; 12 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv533.i
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !96
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv533.i
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !96
  %i.mq = sub i64 %i.mn, %i.mp
  %i.mr = uitofp nsz i64 %i.mq to double          ; 5 uses
  %i.ms = load i32, ptr %i.kf, align 4, !tbaa !98
  switch i32 %i.ms, label %bb.ab [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.mt = fdiv nsz double %i.mr, %i.kj
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.mu = call nsz double @llvm.sqrt.f64(double %i.mr)
  %i.mv = fdiv nsz double %i.mu, %i.kk
  br label %bb.ac

bb.y:                                             ; preds = %bb.v
  %i.mw = call nsz double @cbrt(double noundef %i.mr) #12
  %i.mx = call nsz double @cbrt(double noundef %i.kj) #12
  %i.my = fdiv nsz double %i.mw, %i.mx
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.mz = fadd nsz double %i.mr, 1.000000e+00
  %i.na = call nsz double @llvm.log2.f64(double %i.mz)
  %i.nb = fdiv nsz double %i.na, %i.ki
  br label %bb.ac

bb.aa:                                            ; preds = %bb.v
  %i.nc = fadd nsz double %i.mr, 1.000000e+00
  %i.nd = call nsz double @llvm.log2.f64(double %i.nc)
  %i.ne = fdiv nsz double %i.nd, %i.ki
  %i.nf = fsub nsz double 1.000000e+00, %i.ne     ; 2 uses
  %i.ng = fcmp nsz oeq double %i.nf, 1.000000e+00
  %spec.store.select.i = select i1 %i.ng, double 0.000000e+00, double %i.nf
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 347) #11
  call void @abort() #13
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.0377.i = phi nsz double [ %i.mt, %bb.w ], [ %i.mv, %bb.x ], [ %i.my, %bb.y ], [ %i.nb, %bb.z ], [ %spec.store.select.i, %bb.aa ] ; 4 uses
  %i.nh = fmul nsz double %.0377.i, %i.km
  %i.ni = fptosi double %i.nh to i32              ; 4 uses
  %i.nj = load i32, ptr %i.ci, align 4, !tbaa !40
  switch i32 %i.nj, label %bb.aj [
    i32 0, label %bb.ad
    i32 1, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.nk = icmp sgt i32 %i.ni, 0
  br i1 %i.nk, label %.lr.ph480.i, label %._crit_edge481.i

.lr.ph480.i:                                      ; preds = %bb.ad
  %i.nl = sub nsw i32 %i.ac, %i.ni                ; 3 uses
  %i.nm = load ptr, ptr %i.af, align 8, !tbaa !82 ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !87
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 76
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !39 ; 2 uses
  %i.nr = mul nsw i32 %i.nq, %i.nl
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds i8, ptr %i.no, i64 %i.ns
  %i.nu = load ptr, ptr %i.nm, align 8, !tbaa !87
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nm, i64 64
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !39 ; 2 uses
  %i.nx = mul nsw i32 %i.nw, %i.nl
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds i8, ptr %i.nu, i64 %i.ny
  %i.oa = sext i32 %i.nw to i64
  %i.ob = sext i32 %i.nq to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph480.i
  %.0375478.i = phi ptr [ %i.nt, %.lr.ph480.i ], [ %i.og, %bb.ae ] ; 2 uses
  %.0376477.i = phi ptr [ %i.nz, %.lr.ph480.i ], [ %i.of, %bb.ae ] ; 2 uses
  %.1385476.i = phi i32 [ %i.nl, %.lr.ph480.i ], [ %i.oe, %bb.ae ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.0376477.i, i64 %indvars.iv533.i
  store i8 -1, ptr %i.oc, align 1, !tbaa !99
  %i.od = getelementptr inbounds nuw i8, ptr %.0375478.i, i64 %indvars.iv533.i
  store i8 -1, ptr %i.od, align 1, !tbaa !99
  %i.oe = add nsw i32 %.1385476.i, 1              ; 2 uses
  %i.of = getelementptr inbounds i8, ptr %.0376477.i, i64 %i.oa
  %i.og = getelementptr inbounds i8, ptr %.0375478.i, i64 %i.ob
  %i.oh = icmp slt i32 %i.oe, %i.ac
  br i1 %i.oh, label %bb.ae, label %._crit_edge481.i, !llvm.loop !65

._crit_edge481.i:                                 ; preds = %bb.ae, %bb.ad
  %i.oi = load i32, ptr %i.ko, align 4, !tbaa !38
  %i.oj = icmp sgt i32 %i.oi, %i.ac
  br i1 %i.oj, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %._crit_edge481.i
  %i.ok = fmul nsz double %.0377.i, 2.550000e+02
  %i.ol = fptosi double %i.ok to i32
  %i.om = call i32 @llvm.smax.i32(i32 %i.ol, i32 0)
  %.0.i422426.i = call i32 @llvm.umin.i32(i32 %i.om, i32 255)
  %.0.i422.i = trunc nuw i32 %.0.i422426.i to i8
  %i.on = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !87
  %i.op = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !39
  %i.os = mul nsw i32 %i.or, %i.op
  %i.ot = trunc nuw nsw i64 %indvars.iv533.i to i32 ; 4 uses
  %i.ou = add nsw i32 %i.os, %i.ot
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds i8, ptr %i.oo, i64 %i.ov
  store i8 %.0.i422.i, ptr %i.ow, align 1, !tbaa !99
  %i.ox = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !87
  %i.pa = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 68
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !39
  %i.pd = mul nsw i32 %i.pc, %i.pa
  %i.pe = add nsw i32 %i.pd, %i.ot
  %i.pf = sext i32 %i.pe to i64
  %i.pg = getelementptr inbounds i8, ptr %i.oz, i64 %i.pf
  store i8 127, ptr %i.pg, align 1, !tbaa !99
  %i.ph = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !87
  %i.pk = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 72
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !39
  %i.pn = mul nsw i32 %i.pm, %i.pk
  %i.po = add nsw i32 %i.pn, %i.ot
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds i8, ptr %i.pj, i64 %i.pp
  store i8 127, ptr %i.pq, align 1, !tbaa !99
  %i.pr = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !87
  %i.pu = load i32, ptr %i.kp, align 4, !tbaa !48
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 76
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !39
  %i.px = mul nsw i32 %i.pw, %i.pu
  %i.py = add nsw i32 %i.px, %i.ot
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds i8, ptr %i.pt, i64 %i.pz
  store i8 -1, ptr %i.qa, align 1, !tbaa !99
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  %i.qb = load ptr, ptr %i.kn, align 8, !tbaa !41
  %.idx578.i = mul nuw nsw i64 %indvars.iv533.i, 12
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %.idx578.i ; 3 uses
  %i.qd = icmp sgt i32 %i.ni, 0
  br i1 %i.qd, label %.lr.ph473.i, label %._crit_edge474.i

.lr.ph473.i:                                      ; preds = %bb.ag
  %i.qe = sub nsw i32 %i.ac, %i.ni                ; 5 uses
  %i.qf = load ptr, ptr %i.af, align 8, !tbaa !82 ; 8 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !87
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 64
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !39 ; 2 uses
  %i.qj = mul nsw i32 %i.qi, %i.qe
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds i8, ptr %i.qg, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %indvars.iv533.i
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !99
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !87
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qf, i64 76
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !39 ; 2 uses
  %i.qs = mul nsw i32 %i.qr, %i.qe
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds i8, ptr %i.qp, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !87
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qf, i64 72
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !39 ; 2 uses
  %i.qz = mul nsw i32 %i.qy, %i.qe
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds i8, ptr %i.qw, i64 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !87
  %i.re = getelementptr inbounds nuw i8, ptr %i.qf, i64 68
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !39 ; 2 uses
  %i.rg = mul nsw i32 %i.rf, %i.qe
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %i.rd, i64 %i.rh
  %i.rj = sext i32 %i.qi to i64
  %i.rk = sext i32 %i.rf to i64
  %i.rl = sext i32 %i.qy to i64
  %i.rm = sext i32 %i.qr to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph473.i
  %.0371470.i = phi ptr [ %i.qu, %.lr.ph473.i ], [ %i.rv, %bb.ai ] ; 2 uses
  %.0372469.i = phi ptr [ %i.rb, %.lr.ph473.i ], [ %i.ru, %bb.ai ] ; 2 uses
  %.0373468.i = phi ptr [ %i.ri, %.lr.ph473.i ], [ %i.rt, %bb.ai ] ; 2 uses
  %.0374467.i = phi ptr [ %i.ql, %.lr.ph473.i ], [ %i.rs, %bb.ai ] ; 2 uses
  %.2386466.i = phi i32 [ %i.qe, %.lr.ph473.i ], [ %i.rw, %bb.ai ]
  %i.rn = getelementptr inbounds nuw i8, ptr %.0374467.i, i64 %indvars.iv533.i ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !99
  %.not412.i = icmp eq i8 %i.qn, %i.ro
  br i1 %.not412.i, label %bb.ai, label %._crit_edge474.i

bb.ai:                                            ; preds = %bb.ah
  store i8 %.0380.i, ptr %i.rn, align 1, !tbaa !99
  %i.rp = getelementptr inbounds nuw i8, ptr %.0373468.i, i64 %indvars.iv533.i
  store i8 %.0.i416.i, ptr %i.rp, align 1, !tbaa !99
  %i.rq = getelementptr inbounds nuw i8, ptr %.0372469.i, i64 %indvars.iv533.i
  store i8 %.0.i.i, ptr %i.rq, align 1, !tbaa !99
  %i.rr = getelementptr inbounds nuw i8, ptr %.0371470.i, i64 %indvars.iv533.i
  store i8 -1, ptr %i.rr, align 1, !tbaa !99
  %i.rs = getelementptr inbounds i8, ptr %.0374467.i, i64 %i.rj
  %i.rt = getelementptr inbounds i8, ptr %.0373468.i, i64 %i.rk
  %i.ru = getelementptr inbounds i8, ptr %.0372469.i, i64 %i.rl
  %i.rv = getelementptr inbounds i8, ptr %.0371470.i, i64 %i.rm
  %i.rw = add nsw i32 %.2386466.i, 1              ; 2 uses
  %i.rx = icmp slt i32 %i.rw, %i.ac
  br i1 %i.rx, label %bb.ah, label %._crit_edge474.i, !llvm.loop !66

._crit_edge474.i:                                 ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ry = load <2 x float>, ptr %i.qc, align 4, !tbaa !88
  %i.rz = fpext nsz <2 x float> %i.ry to <2 x double>
  %i.sa = insertelement <2 x double> poison, double %.0377.i, i64 0
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sc = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.md, <2 x double> %i.rz)
  %i.sd = fptrunc nsz <2 x double> %i.sc to <2 x float>
  store <2 x float> %i.sd, ptr %i.qc, align 4, !tbaa !88
  %i.se = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  %i.sf = load float, ptr %i.se, align 4, !tbaa !88
  %i.sg = fpext nsz float %i.sf to double
  %i.sh = call nsz double @llvm.fmuladd.f64(double %.0377.i, double %i.ml, double %i.sg)
  %i.si = fptrunc nsz double %i.sh to float
  store float %i.si, ptr %i.se, align 4, !tbaa !88
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge474.i, %bb.af, %._crit_edge481.i, %bb.ac
  %indvars.iv.next534.i = add nuw nsw i64 %indvars.iv533.i, 1 ; 2 uses
  %exitcond537.not.i = icmp eq i64 %indvars.iv.next534.i, %wide.trip.count536.i
  br i1 %exitcond537.not.i, label %._crit_edge485.loopexit.i, label %bb.v, !llvm.loop !67

._crit_edge485.loopexit.i:                        ; preds = %bb.aj
  %.pre.i = load i32, ptr %i.jk, align 4, !tbaa !47
  br label %._crit_edge485.i

._crit_edge485.i:                                 ; preds = %._crit_edge485.loopexit.i, %bb.u
  %i.sj = phi i32 [ %.pre.i, %._crit_edge485.loopexit.i ], [ %i.kw, %bb.u ] ; 2 uses
  %indvars.iv.next539.i = add nuw nsw i64 %indvars.iv538.i, 1 ; 2 uses
  %i.sk = sext i32 %i.sj to i64
  %i.sl = icmp slt i64 %indvars.iv.next539.i, %i.sk
  br i1 %i.sl, label %bb.s, label %._crit_edge488.i, !llvm.loop !68

._crit_edge488.i:                                 ; preds = %._crit_edge485.i, %.preheader428.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 6 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !38
  %i.so = icmp sgt i32 %i.sn, %i.ac
  br i1 %i.so, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %._crit_edge488.i
  %i.sp = load i32, ptr %i.ci, align 4, !tbaa !40
  %i.sq = icmp eq i32 %i.sp, 1
  %or.cond497.i = select i1 %i.sq, i1 %i.cl, i1 false
  br i1 %or.cond497.i, label %.lr.ph490.i, label %.loopexit.i

.lr.ph490.i:                                      ; preds = %bb.ak
  %i.sr = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ss = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 4 uses
  %wide.trip.count544.i = zext nneg i32 %i.ae to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph490.i
  %indvars.iv541.i = phi i64 [ 0, %.lr.ph490.i ], [ %indvars.iv.next542.i, %bb.al ] ; 3 uses
  %i.st = load ptr, ptr %i.sr, align 8, !tbaa !41
  %.idx579.i = mul nuw nsw i64 %indvars.iv541.i, 12
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %.idx579.i ; 3 uses
  %i.sv = load float, ptr %i.su, align 4, !tbaa !88
  %i.sw = fptoui float %i.sv to i8
  %i.sx = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !87
  %i.sz = load i32, ptr %i.ss, align 4, !tbaa !48
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 64
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !39
  %i.tc = mul nsw i32 %i.tb, %i.sz
  %i.td = trunc nuw nsw i64 %indvars.iv541.i to i32 ; 4 uses
  %i.te = add nsw i32 %i.tc, %i.td
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds i8, ptr %i.sy, i64 %i.tf
  store i8 %i.sw, ptr %i.tg, align 1, !tbaa !99
  %i.th = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.ti = load float, ptr %i.th, align 4, !tbaa !88
  %i.tj = fptoui float %i.ti to i8
  %i.tk = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !87
  %i.tn = load i32, ptr %i.ss, align 4, !tbaa !48
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 68
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !39
  %i.tq = mul nsw i32 %i.tp, %i.tn
  %i.tr = add nsw i32 %i.tq, %i.td
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds i8, ptr %i.tm, i64 %i.ts
  store i8 %i.tj, ptr %i.tt, align 1, !tbaa !99
  %i.tu = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !88
  %i.tw = fptoui float %i.tv to i8
  %i.tx = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !87
  %i.ua = load i32, ptr %i.ss, align 4, !tbaa !48
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 72
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !39
  %i.ud = mul nsw i32 %i.uc, %i.ua
  %i.ue = add nsw i32 %i.ud, %i.td
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds i8, ptr %i.tz, i64 %i.uf
  store i8 %i.tw, ptr %i.ug, align 1, !tbaa !99
  %i.uh = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 24
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !87
  %i.uk = load i32, ptr %i.ss, align 4, !tbaa !48
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 76
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !39
  %i.un = mul nsw i32 %i.um, %i.uk
  %i.uo = add nsw i32 %i.un, %i.td
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds i8, ptr %i.uj, i64 %i.up
  store i8 -1, ptr %i.uq, align 1, !tbaa !99
  %indvars.iv.next542.i = add nuw nsw i64 %indvars.iv541.i, 1 ; 2 uses
  %exitcond545.not.i = icmp eq i64 %indvars.iv.next542.i, %wide.trip.count544.i
  br i1 %exitcond545.not.i, label %.loopexit.i, label %bb.al, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.al, %bb.ak
  %i.ur = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !100
  %i.ut = icmp eq i32 %i.us, 1
  br i1 %i.ut, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %.loopexit.i
  %i.uu = add nsw i32 %i.ac, 1                    ; 8 uses
  %i.uv = sext i32 %i.ae to i64                   ; 12 uses
  %i.uw = load i32, ptr %i.sm, align 4, !tbaa !38 ; 6 uses
  %i.ux = icmp sgt i32 %i.uw, %i.uu
  br i1 %i.ux, label %.lr.ph494.i.preheader, label %.split.us.thread.i

.lr.ph494.i.preheader:                            ; preds = %.preheader.i
  %i.uy = add i32 %i.uw, -2
  %i.uz = sub i32 %i.ac, %i.uw
  %i.va = and i32 %i.uz, 1
  %lcmp.mod.not.not = icmp eq i32 %i.va, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph494.i.prol, label %.lr.ph494.i.prol.loopexit

.lr.ph494.i.prol:                                 ; preds = %.lr.ph494.i.preheader
  %.3387.i.prol = add nsw i32 %i.uw, -1           ; 2 uses
  %i.vb = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !87 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 64
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !39 ; 2 uses
  %i.vf = mul nsw i32 %i.ve, %.3387.i.prol
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds i8, ptr %i.vc, i64 %i.vg
  %i.vi = add nsw i32 %i.uw, -2
  %i.vj = mul nsw i32 %i.ve, %i.vi
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds i8, ptr %i.vc, i64 %i.vk
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vh, ptr align 1 %i.vl, i64 %i.uv, i1 false)
  br label %.lr.ph494.i.prol.loopexit

.lr.ph494.i.prol.loopexit:                        ; preds = %.lr.ph494.i.prol, %.lr.ph494.i.preheader
  %.3387.in492.i.unr = phi i32 [ %i.uw, %.lr.ph494.i.preheader ], [ %.3387.i.prol, %.lr.ph494.i.prol ]
  %i.vm = icmp eq i32 %i.uy, %i.ac
  br i1 %i.vm, label %._crit_edge495.i, label %.lr.ph494.i

.split.us.thread.i:                               ; preds = %.preheader.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 3 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !48
  %i.vp = add nsw i32 %i.vo, 1
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !48
  br label %bb.an

.thread.i:                                        ; preds = %.loopexit.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 3 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !48
  %i.vs = add nsw i32 %i.vr, 1                    ; 2 uses
  store i32 %i.vs, ptr %i.vq, align 4, !tbaa !48
  br label %bb.am

.lr.ph494.i:                                      ; preds = %.lr.ph494.i.prol.loopexit, %.lr.ph494.i
  %.3387.in492.i = phi i32 [ %.3387.i.1, %.lr.ph494.i ], [ %.3387.in492.i.unr, %.lr.ph494.i.prol.loopexit ] ; 4 uses
  %.3387.i = add nsw i32 %.3387.in492.i, -1
  %i.vt = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !87 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 64
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !39 ; 2 uses
  %i.vx = mul nsw i32 %i.vw, %.3387.i
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds i8, ptr %i.vu, i64 %i.vy
  %i.wa = add nsw i32 %.3387.in492.i, -2
  %i.wb = mul nsw i32 %i.vw, %i.wa
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.vu, i64 %i.wc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vz, ptr align 1 %i.wd, i64 %i.uv, i1 false)
  %.3387.i.1 = add nsw i32 %.3387.in492.i, -2     ; 3 uses
  %i.we = load ptr, ptr %i.af, align 8, !tbaa !82 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !87 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 64
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !39 ; 2 uses
  %i.wi = mul nsw i32 %i.wh, %.3387.i.1
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds i8, ptr %i.wf, i64 %i.wj
  %i.wl = add nsw i32 %.3387.in492.i, -3
  %i.wm = mul nsw i32 %i.wh, %i.wl
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds i8, ptr %i.wf, i64 %i.wn
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.wk, ptr align 1 %i.wo, i64 %i.uv, i1 false)
  %.not411.not.i.1 = icmp sgt i32 %.3387.i.1, %i.uu
  br i1 %.not411.not.i.1, label %.lr.ph494.i, label %._crit_edge495.i, !llvm.loop !70

._crit_edge495.i:                                 ; preds = %.lr.ph494.i, %.lr.ph494.i.prol.loopexit
  %.pre550.i = load i32, ptr %i.sm, align 4, !tbaa !38 ; 7 uses
  %.not411.not491.1.i = icmp sgt i32 %.pre550.i, %i.uu
  br i1 %.not411.not491.1.i, label %.lr.ph494.1.i.preheader, label %._crit_edge495.1.i

.lr.ph494.1.i.preheader:                          ; preds = %._crit_edge495.i
  %i.wp = add i32 %.pre550.i, -2
  %i.wq = sub i32 %i.ac, %.pre550.i
  %i.wr = and i32 %i.wq, 1
  %lcmp.mod77.not.not = icmp eq i32 %i.wr, 0
end_hunk_0
