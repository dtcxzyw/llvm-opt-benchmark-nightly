Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_sysjoystick?download=true
inline.NumInlined: 52
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@LINUX_JoystickUpdate:bb.a
  %i.gz = load i8, ptr %i.gu, align 4, !range !6, !noundef !7
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.hb = shl nsw i32 %i.gq, 1                    ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.hd = load i32, ptr %i.hc, align 4            ; 2 uses
  %i.he = icmp sgt i32 %i.hb, %i.hd
  br i1 %i.he, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = icmp slt i32 %i.hb, %i.hg
  br i1 %i.hh, label %AxisCorrect.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i.i = phi i32 [ %i.hg, %bb.an ], [ %i.hd, %bb.am ]
  %.0.i119.i = sub nsw i32 %i.hb, %.pn.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = mul nsw i32 %.0.i119.i, %i.hj
  %i.hl = ashr i32 %i.hk, 13
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.hm = sub nsw i32 %i.gq, %i.gw
  %i.hn = sitofp i32 %i.hm to float
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.hp = load float, ptr %i.ho, align 4
  %i.hq = call float @llvm.fmuladd.f32(float %i.hn, float %i.hp, float -3.276800e+04)
  %i.hr = fadd float %i.hq, 5.000000e-01
  %i.hs = call float @SDL_floorf_REAL(float noundef %i.hr) #16
  %i.ht = fptosi float %i.hs to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.ak
  %.1.i.i = phi i32 [ %i.hl, %bb.ao ], [ %i.ht, %bb.ap ], [ %i.gq, %bb.ak ] ; 2 uses
  %i.hu = icmp slt i32 %.1.i.i, -32768
  br i1 %i.hu, label %AxisCorrect.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %..1.i.i = call i32 @llvm.smin.i32(i32 %.1.i.i, i32 32767)
  br label %AxisCorrect.exit.i

AxisCorrect.exit.i:                               ; preds = %bb.ar, %bb.aq, %bb.an
  %.023.i.i = phi i32 [ -32768, %bb.aq ], [ 0, %bb.an ], [ %..1.i.i, %bb.ar ]
  store i32 %.023.i.i, ptr %i.gp, align 4
  %i.hv = call i64 @SDL_EVDEV_GetEventTimestamp(ptr noundef nonnull %i.dx) #16
  %i.hw = load ptr, ptr %i.b, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 895
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.gt
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = load i32, ptr %i.gp, align 4
  %i.ib = trunc i32 %i.ia to i16
  call void @SDL_SendJoystickAxis(i64 noundef %i.hv, ptr noundef nonnull %0, i8 noundef zeroext %i.hz, i16 noundef signext %i.ib) #16
  br label %HandleHat.exit.i26

bb.as:                                            ; preds = %bb.w
  %switch116.i = icmp ult i16 %i.dz, 2
  br i1 %switch116.i, label %bb.at, label %HandleHat.exit.i26

bb.at:                                            ; preds = %bb.as
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.id = load i32, ptr %i.ic, align 4
  call void @SDL_AssertJoysticksLocked() #16
  %i.ie = load ptr, ptr %i.b, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 112
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = zext nneg i16 %i.dz to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = add nsw i32 %i.ij, %i.id
  store i32 %i.ik, ptr %i.ii, align 4
  br label %HandleHat.exit.i26

bb.au:                                            ; preds = %bb.w
  %cond.i = icmp eq i16 %i.dz, 3
  br i1 %cond.i, label %bb.av, label %HandleHat.exit.i26

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.eb, align 2
  br label %HandleHat.exit.i26

bb.aw:                                            ; preds = %bb.v
  store i8 0, ptr %i.eb, align 2
  %i.il = call i64 @SDL_GetTicksNS_REAL() #16
  call fastcc void @PollAllValues(i64 noundef %i.il, ptr noundef nonnull %0)
  br label %HandleHat.exit.i26

HandleHat.exit.i26:                               ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %AxisCorrect.exit.i, %bb.aj, %bb.ai, %bb.x, %bb.w, %bb.v
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i23
  br i1 %exitcond.not.i28, label %.loopexit127.i, label %.lr.ph.i24, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.loopexit127.i, %bb.u
  %i.im = load i32, ptr %i.dj, align 4
  %i.in = icmp eq i32 %i.im, 19
  br i1 %i.in, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i
  %i.io = load ptr, ptr %i.b, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 3744
  store i8 1, ptr %i.ip, align 8
  store i32 0, ptr %i.dj, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i
  %i.iq = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 3636
  %i.is = load i8, ptr %i.ir, align 4, !range !6, !noundef !7
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %.preheader.i, label %.loopexit126.i

.preheader.i:                                     ; preds = %bb.ay
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = call i64 @read(i32 noundef %i.iv, ptr noundef nonnull %1, i64 noundef 768) #16 ; 2 uses
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph133.i, label %.loopexit126.i

.lr.ph133.i:                                      ; preds = %.preheader.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.az

.loopexit.i20:                                    ; preds = %bb.bp, %bb.az
  %i.jb = load ptr, ptr %i.b, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = call i64 @read(i32 noundef %i.jd, ptr noundef nonnull %1, i64 noundef 768) #16 ; 2 uses
  %i.jf = trunc i64 %i.je to i32
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %bb.az, label %.loopexit126.i, !llvm.loop !30

bb.az:                                            ; preds = %.loopexit.i20, %.lr.ph133.i
  %i.jh = phi i64 [ %i.iw, %.lr.ph133.i ], [ %i.je, %.loopexit.i20 ]
  %i.ji = trunc i64 %i.jh to i32                  ; 2 uses
  %.not135.i = icmp ult i32 %i.ji, 24
  br i1 %.not135.i, label %.loopexit.i20, label %.lr.ph132.preheader.i

.lr.ph132.preheader.i:                            ; preds = %bb.az
  %i.jj = udiv i32 %i.ji, 24
  %wide.trip.count140.i = zext nneg i32 %i.jj to i64
  br label %.lr.ph132.i

.lr.ph132.i:                                      ; preds = %bb.bp, %.lr.ph132.preheader.i
  %indvars.iv137.i = phi i64 [ 0, %.lr.ph132.preheader.i ], [ %indvars.iv.next138.i, %bb.bp ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv137.i ; 6 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 18
  %i.jm = load i16, ptr %i.jl, align 2            ; 5 uses
  %i.jn = zext i16 %i.jm to i64                   ; 3 uses
  %i.jo = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 3639 ; 3 uses
  %i.jq = load i8, ptr %i.jp, align 1, !range !6, !noundef !7
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jt = load i16, ptr %i.js, align 8            ; 2 uses
  br i1 %i.jr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph132.i
  %i.ju = icmp ne i16 %i.jt, 0
  %i.jv = icmp ne i16 %i.jm, 0
  %or.cond3.i = select i1 %i.ju, i1 true, i1 %i.jv
  br i1 %or.cond3.i, label %bb.bp, label %bb.bj

bb.bb:                                            ; preds = %.lr.ph132.i
  switch i16 %i.jt, label %bb.bp [
    i16 0, label %bb.bh
    i16 3, label %bb.bc
    i16 4, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  switch i16 %i.jm, label %bb.bp [
    i16 0, label %bb.bd
    i16 1, label %bb.bd
    i16 2, label %bb.bd
    i16 3, label %bb.be
    i16 4, label %bb.be
    i16 5, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc, %bb.bc
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 20
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = sitofp i32 %i.jx to float
  %i.jz = fmul nnan float %i.jy, 9.806650e+00
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 3572
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.jn
  %i.kc = load float, ptr %i.kb, align 4
  %i.kd = fdiv float %i.jz, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 3608
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.jn
  store float %i.kd, ptr %i.kf, align 4
  br label %bb.bp

bb.be:                                            ; preds = %bb.bc, %bb.bc, %bb.bc
  %i.kg = add nuw nsw i64 %i.jn, 4294967293
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jk, i64 20
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = sitofp i32 %i.ki to float
  %i.kk = fmul nnan float %i.kj, f0x3C8EFA35
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jo, i64 3584
  %3 = and i64 %i.kg, 4294967295                  ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %3
  %i.kn = load float, ptr %i.km, align 4
  %i.ko = fdiv float %i.kk, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jo, i64 3596
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %3
  store float %i.ko, ptr %i.kq, align 4
  br label %bb.bp

bb.bf:                                            ; preds = %bb.bb
  %i.kr = icmp eq i16 %i.jm, 5
  br i1 %i.kr, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %bb.bf
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jk, i64 20
  %i.kt = load i32, ptr %i.ks, align 4            ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jo, i64 3632
  %i.kv = load i32, ptr %i.ku, align 8            ; 2 uses
  %.not.i21 = icmp sgt i32 %i.kv, %i.kt
  %i.kw = sub i32 %i.kt, %i.kv                    ; 2 uses
  %i.kx = xor i32 %i.kw, -2147483648
  %.0109.i = select i1 %.not.i21, i32 %i.kx, i32 %i.kw
  %i.ky = sext i32 %.0109.i to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jo, i64 3624 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8
  %i.lb = add i64 %i.la, %i.ky
  store i64 %i.lb, ptr %i.kz, align 8
  %i.lc = load ptr, ptr %i.b, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 3632
  store i32 %i.kt, ptr %i.ld, align 8
  br label %bb.bp

bb.bh:                                            ; preds = %bb.bb
  switch i16 %i.jm, label %bb.bp [
    i16 3, label %bb.bi
    i16 0, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  store i8 1, ptr %i.jp, align 1
  br label %bb.bp

bb.bj:                                            ; preds = %bb.ba
  store i8 0, ptr %i.jp, align 1
  %i.le = call i64 @SDL_GetTicksNS_REAL() #16
  call fastcc void @PollAllSensors(i64 noundef %i.le, ptr noundef nonnull %0)
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bh
  %i.lf = call i64 @SDL_EVDEV_GetEventTimestamp(ptr noundef nonnull %i.jk) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.lg = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 3596 ; 2 uses
  %i.li = getelementptr i8, ptr %i.lg, i64 8
  %.val117.i = load ptr, ptr %i.li, align 8
  %i.lj = getelementptr i8, ptr %.val117.i, i64 16
  %.val117.val.i = load i16, ptr %i.lj, align 8
  %i.lk = icmp eq i16 %.val117.val.i, 1406
  br i1 %i.lk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 3600
  %i.lm = load float, ptr %i.ll, align 8
  %i.ln = fneg float %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 3604
  %i.lp = load float, ptr %i.lh, align 4
  %i.lq = fneg float %i.lp
  br label %CorrectSensorData.exit.i

bb.bm:                                            ; preds = %bb.bk
  %i.lr = load float, ptr %i.lh, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 3600
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 3604
  %i.lu = load float, ptr %i.lt, align 4
  br label %CorrectSensorData.exit.i

CorrectSensorData.exit.i:                         ; preds = %bb.bm, %bb.bl
  %.sink46 = phi float [ %i.ln, %bb.bl ], [ %i.lr, %bb.bm ]
  %.sink.in = phi ptr [ %i.lo, %bb.bl ], [ %i.ls, %bb.bm ]
  %.sink.i.i = phi float [ %i.lq, %bb.bl ], [ %i.lu, %bb.bm ]
  %.sink = load float, ptr %.sink.in, align 4
  store float %.sink46, ptr %i.a, align 4
  store float %.sink, ptr %i.iz, align 4
  store float %.sink.i.i, ptr %i.ja, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 3624
  %i.lw = load i64, ptr %i.lv, align 8
  %i.lx = mul i64 %i.lw, 1000
  call void @SDL_SendJoystickSensor(i64 noundef %i.lf, ptr noundef nonnull %0, i32 noundef 2, i64 noundef %i.lx, ptr noundef nonnull %i.a, i32 noundef 3) #16
  %i.ly = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 3608 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.ly, i64 8
  %.val.i = load ptr, ptr %i.ma, align 8
  %i.mb = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i16, ptr %i.mb, align 8
  %i.mc = icmp eq i16 %.val.val.i, 1406
  br i1 %i.mc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %CorrectSensorData.exit.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 3612
  %i.me = load float, ptr %i.md, align 4
  %i.mf = fneg float %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 3616
  %i.mh = load float, ptr %i.lz, align 8
  %i.mi = fneg float %i.mh
  br label %CorrectSensorData.exit121.i

bb.bo:                                            ; preds = %CorrectSensorData.exit.i
  %i.mj = load float, ptr %i.lz, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 3612
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 3616
  %i.mm = load float, ptr %i.ml, align 8
  br label %CorrectSensorData.exit121.i

CorrectSensorData.exit121.i:                      ; preds = %bb.bo, %bb.bn
  %.sink48 = phi float [ %i.mf, %bb.bn ], [ %i.mj, %bb.bo ]
  %.sink47.in = phi ptr [ %i.mg, %bb.bn ], [ %i.mk, %bb.bo ]
  %.sink.i120.i = phi float [ %i.mi, %bb.bn ], [ %i.mm, %bb.bo ]
  %.sink47 = load float, ptr %.sink47.in, align 4
  store float %.sink48, ptr %i.a, align 4
  store float %.sink47, ptr %i.iz, align 4
  store float %.sink.i120.i, ptr %i.ja, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 3624
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = mul i64 %i.mo, 1000
  call void @SDL_SendJoystickSensor(i64 noundef %i.lf, ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.mp, ptr noundef nonnull %i.a, i32 noundef 3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.bp

bb.bp:                                            ; preds = %CorrectSensorData.exit121.i, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count140.i
  br i1 %exitcond141.not.i, label %.loopexit.i20, label %.lr.ph132.i, !llvm.loop !31

.loopexit126.i:                                   ; preds = %.loopexit.i20, %.preheader.i, %bb.ay
  %i.mq = load i32, ptr %i.dj, align 4
  %i.mr = icmp eq i32 %i.mq, 19
  br i1 %i.mr, label %bb.bq, label %HandleInputEvents.exit

bb.bq:                                            ; preds = %.loopexit126.i
  %i.ms = load ptr, ptr %i.b, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 3745
  store i8 1, ptr %i.mt, align 1
  br label %HandleInputEvents.exit

HandleInputEvents.exit:                           ; preds = %.loopexit126.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.br

bb.br:                                            ; preds = %HandleInputEvents.exit, %HandleClassicEvents.exit
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 8            ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.br, %bb.bt
  %i.mx = phi i32 [ %i.np, %bb.bt ], [ %i.mv, %bb.br ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bt ], [ 0, %bb.br ] ; 4 uses
  %i.my = load ptr, ptr %i.b, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 112
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv ; 3 uses
  %i.nc = load i32, ptr %i.nb, align 4            ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.ne = load i32, ptr %i.nd, align 4            ; 2 uses
  %i.nf = icmp ne i32 %i.nc, 0
  %i.ng = icmp ne i32 %i.ne, 0
  %or.cond = select i1 %i.nf, i1 true, i1 %i.ng
  br i1 %or.cond, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph
  store i32 0, ptr %i.nb, align 4
  %i.nh = load ptr, ptr %i.b, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 112
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  store i32 0, ptr %i.nl, align 4
  %i.nm = trunc i64 %indvars.iv to i8
  %i.nn = trunc i32 %i.nc to i16
  %i.no = trunc i32 %i.ne to i16
  call void @SDL_SendJoystickBall(i64 noundef 0, ptr noundef nonnull %0, i8 noundef zeroext %i.nm, i16 noundef signext %i.nn, i16 noundef signext %i.no) #16
  %.pre = load i32, ptr %i.mu, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph, %bb.bs
  %i.np = phi i32 [ %i.mx, %.lr.ph ], [ %.pre, %bb.bs ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nq = sext i32 %i.np to i64
  %i.nr = icmp slt i64 %indvars.iv.next, %i.nq
  br i1 %i.nr, label %.lr.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.bt, %bb.br
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @LINUX_JoystickClose(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  tail call void @SDL_AssertJoysticksLocked() #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
end_hunk_0
