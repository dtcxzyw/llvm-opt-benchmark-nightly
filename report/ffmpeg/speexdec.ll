Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/speexdec?download=true
inline.NumInlined: 80
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 74
begin_hunk_0_@nb_decode:bb.a
  %i.rr = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.rs = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.rt = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ru = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.rv = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.rw = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.rx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ry = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.rz = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.sa = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.sb = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.sc = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.sd = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.se = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.sf = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.sh = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.si = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.sj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %.loopexit479
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !60
  %.not399 = icmp eq i32 %i.st, 0
  br i1 %.not399, label %bb.bn, label %bb.bk

bb.ah:                                            ; preds = %bb.af, %.loopexit479
  %indvars.iv542 = phi i64 [ 0, %bb.af ], [ %indvars.iv.next543, %.loopexit479 ] ; 2 uses
  %.0349513 = phi i32 [ 40, %bb.af ], [ %.1350, %.loopexit479 ] ; 11 uses
  %.0352512 = phi float [ 0.000000e+00, %bb.af ], [ %i.wx, %.loopexit479 ]
  %.0353511 = phi float [ 0.000000e+00, %bb.af ], [ %.1354, %.loopexit479 ] ; 6 uses
  %i.su = mul nuw nsw i64 %indvars.iv542, 40      ; 3 uses
  %i.sv = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.su ; 45 uses
  %i.sx = load ptr, ptr %i.of, align 8, !tbaa !52 ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.su
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.sw, i8 0, i64 160, i1 false)
  %i.sz = load ptr, ptr %i.gg, align 8, !tbaa !53
  %i.ta = load i32, ptr %i.gi, align 8, !tbaa !54
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.sz, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !76 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !135 ; 2 uses
  %.not404 = icmp eq ptr %i.tf, null
  br i1 %.not404, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1004) #11
  call void @abort() #12
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.tg = load i32, ptr %i.td, align 8, !tbaa !132 ; 3 uses
  switch i32 %i.tg, label %bb.ak [
    i32 -1, label %bb.al
    i32 0, label %vector.ph
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.th = sub nsw i32 %.0351, %i.tg
  %i.ti = call i32 @llvm.smax.i32(i32 %i.th, i32 16)
  %i.tj = add nuw nsw i32 %i.ti, 1
  %i.tk = add nsw i32 %i.tg, %.0351
  %i.tl = call i32 @llvm.smin.i32(i32 %i.tk, i32 17)
  br label %vector.ph

bb.al:                                            ; preds = %bb.aj
  br label %vector.ph

vector.ph:                                        ; preds = %bb.ak, %bb.aj, %bb.al
  %.1338 = phi i32 [ 17, %bb.al ], [ %i.tj, %bb.ak ], [ %.0351, %bb.aj ]
  %.1336 = phi i32 [ 144, %bb.al ], [ %i.tl, %bb.ak ], [ %.0351, %bb.aj ]
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 32
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !136
  %i.to = load i32, ptr %i.jn, align 8, !tbaa !62
  %i.tp = load float, ptr %i.og, align 4, !tbaa !137
  %i.tq = trunc nuw nsw i64 %i.su to i32
  call void %i.tf(ptr noundef nonnull %i.sw, ptr noundef nonnull %i.c, i32 noundef %.1338, i32 noundef %.1336, float noundef %.0355, ptr noundef %i.tn, i32 noundef 40, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %2, i32 noundef %i.to, i32 noundef %i.tq, float noundef %i.tp, i32 noundef 0) #11
  %wide.load = load <4 x float>, ptr %i.c, align 16, !tbaa !66 ; 4 uses
  %i.tr = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load, /* (nan inf zero sub) */ i32 759)
  %i.ts = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.tt = fcmp nsz olt <4 x float> %i.ts, splat (float f0x322BCC77)
  %i.tu = or <4 x i1> %i.tr, %i.tt
  %i.tv = fcmp nsz ogt <4 x float> %wide.load, splat (float -3.200000e+04)
  %i.tw = select nsz <4 x i1> %i.tv, <4 x float> %wide.load, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.tx = fcmp nsz ogt <4 x float> %i.tw, splat (float 3.200000e+04)
  %i.ty = select nsz <4 x i1> %i.tx, <4 x float> splat (float 3.200000e+04), <4 x float> %i.tw
  %predphi = select <4 x i1> %i.tu, <4 x float> zeroinitializer, <4 x float> %i.ty
  store <4 x float> %predphi, ptr %i.c, align 16, !tbaa !66
  %wide.load.1 = load <4 x float>, ptr %i.sj, align 16, !tbaa !66 ; 4 uses
  %i.tz = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.1, /* (nan inf zero sub) */ i32 759)
  %i.ua = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.1)
  %i.ub = fcmp nsz olt <4 x float> %i.ua, splat (float f0x322BCC77)
  %i.uc = or <4 x i1> %i.tz, %i.ub
  %i.ud = fcmp nsz ogt <4 x float> %wide.load.1, splat (float -3.200000e+04)
  %i.ue = select nsz <4 x i1> %i.ud, <4 x float> %wide.load.1, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.uf = fcmp nsz ogt <4 x float> %i.ue, splat (float 3.200000e+04)
  %i.ug = select nsz <4 x i1> %i.uf, <4 x float> splat (float 3.200000e+04), <4 x float> %i.ue
  %predphi.1 = select <4 x i1> %i.uc, <4 x float> zeroinitializer, <4 x float> %i.ug
  store <4 x float> %predphi.1, ptr %i.sj, align 16, !tbaa !66
  %wide.load.2 = load <4 x float>, ptr %i.sk, align 16, !tbaa !66 ; 4 uses
  %i.uh = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.2, /* (nan inf zero sub) */ i32 759)
  %i.ui = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.2)
  %i.uj = fcmp nsz olt <4 x float> %i.ui, splat (float f0x322BCC77)
  %i.uk = or <4 x i1> %i.uh, %i.uj
  %i.ul = fcmp nsz ogt <4 x float> %wide.load.2, splat (float -3.200000e+04)
  %i.um = select nsz <4 x i1> %i.ul, <4 x float> %wide.load.2, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.un = fcmp nsz ogt <4 x float> %i.um, splat (float 3.200000e+04)
  %i.uo = select nsz <4 x i1> %i.un, <4 x float> splat (float 3.200000e+04), <4 x float> %i.um
  %predphi.2 = select <4 x i1> %i.uk, <4 x float> zeroinitializer, <4 x float> %i.uo
  store <4 x float> %predphi.2, ptr %i.sk, align 16, !tbaa !66
  %wide.load.3 = load <4 x float>, ptr %i.sl, align 16, !tbaa !66 ; 4 uses
  %i.up = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.3, /* (nan inf zero sub) */ i32 759)
  %i.uq = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.3)
  %i.ur = fcmp nsz olt <4 x float> %i.uq, splat (float f0x322BCC77)
  %i.us = or <4 x i1> %i.up, %i.ur
  %i.ut = fcmp nsz ogt <4 x float> %wide.load.3, splat (float -3.200000e+04)
  %i.uu = select nsz <4 x i1> %i.ut, <4 x float> %wide.load.3, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.uv = fcmp nsz ogt <4 x float> %i.uu, splat (float 3.200000e+04)
  %i.uw = select nsz <4 x i1> %i.uv, <4 x float> splat (float 3.200000e+04), <4 x float> %i.uu
  %predphi.3 = select <4 x i1> %i.us, <4 x float> zeroinitializer, <4 x float> %i.uw
  store <4 x float> %predphi.3, ptr %i.sl, align 16, !tbaa !66
  %wide.load.4 = load <4 x float>, ptr %i.sm, align 16, !tbaa !66 ; 4 uses
  %i.ux = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.4, /* (nan inf zero sub) */ i32 759)
  %i.uy = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.4)
  %i.uz = fcmp nsz olt <4 x float> %i.uy, splat (float f0x322BCC77)
  %i.va = or <4 x i1> %i.ux, %i.uz
  %i.vb = fcmp nsz ogt <4 x float> %wide.load.4, splat (float -3.200000e+04)
  %i.vc = select nsz <4 x i1> %i.vb, <4 x float> %wide.load.4, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.vd = fcmp nsz ogt <4 x float> %i.vc, splat (float 3.200000e+04)
  %i.ve = select nsz <4 x i1> %i.vd, <4 x float> splat (float 3.200000e+04), <4 x float> %i.vc
  %predphi.4 = select <4 x i1> %i.va, <4 x float> zeroinitializer, <4 x float> %i.ve
  store <4 x float> %predphi.4, ptr %i.sm, align 16, !tbaa !66
  %wide.load.5 = load <4 x float>, ptr %i.sn, align 16, !tbaa !66 ; 4 uses
  %i.vf = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.5, /* (nan inf zero sub) */ i32 759)
  %i.vg = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.5)
  %i.vh = fcmp nsz olt <4 x float> %i.vg, splat (float f0x322BCC77)
  %i.vi = or <4 x i1> %i.vf, %i.vh
  %i.vj = fcmp nsz ogt <4 x float> %wide.load.5, splat (float -3.200000e+04)
  %i.vk = select nsz <4 x i1> %i.vj, <4 x float> %wide.load.5, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.vl = fcmp nsz ogt <4 x float> %i.vk, splat (float 3.200000e+04)
  %i.vm = select nsz <4 x i1> %i.vl, <4 x float> splat (float 3.200000e+04), <4 x float> %i.vk
  %predphi.5 = select <4 x i1> %i.vi, <4 x float> zeroinitializer, <4 x float> %i.vm
  store <4 x float> %predphi.5, ptr %i.sn, align 16, !tbaa !66
  %wide.load.6 = load <4 x float>, ptr %i.so, align 16, !tbaa !66 ; 4 uses
  %i.vn = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.6, /* (nan inf zero sub) */ i32 759)
  %i.vo = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.6)
  %i.vp = fcmp nsz olt <4 x float> %i.vo, splat (float f0x322BCC77)
  %i.vq = or <4 x i1> %i.vn, %i.vp
  %i.vr = fcmp nsz ogt <4 x float> %wide.load.6, splat (float -3.200000e+04)
  %i.vs = select nsz <4 x i1> %i.vr, <4 x float> %wide.load.6, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.vt = fcmp nsz ogt <4 x float> %i.vs, splat (float 3.200000e+04)
  %i.vu = select nsz <4 x i1> %i.vt, <4 x float> splat (float 3.200000e+04), <4 x float> %i.vs
  %predphi.6 = select <4 x i1> %i.vq, <4 x float> zeroinitializer, <4 x float> %i.vu
  store <4 x float> %predphi.6, ptr %i.so, align 16, !tbaa !66
  %wide.load.7 = load <4 x float>, ptr %i.sp, align 16, !tbaa !66 ; 4 uses
  %i.vv = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.7, /* (nan inf zero sub) */ i32 759)
  %i.vw = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.7)
  %i.vx = fcmp nsz olt <4 x float> %i.vw, splat (float f0x322BCC77)
  %i.vy = or <4 x i1> %i.vv, %i.vx
  %i.vz = fcmp nsz ogt <4 x float> %wide.load.7, splat (float -3.200000e+04)
  %i.wa = select nsz <4 x i1> %i.vz, <4 x float> %wide.load.7, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.wb = fcmp nsz ogt <4 x float> %i.wa, splat (float 3.200000e+04)
  %i.wc = select nsz <4 x i1> %i.wb, <4 x float> splat (float 3.200000e+04), <4 x float> %i.wa
  %predphi.7 = select <4 x i1> %i.vy, <4 x float> zeroinitializer, <4 x float> %i.wc
  store <4 x float> %predphi.7, ptr %i.sp, align 16, !tbaa !66
  %wide.load.8 = load <4 x float>, ptr %i.sq, align 16, !tbaa !66 ; 4 uses
  %i.wd = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.8, /* (nan inf zero sub) */ i32 759)
  %i.we = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.8)
  %i.wf = fcmp nsz olt <4 x float> %i.we, splat (float f0x322BCC77)
  %i.wg = or <4 x i1> %i.wd, %i.wf
  %i.wh = fcmp nsz ogt <4 x float> %wide.load.8, splat (float -3.200000e+04)
  %i.wi = select nsz <4 x i1> %i.wh, <4 x float> %wide.load.8, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.wj = fcmp nsz ogt <4 x float> %i.wi, splat (float 3.200000e+04)
  %i.wk = select nsz <4 x i1> %i.wj, <4 x float> splat (float 3.200000e+04), <4 x float> %i.wi
  %predphi.8 = select <4 x i1> %i.wg, <4 x float> zeroinitializer, <4 x float> %i.wk
  store <4 x float> %predphi.8, ptr %i.sq, align 16, !tbaa !66
  %wide.load.9 = load <4 x float>, ptr %i.sr, align 16, !tbaa !66 ; 4 uses
  %i.wl = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %wide.load.9, /* (nan inf zero sub) */ i32 759)
  %i.wm = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.9)
  %i.wn = fcmp nsz olt <4 x float> %i.wm, splat (float f0x322BCC77)
  %i.wo = or <4 x i1> %i.wl, %i.wn
  %i.wp = fcmp nsz ogt <4 x float> %wide.load.9, splat (float -3.200000e+04)
  %i.wq = select nsz <4 x i1> %i.wp, <4 x float> %wide.load.9, <4 x float> splat (float -3.200000e+04) ; 2 uses
  %i.wr = fcmp nsz ogt <4 x float> %i.wq, splat (float 3.200000e+04)
  %i.ws = select nsz <4 x i1> %i.wr, <4 x float> splat (float 3.200000e+04), <4 x float> %i.wq
  %predphi.9 = select <4 x i1> %i.wo, <4 x float> zeroinitializer, <4 x float> %i.ws
  store <4 x float> %predphi.9, ptr %i.sr, align 16, !tbaa !66
  %i.wt = load float, ptr %i.oh, align 4, !tbaa !66
  %i.wu = call nsz float @llvm.fabs.f32(float %i.wt)
  %i.wv = load float, ptr %i.e, align 4, !tbaa !66 ; 3 uses
  %5 = fcmp nsz ogt float %i.wv, 0.000000e+00
  %6 = fmul nsz float %i.wv, -5.000000e-01
  %7 = select nsz i1 %5, float %i.wv, float %6
  %8 = fadd nsz float %i.wu, %7
  %9 = load float, ptr %i.oi, align 4, !tbaa !66  ; 3 uses
  %10 = fcmp nsz ogt float %9, 0.000000e+00
  %11 = fmul nsz float %9, -5.000000e-01
  %12 = select nsz i1 %10, float %9, float %11
  %i.ww = fadd nsz float %8, %12                  ; 6 uses
  %i.wx = fadd nsz float %.0352512, %i.ww         ; 2 uses
  %i.wy = fcmp nsz ogt float %i.ww, %.0353511     ; 2 uses
  br i1 %i.wy, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %vector.ph
  %i.wz = shl nsw i32 %.0349513, 1
  %i.xa = load i32, ptr %i.a, align 4, !tbaa !42  ; 4 uses
  %i.xb = add i32 %i.wz, -3
  %i.xc = sub i32 %i.xb, %i.xa
  %i.xd = icmp ult i32 %i.xc, -5
  br i1 %i.xd, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.xe = mul nsw i32 %.0349513, 3
  %i.xf = add i32 %i.xe, -4
  %i.xg = sub i32 %i.xf, %i.xa
  %i.xh = icmp ult i32 %i.xg, -7
  br i1 %i.xh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.xi = shl nsw i32 %.0349513, 2
  %i.xj = add i32 %i.xi, -5
  %i.xk = sub i32 %i.xj, %i.xa
  %i.xl = icmp ult i32 %i.xk, -9
  br i1 %i.xl, label %.thread473, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %vector.ph
  %i.xm = fmul nsz float %.0353511, 6.000000e-01
  %i.xn = fcmp nsz ogt float %i.ww, %i.xm
  br i1 %i.xn, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.xo = load i32, ptr %i.a, align 4, !tbaa !42  ; 6 uses
  %i.xp = add i32 %.0349513, 2
  %i.xq = shl i32 %i.xo, 1
  %i.xr = sub i32 %i.xp, %i.xq
  %i.xs = icmp ult i32 %i.xr, 5
  br i1 %i.xs, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.neg = mul i32 %i.xo, -3
  %i.xt = add i32 %.0349513, 3
  %i.xu = add i32 %i.xt, %.neg
  %i.xv = icmp ult i32 %i.xu, 7
  br i1 %i.xv, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.xw = add i32 %.0349513, 4
  %i.xx = shl i32 %i.xo, 2
  %i.xy = sub i32 %i.xw, %i.xx
  %i.xz = icmp ult i32 %i.xy, 9
  br i1 %i.xz, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.ya = fmul nsz float %i.ww, 6.700000e-01
  %i.yb = fcmp nsz ogt float %i.ya, %.0353511
  br i1 %i.yb, label %bb.au, label %.thread473

bb.au:                                            ; preds = %bb.at
  %i.yc = shl nsw i32 %.0349513, 1
  %i.yd = load i32, ptr %i.a, align 4, !tbaa !42  ; 6 uses
  %i.ye = add i32 %i.yc, 2
  %i.yf = sub i32 %i.ye, %i.yd
  %i.yg = icmp ult i32 %i.yf, 5
  br i1 %i.yg, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.yh = mul nsw i32 %.0349513, 3
  %i.yi = add i32 %i.yh, 3
  %i.yj = sub i32 %i.yi, %i.yd
  %i.yk = icmp ult i32 %i.yj, 7
  br i1 %i.yk, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.yl = shl nsw i32 %.0349513, 2
  %i.ym = add i32 %i.yl, 4
  %i.yn = sub i32 %i.ym, %i.yd
  %i.yo = icmp ult i32 %i.yn, 9
  br i1 %i.yo, label %bb.ax, label %.thread473

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq
  %i.yp = phi i32 [ %i.yd, %bb.aw ], [ %i.yd, %bb.av ], [ %i.yd, %bb.au ], [ %i.xo, %bb.as ], [ %i.xo, %bb.ar ], [ %i.xo, %bb.aq ] ; 2 uses
  br i1 %i.wy, label %bb.ay, label %.thread473

bb.ay:                                            ; preds = %bb.ax
  br label %.thread473

.thread473:                                       ; preds = %bb.ao, %bb.ax, %bb.ay, %bb.aw, %bb.at
  %.1354 = phi nsz float [ %.0353511, %bb.at ], [ %.0353511, %bb.ax ], [ %.0353511, %bb.aw ], [ %i.ww, %bb.ay ], [ %i.ww, %bb.ao ]
  %.1350 = phi i32 [ %.0349513, %bb.at ], [ %i.yp, %bb.ax ], [ %.0349513, %bb.aw ], [ %i.yp, %bb.ay ], [ %i.xa, %bb.ao ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.b, i8 0, i64 160, i1 false)
  %i.yq = load ptr, ptr %i.gg, align 8, !tbaa !53
  %i.yr = load i32, ptr %i.gi, align 8, !tbaa !54
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.yq, i64 %i.ys
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !76 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !138
  switch i32 %i.yw, label %bb.bb [
    i32 3, label %bb.az
    i32 1, label %bb.ba
  ]

bb.az:                                            ; preds = %.thread473
  %i.yx = load i32, ptr %i.nc, align 8, !tbaa !70 ; 3 uses
  %i.yy = load i32, ptr %i.nd, align 8, !tbaa !69
  %i.yz = load ptr, ptr %2, align 8, !tbaa !67
  %i.za = lshr i32 %i.yx, 3
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 1, !tbaa !36
  %i.ze = call i32 @llvm.bswap.i32(i32 %i.zd)
  %i.zf = and i32 %i.yx, 7
  %i.zg = shl i32 %i.ze, %i.zf
  %i.zh = lshr i32 %i.zg, 29
  %i.zi = add i32 %i.yx, 3
  %i.zj = call i32 @llvm.umin.i32(i32 %i.yy, i32 %i.zi)
  store i32 %i.zj, ptr %i.nc, align 8, !tbaa !70
  br label %.sink.split672

bb.ba:                                            ; preds = %.thread473
  %i.zk = load i32, ptr %i.nc, align 8, !tbaa !70 ; 4 uses
  %i.zl = load ptr, ptr %2, align 8, !tbaa !67
  %i.zm = lshr i32 %i.zk, 3
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !36
  %i.zq = load i32, ptr %i.nd, align 8, !tbaa !69
  %i.zr = icmp slt i32 %i.zk, %i.zq
  %i.zs = zext i1 %i.zr to i32
  %spec.select.i426 = add i32 %i.zk, %i.zs
  %i.zt = zext i8 %i.zp to i32
  %i.zu = and i32 %i.zk, 7
  %i.zv = shl nuw nsw i32 %i.zt, %i.zu
  %i.zw = lshr i32 %i.zv, 7
  store i32 %spec.select.i426, ptr %i.nc, align 8, !tbaa !70
  %i.zx = and i32 %i.zw, 1
  br label %.sink.split672

.sink.split672:                                   ; preds = %bb.ba, %bb.az
  %.sink676 = phi i32 [ %i.zh, %bb.az ], [ %i.zx, %bb.ba ]
  %exc_gain_quant_scal3.sink = phi ptr [ @exc_gain_quant_scal3, %bb.az ], [ @exc_gain_quant_scal1, %bb.ba ]
  %i.zy = zext nneg i32 %.sink676 to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %exc_gain_quant_scal3.sink, i64 %i.zy
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !66
  %i.aab = fmul nsz float %i.nq, %i.aaa
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split672, %.thread473
  %.0339 = phi nsz float [ %i.nq, %.thread473 ], [ %i.aab, %.sink.split672 ] ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !79 ; 2 uses
  %.not407 = icmp eq ptr %i.aad, null
  br i1 %.not407, label %bb.bc, label %.lr.ph.i427

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 1061) #11
  call void @abort() #12
  unreachable

.lr.ph.i427:                                      ; preds = %bb.bb
  %i.aae = getelementptr inbounds nuw i8, ptr %i.yu, i64 48
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !80
  call void %i.aad(ptr noundef nonnull %i.b, ptr noundef %i.aaf, i32 noundef 40, ptr noundef nonnull %2, ptr noundef nonnull %i.oj) #11
  %i.aag = load <4 x float>, ptr %i.b, align 16, !tbaa !66
  %i.aah = insertelement <4 x float> poison, float %.0339, i64 0
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.aaj = fmul nsz <4 x float> %i.aai, %i.aag
  store <4 x float> %i.aaj, ptr %i.b, align 16, !tbaa !66
  %i.aak = load <4 x float>, ptr %i.pd, align 16, !tbaa !66
  %i.aal = fmul nsz <4 x float> %i.aai, %i.aak
  store <4 x float> %i.aal, ptr %i.pd, align 16, !tbaa !66
  %i.aam = load <4 x float>, ptr %i.ph, align 16, !tbaa !66
  %i.aan = fmul nsz <4 x float> %i.aai, %i.aam
  store <4 x float> %i.aan, ptr %i.ph, align 16, !tbaa !66
  %i.aao = load <4 x float>, ptr %i.pl, align 16, !tbaa !66
  %i.aap = fmul nsz <4 x float> %i.aai, %i.aao
  store <4 x float> %i.aap, ptr %i.pl, align 16, !tbaa !66
  %i.aaq = load <4 x float>, ptr %i.pp, align 16, !tbaa !66
  %i.aar = fmul nsz <4 x float> %i.aai, %i.aaq
  store <4 x float> %i.aar, ptr %i.pp, align 16, !tbaa !66
  %i.aas = load <4 x float>, ptr %i.pt, align 16, !tbaa !66
  %i.aat = fmul nsz <4 x float> %i.aai, %i.aas
  store <4 x float> %i.aat, ptr %i.pt, align 16, !tbaa !66
  %i.aau = load <4 x float>, ptr %i.px, align 16, !tbaa !66
  %i.aav = fmul nsz <4 x float> %i.aai, %i.aau
  store <4 x float> %i.aav, ptr %i.px, align 16, !tbaa !66
  %i.aaw = load <4 x float>, ptr %i.qb, align 16, !tbaa !66
  %i.aax = fmul nsz <4 x float> %i.aai, %i.aaw
  store <4 x float> %i.aax, ptr %i.qb, align 16, !tbaa !66
  %i.aay = load <4 x float>, ptr %i.qf, align 16, !tbaa !66
  %i.aaz = fmul nsz <4 x float> %i.aai, %i.aay
  store <4 x float> %i.aaz, ptr %i.qf, align 16, !tbaa !66
  %i.aba = load <4 x float>, ptr %i.qj, align 16, !tbaa !66
  %i.abb = fmul nsz <4 x float> %i.aai, %i.aba
  store <4 x float> %i.abb, ptr %i.qj, align 16, !tbaa !66
  %i.abc = load ptr, ptr %i.gg, align 8, !tbaa !53
  %i.abd = load i32, ptr %i.gi, align 8, !tbaa !54
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [8 x i8], ptr %i.abc, i64 %i.abe ; 2 uses
end_hunk_0
begin_hunk_1_@forced_pitch_unquant:bb.a

.lr.ph.preheader30:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader30
  %i.v = sub nsw i64 %indvars.iv.ph, %i.f
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !66
  %i.y = fmul nsz float %i.d, %i.x                ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  store float %i.y, ptr %i.z, align 4, !tbaa !66
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store float %i.y, ptr %i.aa, align 4, !tbaa !66
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader30
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader30 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  store i32 %2, ptr %7, align 4, !tbaa !42
  store float 0.000000e+00, ptr %8, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ae = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.d, i64 0
  store <2 x float> %i.ae, ptr %i.ad, align 4, !tbaa !66
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.af = sub nsw i64 %indvars.iv, %i.f
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !66
  %i.ai = fmul nsz float %i.d, %i.ah              ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.ai, ptr %i.aj, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.ai, ptr %i.ak, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.al = sub nsw i64 %indvars.iv.next, %i.f
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !66
  %i.ao = fmul nsz float %i.d, %i.an              ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.ao, ptr %i.ap, align 4, !tbaa !66
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.ao, ptr %i.aq, align 4, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !186
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @noise_codebook_unquant(ptr nofree noundef writeonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree noundef captures(none) %4) #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i32, ptr %4, align 4, !tbaa !42 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted, %.lr.ph ], [ %i.s, %._crit_edge.unr-lcssa ]
  %lcmp.mod8 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.c = mul i32 %.epil.init, 1664525
  %i.d = add i32 %i.c, 1013904223                 ; 2 uses
  %i.e = and i32 %i.d, 8388607
  %i.f = or disjoint i32 %i.e, 1065353216
  %i.g = bitcast i32 %i.f to float
  %i.h = fadd nnan ninf nsz float %i.g, -1.500000e+00
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store float %i.h, ptr %i.i, align 4, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.s, %._crit_edge.unr-lcssa ], [ %i.d, %.epil.preheader ]
  store i32 %.lcssa, ptr %4, align 4, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %i.j = phi i32 [ %.promoted, %.lr.ph.new ], [ %i.s, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.k = mul i32 %i.j, 1664525
  %i.l = add i32 %i.k, 1013904223                 ; 2 uses
  %i.m = and i32 %i.l, 8388607
  %i.n = or disjoint i32 %i.m, 1065353216
  %i.o = bitcast i32 %i.n to float
  %i.p = fadd nnan ninf nsz float %i.o, -1.500000e+00
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.p, ptr %i.q, align 4, !tbaa !66
  %i.r = mul i32 %i.l, 1664525
  %i.s = add i32 %i.r, 1013904223                 ; 4 uses
  %i.t = and i32 %i.s, 8388607
  %i.u = or disjoint i32 %i.t, 1065353216
  %i.v = bitcast i32 %i.u to float
  %i.w = fadd nnan ninf nsz float %i.v, -1.500000e+00
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store float %i.w, ptr %i.y, align 4, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !187
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pitch_unquant_3tap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 %3, float %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %8, ptr nofree noundef captures(none) %9, i32 noundef %10, i32 noundef %11, float noundef %12, i32 noundef %13) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !219  ; 4 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !220
  %i.d = shl i32 4, %i.b
  %i.e = mul nsw i32 %i.d, %13
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !221  ; 3 uses
  %.not.i87 = icmp eq i32 %i.i, 0
  br i1 %.not.i87, label %get_bitsz.exit88, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !70   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !69
  %i.n = load ptr, ptr %9, align 8, !tbaa !67
  %i.o = lshr i32 %i.k, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = load i32, ptr %i.q, align 1, !tbaa !36
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = and i32 %i.k, 7
  %i.u = shl i32 %i.s, %i.t
  %i.v = sub nsw i32 32, %i.i
  %i.w = lshr i32 %i.u, %i.v
  %i.x = add i32 %i.k, %i.i
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.x)
  store i32 %i.y, ptr %i.j, align 8, !tbaa !70
  br label %get_bitsz.exit88

get_bitsz.exit88:                                 ; preds = %bb.a, %bb.b
  %i.z = phi i32 [ %i.w, %bb.b ], [ 0, %bb.a ]    ; 5 uses
  %i.aa = add i32 %i.z, %2                        ; 11 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %get_bitsz.exit, label %bb.c

bb.c:                                             ; preds = %get_bitsz.exit88
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !70 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !69
  %i.af = load ptr, ptr %9, align 8, !tbaa !67
  %i.ag = lshr i32 %i.ac, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !36
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = and i32 %i.ac, 7
  %i.am = shl i32 %i.ak, %i.al
  %i.an = sub nsw i32 32, %i.b
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = add i32 %i.ac, %i.b
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.ap)
  store i32 %i.aq, ptr %i.ab, align 8, !tbaa !70
  %i.ar = shl nsw i32 %i.ao, 2
  %i.as = sext i32 %i.ar to i64
  br label %get_bitsz.exit

get_bitsz.exit:                                   ; preds = %get_bitsz.exit88, %bb.c
  %i.at = phi i64 [ %i.as, %bb.c ], [ 0, %get_bitsz.exit88 ]
  %i.au = getelementptr inbounds i8, ptr %i.g, i64 %i.at ; 2 uses
  %i.av = load <2 x i8>, ptr %i.au, align 1, !tbaa !36
  %i.aw = sitofp <2 x i8> %i.av to <2 x float>
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> splat (float 1.562500e-02), <2 x float> splat (float 5.000000e-01)) ; 5 uses
  %i.ay = getelementptr i8, ptr %i.au, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = sitofp i8 %i.az to float
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float 1.562500e-02, float 5.000000e-01) ; 6 uses
  %.not = icmp ne i32 %10, 0
  %i.bc = icmp sgt i32 %i.aa, %11
  %or.cond85 = select i1 %.not, i1 %i.bc, i1 false
  br i1 %or.cond85, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %get_bitsz.exit
  %i.bd = icmp slt i32 %10, 4
  %i.be = fmul nsz float %12, 5.000000e-01
  %i.bf = select nsz i1 %i.bd, float %12, float %i.be
  %i.bg = tail call nsz float @llvm.minnum.f32(float %i.bf, float f0x3F733333) ; 2 uses
  %i.bh = extractelement <2 x float> %i.ax, i64 1
  %i.bi = tail call nsz float @llvm.fabs.f32(float %i.bh)
  %14 = extractelement <2 x float> %i.ax, i64 0   ; 3 uses
  %15 = fcmp nsz ogt float %14, 0.000000e+00
  %16 = fmul nnan nsz float %14, -5.000000e-01
  %17 = select nsz i1 %15, float %14, float %16
  %i.bj = fadd nsz float %17, %i.bi
  %18 = fcmp nsz ogt float %i.bb, 0.000000e+00
  %19 = fmul nnan nsz float %i.bb, -5.000000e-01
  %20 = select nsz i1 %18, float %i.bb, float %19
  %i.bk = fadd nsz float %i.bj, %20               ; 3 uses
  %i.bl = fcmp nsz ogt float %i.bk, %i.bg
  %i.bm = fcmp nsz ogt float %i.bk, 0.000000e+00
  %or.cond = and i1 %i.bl, %i.bm
  br i1 %or.cond, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  %i.bn = fdiv nsz float %i.bg, %i.bk             ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul nsz <2 x float> %i.bp, %i.ax
  %i.br = fmul nsz float %i.bn, %i.bb
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %get_bitsz.exit
  %.sroa.14.0 = phi nsz float [ %i.br, %.loopexit.loopexit ], [ %i.bb, %bb.d ], [ %i.bb, %get_bitsz.exit ] ; 9 uses
  %i.bs = phi <2 x float> [ %i.bq, %.loopexit.loopexit ], [ %i.ax, %bb.d ], [ %i.ax, %get_bitsz.exit ] ; 6 uses
  store i32 %i.aa, ptr %7, align 4, !tbaa !42
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 7 uses
  store float %i.bt, ptr %8, align 4, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bv = extractelement <2 x float> %i.bs, i64 1 ; 7 uses
  store float %i.bv, ptr %i.bu, align 4, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %.sroa.14.0, ptr %i.bw, align 4, !tbaa !66
  %i.bx = sext i32 %6 to i64                      ; 3 uses
  %i.by = shl nsw i64 %i.bx, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.by, i1 false)
  %i.bz = add nsw i32 %i.aa, 1                    ; 4 uses
  %i.ca = sext i32 %i.bz to i64                   ; 7 uses
  %smin100 = tail call i64 @llvm.smin.i64(i64 %i.bx, i64 %i.ca) ; 11 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.bz) ; 3 uses
  %i.cb = icmp sgt i32 %smin, 0
  br i1 %i.cb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %smin to i64   ; 7 uses
  %min.iters.check = icmp ult i32 %smin, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cc = shl nuw nsw i64 %wide.trip.count, 2
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %i.ce = mul nsw i64 %i.ca, -4
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  %i.cg = sub nsw i64 %wide.trip.count, %i.ca
  %i.ch = shl nsw i64 %i.cg, 2
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch
  %bound0 = icmp ult ptr %1, %i.ci
  %bound1 = icmp ult ptr %i.cf, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.14.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = sub nsw i64 %index, %i.ca
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x float>, ptr %i.ck, align 4, !tbaa !66, !alias.scope !222
  %wide.load125 = load <4 x float>, ptr %i.cl, align 4, !tbaa !66, !alias.scope !222
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load126 = load <4 x float>, ptr %i.cm, align 4, !tbaa !66, !alias.scope !223, !noalias !222
  %wide.load127 = load <4 x float>, ptr %i.cn, align 4, !tbaa !66, !alias.scope !223, !noalias !222
  %i.co = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load126)
  %i.cp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load125, <4 x float> %wide.load127)
  store <4 x float> %i.co, ptr %i.cm, align 4, !tbaa !66, !alias.scope !223, !noalias !222
  store <4 x float> %i.cp, ptr %i.cn, align 4, !tbaa !66, !alias.scope !223, !noalias !222
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cr = sub nsw i64 %indvars.iv.ph, %i.ca
  %i.cs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !66
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !66
  %i.cw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.14.0, float %i.ct, float %i.cv)
  store float %i.cw, ptr %i.cu, align 4, !tbaa !66
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cx = add nsw i64 %wide.trip.count, -1
  %i.cy = icmp eq i64 %indvars.iv.ph, %i.cx
  br i1 %i.cy, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.cz = add nsw i32 %i.bz, %i.aa                ; 5 uses
  %spec.select86 = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.cz) ; 2 uses
  %i.da = icmp slt i32 %i.bz, %spec.select86
  br i1 %i.da, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %._crit_edge
  %i.db = sext i32 %spec.select86 to i64          ; 7 uses
  %i.dc = sub i64 %i.db, %smin100                 ; 3 uses
  %min.iters.check136 = icmp ult i64 %i.dc, 24
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph93
  %i.dd = xor i64 %smin100, -1
  %i.de = add i64 %i.dd, %i.db                    ; 2 uses
  %i.df = trunc i64 %smin100 to i32
  %i.dg = shl i32 %i.z, 1
  %i.dh = xor i32 %i.dg, -1
  %i.di = add i32 %i.dh, %i.df
  %i.dj = shl i32 %2, 1
  %i.dk = sub i32 %i.di, %i.dj                    ; 2 uses
  %i.dl = trunc i64 %i.de to i32
  %i.dm = add i32 %i.dk, %i.dl
  %i.dn = icmp slt i32 %i.dm, %i.dk
  %i.do = icmp ugt i64 %i.de, 4294967295
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %scalar.ph135.preheader, label %vector.memcheck137

vector.memcheck137:                               ; preds = %vector.scevcheck
  %i.dq = shl nsw i64 %smin100, 2
  %i.dr = getelementptr i8, ptr %1, i64 %i.dq
  %i.ds = shl nsw i64 %i.db, 2
  %i.dt = getelementptr i8, ptr %1, i64 %i.ds
  %i.du = trunc i64 %smin100 to i32
  %i.dv = shl i32 %i.z, 1
  %i.dw = shl i32 %2, 1
  %i.dx = xor i32 %i.dv, -1
  %i.dy = add i32 %i.dx, %i.du
  %i.dz = sub i32 %i.dy, %i.dw
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = shl nsw i64 %i.ea, 2
  %i.ec = getelementptr i8, ptr %0, i64 %i.eb
  %i.ed = add nsw i64 %i.db, %i.ea
  %i.ee = sub i64 %i.ed, %smin100
  %i.ef = shl i64 %i.ee, 2
  %i.eg = getelementptr i8, ptr %0, i64 %i.ef
  %bound0138 = icmp ult ptr %i.dr, %i.eg
  %bound1139 = icmp ult ptr %i.ec, %i.dt
  %found.conflict140 = and i1 %bound0138, %bound1139
  br i1 %found.conflict140, label %scalar.ph135.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck137
  %n.vec142 = and i64 %i.dc, -8                   ; 3 uses
  %i.eh = add i64 %smin100, %n.vec142
  %broadcast.splatinsert143 = insertelement <4 x float> poison, float %.sroa.14.0, i64 0
  %broadcast.splat144 = shufflevector <4 x float> %broadcast.splatinsert143, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph141
  %index146 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.ei = add i64 %smin100, %index146             ; 2 uses
  %i.ej = trunc nsw i64 %i.ei to i32
  %i.ek = sub i32 %i.ej, %i.cz
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %0, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load147 = load <4 x float>, ptr %i.em, align 4, !tbaa !66, !alias.scope !224
  %wide.load148 = load <4 x float>, ptr %i.en, align 4, !tbaa !66, !alias.scope !224
  %i.eo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ei ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %wide.load149 = load <4 x float>, ptr %i.eo, align 4, !tbaa !66, !alias.scope !225, !noalias !224
  %wide.load150 = load <4 x float>, ptr %i.ep, align 4, !tbaa !66, !alias.scope !225, !noalias !224
  %i.eq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat144, <4 x float> %wide.load147, <4 x float> %wide.load149)
  %i.er = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat144, <4 x float> %wide.load148, <4 x float> %wide.load150)
  store <4 x float> %i.eq, ptr %i.eo, align 4, !tbaa !66, !alias.scope !225, !noalias !224
  store <4 x float> %i.er, ptr %i.ep, align 4, !tbaa !66, !alias.scope !225, !noalias !224
  %index.next151 = add nuw i64 %index146, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.es, label %middle.block152, label %vector.body145, !llvm.loop !195

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.dc, %n.vec142
  br i1 %cmp.n153, label %._crit_edge94, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %vector.memcheck137, %vector.scevcheck, %.lr.ph93, %middle.block152
  %indvars.iv101.ph = phi i64 [ %smin100, %vector.memcheck137 ], [ %smin100, %vector.scevcheck ], [ %smin100, %.lr.ph93 ], [ %i.eh, %middle.block152 ] ; 6 uses
  %i.et = sub i64 %i.db, %indvars.iv101.ph
  %xtraiter265 = and i64 %i.et, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %scalar.ph135.prol.loopexit, label %scalar.ph135.prol

scalar.ph135.prol:                                ; preds = %scalar.ph135.preheader
  %i.eu = trunc nsw i64 %indvars.iv101.ph to i32
  %i.ev = sub i32 %i.eu, %i.cz
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ew
end_hunk_1
begin_hunk_2_@lsp_unquant_high:bb.a

.lr.ph.preheader75:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !70   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !69   ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.n = lshr i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !36
  %i.r = add i32 %i.j, 6
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.r) ; 5 uses
  store i32 %i.s, ptr %i.i, align 8, !tbaa !70
  br i1 %i.a, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %._crit_edge
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.u = and i32 %i.j, 7
  %i.v = shl i32 %i.t, %i.u
  %i.w = lshr i32 %i.v, 26
  %i.x = mul nuw nsw i32 %i.w, %1
  %i.y = zext nneg i32 %i.x to i64
  %wide.trip.count39 = zext nneg i32 %1 to i64    ; 5 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr @high_lsp_cdbk, i64 %i.y ; 2 uses
  %min.iters.check49 = icmp ult i32 %1, 8
  br i1 %min.iters.check49, label %scalar.ph48.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph29
  %n.vec51 = and i64 %wide.trip.count39, 2147483640 ; 3 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next57, %vector.body52 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index53 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %wide.load = load <4 x i8>, ptr %i.z, align 1, !tbaa !36
  %wide.load54 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !36
  %i.ab = sitofp <4 x i8> %wide.load to <4 x float>
  %i.ac = sitofp <4 x i8> %wide.load54 to <4 x float>
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index53 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load55 = load <4 x float>, ptr %i.ad, align 4, !tbaa !66
  %wide.load56 = load <4 x float>, ptr %i.ae, align 4, !tbaa !66
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> splat (float 3.906250e-03), <4 x float> %wide.load55)
  %i.ag = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> splat (float 3.906250e-03), <4 x float> %wide.load56)
  store <4 x float> %i.af, ptr %i.ad, align 4, !tbaa !66
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !66
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next57, %n.vec51
  br i1 %i.ah, label %middle.block58, label %vector.body52, !llvm.loop !258

middle.block58:                                   ; preds = %vector.body52
  %cmp.n59 = icmp eq i64 %n.vec51, %wide.trip.count39
  br i1 %cmp.n59, label %.lr.ph33, label %scalar.ph48.preheader

scalar.ph48.preheader:                            ; preds = %.lr.ph29, %middle.block58
  %indvars.iv36.ph = phi i64 [ 0, %.lr.ph29 ], [ %n.vec51, %middle.block58 ]
  br label %scalar.ph48

.lr.ph:                                           ; preds = %.lr.ph.preheader75, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader75 ] ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = uitofp nsz nneg i32 %i.ai to float
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float 3.125000e-01, float 7.500000e-01)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.ak, ptr %i.al, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !259

._crit_edge30:                                    ; preds = %._crit_edge
  %i.am = add i32 %i.s, 6
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.am)
  store i32 %i.an, ptr %i.i, align 8, !tbaa !70
  br label %._crit_edge34

.lr.ph33:                                         ; preds = %scalar.ph48, %middle.block58
  %i.ao = lshr i32 %i.s, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !36
  %i.as = add i32 %i.s, 6
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.as)
  store i32 %i.at, ptr %i.i, align 8, !tbaa !70
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.av = and i32 %i.s, 7
  %i.aw = shl i32 %i.au, %i.av
  %i.ax = lshr i32 %i.aw, 26
  %i.ay = mul nuw nsw i32 %i.ax, %1
  %i.az = zext nneg i32 %i.ay to i64
  %wide.trip.count44 = zext nneg i32 %1 to i64
  %invariant.gep46 = getelementptr inbounds nuw i8, ptr @high_lsp_cdbk2, i64 %i.az ; 2 uses
  %min.iters.check62 = icmp ult i32 %1, 8
  br i1 %min.iters.check62, label %scalar.ph61.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph33
  %n.vec64 = and i64 %wide.trip.count39, 2147483640 ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 %index66 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %wide.load67 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !36
  %wide.load68 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !36
  %i.bc = sitofp <4 x i8> %wide.load67 to <4 x float>
  %i.bd = sitofp <4 x i8> %wide.load68 to <4 x float>
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index66 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load69 = load <4 x float>, ptr %i.be, align 4, !tbaa !66
  %wide.load70 = load <4 x float>, ptr %i.bf, align 4, !tbaa !66
  %i.bg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> splat (float f0x3B000000), <4 x float> %wide.load69)
  %i.bh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> splat (float f0x3B000000), <4 x float> %wide.load70)
  store <4 x float> %i.bg, ptr %i.be, align 4, !tbaa !66
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !66
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.bi, label %middle.block72, label %vector.body65, !llvm.loop !260

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %n.vec64, %wide.trip.count39
  br i1 %cmp.n73, label %._crit_edge34, label %scalar.ph61.preheader

scalar.ph61.preheader:                            ; preds = %.lr.ph33, %middle.block72
  %indvars.iv41.ph = phi i64 [ 0, %.lr.ph33 ], [ %n.vec64, %middle.block72 ]
  br label %scalar.ph61

scalar.ph48:                                      ; preds = %scalar.ph48.preheader, %scalar.ph48
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %scalar.ph48 ], [ %indvars.iv36.ph, %scalar.ph48.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv36
  %i.bj = load i8, ptr %gep, align 1, !tbaa !36
  %i.bk = sitofp i8 %i.bj to float
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv36 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !66
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float 3.906250e-03, float %i.bm)
  store float %i.bn, ptr %i.bl, align 4, !tbaa !66
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %.lr.ph33, label %scalar.ph48, !llvm.loop !261

._crit_edge34:                                    ; preds = %scalar.ph61, %middle.block72, %._crit_edge30
  ret void

scalar.ph61:                                      ; preds = %scalar.ph61.preheader, %scalar.ph61
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %scalar.ph61 ], [ %indvars.iv41.ph, %scalar.ph61.preheader ] ; 3 uses
  %gep47 = getelementptr inbounds nuw i8, ptr %invariant.gep46, i64 %indvars.iv41
  %i.bo = load i8, ptr %gep47, align 1, !tbaa !36
  %i.bp = sitofp i8 %i.bo to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv41 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !66
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float f0x3B000000, float %i.br)
  store float %i.bs, ptr %i.bq, align 4, !tbaa !66
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge34, label %scalar.ph61, !llvm.loop !262
}

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !65}
!1 = distinct !{!1, !65}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"AVRational", !8, i64 0, !8, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !11, i64 0}
!20 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"any p2 pointer", !11, i64 0}
!28 = !{!"p2 _ZTS15AVFrameSideData", !27, i64 0}
!29 = !{!"AVCodecContext", !12, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !14, i64 40, !11, i64 48, !15, i64 56, !8, i64 64, !8, i64 68, !16, i64 72, !8, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !17, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !20, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !18, i64 428, !18, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !8, i64 488, !8, i64 492, !16, i64 496, !16, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !22, i64 536, !11, i64 544, !23, i64 552, !23, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !24, i64 728, !16, i64 736, !8, i64 744, !8, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !8, i64 784, !8, i64 788, !15, i64 792, !8, i64 800, !8, i64 804, !15, i64 808, !11, i64 816, !15, i64 824, !26, i64 832, !8, i64 840, !28, i64 848, !8, i64 856, !8, i64 860}
!30 = !{!29, !11, i64 32}
!31 = !{!"GetBitContext", !16, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!32 = !{!"StereoState", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!33 = !{!"p1 _ZTS17AVFloatDSPContext", !11, i64 0}
!34 = !{!"SpeexContext", !12, i64 0, !31, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !32, i64 76, !7, i64 96, !33, i64 8472}
!35 = !{!34, !33, i64 8472}
!36 = !{!7, !7, i64 0}
!37 = !{!34, !8, i64 40}
!38 = !{!34, !8, i64 56}
!39 = !{!34, !8, i64 64}
!40 = !{!29, !8, i64 356}
!41 = !{!34, !8, i64 72}
!42 = !{!8, !8, i64 0}
!43 = !{!"p1 _ZTS9SpeexMode", !11, i64 0}
!44 = !{!"p1 float", !11, i64 0}
!45 = !{!"p2 _ZTS12SpeexSubmode", !27, i64 0}
!46 = !{!"DecoderState", !43, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !18, i64 44, !44, i64 48, !8, i64 56, !18, i64 60, !8, i64 64, !8, i64 68, !45, i64 72, !8, i64 80, !8, i64 84, !18, i64 88, !18, i64 92, !18, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !44, i64 112, !7, i64 120, !7, i64 128, !7, i64 2128, !7, i64 2168, !7, i64 2208, !7, i64 2248, !7, i64 2504, !7, i64 2760, !7, i64 2776}
!47 = !{!46, !43, i64 0}
!48 = !{!"SpeexMode", !8, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !18, i64 28, !7, i64 32, !8, i64 104}
!49 = !{!46, !8, i64 8}
!50 = !{!46, !8, i64 12}
!51 = !{!46, !8, i64 20}
!52 = !{!46, !44, i64 48}
!53 = !{!46, !45, i64 72}
!54 = !{!46, !8, i64 80}
!55 = !{!46, !8, i64 32}
!56 = !{!46, !8, i64 40}
!57 = !{!46, !8, i64 16}
!58 = !{!46, !8, i64 36}
!59 = !{!46, !8, i64 28}
!60 = !{!46, !8, i64 84}
!61 = !{!46, !8, i64 56}
!62 = !{!46, !8, i64 24}
!63 = !{!46, !18, i64 44}
!64 = !{!46, !8, i64 108}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!18, !18, i64 0}
!67 = !{!31, !16, i64 0}
!68 = !{!31, !8, i64 12}
!69 = !{!31, !8, i64 16}
!70 = !{!31, !8, i64 8}
!71 = !{!48, !11, i64 8}
!72 = !{!32, !18, i64 0}
!73 = !{!32, !18, i64 4}
!74 = !{!46, !8, i64 68}
!75 = !{!"p1 _ZTS12SpeexSubmode", !11, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"SpeexSubmode", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !18, i64 56}
!78 = !{!77, !11, i64 16}
!79 = !{!77, !11, i64 40}
!80 = !{!77, !11, i64 48}
!81 = !{!77, !8, i64 12}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !65}
!85 = !{!29, !16, i64 72}
!86 = !{!29, !8, i64 80}
!87 = !{!34, !8, i64 32}
!88 = !{!34, !8, i64 36}
!89 = !{!34, !8, i64 44}
!90 = !{!34, !8, i64 48}
!91 = !{!34, !8, i64 52}
!92 = !{!34, !8, i64 60}
!93 = !{!34, !8, i64 68}
!94 = !{!29, !8, i64 344}
!95 = !{!29, !8, i64 28}
!96 = !{!29, !15, i64 56}
!97 = !{!48, !8, i64 0}
!98 = !{!48, !8, i64 104}
!99 = !{!48, !8, i64 20}
!100 = !{!48, !8, i64 24}
!101 = !{!48, !8, i64 16}
!102 = distinct !{!102, !65}
!103 = distinct !{!103, !65}
!104 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !25, i64 48, !8, i64 56, !15, i64 64, !15, i64 72, !11, i64 80, !23, i64 88, !17, i64 96}
!105 = !{!104, !8, i64 32}
!106 = !{!104, !16, i64 24}
!107 = !{!"p2 omnipotent char", !27, i64 0}
!108 = !{!"p2 _ZTS11AVBufferRef", !27, i64 0}
!109 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!110 = !{!"AVFrame", !7, i64 0, !7, i64 64, !107, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !8, i64 160, !11, i64 168, !8, i64 176, !8, i64 180, !7, i64 184, !108, i64 248, !8, i64 256, !28, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !15, i64 304, !109, i64 312, !8, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !11, i64 376, !20, i64 384, !15, i64 408, !8, i64 416}
!111 = !{!110, !8, i64 112}
!112 = !{!110, !107, i64 96}
!113 = !{!16, !16, i64 0}
!114 = !{!32, !18, i64 12}
!115 = !{!"AVFloatDSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!116 = !{!115, !11, i64 24}
!117 = !{!110, !8, i64 388}
!118 = distinct !{!118, !65}
!119 = distinct !{!119, !65}
!120 = distinct !{!120, !65}
!121 = distinct !{!121, !65}
!122 = distinct !{!122, !65}
!123 = distinct !{!123, i1 false, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !65, !82}
!127 = distinct !{!127, !65}
!128 = distinct !{!128, !65}
!129 = !{!46, !44, i64 112}
!130 = !{!"short", !7, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!77, !8, i64 0}
!133 = !{!77, !8, i64 4}
!134 = !{!46, !8, i64 104}
!135 = !{!77, !11, i64 24}
!136 = !{!77, !11, i64 32}
!137 = !{!46, !18, i64 60}
!138 = !{!77, !8, i64 8}
!139 = !{!46, !8, i64 100}
!140 = !{!46, !18, i64 88}
!141 = !{!46, !18, i64 92}
!142 = !{!46, !18, i64 96}
!143 = !{!77, !18, i64 56}
!144 = !{!124}
!145 = !{!125}
!146 = distinct !{!146, !65, !82, !83}
!147 = distinct !{!147, !65, !82, !83}
!148 = distinct !{!148, !65, !83, !82}
!149 = distinct !{!149, !65, !83, !82}
!150 = distinct !{!150, !65, !82, !83}
!151 = distinct !{!151, !65, !83, !82}
!152 = distinct !{!152, !65}
!153 = distinct !{!153, !65, !82, !83}
!154 = distinct !{!154, !65}
!155 = distinct !{!155, !65}
!156 = distinct !{!156, !65, !83, !82}
!157 = distinct !{!157, !65}
!158 = distinct !{!158, !65, !82, !83}
!159 = distinct !{!159, !65, !83, !82}
!160 = distinct !{!160, !65, !82, !83}
!161 = distinct !{!161, !65, !83, !82}
!162 = distinct !{!162, !65, !82, !83}
!163 = distinct !{!163, !65, !83, !82}
!164 = distinct !{!164, !65, !82, !83}
!165 = distinct !{!165, !65, !83, !82}
!166 = distinct !{!166, !65}
!167 = distinct !{!167, !173}
!168 = distinct !{!168, !65, !82, !83}
!169 = distinct !{!169, !65, !83, !82}
!170 = distinct !{!170, !173}
!171 = distinct !{!171, !65}
!172 = !{!48, !18, i64 28}
!173 = !{!"llvm.loop.unroll.disable"}
!174 = distinct !{!174, !65, !82}
!175 = distinct !{!175, i1 false, !"LVerDomain"}
!176 = distinct !{!176, !175}
!177 = distinct !{!177, !175}
!178 = distinct !{!178, !65, !82, !83}
!179 = distinct !{!179, !65, !82}
!180 = distinct !{!180, !65, !82}
!181 = !{!176}
end_hunk_2
