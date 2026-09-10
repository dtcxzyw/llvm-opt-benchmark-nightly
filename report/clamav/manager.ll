Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/manager?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0_@scanmanager:bb.a
bb.gj:                                            ; preds = %bb.gi
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !55
  %i.uh = or i32 %i.ug, 128
  store i32 %i.uh, ptr %i.uf, align 4, !tbaa !55
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.ui = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.118) #22
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !17
  %.not511 = icmp eq i32 %i.uk, 0
  br i1 %.not511, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !55
  %i.un = or i32 %i.um, 4
  store i32 %i.un, ptr %i.ul, align 4, !tbaa !55
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.uo = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.119) #22
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 32
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !17
  %.not512 = icmp eq i32 %i.uq, 0
  br i1 %.not512, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !55
  %i.ut = or i32 %i.us, 8
  store i32 %i.ut, ptr %i.ur, align 4, !tbaa !55
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.uu = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.120) #22
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !17
  %.not513 = icmp eq i32 %i.uw, 0
  br i1 %.not513, label %bb.gr, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ux = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.121) #22
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 32
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !17
  %.not514 = icmp eq i32 %i.uz, 0
  br i1 %.not514, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !55
  %i.vc = or i32 %i.vb, 256
  store i32 %i.vc, ptr %i.va, align 4, !tbaa !55
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %bb.go
  %i.vd = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.122) #22
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !17
  %.not515 = icmp eq i32 %i.vf, 0
  br i1 %.not515, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !55
  %i.vi = or i32 %i.vh, 64
  store i32 %i.vi, ptr %i.vg, align 4, !tbaa !55
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.vj = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.123) #22
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !17
  %.not516 = icmp eq i32 %i.vl, 0
  br i1 %.not516, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !55
  %i.vo = or i32 %i.vn, 32
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !55
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.vp = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.124) #22
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !17
  %.not517 = icmp eq i32 %i.vr, 0
  br i1 %.not517, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !55
  %i.vu = or i32 %i.vt, 16
  store i32 %i.vu, ptr %i.vs, align 4, !tbaa !55
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.vv = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.125) #22
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 32
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !17
  %.not518 = icmp eq i32 %i.vx, 0
  br i1 %.not518, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !55
  %i.wa = or i32 %i.vz, 1024
  store i32 %i.wa, ptr %i.vy, align 4, !tbaa !55
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.wb = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.126) #22
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 32
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !17
  %.not519 = icmp eq i32 %i.wd, 0
  br i1 %.not519, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !55
  %i.wg = or i32 %i.wf, 2048
  store i32 %i.wg, ptr %i.we, align 4, !tbaa !55
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.wh = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.127) #22
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !17
  %.not520 = icmp eq i32 %i.wj, 0
  br i1 %.not520, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !55
  %i.wm = or i32 %i.wl, 4096
  store i32 %i.wm, ptr %i.wk, align 4, !tbaa !55
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.wn = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.128) #22
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !17
  %.not521 = icmp eq i32 %i.wp, 0
  br i1 %.not521, label %bb.hg, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.wq = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.129) #22
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 32
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !17
  %.not522 = icmp eq i32 %i.ws, 0
  br i1 %.not522, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.wt = load i32, ptr %1, align 4, !tbaa !50
  %i.wu = or i32 %i.wt, 4
  store i32 %i.wu, ptr %1, align 4, !tbaa !50
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he, %bb.hd
  %i.wv = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.130) #22
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 32
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !17
  %.not523 = icmp eq i32 %i.wx, 0
  br i1 %.not523, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.wy = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.131) #22
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !17
  %.not524 = icmp eq i32 %i.xa, 0
  br i1 %.not524, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !54
  %i.xd = or i32 %i.xc, 4
  store i32 %i.xd, ptr %i.xb, align 4, !tbaa !54
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.xe = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.132) #22
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !17
  %.not525 = icmp eq i32 %i.xg, 0
  br i1 %.not525, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !56
  %i.xj = or i32 %i.xi, 2
  store i32 %i.xj, ptr %i.xh, align 4, !tbaa !56
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.xk = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.133) #22
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !17
  %.not526 = icmp eq i32 %i.xm, 0
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !54 ; 2 uses
  br i1 %.not526, label %bb.hz, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.xp = or i32 %i.xo, 512
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !54
  %i.xq = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.134) #22 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !17
  %.not527 = icmp eq i32 %i.xs, 0
  br i1 %.not527, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 24
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !16 ; 2 uses
  %i.xv = icmp ult i64 %i.xu, 3
  br i1 %i.xv, label %switch.lookup, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.xw = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.135) #22 ; 0 uses
  br label %.thread557

switch.lookup:                                    ; preds = %bb.hn
  %switch.idx.cast = trunc nuw i64 %i.xu to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 10
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 1024
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hm, %switch.lookup
  %.sink651 = phi i32 [ %switch.offset, %switch.lookup ], [ 1024, %bb.hm ]
  %7 = load i32, ptr %i.xn, align 4, !tbaa !54
  %i.xx = or i32 %7, %.sink651
  store i32 %i.xx, ptr %i.xn, align 4, !tbaa !54
  %i.xy = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.136) #22 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 36
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !51
  %.not528 = icmp eq i32 %i.ya, 0
  br i1 %.not528, label %bb.hs, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !16
  %i.yd = call i32 @cl_engine_set_num(ptr noundef nonnull %i.av, i32 noundef 5, i64 noundef %i.yc) #22 ; 2 uses
  %.not529 = icmp eq i32 %i.yd, 0
  br i1 %.not529, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ye = call ptr @cl_strerror(i32 noundef %i.yd) #22
  %i.yf = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.137, ptr noundef %i.ye) #22 ; 0 uses
  br label %.thread557

bb.hs:                                            ; preds = %bb.hq, %bb.hp
  %i.yg = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.138) #22 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 36
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !51
  %.not530 = icmp eq i32 %i.yi, 0
  br i1 %.not530, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !16
  %i.yl = call i32 @cl_engine_set_num(ptr noundef nonnull %i.av, i32 noundef 4, i64 noundef %i.yk) #22 ; 2 uses
  %.not531 = icmp eq i32 %i.yl, 0
  br i1 %.not531, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ym = call ptr @cl_strerror(i32 noundef %i.yl) #22
  %i.yn = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.139, ptr noundef %i.ym) #22 ; 0 uses
  br label %.thread557

bb.hv:                                            ; preds = %bb.ht, %bb.hs
  %i.yo = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.140) #22 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 36
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !51
  %.not532 = icmp eq i32 %i.yq, 0
  br i1 %.not532, label %bb.ia, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !16
  switch i64 %i.ys, label %bb.hy [
    i64 0, label %bb.ia
    i64 1, label %bb.hx
  ]

bb.hx:                                            ; preds = %bb.hw
  %8 = load i32, ptr %i.xn, align 4, !tbaa !54
  %i.yt = or i32 %8, 4096
  br label %.sink.split652

bb.hy:                                            ; preds = %bb.hw
  %i.yu = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.141) #22 ; 0 uses
  br label %.thread557

bb.hz:                                            ; preds = %bb.hl
  %i.yv = and i32 %i.xo, -513
  br label %.sink.split652

.sink.split652:                                   ; preds = %bb.hz, %bb.hx
  %.sink = phi i32 [ %i.yt, %bb.hx ], [ %i.yv, %bb.hz ]
  store i32 %.sink, ptr %i.xn, align 4, !tbaa !54
  br label %bb.ia

bb.ia:                                            ; preds = %.sink.split652, %bb.hv, %bb.hw
  store i64 0, ptr @procdev, align 8, !tbaa !27
  %i.yw = call i32 @stat(ptr noundef nonnull @.str.142, ptr noundef nonnull %2) #22
  %i.yx = icmp eq i32 %i.yw, -1
  %i.yy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.yz = load i64, ptr %i.yy, align 8
  %i.za = icmp ne i64 %i.yz, 0
  %or.cond4 = select i1 %i.yx, i1 true, i1 %i.za
  br i1 %or.cond4, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.zb = load i64, ptr %2, align 8, !tbaa !28
  store i64 %i.zb, ptr @procdev, align 8, !tbaa !27
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.zc = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.143) #22
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 32
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !17
  %.not533 = icmp eq i32 %i.ze, 0
  br i1 %.not533, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !29
  %.not534 = icmp eq ptr %i.zg, null
  br i1 %.not534, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.zh = call fastcc i32 @scan_files(ptr noundef %i.av, ptr noundef %0, ptr noundef %1, i32 noundef %i.e, i32 noundef %i.k)
  br label %bb.ij

bb.if:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.zi = call ptr @getcwd(ptr noundef nonnull %i.a, i64 noundef 1024) #22
  %.not535 = icmp eq ptr %i.zi, null
  br i1 %.not535, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.zj = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.144) #22 ; 0 uses
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %i.zk = call i32 @stat(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #22 ; 0 uses
  %i.zl = load i64, ptr %2, align 8, !tbaa !28
  call fastcc void @scandirs(ptr noundef %i.a, ptr noundef %i.av, ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i64 noundef %i.zl)
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %.20 = phi i32 [ 0, %bb.ih ], [ 2, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ie
  %.21 = phi i32 [ %i.zh, %bb.ie ], [ %.20, %bb.ii ] ; 2 uses
  %i.zm = call ptr @optget(ptr noundef %0, ptr noundef nonnull @.str.39) #22 ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 32
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !17
  %i.zp = icmp ne i32 %i.zo, 0
  %i.zq = icmp ne ptr %i.zm, null
  %or.cond9 = and i1 %i.zq, %i.zp
  br i1 %or.cond9, label %.preheader, label %.thread557

.preheader:                                       ; preds = %bb.ij, %bb.in
  %.4 = phi ptr [ %i.zw, %bb.in ], [ %i.zm, %bb.ij ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !18 ; 2 uses
  %i.zt = call i32 @strcasecmp(ptr noundef %i.zs, ptr noundef nonnull @.str.11) #23
  %.not536 = icmp eq i32 %i.zt, 0
  br i1 %.not536, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %.preheader
  call void @cli_sigperf_print() #22
  call void @cli_sigperf_events_destroy() #22
  br label %bb.in

bb.il:                                            ; preds = %.preheader
  %i.zu = call i32 @strcasecmp(ptr noundef %i.zs, ptr noundef nonnull @.str.40) #23
  %.not537 = icmp eq i32 %i.zu, 0
  br i1 %.not537, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  call void @cli_pcre_perf_print() #22
  call void @cli_pcre_perf_events_destroy() #22
  br label %bb.in

bb.in:                                            ; preds = %bb.il, %bb.im, %bb.ik
  %i.zv = getelementptr inbounds nuw i8, ptr %.4, i64 48
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !22 ; 2 uses
  %.old8.not = icmp eq ptr %i.zw, null
  br i1 %.old8.not, label %.thread557, label %.preheader

.thread557:                                       ; preds = %bb.ce, %bb.in, %bb.dy, %bb.dw, %bb.ci, %bb.ck, %bb.ij, %bb.hy, %bb.hu, %bb.hr, %bb.ho, %bb.ez, %bb.ew, %bb.et, %bb.eq, %bb.en, %bb.ek, %bb.eh, %bb.ee, %bb.eb, %bb.dt, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.cs, %bb.cq, %bb.cn, %bb.cg, %bb.ca, %bb.bw, %bb.bu, %bb.br, %bb.ah, %bb.ad, %bb.ab, %bb.x, %bb.j, %bb.h, %bb.d, %bb.b
  %.22 = phi i32 [ 2, %bb.b ], [ 2, %bb.d ], [ 2, %bb.h ], [ 2, %bb.x ], [ 2, %bb.ab ], [ 2, %bb.ad ], [ 2, %bb.ah ], [ 2, %bb.br ], [ 2, %bb.bu ], [ 2, %bb.bw ], [ 2, %bb.ca ], [ 2, %bb.j ], [ 2, %bb.cg ], [ 2, %bb.cn ], [ 2, %bb.cq ], [ 2, %bb.cs ], [ 2, %bb.dd ], [ 2, %bb.dg ], [ 2, %bb.dj ], [ 2, %bb.dm ], [ 2, %bb.dt ], [ 2, %bb.eb ], [ 2, %bb.ee ], [ 2, %bb.eh ], [ 2, %bb.ek ], [ 2, %bb.en ], [ 2, %bb.eq ], [ 2, %bb.et ], [ 2, %bb.ew ], [ 2, %bb.ez ], [ 2, %bb.ho ], [ 2, %bb.hr ], [ 2, %bb.hu ], [ 2, %bb.hy ], [ 2, %bb.dy ], [ %.21, %bb.ij ], [ 2, %bb.ci ], [ %.21, %bb.in ], [ 2, %bb.ck ], [ 2, %bb.dw ], [ 2, %bb.ce ]
  %.0318 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.h ], [ %i.av, %bb.x ], [ %i.av, %bb.ab ], [ %i.av, %bb.ad ], [ %i.av, %bb.ah ], [ %i.av, %bb.br ], [ %i.av, %bb.bu ], [ %i.av, %bb.bw ], [ %i.av, %bb.ca ], [ null, %bb.j ], [ %i.av, %bb.cg ], [ %i.av, %bb.cn ], [ %i.av, %bb.cq ], [ %i.av, %bb.cs ], [ %i.av, %bb.dd ], [ %i.av, %bb.dg ], [ %i.av, %bb.dj ], [ %i.av, %bb.dm ], [ %i.av, %bb.dt ], [ %i.av, %bb.eb ], [ %i.av, %bb.ee ], [ %i.av, %bb.eh ], [ %i.av, %bb.ek ], [ %i.av, %bb.en ], [ %i.av, %bb.eq ], [ %i.av, %bb.et ], [ %i.av, %bb.ew ], [ %i.av, %bb.ez ], [ %i.av, %bb.ho ], [ %i.av, %bb.hr ], [ %i.av, %bb.hu ], [ %i.av, %bb.hy ], [ %i.av, %bb.dy ], [ %i.av, %bb.ij ], [ %i.av, %bb.ci ], [ %i.av, %bb.in ], [ %i.av, %bb.ck ], [ %i.av, %bb.dw ], [ %i.av, %bb.ce ]
  %i.zx = call i32 @cl_engine_free(ptr noundef %.0318) #22 ; 0 uses
  %i.zy = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 12), align 4, !tbaa !31
  %.not545 = icmp eq i32 %i.zy, 0
  %i.zz = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8
  %.not546 = icmp eq i32 %i.zz, 0
  %spec.select551 = select i1 %.not546, i32 %.22, i32 2
  %.23 = select i1 %.not545, i32 %spec.select551, i32 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i32 %.23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @optget(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @logg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cl_init(i32 noundef) local_unnamed_addr #3

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #3

declare ptr @cl_engine_new() local_unnamed_addr #3

declare void @cl_engine_set_clcb_virus_found(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @clamscan_virus_found_cb(i32 %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %.str.145. = select i1 %.not, ptr @.str.145, ptr %i.c
  %i.d = tail call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.146, ptr noundef nonnull %.str.145., ptr noundef %1) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #6

declare void @cl_engine_set_clcb_sigload_progress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @sigload_callback(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.d = uitofp i64 %1 to double                  ; 3 uses
  %i.e = uitofp i64 %0 to double                  ; 3 uses
  %i.f = fdiv double %i.d, %i.e                   ; 3 uses
  %i.g = fmul double %i.f, 2.500000e+01
  %i.h = tail call double @llvm.round.f64(double %i.g)
  %i.i = fptoui double %i.h to i32                ; 4 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !59
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
