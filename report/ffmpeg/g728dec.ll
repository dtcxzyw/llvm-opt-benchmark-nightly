Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g728dec?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@g728_decode_frame:bb.a
  %..i.3.i = select nsz i1 %i.kc, float 4.095000e+03, float %i.kb ; 2 uses
  store float %..i.3.i, ptr %i.jy, align 4, !tbaa !32
  %i.kd = fmul nsz float %..i.3.i, f0x39800000
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store float %i.kd, ptr %i.ke, align 4, !tbaa !32
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !32 ; 2 uses
  %i.kh = fcmp nsz ogt float %i.kg, -4.095000e+03
  %i.ki = select nsz i1 %i.kh, float %i.kg, float -4.095000e+03 ; 2 uses
  %i.kj = fcmp nsz ogt float %i.ki, 4.095000e+03
  %..i.4.i = select nsz i1 %i.kj, float 4.095000e+03, float %i.ki ; 2 uses
  store float %..i.4.i, ptr %i.kf, align 4, !tbaa !32
  %i.kk = fmul nsz float %..i.4.i, f0x39800000
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store float %i.kk, ptr %i.kl, align 4, !tbaa !32
  %i.km = getelementptr inbounds nuw i8, ptr %.082161.i, i64 4 ; 4 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @g728_gq_db, i64 %i.im
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !32
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr @g728_y_db, i64 %i.ir
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !32
  %i.kr = fadd nsz float %i.ko, %i.kq
  %i.ks = fadd nsz float %..i87.i, %i.kr          ; 2 uses
  %i.kt = fcmp nsz olt float %i.ks, -3.200000e+01
  %i.ku = select nsz i1 %i.kt, float -3.200000e+01, float %i.ks
  store float %i.ku, ptr %i.km, align 4, !tbaa !32
  %i.kv = trunc nuw nsw i64 %indvars.iv.i to i32
  switch i32 %i.kv, label %bb.m [
    i32 0, label %bb.h
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.kw = load i32, ptr %i.ac, align 8, !tbaa !59
  %.not85.i = icmp eq i32 %i.kw, 0
  br i1 %.not85.i, label %convolve.exit.i.i92.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.073.i.i = load float, ptr %i.af, align 4, !tbaa !32
  br label %.lr.ph89.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph84.i.i
  %i.kx = fneg nsz float %.168.i.i
  %i.ky = call nsz float @llvm.fmuladd.f32(float %i.kx, float %.168.i.i, float 1.000000e+00)
  %i.kz = fmul nsz float %.17487.i.i, %i.ky       ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %indvars.iv.next104.i.i, 50
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond107.not.i.i, label %compute_lpc_coefs.exit.i, label %.lr.ph89.i.i, !llvm.loop !44

.lr.ph89.i.i:                                     ; preds = %.loopexit.i.i, %bb.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %bb.i ] ; 2 uses
  %indvars.iv103.i.i = phi i64 [ %indvars.iv.next104.i.i, %.loopexit.i.i ], [ 10, %bb.i ] ; 6 uses
  %.17487.i.i = phi float [ %i.kz, %.loopexit.i.i ], [ %.073.i.i, %bb.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv103.i.i ; 4 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !32
  %i.lc = fneg nsz float %i.lb                    ; 2 uses
  %xtraiter = and i64 %indvars.iv103.i.i, 1
  %i.ld = icmp eq i64 %indvar, -9
  br i1 %i.ld, label %.lr.ph.i.i.epil.preheader, label %.lr.ph89.i.i.new

.lr.ph89.i.i.new:                                 ; preds = %.lr.ph89.i.i
  %unroll_iter = and i64 %indvars.iv103.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph89.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph89.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %.06780.i.i.epil.init = phi float [ %i.lc, %.lr.ph89.i.i ], [ %i.mf, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %indvars.iv103.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod61)
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.epil.init
  %i.lf = load float, ptr %i.le, align 4, !tbaa !32
  %i.lg = xor i64 %indvars.iv.i.i.epil.init, -1
  %i.lh = getelementptr [4 x i8], ptr %i.la, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !32
  %i.lj = fneg nsz float %i.lf
  %i.lk = call nsz float @llvm.fmuladd.f32(float %i.lj, float %i.li, float %.06780.i.i.epil.init)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa = phi float [ %i.mf, %._crit_edge.i.i.unr-lcssa ], [ %i.lk, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %indvars.iv.next104.i.i = add nuw nsw i64 %indvars.iv103.i.i, 1 ; 3 uses
  %i.ll = lshr i64 %indvars.iv.next104.i.i, 1
  %i.lm = fcmp nsz une float %.17487.i.i, 0.000000e+00
  %i.ln = fdiv nsz float %.lcssa, %.17487.i.i
  %.168.i.i = select nsz i1 %i.lm, float %i.ln, float %.lcssa ; 4 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv103.i.i ; 2 uses
  store float %.168.i.i, ptr %i.lo, align 4, !tbaa !32
  %wide.trip.count101.i.i = and i64 %i.ll, 2147483647
  %i.lp = insertelement <2 x float> poison, float %.168.i.i, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph84.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph89.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph89.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 5 uses
  %.06780.i.i = phi float [ %i.lc, %.lr.ph89.i.i.new ], [ %i.mf, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph89.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !32
  %i.lt = xor i64 %indvars.iv.i.i, -1
  %i.lu = getelementptr [4 x i8], ptr %i.la, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !32
  %i.lw = fneg nsz float %i.ls
  %i.lx = call nsz float @llvm.fmuladd.f32(float %i.lw, float %i.lv, float %.06780.i.i)
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !32
  %i.mb = xor i64 %indvars.iv.i.i, -2
  %i.mc = getelementptr [4 x i8], ptr %i.la, i64 %i.mb
  %i.md = load float, ptr %i.mc, align 4, !tbaa !32
  %i.me = fneg nsz float %i.ma
  %i.mf = call nsz float @llvm.fmuladd.f32(float %i.me, float %i.md, float %i.lx) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !45

.lr.ph84.i.i:                                     ; preds = %.lr.ph84.i.i, %._crit_edge.i.i
  %indvars.iv96.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %indvars.iv.next97.i.i, %.lr.ph84.i.i ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv96.i.i ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !32 ; 2 uses
  %i.mi = xor i64 %indvars.iv96.i.i, -1
  %i.mj = getelementptr [4 x i8], ptr %i.lo, i64 %i.mi ; 2 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !32 ; 2 uses
  %i.ml = insertelement <2 x float> poison, float %i.mk, i64 0
  %i.mm = insertelement <2 x float> %i.ml, float %i.mh, i64 1
  %i.mn = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mo = insertelement <2 x float> %i.mn, float %i.mk, i64 1
  %i.mp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> %i.mm, <2 x float> %i.mo) ; 2 uses
  %i.mq = extractelement <2 x float> %i.mp, i64 0
  store float %i.mq, ptr %i.mg, align 4, !tbaa !32
  %i.mr = extractelement <2 x float> %i.mp, i64 1
  store float %i.mr, ptr %i.mj, align 4, !tbaa !32
  %indvars.iv.next97.i.i = add nuw nsw i64 %indvars.iv96.i.i, 1 ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %indvars.iv.next97.i.i, %wide.trip.count101.i.i
  br i1 %exitcond102.not.i.i, label %.loopexit.i.i, label %.lr.ph84.i.i, !llvm.loop !46

compute_lpc_coefs.exit.i:                         ; preds = %.loopexit.i.i
  store float %i.kz, ptr %i.af, align 4, !tbaa !32
  store i32 1, ptr %i.ac, align 8, !tbaa !59
  %i.ms = load ptr, ptr %i.h, align 16, !tbaa !31
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !61
  call void %i.mt(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ad, ptr noundef nonnull @g728_facv_f, i32 noundef 64) #6, !inline_history !47
  br label %convolve.exit.i.i92.preheader.i

convolve.exit.i.i92.preheader.i:                  ; preds = %compute_lpc_coefs.exit.i, %bb.h
  %i.mu = load ptr, ptr %i.h, align 16, !tbaa !31
  %.val88.i = load ptr, ptr %i.mu, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void %.val88.i(ptr noundef nonnull %i.a, ptr noundef nonnull @g728_wnrg_r, ptr noundef nonnull %i.x, i32 noundef 48) #6, !inline_history !42
  %i.mv = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.a, i32 noundef range(i32 4, 21) 4) #6
  %i.mw = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ap, i32 noundef range(i32 4, 21) 4) #6
  %i.mx = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aq, i32 noundef range(i32 4, 21) 4) #6
  %i.my = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ar, i32 noundef range(i32 4, 21) 4) #6
  %i.mz = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.as, i32 noundef range(i32 4, 21) 4) #6
  %i.na = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.at, i32 noundef range(i32 4, 21) 4) #6
  %i.nb = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.au, i32 noundef range(i32 4, 21) 4) #6
  %i.nc = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.av, i32 noundef range(i32 4, 21) 4) #6
  %i.nd = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aw, i32 noundef range(i32 4, 21) 4) #6
  %i.ne = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ax, i32 noundef range(i32 4, 21) 4) #6
  %i.nf = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ai, i32 noundef range(i32 4, 21) 4) #6
  %i.ng = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.as, i32 noundef range(i32 20, 36) 20) #6
  %i.nh = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.at, i32 noundef range(i32 20, 36) 20) #6
  %i.ni = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.au, i32 noundef range(i32 20, 36) 20) #6
  %i.nj = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.av, i32 noundef range(i32 20, 36) 20) #6
  %i.nk = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aw, i32 noundef range(i32 20, 36) 20) #6
  %i.nl = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ax, i32 noundef range(i32 20, 36) 20) #6
  %i.nm = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ai, i32 noundef range(i32 20, 36) 20) #6
  %i.nn = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ay, i32 noundef range(i32 20, 36) 20) #6
  %i.no = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.az, i32 noundef range(i32 20, 36) 20) #6
  %i.np = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ba, i32 noundef range(i32 20, 36) 20) #6
  %i.nq = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aj, i32 noundef range(i32 20, 36) 20) #6
  %i.nr = load <4 x float>, ptr %i.ah, align 4, !tbaa !32
  %i.ns = insertelement <4 x float> poison, float %i.nf, i64 0
  %i.nt = insertelement <4 x float> %i.ns, float %i.ne, i64 1
  %i.nu = insertelement <4 x float> %i.nt, float %i.nd, i64 2
  %i.nv = insertelement <4 x float> %i.nu, float %i.nc, i64 3
  %i.nw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nr, <4 x float> splat (float 7.500000e-01), <4 x float> %i.nv) ; 3 uses
  %i.nx = extractelement <4 x float> %i.nw, i64 0
  %i.ny = fadd nsz float %i.nq, %i.nx
  store <4 x float> %i.nw, ptr %i.ah, align 4, !tbaa !32
  %i.nz = load <4 x float>, ptr %i.bb, align 4, !tbaa !32
  %i.oa = insertelement <4 x float> poison, float %i.nb, i64 0
  %i.ob = insertelement <4 x float> %i.oa, float %i.na, i64 1
  %i.oc = insertelement <4 x float> %i.ob, float %i.mz, i64 2
  %i.od = insertelement <4 x float> %i.oc, float %i.my, i64 3
  %i.oe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nz, <4 x float> splat (float 7.500000e-01), <4 x float> %i.od) ; 3 uses
  %i.of = insertelement <4 x float> poison, float %i.np, i64 0
  %i.og = insertelement <4 x float> %i.of, float %i.no, i64 1
  %i.oh = insertelement <4 x float> %i.og, float %i.nn, i64 2
  %i.oi = insertelement <4 x float> %i.oh, float %i.nm, i64 3
  %i.oj = shufflevector <4 x float> %i.nw, <4 x float> %i.oe, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ok = fadd nsz <4 x float> %i.oi, %i.oj
  store <4 x float> %i.ok, ptr %i.ae, align 4, !tbaa !32
  store <4 x float> %i.oe, ptr %i.bb, align 4, !tbaa !32
  %i.ol = load float, ptr %i.bf, align 4, !tbaa !32
  %i.om = load <2 x float>, ptr %i.bd, align 4, !tbaa !32
  %i.on = fmul nsz float %i.ny, f0x3F808000       ; 2 uses
  %i.oo = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ol, i64 2
  %i.op = shufflevector <2 x float> %i.om, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.oq = shufflevector <4 x float> %i.op, <4 x float> %i.oo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.or = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.os = insertelement <4 x float> %i.or, float %i.mw, i64 1
  %i.ot = insertelement <4 x float> %i.os, float %i.mv, i64 2
  %i.ou = insertelement <4 x float> %i.ot, float %i.on, i64 3
  %i.ov = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> <float 7.500000e-01, float 7.500000e-01, float 7.500000e-01, float 0.000000e+00>, <4 x float> %i.ou) ; 3 uses
  %i.ow = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.ox = insertelement <4 x float> %i.ow, float %i.nk, i64 1
  %i.oy = insertelement <4 x float> %i.ox, float %i.nj, i64 2
  %i.oz = insertelement <4 x float> %i.oy, float %i.ni, i64 3
  %i.pa = shufflevector <4 x float> %i.oe, <4 x float> %i.ov, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.pb = fadd nsz <4 x float> %i.oz, %i.pa
  store <4 x float> %i.pb, ptr %i.bc, align 4, !tbaa !32
  %i.pc = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.pd = insertelement <2 x float> %i.pc, float %i.ng, i64 1
  %i.pe = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pf = fadd nsz <2 x float> %i.pd, %i.pe       ; 2 uses
  store <2 x float> %i.pf, ptr %i.be, align 4, !tbaa !32
  store <4 x float> %i.ov, ptr %i.bd, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.pg = extractelement <2 x float> %i.pf, i64 1
  %i.ph = fcmp nsz oeq float %i.pg, 0.000000e+00
  br i1 %i.ph, label %bb.j, label %.lr.ph89.i103.i

.loopexit.i121.i:                                 ; preds = %.lr.ph84.i117.i, %._crit_edge.i113.i
  %exitcond107.not.i122.i = icmp eq i64 %indvars.iv.next104.i115.i, 10
  br i1 %exitcond107.not.i122.i, label %compute_lpc_coefs.exit123.i, label %.lr.ph89.i103.i, !llvm.loop !44

.lr.ph89.i103.i:                                  ; preds = %convolve.exit.i.i92.preheader.i, %.loopexit.i121.i
  %indvars.iv103.i104.i = phi i64 [ %indvars.iv.next104.i115.i, %.loopexit.i121.i ], [ 0, %convolve.exit.i.i92.preheader.i ] ; 8 uses
  %.17487.i106.i = phi float [ %i.py, %.loopexit.i121.i ], [ %i.on, %convolve.exit.i.i92.preheader.i ] ; 3 uses
  %indvars.iv.next104.i115.i = add nuw nsw i64 %indvars.iv103.i104.i, 1 ; 3 uses
  %i.pi = lshr i64 %indvars.iv.next104.i115.i, 1
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv103.i104.i ; 4 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !32
  %i.pl = fneg nsz float %i.pk                    ; 3 uses
  %.not92.i.i = icmp eq i64 %indvars.iv103.i104.i, 0 ; 2 uses
  br i1 %.not92.i.i, label %._crit_edge.i113.i, label %.lr.ph.i108.i.preheader

.lr.ph.i108.i.preheader:                          ; preds = %.lr.ph89.i103.i
  %xtraiter62 = and i64 %indvars.iv103.i104.i, 1
  %i.pm = icmp eq i64 %indvars.iv103.i104.i, 1
  br i1 %i.pm, label %.lr.ph.i108.i.epil.preheader, label %.lr.ph.i108.i.preheader.new

.lr.ph.i108.i.preheader.new:                      ; preds = %.lr.ph.i108.i.preheader
  %unroll_iter66 = and i64 %indvars.iv103.i104.i, 9223372036854775806
  br label %.lr.ph.i108.i

._crit_edge.i113.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i108.i
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %._crit_edge.i113.i, label %.lr.ph.i108.i.epil.preheader

.lr.ph.i108.i.epil.preheader:                     ; preds = %._crit_edge.i113.i.loopexit.unr-lcssa, %.lr.ph.i108.i.preheader
  %indvars.iv.i109.i.epil.init = phi i64 [ 0, %.lr.ph.i108.i.preheader ], [ %indvars.iv.next.i111.i.1, %._crit_edge.i113.i.loopexit.unr-lcssa ] ; 2 uses
  %.06780.i110.i.epil.init = phi float [ %i.pl, %.lr.ph.i108.i.preheader ], [ %i.qq, %._crit_edge.i113.i.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i64 %indvars.iv103.i104.i to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i109.i.epil.init
  %i.po = load float, ptr %i.pn, align 4, !tbaa !32
  %i.pp = xor i64 %indvars.iv.i109.i.epil.init, -1
  %i.pq = getelementptr [4 x i8], ptr %i.pj, i64 %i.pp
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !32
  %i.ps = fneg nsz float %i.po
  %i.pt = call nsz float @llvm.fmuladd.f32(float %i.ps, float %i.pr, float %.06780.i110.i.epil.init)
  br label %._crit_edge.i113.i

._crit_edge.i113.i:                               ; preds = %.lr.ph.i108.i.epil.preheader, %._crit_edge.i113.i.loopexit.unr-lcssa, %.lr.ph89.i103.i
  %.067.lcssa.i.i = phi float [ %i.pl, %.lr.ph89.i103.i ], [ %i.qq, %._crit_edge.i113.i.loopexit.unr-lcssa ], [ %i.pt, %.lr.ph.i108.i.epil.preheader ] ; 2 uses
  %i.pu = fcmp nsz une float %.17487.i106.i, 0.000000e+00
  %i.pv = fdiv nsz float %.067.lcssa.i.i, %.17487.i106.i
  %.168.i114.i = select nsz i1 %i.pu, float %i.pv, float %.067.lcssa.i.i ; 4 uses
  %i.pw = fneg nsz float %.168.i114.i
  %i.px = call nsz float @llvm.fmuladd.f32(float %i.pw, float %.168.i114.i, float 1.000000e+00)
  %i.py = fmul nsz float %.17487.i106.i, %i.px    ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv103.i104.i ; 2 uses
  store float %.168.i114.i, ptr %i.pz, align 4, !tbaa !32
  br i1 %.not92.i.i, label %.loopexit.i121.i, label %.lr.ph84.preheader.i.i

.lr.ph84.preheader.i.i:                           ; preds = %._crit_edge.i113.i
  %wide.trip.count101.i116.i = and i64 %i.pi, 2147483647
  %i.qa = insertelement <2 x float> poison, float %.168.i114.i, i64 0
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph84.i117.i

.lr.ph.i108.i:                                    ; preds = %.lr.ph.i108.i, %.lr.ph.i108.i.preheader.new
  %indvars.iv.i109.i = phi i64 [ 0, %.lr.ph.i108.i.preheader.new ], [ %indvars.iv.next.i111.i.1, %.lr.ph.i108.i ] ; 5 uses
  %.06780.i110.i = phi float [ %i.pl, %.lr.ph.i108.i.preheader.new ], [ %i.qq, %.lr.ph.i108.i ]
  %niter67 = phi i64 [ 0, %.lr.ph.i108.i.preheader.new ], [ %niter67.next.1, %.lr.ph.i108.i ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i109.i
  %i.qd = load float, ptr %i.qc, align 8, !tbaa !32
  %i.qe = xor i64 %indvars.iv.i109.i, -1
  %i.qf = getelementptr [4 x i8], ptr %i.pj, i64 %i.qe
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !32
  %i.qh = fneg nsz float %i.qd
  %i.qi = call nsz float @llvm.fmuladd.f32(float %i.qh, float %i.qg, float %.06780.i110.i)
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i109.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !32
  %i.qm = xor i64 %indvars.iv.i109.i, -2
  %i.qn = getelementptr [4 x i8], ptr %i.pj, i64 %i.qm
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !32
  %i.qp = fneg nsz float %i.ql
  %i.qq = call nsz float @llvm.fmuladd.f32(float %i.qp, float %i.qo, float %i.qi) ; 3 uses
  %indvars.iv.next.i111.i.1 = add nuw nsw i64 %indvars.iv.i109.i, 2 ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %._crit_edge.i113.i.loopexit.unr-lcssa, label %.lr.ph.i108.i, !llvm.loop !45

.lr.ph84.i117.i:                                  ; preds = %.lr.ph84.i117.i, %.lr.ph84.preheader.i.i
  %indvars.iv96.i118.i = phi i64 [ 0, %.lr.ph84.preheader.i.i ], [ %indvars.iv.next97.i119.i, %.lr.ph84.i117.i ] ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv96.i118.i ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !32 ; 2 uses
  %i.qt = xor i64 %indvars.iv96.i118.i, -1
  %i.qu = getelementptr [4 x i8], ptr %i.pz, i64 %i.qt ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !32 ; 2 uses
  %i.qw = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.qx = insertelement <2 x float> %i.qw, float %i.qs, i64 1
  %i.qy = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.qz = insertelement <2 x float> %i.qy, float %i.qv, i64 1
  %i.ra = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qb, <2 x float> %i.qx, <2 x float> %i.qz) ; 2 uses
  %i.rb = extractelement <2 x float> %i.ra, i64 0
  store float %i.rb, ptr %i.qr, align 4, !tbaa !32
  %i.rc = extractelement <2 x float> %i.ra, i64 1
  store float %i.rc, ptr %i.qu, align 4, !tbaa !32
  %indvars.iv.next97.i119.i = add nuw nsw i64 %indvars.iv96.i118.i, 1 ; 2 uses
  %exitcond102.not.i120.i = icmp eq i64 %indvars.iv.next97.i119.i, %wide.trip.count101.i116.i
  br i1 %exitcond102.not.i120.i, label %.loopexit.i121.i, label %.lr.ph84.i117.i, !llvm.loop !46

compute_lpc_coefs.exit123.i:                      ; preds = %.loopexit.i121.i
  store float %i.py, ptr %i.af, align 4, !tbaa !32
  %i.rd = load ptr, ptr %i.h, align 16, !tbaa !31
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !61
  call void %i.re(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.f, ptr noundef nonnull @gain_bw_tab, i32 noundef 16) #6, !inline_history !47
  br label %bb.j

bb.j:                                             ; preds = %compute_lpc_coefs.exit123.i, %convolve.exit.i.i92.preheader.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.x, ptr noundef nonnull align 16 dereferenceable(120) %i.ak, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.rf = load i32, ptr %i.ac, align 8, !tbaa !59
  %.not84.i = icmp eq i32 %i.rf, 0
  br i1 %.not84.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(200) %i.ab, ptr noundef nonnull align 16 dereferenceable(200) %i.ad, i64 200, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.g
  %.1.i = phi ptr [ %i.al, %bb.j ], [ %i.km, %bb.l ], [ %i.km, %bb.k ], [ %i.km, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.e, label %bb.g, !llvm.loop !48

.loopexit.i149.i:                                 ; preds = %.lr.ph84.i145.i, %._crit_edge.i138.i
  %exitcond107.not.i150.i = icmp eq i64 %indvars.iv.next104.i141.i, 10
  br i1 %exitcond107.not.i150.i, label %compute_lpc_coefs.exit151.i, label %.lr.ph89.i126.i, !llvm.loop !44

.lr.ph89.i126.i:                                  ; preds = %vector.body, %.loopexit.i149.i
  %indvars.iv103.i127.i = phi i64 [ %indvars.iv.next104.i141.i, %.loopexit.i149.i ], [ 0, %vector.body ] ; 8 uses
  %.17487.i129.i = phi float [ %i.rw, %.loopexit.i149.i ], [ %i.fq, %vector.body ] ; 3 uses
  %indvars.iv.next104.i141.i = add nuw nsw i64 %indvars.iv103.i127.i, 1 ; 3 uses
  %i.rg = lshr i64 %indvars.iv.next104.i141.i, 1
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv103.i127.i ; 4 uses
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !32
  %i.rj = fneg nsz float %i.ri                    ; 3 uses
  %.not92.i131.i = icmp eq i64 %indvars.iv103.i127.i, 0 ; 2 uses
  br i1 %.not92.i131.i, label %._crit_edge.i138.i, label %.lr.ph.i133.i.preheader

.lr.ph.i133.i.preheader:                          ; preds = %.lr.ph89.i126.i
  %xtraiter68 = and i64 %indvars.iv103.i127.i, 1
  %i.rk = icmp eq i64 %indvars.iv103.i127.i, 1
  br i1 %i.rk, label %.lr.ph.i133.i.epil.preheader, label %.lr.ph.i133.i.preheader.new

.lr.ph.i133.i.preheader.new:                      ; preds = %.lr.ph.i133.i.preheader
  %unroll_iter72 = and i64 %indvars.iv103.i127.i, 9223372036854775806
  br label %.lr.ph.i133.i

._crit_edge.i138.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i133.i
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %._crit_edge.i138.i, label %.lr.ph.i133.i.epil.preheader

.lr.ph.i133.i.epil.preheader:                     ; preds = %._crit_edge.i138.i.loopexit.unr-lcssa, %.lr.ph.i133.i.preheader
  %indvars.iv.i134.i.epil.init = phi i64 [ 0, %.lr.ph.i133.i.preheader ], [ %indvars.iv.next.i136.i.1, %._crit_edge.i138.i.loopexit.unr-lcssa ] ; 2 uses
  %.06780.i135.i.epil.init = phi float [ %i.rj, %.lr.ph.i133.i.preheader ], [ %i.so, %._crit_edge.i138.i.loopexit.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %indvars.iv103.i127.i to i1
  call void @llvm.assume(i1 %lcmp.mod71)
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i134.i.epil.init
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !32
  %i.rn = xor i64 %indvars.iv.i134.i.epil.init, -1
  %i.ro = getelementptr [4 x i8], ptr %i.rh, i64 %i.rn
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !32
  %i.rq = fneg nsz float %i.rm
  %i.rr = call nsz float @llvm.fmuladd.f32(float %i.rq, float %i.rp, float %.06780.i135.i.epil.init)
  br label %._crit_edge.i138.i

._crit_edge.i138.i:                               ; preds = %.lr.ph.i133.i.epil.preheader, %._crit_edge.i138.i.loopexit.unr-lcssa, %.lr.ph89.i126.i
  %.067.lcssa.i139.i = phi float [ %i.rj, %.lr.ph89.i126.i ], [ %i.so, %._crit_edge.i138.i.loopexit.unr-lcssa ], [ %i.rr, %.lr.ph.i133.i.epil.preheader ] ; 2 uses
  %i.rs = fcmp nsz une float %.17487.i129.i, 0.000000e+00
  %i.rt = fdiv nsz float %.067.lcssa.i139.i, %.17487.i129.i
  %.168.i140.i = select nsz i1 %i.rs, float %i.rt, float %.067.lcssa.i139.i ; 4 uses
  %i.ru = fneg nsz float %.168.i140.i
  %i.rv = call nsz float @llvm.fmuladd.f32(float %i.ru, float %.168.i140.i, float 1.000000e+00)
  %i.rw = fmul nsz float %.17487.i129.i, %i.rv    ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv103.i127.i ; 2 uses
  store float %.168.i140.i, ptr %i.rx, align 4, !tbaa !32
  br i1 %.not92.i131.i, label %.loopexit.i149.i, label %.lr.ph84.preheader.i143.i

.lr.ph84.preheader.i143.i:                        ; preds = %._crit_edge.i138.i
  %wide.trip.count101.i144.i = and i64 %i.rg, 2147483647
  %i.ry = insertelement <2 x float> poison, float %.168.i140.i, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph84.i145.i

.lr.ph.i133.i:                                    ; preds = %.lr.ph.i133.i, %.lr.ph.i133.i.preheader.new
  %indvars.iv.i134.i = phi i64 [ 0, %.lr.ph.i133.i.preheader.new ], [ %indvars.iv.next.i136.i.1, %.lr.ph.i133.i ] ; 5 uses
  %.06780.i135.i = phi float [ %i.rj, %.lr.ph.i133.i.preheader.new ], [ %i.so, %.lr.ph.i133.i ]
end_hunk_0
