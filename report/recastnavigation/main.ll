Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/main?download=true
inline.NumInlined: 783
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #19
  call void @glDisable(i32 noundef 3553) #19
  call void @glEnable(i32 noundef 2929) #19
  call void @glMatrixMode(i32 noundef 5888) #19
  call void @glLoadIdentity() #19
  %i.if = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 712), align 8, !tbaa !86
  call void @glRotatef(float noundef %i.if, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #19
  %i.ig = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 716), align 4, !tbaa !86
  call void @glRotatef(float noundef %i.ig, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #19
  %i.ih = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 720), align 8, !tbaa !86
  %i.ii = fneg float %i.ih
  %i.ij = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 724), align 4, !tbaa !86
  %i.ik = fneg float %i.ij
  %i.il = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 728), align 8, !tbaa !86
  %i.im = fneg float %i.il
  call void @glTranslatef(float noundef %i.ii, float noundef %i.ik, float noundef %i.im) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @glGetDoublev(i32 noundef 2982, ptr noundef nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.in = call i32 @SDL_GetMouseState(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #19 ; 0 uses
  %i.io = load <3 x i32>, ptr getelementptr inbounds nuw (i8, ptr @app, i64 160), align 8, !tbaa !368
  %i.ip = shufflevector <3 x i32> %i.io, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.iq = sitofp <2 x i32> %i.ip to <2 x float>   ; 2 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 0
  %i.is = extractelement <2 x float> %i.iq, i64 1
  %i.it = fdiv float %i.is, %i.ir
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 172), align 4, !tbaa !380
  %i.iv = sitofp i32 %i.iu to float               ; 2 uses
  %i.iw = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 164), align 4, !tbaa !369
  %i.ix = sitofp i32 %i.iw to float
  %i.iy = fdiv float %i.iv, %i.ix
  %i.iz = load i32, ptr %i.d, align 4, !tbaa !368
  %i.ja = sitofp i32 %i.iz to float
  %i.jb = fmul float %i.it, %i.ja
  %i.jc = load i32, ptr %i.e, align 4, !tbaa !368
  %i.jd = sitofp i32 %i.jc to float
  %i.je = fneg float %i.jd
  %i.jf = call float @llvm.fmuladd.f32(float %i.je, float %i.iy, float %i.iv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.jg = fpext float %i.jb to double             ; 2 uses
  %i.jh = fpext float %i.jf to double             ; 2 uses
  %i.ji = call i32 @gluUnProject(double noundef %i.jg, double noundef %i.jh, double noundef 0.000000e+00, ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @app, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @app, i64 144), ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #19 ; 0 uses
  %i.jj = load double, ptr %i.f, align 8, !tbaa !382
  %i.jk = load double, ptr %i.g, align 8, !tbaa !382
  %i.jl = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jm = insertelement <2 x double> %i.jl, double %i.jk, i64 1
  %i.jn = fptrunc <2 x double> %i.jm to <2 x float>
  store <2 x float> %i.jn, ptr getelementptr inbounds nuw (i8, ptr @app, i64 776), align 8, !tbaa !86
  %i.jo = load double, ptr %i.h, align 8, !tbaa !382
  %i.jp = fptrunc double %i.jo to float
  store float %i.jp, ptr getelementptr inbounds nuw (i8, ptr @app, i64 784), align 8, !tbaa !86
  %i.jq = call i32 @gluUnProject(double noundef %i.jg, double noundef %i.jh, double noundef 1.000000e+00, ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @app, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @app, i64 144), ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #19 ; 0 uses
  %i.jr = load double, ptr %i.f, align 8, !tbaa !382
  %i.js = load double, ptr %i.g, align 8, !tbaa !382
  %i.jt = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %i.js, i64 1
  %i.jv = fptrunc <2 x double> %i.ju to <2 x float>
  store <2 x float> %i.jv, ptr getelementptr inbounds nuw (i8, ptr @app, i64 788), align 4, !tbaa !86
  %i.jw = load double, ptr %i.h, align 8, !tbaa !382
  %i.jx = fptrunc double %i.jw to float
  store float %i.jx, ptr getelementptr inbounds nuw (i8, ptr @app, i64 796), align 4, !tbaa !86
  %i.jy = call ptr @SDL_GetKeyboardState(ptr noundef null) #19 ; 12 uses
  %i.jz = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 748), align 4, !tbaa !383
  %i.ka = fmul nnan float %i.gy, 4.000000e+00     ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 26
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !23
  %.not120 = icmp eq i8 %i.kc, 0
  br i1 %.not120, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 82
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !23
  %.not121 = icmp eq i8 %i.ke, 0
  %i.kf = select i1 %.not121, float -1.000000e+00, float 1.000000e+00
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %i.kg = phi float [ 1.000000e+00, %.loopexit ], [ %i.kf, %bb.an ]
  %i.kh = call float @llvm.fmuladd.f32(float %i.ka, float %i.kg, float %i.jz) ; 3 uses
  %i.ki = fcmp olt float %i.kh, 0.000000e+00
  %i.kj = fcmp ogt float %i.kh, 1.000000e+00
  %i.kk = select i1 %i.kj, float 1.000000e+00, float %i.kh
  %i.kl = select i1 %i.ki, float 0.000000e+00, float %i.kk
  store float %i.kl, ptr getelementptr inbounds nuw (i8, ptr @app, i64 748), align 4, !tbaa !383
  %i.km = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 756), align 4, !tbaa !384
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !23
  %.not122 = icmp eq i8 %i.ko, 0
  br i1 %.not122, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 80
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !23
  %.not123 = icmp eq i8 %i.kq, 0
  %i.kr = select i1 %.not123, float -1.000000e+00, float 1.000000e+00
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ks = phi float [ 1.000000e+00, %bb.ao ], [ %i.kr, %bb.ap ]
  %i.kt = call float @llvm.fmuladd.f32(float %i.ka, float %i.ks, float %i.km) ; 3 uses
  %i.ku = fcmp olt float %i.kt, 0.000000e+00
  %i.kv = fcmp ogt float %i.kt, 1.000000e+00
  %i.kw = select i1 %i.kv, float 1.000000e+00, float %i.kt
  %i.kx = select i1 %i.ku, float 0.000000e+00, float %i.kw
  store float %i.kx, ptr getelementptr inbounds nuw (i8, ptr @app, i64 756), align 4, !tbaa !384
  %i.ky = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 752), align 8, !tbaa !385
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jy, i64 22
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !23
  %.not124 = icmp eq i8 %i.la, 0
  br i1 %.not124, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jy, i64 81
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !23
  %.not125 = icmp eq i8 %i.lc, 0
  %i.ld = select i1 %.not125, float -1.000000e+00, float 1.000000e+00
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.le = phi float [ 1.000000e+00, %bb.aq ], [ %i.ld, %bb.ar ]
  %i.lf = call float @llvm.fmuladd.f32(float %i.ka, float %i.le, float %i.ky) ; 3 uses
  %i.lg = fcmp olt float %i.lf, 0.000000e+00
  %i.lh = fcmp ogt float %i.lf, 1.000000e+00
  %i.li = select i1 %i.lh, float 1.000000e+00, float %i.lf
  %i.lj = select i1 %i.lg, float 0.000000e+00, float %i.li
  store float %i.lj, ptr getelementptr inbounds nuw (i8, ptr @app, i64 752), align 8, !tbaa !385
  %i.lk = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 760), align 8, !tbaa !386
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jy, i64 7
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !23
  %.not126 = icmp eq i8 %i.lm, 0
  br i1 %.not126, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jy, i64 79
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !23
  %.not127 = icmp eq i8 %i.lo, 0
  %i.lp = select i1 %.not127, float -1.000000e+00, float 1.000000e+00
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.lq = phi float [ 1.000000e+00, %bb.as ], [ %i.lp, %bb.at ]
  %i.lr = call float @llvm.fmuladd.f32(float %i.ka, float %i.lq, float %i.lk) ; 3 uses
  %i.ls = fcmp olt float %i.lr, 0.000000e+00
  %i.lt = fcmp ogt float %i.lr, 1.000000e+00
  %i.lu = select i1 %i.lt, float 1.000000e+00, float %i.lr
  %i.lv = select i1 %i.ls, float 0.000000e+00, float %i.lu
  store float %i.lv, ptr getelementptr inbounds nuw (i8, ptr @app, i64 760), align 8, !tbaa !386
  %i.lw = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 764), align 4, !tbaa !387
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !23
  %.not128 = icmp eq i8 %i.ly, 0
  br i1 %.not128, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jy, i64 75
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !23
  %.not129 = icmp eq i8 %i.ma, 0
  %i.mb = select i1 %.not129, float -1.000000e+00, float 1.000000e+00
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.mc = phi float [ 1.000000e+00, %bb.au ], [ %i.mb, %bb.av ]
  %i.md = call float @llvm.fmuladd.f32(float %i.ka, float %i.mc, float %i.lw) ; 3 uses
  %i.me = fcmp olt float %i.md, 0.000000e+00
  %i.mf = fcmp ogt float %i.md, 1.000000e+00
  %i.mg = select i1 %i.mf, float 1.000000e+00, float %i.md
  %i.mh = select i1 %i.me, float 0.000000e+00, float %i.mg
  store float %i.mh, ptr getelementptr inbounds nuw (i8, ptr @app, i64 764), align 4, !tbaa !387
  %i.mi = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 768), align 8, !tbaa !388
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !23
  %.not130 = icmp eq i8 %i.mk, 0
  br i1 %.not130, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jy, i64 78
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !23
  %.not131 = icmp eq i8 %i.mm, 0
  %i.mn = select i1 %.not131, float -1.000000e+00, float 1.000000e+00
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.mo = phi float [ 1.000000e+00, %bb.aw ], [ %i.mn, %bb.ax ]
  %i.mp = call float @llvm.fmuladd.f32(float %i.ka, float %i.mo, float %i.mi) ; 3 uses
  %i.mq = fcmp olt float %i.mp, 0.000000e+00
  %i.mr = fcmp ogt float %i.mp, 1.000000e+00
  %i.ms = select i1 %i.mr, float 1.000000e+00, float %i.mp
  %i.mt = select i1 %i.mq, float 0.000000e+00, float %i.ms
  store float %i.mt, ptr getelementptr inbounds nuw (i8, ptr @app, i64 768), align 8, !tbaa !388
  %i.mu = call i32 @SDL_GetModState() #19
  %i.mv = and i32 %i.mu, 3
  %.not132 = icmp eq i32 %i.mv, 0
  %i.mw = select i1 %.not132, float 2.200000e+01, float 4.000000e+00 ; 3 uses
  %i.mx = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 760), align 8, !tbaa !386
  %i.my = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 756), align 4, !tbaa !384
  %i.mz = fsub float %i.mx, %i.my
  %i.na = fmul float %i.mz, %i.mw
  %i.nb = fmul float %i.gy, %i.na                 ; 2 uses
  %i.nc = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 752), align 8, !tbaa !385
  %i.nd = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 748), align 4, !tbaa !383
  %i.ne = fsub float %i.nc, %i.nd
  %i.nf = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 744), align 8, !tbaa !365
  %i.ng = fmul float %i.nf, 2.000000e+00
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @app, i64 744), align 8, !tbaa !365
  %i.nh = load double, ptr %i.c, align 16, !tbaa !382
  %i.ni = fptrunc double %i.nh to float
  %i.nj = load double, ptr %i.bx, align 16, !tbaa !382
  %i.nk = load double, ptr %i.by, align 16, !tbaa !382
  %37 = load <2 x double>, ptr %i.bz, align 16
  %i.nl = load <2 x double>, ptr %i.ca, align 16
  %i.nm = load double, ptr %i.cb, align 16, !tbaa !382
  %i.nn = fptrunc double %i.nm to float
  %38 = fmul float %i.mw, %i.ne
  %39 = call float @llvm.fmuladd.f32(float %38, float %i.gy, float %i.ng) ; 2 uses
  %i.no = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 728), align 8, !tbaa !86
  %i.np = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 720), align 8, !tbaa !86
  %i.nq = call float @llvm.fmuladd.f32(float %i.nb, float %i.ni, float %i.np)
  %40 = insertelement <2 x double> %37, double %i.nj, i64 1
  %41 = fptrunc <2 x double> %40 to <2 x float>
  %i.nr = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 724), align 4, !tbaa !86
  %42 = insertelement <2 x float> poison, float %39, i64 0
  %43 = insertelement <2 x float> %42, float %i.nb, i64 1 ; 2 uses
  %44 = insertelement <2 x float> poison, float %i.nq, i64 0
  %45 = insertelement <2 x float> %44, float %i.nr, i64 1
  %46 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %41, <2 x float> %45) ; 2 uses
  %47 = extractelement <2 x float> %46, i64 0
  store float %47, ptr getelementptr inbounds nuw (i8, ptr @app, i64 720), align 8, !tbaa !86
  %i.ns = insertelement <2 x double> %i.nl, double %i.nk, i64 1
  %i.nt = fptrunc <2 x double> %i.ns to <2 x float>
  %48 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nu = insertelement <2 x float> %48, float %i.no, i64 1
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %i.nt, <2 x float> %i.nu)
  %50 = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 764), align 4, !tbaa !387
  %51 = load float, ptr getelementptr inbounds nuw (i8, ptr @app, i64 768), align 8, !tbaa !388
  %52 = fsub float %50, %51
  %53 = fmul float %i.mw, %52
  %i.nv = insertelement <2 x float> poison, float %53, i64 0
  %i.nw = insertelement <2 x float> %i.nv, float %39, i64 1
  %i.nx = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ny = insertelement <2 x float> %i.nx, float %i.nn, i64 1
  %i.nz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nw, <2 x float> %i.ny, <2 x float> %49)
  store <2 x float> %i.nz, ptr getelementptr inbounds nuw (i8, ptr @app, i64 724), align 4, !tbaa !86
  call void @glEnable(i32 noundef 2912) #19
  %i.oa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 3 uses
  %.not275 = icmp eq ptr %i.oa, null
  br i1 %.not275, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !34
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 64
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(200) %i.oa) #19, !call_target !389
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.oe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 680), align 8, !tbaa !30 ; 2 uses
  %.not276 = icmp eq ptr %i.oe, null
  br i1 %.not276, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN8TestCase6renderEv(ptr noundef nonnull align 8 dereferenceable(88) %i.oe) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @glDisable(i32 noundef 2912) #19
  call void @_Z26ImGui_ImplOpenGL2_NewFramev() #19
  call void @_Z23ImGui_ImplSDL2_NewFramev() #19
  call void @_ZN5ImGui8NewFrameEv() #19
  %i.of = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 3 uses
  %.not277 = icmp eq ptr %i.of, null
  br i1 %.not277, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !34
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 72
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(200) %i.of) #19, !call_target !390
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.oj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 680), align 8, !tbaa !30 ; 2 uses
  %.not278 = icmp eq ptr %i.oj, null
  br i1 %.not278, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ok = call noundef zeroext i1 @_ZN8TestCase13renderOverlayEv(ptr noundef nonnull align 8 dereferenceable(88) %i.oj) #19 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ol = load i8, ptr getelementptr inbounds nuw (i8, ptr @app, i64 840), align 8, !tbaa !74, !range !307, !noundef !308
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.bh, label %.thread256

bb.bh:                                            ; preds = %bb.bg
  %i.on = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store <2 x float> <float 2.800000e+02, float 2.000000e+01>, ptr %5, align 8, !tbaa !86
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.on, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -2130706433, ptr noundef nonnull @.str.12, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.oo = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 160), align 8, !tbaa !391
  %i.op = add nsw i32 %i.oo, -260
  %i.oq = sitofp i32 %i.op to float
  store float %i.oq, ptr %10, align 4, !tbaa !392
  store float 1.000000e+01, ptr %i.cc, align 4, !tbaa !393
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !86
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.or = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 164), align 4, !tbaa !369
  %i.os = add nsw i32 %i.or, -20
  %i.ot = sitofp i32 %i.os to float
  store float 2.500000e+02, ptr %12, align 4, !tbaa !392
  store float %i.ot, ptr %i.cd, align 4, !tbaa !393
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %12, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ou = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 294) #19 ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.14) #19
  %i.ov = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.15, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @app, i64 841)) #19 ; 0 uses
  %i.ow = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @app, i64 842)) #19 ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.17) #19
  %i.ox = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87 ; 2 uses
  %i.oy = icmp sgt i32 %i.ox, -1
  br i1 %i.oy, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.oz = zext nneg i32 %i.ox to i64
  %i.pa = getelementptr inbounds nuw [64 x i8], ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 16, !tbaa !22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.pc = phi ptr [ %i.pb, %bb.bi ], [ @.str.19, %bb.bh ]
  %i.pd = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef nonnull @.str.18, ptr noundef %i.pc, i32 noundef 0) #19
  br i1 %i.pd, label %.preheader290.preheader, label %bb.bu

.preheader290.preheader:                          ; preds = %bb.bj
  %i.pe = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  %i.pf = icmp eq i32 %i.pe, 0                    ; 3 uses
  %i.pg = load ptr, ptr @_ZN12_GLOBAL__N_19g_samplesE, align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !86
  %i.ph = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.pg, i1 noundef zeroext %i.pf, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br i1 %i.ph, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.preheader290.preheader
  %i.pi = xor i1 %i.pf, true
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.preheader290.preheader
  %.1100 = phi i1 [ %i.pi, %bb.bk ], [ false, %.preheader290.preheader ]
  br i1 %i.pf, label %bb.bm, label %.preheader290.1

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN5ImGui19SetItemDefaultFocusEv() #19
  br label %.preheader290.1

.preheader290.1:                                  ; preds = %bb.bm, %bb.bl
  %i.pj = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  %i.pk = icmp eq i32 %i.pj, 1                    ; 3 uses
  %i.pl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 64), align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !86
  %i.pm = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.pl, i1 noundef zeroext %i.pk, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br i1 %i.pm, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.preheader290.1
  %i.pn = xor i1 %i.pk, true
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.preheader290.1
  %.1100.1 = phi i1 [ %i.pn, %bb.bn ], [ %.1100, %.preheader290.1 ]
  br i1 %i.pk, label %bb.bp, label %.preheader290.2

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5ImGui19SetItemDefaultFocusEv() #19
  br label %.preheader290.2

.preheader290.2:                                  ; preds = %bb.bp, %bb.bo
  %i.po = load i32, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  %i.pp = icmp eq i32 %i.po, 2                    ; 3 uses
  %i.pq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 128), align 16, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !86
  %i.pr = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %i.pq, i1 noundef zeroext %i.pp, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br i1 %i.pr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.preheader290.2
  %i.ps = xor i1 %i.pp, true
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.preheader290.2
  %.1100.2 = phi i1 [ %i.ps, %bb.bq ], [ %.1100.1, %.preheader290.2 ]
  br i1 %i.pp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @_ZN5ImGui19SetItemDefaultFocusEv() #19
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void @_ZN5ImGui8EndComboEv() #19
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bj
  %.2101 = phi i1 [ %.1100.2, %bb.bt ], [ false, %bb.bj ] ; 2 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.20) #19
  %i.pt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 808), align 8, !tbaa !22
  %i.pu = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef nonnull @.str.21, ptr noundef %i.pt, i32 noundef 0) #19
  br i1 %i.pu, label %bb.bv, label %bb.cc

bb.bv:                                            ; preds = %bb.bu
  %i.pv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 848), align 8, !tbaa !26 ; 3 uses
  %i.pw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 856), align 8, !tbaa !27 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.pw, %i.pv
  br i1 %.not.i.i138, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit146, label %.lr.ph.i.i.i.i139

.lr.ph.i.i.i.i139:                                ; preds = %bb.bv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i142
  %.05.i.i.i.i140 = phi ptr [ %i.qc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i142 ], [ %i.pv, %bb.bv ] ; 3 uses
  %i.px = load ptr, ptr %.05.i.i.i.i140, align 8, !tbaa !22 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i140, i64 16 ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i141: ; preds = %.lr.ph.i.i.i.i139
  %i.qa = load i64, ptr %i.py, align 8, !tbaa !23
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.px, i64 noundef %i.qb) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i142

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i142: ; preds = %.lr.ph.i.i.i.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i141
  %i.qc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i140, i64 32 ; 2 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.qc, %i.pw
  br i1 %.not.i.i.i.i143, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i144, label %.lr.ph.i.i.i.i139, !llvm.loop !0
end_hunk_0
