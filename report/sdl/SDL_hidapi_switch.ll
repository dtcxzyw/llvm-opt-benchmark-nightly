Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi_switch?download=true
inline.NumInlined: 144
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@HIDAPI_DriverSwitch_OpenJoystick:bb.a
  br i1 %i.im, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i16 2048, ptr %i.ej, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.in = phi i16 [ 2048, %bb.ah ], [ %i.fb, %bb.ag ] ; 2 uses
  %i.io = load i16, ptr %i.ek, align 8            ; 2 uses
  %i.ip = icmp eq i16 %i.io, 4095
  br i1 %i.ip, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iq = uitofp nneg i16 %i.in to float
  %i.ir = fmul nnan float %i.iq, f0x3F333333
  %i.is = fptosi float %i.ir to i16               ; 2 uses
  store i16 %i.is, ptr %i.ek, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.it = phi i16 [ %i.is, %bb.aj ], [ %i.io, %bb.ai ]
  %i.iu = icmp eq i16 %i.ft, 4095
  br i1 %i.iu, label %bb.al, label %.preheader135.1.i

bb.al:                                            ; preds = %bb.ak
  %i.iv = uitofp nneg i16 %i.in to float
  %i.iw = fmul nnan float %i.iv, f0x3F333333
  %i.ix = fptosi float %i.iw to i16               ; 2 uses
  store i16 %i.ix, ptr %i.fu, align 2
  br label %.preheader135.1.i

.preheader135.1.i:                                ; preds = %bb.al, %bb.ak
  %i.iy = phi i16 [ %i.ix, %bb.al ], [ %i.ft, %bb.ak ]
  %i.iz = icmp eq i16 %i.gc, 4095
  br i1 %i.iz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.preheader135.1.i
  store i16 2048, ptr %i.gd, align 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader135.1.i
  %i.ja = phi i16 [ 2048, %bb.am ], [ %i.gc, %.preheader135.1.i ] ; 2 uses
  %i.jb = icmp eq i16 %i.ho, 4095
  br i1 %i.jb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jc = uitofp nneg i16 %i.ja to float
  %i.jd = fmul nnan float %i.jc, f0x3F333333
  %i.je = fptosi float %i.jd to i16               ; 2 uses
  store i16 %i.je, ptr %i.hp, align 2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jf = phi i16 [ %i.je, %bb.ao ], [ %i.ho, %bb.an ]
  %i.jg = icmp eq i16 %i.gv, 4095
  br i1 %i.jg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jh = uitofp nneg i16 %i.ja to float
  %i.ji = fmul nnan float %i.jh, f0x3F333333
  %i.jj = fptosi float %i.ji to i16               ; 2 uses
  store i16 %i.jj, ptr %i.gw, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jk = phi i16 [ %i.jj, %bb.aq ], [ %i.gv, %bb.ap ]
  %i.jl = icmp eq i16 %i.gl, 4095
  br i1 %i.jl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i16 2048, ptr %i.gm, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.jm = phi i16 [ 2048, %bb.as ], [ %i.gl, %bb.ar ] ; 2 uses
  %i.jn = icmp eq i16 %i.hx, 4095
  br i1 %i.jn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jo = uitofp nneg i16 %i.jm to float
  %i.jp = fmul nnan float %i.jo, f0x3F333333
  %i.jq = fptosi float %i.jp to i16               ; 2 uses
  store i16 %i.jq, ptr %i.hy, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jr = phi i16 [ %i.jq, %bb.au ], [ %i.hx, %bb.at ]
  %i.js = icmp eq i16 %i.he, 4095
  br i1 %i.js, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.jt = uitofp nneg i16 %i.jm to float
  %i.ju = fmul nnan float %i.jt, f0x3F333333
  %i.jv = fptosi float %i.ju to i16               ; 2 uses
  store i16 %i.jv, ptr %i.hf, align 2
  br label %bb.ay

bb.ax:                                            ; preds = %.thread128.i, %bb.aa, %.lr.ph.3.i, %bb.x, %bb.w, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.jw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %bb.bx

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.jx = phi i16 [ %i.jv, %bb.aw ], [ %i.he, %bb.av ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.i, i64 310
  %i.jz = insertelement <4 x i16> poison, i16 %i.il, i64 0
  %i.ka = insertelement <4 x i16> %i.jz, i16 %i.iy, i64 1
  %i.kb = insertelement <4 x i16> %i.ka, i16 %i.jk, i64 2
  %i.kc = insertelement <4 x i16> %i.kb, i16 %i.jx, i64 3
  %i.kd = sitofp <4 x i16> %i.kc to <4 x float>
  %i.ke = insertelement <4 x i16> poison, i16 %i.ig, i64 0
  %i.kf = insertelement <4 x i16> %i.ke, i16 %i.it, i64 1
  %i.kg = insertelement <4 x i16> %i.kf, i16 %i.jf, i64 2
  %i.kh = insertelement <4 x i16> %i.kg, i16 %i.jr, i64 3
  %i.ki = sitofp <4 x i16> %i.kh to <4 x float>
  %i.kj = getelementptr inbounds nuw i8, ptr %i.i, i64 312
  %i.kk = getelementptr inbounds nuw i8, ptr %i.i, i64 314
  %i.kl = getelementptr inbounds nuw i8, ptr %i.i, i64 316
  %i.km = getelementptr inbounds nuw i8, ptr %i.i, i64 318
  %i.kn = getelementptr inbounds nuw i8, ptr %i.i, i64 320
  %i.ko = fmul nnan <4 x float> %i.kd, splat (float f0x3F333333)
  %i.kp = fptosi <4 x float> %i.ko to <4 x i16>
  %i.kq = sub <4 x i16> zeroinitializer, %i.kp    ; 4 uses
  %i.kr = extractelement <4 x i16> %i.kq, i64 0
  store i16 %i.kr, ptr %i.jy, align 2
  %i.ks = extractelement <4 x i16> %i.kq, i64 1
  store i16 %i.ks, ptr %i.kk, align 2
  %i.kt = extractelement <4 x i16> %i.kq, i64 2
  store i16 %i.kt, ptr %i.km, align 2
  %i.ku = getelementptr inbounds nuw i8, ptr %i.i, i64 322
  %i.kv = extractelement <4 x i16> %i.kq, i64 3
  store i16 %i.kv, ptr %i.ku, align 2
  %i.kw = fmul nnan <4 x float> %i.ki, splat (float f0x3F333333)
  %i.kx = fptosi <4 x float> %i.kw to <4 x i16>   ; 4 uses
  %i.ky = extractelement <4 x i16> %i.kx, i64 0
  store i16 %i.ky, ptr %i.kj, align 8
  %i.kz = extractelement <4 x i16> %i.kx, i64 1
  store i16 %i.kz, ptr %i.kl, align 4
  %i.la = extractelement <4 x i16> %i.kx, i64 2
  store i16 %i.la, ptr %i.kn, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.i, i64 324
  %i.lc = extractelement <4 x i16> %i.kx, i64 3
  store i16 %i.lc, ptr %i.lb, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.i, i64 326
  store <8 x i16> <i16 -16384, i16 16383, i16 -16384, i16 16383, i16 -16384, i16 16383, i16 -16384, i16 16383>, ptr %i.ld, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.le = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 8
  %.off = add i32 %i.lf, -7
  %switch = icmp ult i32 %.off, 7
  br i1 %switch, label %bb.bh, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lg = load i16, ptr %i.ah, align 8
  %i.lh = icmp eq i16 %i.lg, 3695
  br i1 %i.lh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.lj = load i16, ptr %i.li, align 2
  %i.lk = icmp eq i16 %i.lj, 396
  br i1 %i.lk, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 24608, ptr %3, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i8 24, ptr %i.ll, align 4
  %i.lm = call fastcc zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.i, i32 noundef 16, ptr noundef nonnull %3, i8 noundef zeroext 5, ptr noundef nonnull %i.d)
  br i1 %i.lm, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ln = load ptr, ptr %i.d, align 8             ; 8 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 19 ; 2 uses
  %i.lp = load i16, ptr %i.lo, align 1
  %i.lq = getelementptr i8, ptr %i.ln, i64 21
  %i.lr = getelementptr i8, ptr %i.ln, i64 25
  %i.ls = getelementptr i8, ptr %i.ln, i64 27
  %i.lt = load i16, ptr %i.lr, align 1
  %i.lu = load <2 x i16>, ptr %i.lq, align 1      ; 2 uses
  %i.lv = load <2 x i16>, ptr %i.ls, align 1
  %i.lw = getelementptr i8, ptr %i.ln, i64 31
  %i.lx = load <2 x i16>, ptr %i.lw, align 1
  %i.ly = getelementptr i8, ptr %i.ln, i64 35
  %i.lz = load i16, ptr %i.ly, align 1
  %i.ma = getelementptr i8, ptr %i.ln, i64 37
  %i.mb = load i16, ptr %i.ma, align 1
  %i.mc = getelementptr i8, ptr %i.ln, i64 39
  %i.md = load <2 x i16>, ptr %i.mc, align 1
  store i32 32806, ptr %3, align 4
  store i8 20, ptr %i.ll, align 4
  %i.me = call fastcc zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.i, i32 noundef 16, ptr noundef nonnull %3, i8 noundef zeroext 5, ptr noundef nonnull %i.d)
  %7 = shufflevector <2 x i16> %i.lx, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.mf = insertelement <4 x i16> %7, i16 %i.lp, i64 0
  %i.mg = insertelement <4 x i16> %i.mf, i16 %i.lz, i64 3 ; 2 uses
  br i1 %i.me, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.mh = load i16, ptr %i.lo, align 1
  %i.mi = icmp eq i16 %i.mh, -24142
  br i1 %i.mi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mj = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 21
  %i.ml = load i16, ptr %i.mk, align 1
  %i.mm = getelementptr i8, ptr %i.mj, i64 23
  %i.mn = load <2 x i16>, ptr %i.mm, align 1
  %i.mo = getelementptr i8, ptr %i.mj, i64 33
  %i.mp = load <2 x i16>, ptr %i.mo, align 1
  %i.mq = getelementptr i8, ptr %i.mj, i64 37
  %i.mr = load i16, ptr %i.mq, align 1
  %8 = shufflevector <2 x i16> %i.mp, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ms = insertelement <4 x i16> %8, i16 %i.ml, i64 0
  %i.mt = insertelement <4 x i16> %i.ms, i16 %i.mr, i64 3
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.mu = phi <2 x i16> [ %i.mn, %bb.be ], [ %i.lu, %bb.bd ], [ %i.lu, %bb.bc ]
  %i.mv = phi <4 x i16> [ %i.mt, %bb.be ], [ %i.mg, %bb.bd ], [ %i.mg, %bb.bc ]
  %i.mw = sitofp i16 %i.lt to float
  %9 = sitofp <4 x i16> %i.mv to <4 x float>
  %i.mx = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  %i.my = sitofp <2 x i16> %i.lv to <2 x float>
  %10 = sitofp <2 x i16> %i.mu to <2 x float>
  %11 = sitofp i16 %i.mb to float
  %i.mz = fsub nnan <2 x float> %i.my, %10
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nb = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.nc = shufflevector <2 x i16> %i.md, <2 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.nd = sitofp <4 x i16> %i.nc to <4 x float>
  %i.ne = insertelement <4 x float> %i.nd, float %i.mw, i64 0
  %i.nf = insertelement <4 x float> %i.ne, float %11, i64 1
  %i.ng = fsub nnan <4 x float> %i.nf, %9         ; 3 uses
  %i.nh = extractelement <4 x float> %i.ng, i64 1
  %i.ni = fdiv nnan float 9.360000e+02, %i.nh
  %i.nj = shufflevector <4 x float> %i.ng, <4 x float> %i.na, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.nk = insertelement <4 x float> %i.nj, float %i.ni, i64 3 ; 2 uses
  %i.nl = fdiv nnan <4 x float> <float 4.000000e+00, float 4.000000e+00, float 4.000000e+00, float poison>, %i.nk
  %i.nm = fmul nnan <4 x float> %i.nk, <float poison, float poison, float poison, float f0x40490FDB>
  %i.nn = shufflevector <4 x float> %i.nl, <4 x float> %i.nm, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.no = fmul nnan <4 x float> %i.nn, <float 9.806650e+00, float 9.806650e+00, float 9.806650e+00, float poison>
  %i.np = fdiv <4 x float> %i.nn, <float poison, float poison, float poison, float 1.800000e+02>
  %i.nq = shufflevector <4 x float> %i.no, <4 x float> %i.np, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.nq, ptr %i.mx, align 8
  %i.nr = shufflevector <4 x float> %i.ng, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ns = fdiv nnan <2 x float> splat (float 9.360000e+02), %i.nr
  %i.nt = fmul nnan <2 x float> %i.ns, splat (float f0x40490FDB) ; 2 uses
  %i.nu = extractelement <2 x float> %i.nt, i64 0
  %i.nv = fdiv float %i.nu, 1.800000e+02
  store float %i.nv, ptr %i.nb, align 8
  %i.nw = extractelement <2 x float> %i.nt, i64 1
  %i.nx = fdiv float %i.nw, 1.800000e+02
  br label %LoadIMUCalibration.exit

bb.bg:                                            ; preds = %bb.bb
  %i.ny = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  store <4 x float> <float f0x3B1CE80A, float f0x3B1CE80A, float f0x3B1CE80A, float f0x3AA026D2>, ptr %i.ny, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  store float f0x3AA026D2, ptr %i.nz, align 8
  br label %LoadIMUCalibration.exit

LoadIMUCalibration.exit:                          ; preds = %bb.bf, %bb.bg
  %.sink.i70 = phi float [ f0x3AA026D2, %bb.bg ], [ %i.nx, %bb.bf ]
  %i.oa = getelementptr inbounds nuw i8, ptr %i.i, i64 364
  store float %.sink.i70, ptr %i.oa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  store i8 1, ptr %i.ob, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ay, %LoadIMUCalibration.exit, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.c, align 1
  %i.oc = call fastcc noundef zeroext i1 @WriteSubcommand(ptr noundef nonnull %i.i, i32 noundef 72, ptr noundef nonnull %i.c, i8 noundef zeroext 1, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.od = call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str.20, ptr noundef nonnull @SDL_EnhancedReportsChanged, ptr noundef nonnull %i.i) #8 ; 0 uses
  %i.oe = load i8, ptr %i.az, align 4, !range !4, !noundef !5
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %WriteProprietary.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.og = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4
  %.not15.i = icmp sgt i32 %i.oh, 0
  br i1 %.not15.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.bi
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.oj = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.bo, %.lr.ph.i
  %.02016.us.i = phi i32 [ %i.oz, %bb.bo ], [ 1, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ok, i8 0, i64 47, i1 false)
  store i8 -128, ptr %2, align 1
  store i8 4, ptr %i.oi, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ol = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 84
  %i.on = load i8, ptr %i.om, align 4, !range !4, !noundef !5
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(49) %i.b, ptr noundef nonnull align 1 dereferenceable(49) %2, i64 49, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.oj, i8 0, i64 15, i1 false)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.split.us.i
  %.017.i.us.i = phi ptr [ %i.b, %bb.bj ], [ %2, %.lr.ph.split.us.i ] ; 2 uses
  %.0.i.us.i = phi i8 [ 64, %bb.bj ], [ 49, %.lr.ph.split.us.i ] ; 2 uses
  %i.op = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.or = call zeroext i1 @SDL_HIDAPI_LockRumble() #8
  br i1 %i.or, label %bb.bm, label %WritePacket.exit.thread.us.i

WritePacket.exit.thread.us.i:                     ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.os = zext nneg i8 %.0.i.us.i to i32
  %i.ot = load ptr, ptr %i.i, align 8
  %i.ou = call i32 @SDL_HIDAPI_SendRumbleAndUnlock(ptr noundef %i.ot, ptr noundef nonnull %.017.i.us.i, i32 noundef range(i32 10, 65) %i.os) #8
  br label %WritePacket.exit.us.i

bb.bn:                                            ; preds = %bb.bk
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ol, i64 128
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = zext nneg i8 %.0.i.us.i to i64
  %i.oy = call i32 @SDL_hid_write_REAL(ptr noundef %i.ow, ptr noundef nonnull %.017.i.us.i, i64 noundef %i.ox) #8
  br label %WritePacket.exit.us.i

WritePacket.exit.us.i:                            ; preds = %bb.bn, %bb.bm
  %.018.in.i.us.i = phi i32 [ %i.oy, %bb.bn ], [ %i.ou, %bb.bm ]
  %.018.i.us.i = icmp sgt i32 %.018.in.i.us.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br i1 %.018.i.us.i, label %WriteProprietary.exit, label %bb.bo

bb.bo:                                            ; preds = %WritePacket.exit.us.i, %WritePacket.exit.thread.us.i
  %i.oz = add nuw nsw i32 %.02016.us.i, 1
  %i.pa = load i32, ptr %i.og, align 4
  %.not.us.i = icmp slt i32 %.02016.us.i, %i.pa
  br i1 %.not.us.i, label %.lr.ph.split.us.i, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.bo, %bb.bi
  %i.pb = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #8 ; 0 uses
  br label %bb.bx

WriteProprietary.exit:                            ; preds = %WritePacket.exit.us.i, %bb.bh
  %i.pc = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pe = load i16, ptr %i.pd, align 8            ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 34
  %i.pg = load i16, ptr %i.pf, align 2            ; 2 uses
  %i.ph = icmp eq i16 %i.pe, 0
  %i.pi = icmp eq i16 %i.pg, 0
  %or.cond.i72 = select i1 %i.ph, i1 %i.pi, i1 false
  br i1 %or.cond.i72, label %HasHomeLED.exit.thread, label %bb.bp

bb.bp:                                            ; preds = %WriteProprietary.exit
  %i.pj = icmp eq i16 %i.pe, 3853
  %i.pk = icmp eq i16 %i.pg, 246
  %or.cond5.i = select i1 %i.pj, i1 %i.pk, i1 false
  br i1 %or.cond5.i, label %HasHomeLED.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pl = load i32, ptr %i.le, align 8            ; 3 uses
  switch i32 %i.pl, label %HasHomeLED.exit [
    i32 0, label %HasHomeLED.exit.thread
    i32 6, label %HasHomeLED.exit.thread
  ]

HasHomeLED.exit:                                  ; preds = %bb.bq
  %i.pm = icmp ne i16 %i.pe, 1406
  %i.pn = icmp ult i32 %i.pl, 4
  %or.cond16.not.i = or i1 %i.pm, %i.pn
  br i1 %or.cond16.not.i, label %HasHomeLED.exit.thread.sink.split, label %HasHomeLED.exit.thread

HasHomeLED.exit.thread.sink.split:                ; preds = %HasHomeLED.exit
  %.off61 = add i32 %i.pl, -1
  %switch62 = icmp ult i32 %.off61, 2
  %.str.22..str.23 = select i1 %switch62, ptr @.str.22, ptr @.str.23
  %i.po = call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull %.str.22..str.23, ptr noundef nonnull @SDL_HomeLEDHintChanged, ptr noundef nonnull %i.i) #8 ; 0 uses
  br label %HasHomeLED.exit.thread

HasHomeLED.exit.thread:                           ; preds = %HasHomeLED.exit.thread.sink.split, %bb.bq, %bb.bq, %bb.bp, %WriteProprietary.exit, %HasHomeLED.exit, %bb.a
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pq = load i16, ptr %i.pp, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ps = load i16, ptr %i.pr, align 2
  %i.pt = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.pu = load i32, ptr %i.pt, align 8
  %i.pv = call zeroext i1 @SDL_IsJoystickGameCube(i16 noundef zeroext %i.pq, i16 noundef zeroext %i.ps) #8
  br i1 %i.pv, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %HasHomeLED.exit.thread
  switch i32 %i.pu, label %AlwaysUsesLabels.exit [
    i32 7, label %bb.bs
    i32 8, label %bb.bs
    i32 9, label %bb.bs
    i32 10, label %bb.bs
    i32 12, label %bb.bs
    i32 13, label %bb.bs
  ]

bb.bs:                                            ; preds = %HasHomeLED.exit.thread, %bb.br, %bb.br, %bb.br, %bb.br, %bb.br, %bb.br
  %i.pw = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  store i8 1, ptr %i.pw, align 1
  br label %AlwaysUsesLabels.exit

AlwaysUsesLabels.exit:                            ; preds = %bb.br, %bb.bs
  %i.px = call i32 @SDL_GetJoystickPlayerIndex_REAL(ptr noundef %1) #8
  %i.py = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  store i32 %i.px, ptr %i.py, align 4
  %i.pz = call zeroext i1 @SDL_GetHintBoolean_REAL(ptr noundef nonnull @.str.24, i1 noundef zeroext true) #8 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %i.qb = zext i1 %i.pz to i8
  store i8 %i.qb, ptr %i.qa, align 2
  %i.qc = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %UpdateSlotLED.exit, label %bb.bt

bb.bt:                                            ; preds = %AlwaysUsesLabels.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1
  br i1 %i.pz, label %bb.bu, label %bb.bw

end_hunk_0
