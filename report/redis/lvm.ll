inline.NumInlined: 19
inline.NumDeleted: 6
begin_hunk_0_@luaV_execute:bb.a

bb.cz:                                            ; preds = %bb.cy
  %i.tj = zext nneg i32 %i.tf to i64
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.tj
  store ptr %i.tk, ptr %i.l, align 8, !tbaa !34
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.tl = call i32 @luaD_precall(ptr noundef nonnull %0, ptr noundef %i.cb, i32 noundef %i.ti) #8
  switch i32 %i.tl, label %.critedge.thread [
    i32 0, label %bb.db
    i32 1, label %bb.dc
  ]

bb.db:                                            ; preds = %bb.da
  %i.tm = add nsw i32 %.0.ph, 1
  br label %.loopexit.outer.backedge

.loopexit.outer.backedge:                         ; preds = %bb.db, %bb.dr, %bb.ds
  %.0.ph.be = phi i32 [ %i.vk, %bb.ds ], [ %i.vk, %bb.dr ], [ %i.tm, %bb.db ]
  br label %.loopexit.outer

bb.dc:                                            ; preds = %bb.da
  %.not774 = icmp eq i32 %i.th, 0
  br i1 %.not774, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tn = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !76
  store ptr %i.tp, ptr %i.l, align 8, !tbaa !34
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.tq = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.df:                                            ; preds = %bb.l
  %i.tr = lshr i32 %i.ad, 23                      ; 2 uses
  %.not771 = icmp eq i32 %i.tr, 0
  br i1 %.not771, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.ts
  store ptr %i.tt, ptr %i.l, align 8, !tbaa !34
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.tu = call i32 @luaD_precall(ptr noundef nonnull %0, ptr noundef %i.cb, i32 noundef -1) #8
  switch i32 %i.tu, label %.critedge.thread [
    i32 0, label %bb.di
    i32 1, label %bb.dl
  ]

bb.di:                                            ; preds = %bb.dh
  %i.tv = load ptr, ptr %i.e, align 8, !tbaa !44  ; 7 uses
  %i.tw = getelementptr inbounds i8, ptr %i.tv, i64 -40 ; 2 uses
  %i.tx = getelementptr inbounds i8, ptr %i.tv, i64 -32 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !45 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !45 ; 4 uses
  %i.ub = load ptr, ptr %i.n, align 8, !tbaa !77
  %.not772 = icmp eq ptr %i.ub, null
  br i1 %.not772, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.uc = load ptr, ptr %i.tw, align 8, !tbaa !78
  call void @luaF_close(ptr noundef nonnull %0, ptr noundef %i.uc) #8
  %.pre = load ptr, ptr %i.tx, align 8, !tbaa !45
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.ud = phi ptr [ %.pre, %bb.dj ], [ %i.ty, %bb.di ]
  %i.ue = load ptr, ptr %i.tv, align 8, !tbaa !78
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = ptrtoint ptr %i.ua to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %i.ui = getelementptr inbounds i8, ptr %i.ud, i64 %i.uh ; 2 uses
  store ptr %i.ui, ptr %i.tw, align 8, !tbaa !78
  store ptr %i.ui, ptr %i.f, align 8, !tbaa !39
  %i.uj = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.uk = icmp ult ptr %i.ua, %i.uj
  br i1 %i.uk, label %.lr.ph874, label %._crit_edge875

.lr.ph874:                                        ; preds = %bb.dk, %.lr.ph874
  %indvars.iv895 = phi i64 [ %indvars.iv.next896, %.lr.ph874 ], [ 0, %bb.dk ] ; 3 uses
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.ua, i64 %indvars.iv895 ; 2 uses
  %i.um = getelementptr inbounds nuw [16 x i8], ptr %i.ty, i64 %indvars.iv895 ; 2 uses
  %i.un = load i64, ptr %i.ul, align 8, !tbaa !10
  store i64 %i.un, ptr %i.um, align 8, !tbaa !10
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i32 %i.up, ptr %i.uq, align 8, !tbaa !8
  %indvars.iv.next896 = add nuw nsw i64 %indvars.iv895, 1 ; 3 uses
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.ua, i64 %indvars.iv.next896
  %i.us = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.ut = icmp ult ptr %i.ur, %i.us
  br i1 %i.ut, label %.lr.ph874, label %._crit_edge875, !llvm.loop !79

._crit_edge875:                                   ; preds = %.lr.ph874, %bb.dk
  %.lcssa855 = phi i64 [ 0, %bb.dk ], [ %indvars.iv.next896, %.lr.ph874 ]
  %i.uu = getelementptr inbounds nuw [16 x i8], ptr %i.ty, i64 %.lcssa855 ; 2 uses
  store ptr %i.uu, ptr %i.l, align 8, !tbaa !34
  %i.uv = getelementptr inbounds i8, ptr %i.tv, i64 -24
  store ptr %i.uu, ptr %i.uv, align 8, !tbaa !76
  %i.uw = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ux = getelementptr inbounds i8, ptr %i.tv, i64 -16
  store ptr %i.uw, ptr %i.ux, align 8, !tbaa !80
  %i.uy = getelementptr inbounds i8, ptr %i.tv, i64 -4 ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !81
  %i.va = add nsw i32 %i.uz, 1
  store i32 %i.va, ptr %i.uy, align 4, !tbaa !81
  %i.vb = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -40
  store ptr %i.vc, ptr %i.e, align 8, !tbaa !44
  br label %.loopexit

bb.dl:                                            ; preds = %bb.dh
  %i.vd = load ptr, ptr %i.f, align 8, !tbaa !39
  br label %.critedge.backedge

bb.dm:                                            ; preds = %bb.l
  %i.ve = lshr i32 %i.ad, 23                      ; 2 uses
  %.not768 = icmp eq i32 %i.ve, 0
  br i1 %.not768, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.vf
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 -16
  store ptr %i.vh, ptr %i.l, align 8, !tbaa !34
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.vi = load ptr, ptr %i.n, align 8, !tbaa !77
  %.not769 = icmp eq ptr %i.vi, null
  br i1 %.not769, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @luaF_close(ptr noundef nonnull %0, ptr noundef %.1713) #8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.vj = call i32 @luaD_poscall(ptr noundef nonnull %0, ptr noundef %i.cb) #8
  %i.vk = add nsw i32 %.0.ph, -1                  ; 3 uses
  %i.vl = icmp eq i32 %i.vk, 0
  br i1 %i.vl, label %.critedge.thread, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.not770 = icmp eq i32 %i.vj, 0
  br i1 %.not770, label %.loopexit.outer.backedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.vm = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !76
  store ptr %i.vo, ptr %i.l, align 8, !tbaa !34
  br label %.loopexit.outer.backedge

bb.dt:                                            ; preds = %bb.l
  %i.vp = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !10 ; 2 uses
  %i.vr = load double, ptr %i.cb, align 8, !tbaa !10
  %i.vs = fadd double %i.vq, %i.vr                ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !10 ; 2 uses
  %i.vv = fcmp ogt double %i.vq, 0.000000e+00
  br i1 %i.vv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.vw = fcmp ugt double %i.vs, %i.vu
  br i1 %i.vw, label %.critedge.backedge, label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  %i.vx = fcmp ugt double %i.vu, %i.vs
  br i1 %i.vx, label %.critedge.backedge, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.vy = lshr i32 %i.ad, 14
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr [4 x i8], ptr %i.ac, i64 %i.vz
  %i.wb = getelementptr i8, ptr %i.wa, i64 -524284
  store double %i.vs, ptr %i.cb, align 8, !tbaa !10
  %i.wc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 3, ptr %i.wc, align 8, !tbaa !8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store double %i.vs, ptr %i.wd, align 8, !tbaa !10
  %i.we = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store i32 3, ptr %i.we, align 8, !tbaa !8
  br label %.critedge.backedge

bb.dx:                                            ; preds = %bb.l
  %i.wf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.wh = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !8
  %i.wj = icmp eq i32 %i.wi, 3
  br i1 %i.wj, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %4 = load i32, ptr %i.wh, align 8, !tbaa !8
  switch i32 %4, label %bb.ea [
    i32 3, label %luaV_tonumber.exit.thread
    i32 4, label %bb.dz
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.wk = load ptr, ptr %i.cb, align 8, !tbaa !10
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wm = call i32 @luaO_str2d(ptr noundef nonnull %i.wl, ptr noundef nonnull %i.c) #8
  %.not.i811 = icmp eq i32 %i.wm, 0
  br i1 %.not.i811, label %bb.ea, label %luaV_tonumber.exit.thread.a

luaV_tonumber.exit.thread.a:                      ; preds = %bb.dz
  %i.wn = load double, ptr %i.c, align 8, !tbaa !11
  store double %i.wn, ptr %i.cb, align 8, !tbaa !10
  store i32 3, ptr %i.wh, align 8, !tbaa !8
  br label %luaV_tonumber.exit.thread

luaV_tonumber.exit.thread:                        ; preds = %luaV_tonumber.exit.thread.a, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #8
  br label %bb.ej

bb.eb:                                            ; preds = %luaV_tonumber.exit.thread, %bb.dx
  %i.wo = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 3 uses
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !8
  %i.wq = icmp eq i32 %i.wp, 3
  br i1 %i.wq, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %5 = load i32, ptr %i.wo, align 8, !tbaa !8
  switch i32 %5, label %bb.ee [
    i32 3, label %luaV_tonumber.exit815.thread
    i32 4, label %bb.ed
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.wr = load ptr, ptr %i.wf, align 8, !tbaa !10
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  %i.wt = call i32 @luaO_str2d(ptr noundef nonnull %i.ws, ptr noundef nonnull %i.b) #8
  %.not.i813 = icmp eq i32 %i.wt, 0
  br i1 %.not.i813, label %bb.ee, label %luaV_tonumber.exit815.thread.a

luaV_tonumber.exit815.thread.a:                   ; preds = %bb.ed
  %i.wu = load double, ptr %i.b, align 8, !tbaa !11
  store double %i.wu, ptr %i.wf, align 8, !tbaa !10
  store i32 3, ptr %i.wo, align 8, !tbaa !8
  br label %luaV_tonumber.exit815.thread

luaV_tonumber.exit815.thread:                     ; preds = %luaV_tonumber.exit815.thread.a, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #8
  br label %bb.ej

bb.ef:                                            ; preds = %luaV_tonumber.exit815.thread, %bb.eb
  %i.wv = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 3 uses
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !8
  %i.wx = icmp eq i32 %i.ww, 3
  br i1 %i.wx, label %bb.ej, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %6 = load i32, ptr %i.wv, align 8, !tbaa !8
  switch i32 %6, label %bb.ei [
    i32 3, label %luaV_tonumber.exit818.thread
    i32 4, label %bb.eh
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.wy = load ptr, ptr %i.wg, align 8, !tbaa !10
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  %i.xa = call i32 @luaO_str2d(ptr noundef nonnull %i.wz, ptr noundef nonnull %i.a) #8
  %.not.i816 = icmp eq i32 %i.xa, 0
  br i1 %.not.i816, label %bb.ei, label %luaV_tonumber.exit818.thread.a

luaV_tonumber.exit818.thread.a:                   ; preds = %bb.eh
  %i.xb = load double, ptr %i.a, align 8, !tbaa !11
  store double %i.xb, ptr %i.wg, align 8, !tbaa !10
  store i32 3, ptr %i.wv, align 8, !tbaa !8
  br label %luaV_tonumber.exit818.thread

luaV_tonumber.exit818.thread:                     ; preds = %luaV_tonumber.exit818.thread.a, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #8
  unreachable

bb.ej:                                            ; preds = %luaV_tonumber.exit818.thread, %bb.ee, %bb.ef, %bb.ea
  %i.xc = load double, ptr %i.cb, align 8, !tbaa !10
  %i.xd = load double, ptr %i.wg, align 8, !tbaa !10
  %i.xe = fsub double %i.xc, %i.xd
  store double %i.xe, ptr %i.cb, align 8, !tbaa !10
  store i32 3, ptr %i.wh, align 8, !tbaa !8
  %i.xf = lshr i32 %i.ad, 14
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = getelementptr [4 x i8], ptr %i.ac, i64 %i.xg
  %i.xi = getelementptr i8, ptr %i.xh, i64 -524284
  br label %.critedge.backedge

bb.ek:                                            ; preds = %bb.l
  %i.xj = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.xl = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.xm = load i64, ptr %i.xk, align 8, !tbaa !10
  store i64 %i.xm, ptr %i.xl, align 8, !tbaa !10
  %i.xn = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  store i32 %i.xo, ptr %i.xp, align 8, !tbaa !8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.xs = load i64, ptr %i.xq, align 8, !tbaa !10
  store i64 %i.xs, ptr %i.xr, align 8, !tbaa !10
  %i.xt = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  store i32 %i.xu, ptr %i.xv, align 8, !tbaa !8
  %i.xw = load i64, ptr %i.cb, align 8, !tbaa !10
  store i64 %i.xw, ptr %i.xj, align 8, !tbaa !10
  %i.xx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store i32 %i.xy, ptr %i.xz, align 8, !tbaa !8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  store ptr %i.ya, ptr %i.l, align 8, !tbaa !34
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !43
  %i.yb = lshr i32 %i.ad, 14
  %i.yc = and i32 %i.yb, 511
  call void @luaD_call(ptr noundef nonnull %0, ptr noundef nonnull %i.xj, i32 noundef %i.yc) #8
  %i.yd = load ptr, ptr %i.f, align 8, !tbaa !39  ; 2 uses
  %i.ye = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !76
  store ptr %i.yg, ptr %i.l, align 8, !tbaa !34
  %i.yh = getelementptr inbounds nuw [16 x i8], ptr %i.yd, i64 %i.ca ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 56
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !8  ; 2 uses
  %i.yk = icmp eq i32 %i.yj, 0
  br i1 %i.yk, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yh, i64 48
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 32
  %i.yn = load i64, ptr %i.yl, align 8, !tbaa !10
  store i64 %i.yn, ptr %i.ym, align 8, !tbaa !10
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yh, i64 40
  store i32 %i.yj, ptr %i.yo, align 8, !tbaa !8
  %i.yp = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.yq = lshr i32 %i.yp, 14
  %i.yr = zext nneg i32 %i.yq to i64
  %i.ys = getelementptr [4 x i8], ptr %i.ac, i64 %i.yr
  %i.yt = getelementptr i8, ptr %i.ys, i64 -524284
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.8724 = phi ptr [ %i.ac, %bb.ek ], [ %i.yt, %bb.el ]
  %i.yu = getelementptr inbounds nuw i8, ptr %.8724, i64 4
  br label %.critedge.backedge

bb.en:                                            ; preds = %bb.l
  %i.yv = lshr i32 %i.ad, 23                      ; 2 uses
  %i.yw = lshr i32 %i.ad, 14
  %i.yx = and i32 %i.yw, 511                      ; 2 uses
  %i.yy = icmp eq i32 %i.yv, 0
  br i1 %i.yy, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.yz = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.za = ptrtoint ptr %i.yz to i64
  %i.zb = ptrtoint ptr %i.cb to i64
  %i.zc = sub i64 %i.za, %i.zb
  %i.zd = lshr exact i64 %i.zc, 4
  %i.ze = trunc i64 %i.zd to i32
  %i.zf = add nsw i32 %i.ze, -1
  %i.zg = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !76
  store ptr %i.zi, ptr %i.l, align 8, !tbaa !34
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0743 = phi i32 [ %i.zf, %bb.eo ], [ %i.yv, %bb.en ] ; 3 uses
  %i.zj = icmp eq i32 %i.yx, 0
  br i1 %i.zj, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.zk = getelementptr inbounds nuw i8, ptr %.0716, i64 8
  %i.zl = load i32, ptr %i.ac, align 4, !tbaa !4
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.0742 = phi i32 [ %i.zl, %bb.eq ], [ %i.yx, %bb.ep ]
  %.9725 = phi ptr [ %i.zk, %bb.eq ], [ %i.ac, %bb.ep ] ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !8
  %.not762 = icmp eq i32 %i.zn, 5
  br i1 %.not762, label %bb.es, label %.critedge.backedge

bb.es:                                            ; preds = %bb.er
  %i.zo = load ptr, ptr %i.cb, align 8, !tbaa !10 ; 5 uses
  %i.zp = mul i32 %.0742, 50
  %i.zq = add i32 %.0743, -50
  %i.zr = add i32 %i.zq, %i.zp                    ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 64
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !82
  %i.zu = icmp sgt i32 %i.zr, %i.zt
  br i1 %i.zu, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  call void @luaH_resizearray(ptr noundef nonnull %0, ptr noundef nonnull %i.zo, i32 noundef %i.zr) #8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.zv = icmp sgt i32 %.0743, 0
  br i1 %i.zv, label %.lr.ph871, label %.critedge.backedge

.lr.ph871:                                        ; preds = %bb.eu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zo, i64 9
  %i.zx = zext nneg i32 %.0743 to i64
  br label %bb.ev

bb.ev:                                            ; preds = %.lr.ph871, %bb.ez
  %indvars.iv892 = phi i64 [ %i.zx, %.lr.ph871 ], [ %indvars.iv.next893, %bb.ez ] ; 3 uses
  %.0741869 = phi i32 [ %i.zr, %.lr.ph871 ], [ %i.zz, %bb.ez ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv892 ; 3 uses
  %i.zz = add nsw i32 %.0741869, -1
  %i.aaa = call ptr @luaH_setnum(ptr noundef %0, ptr noundef %i.zo, i32 noundef %.0741869) #8 ; 2 uses
  %i.aab = load i64, ptr %i.zy, align 8, !tbaa !10
  store i64 %i.aab, ptr %i.aaa, align 8, !tbaa !10
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !8 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store i32 %i.aad, ptr %i.aae, align 8, !tbaa !8
  %i.aaf = icmp sgt i32 %i.aad, 3
  br i1 %i.aaf, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  %i.aag = load ptr, ptr %i.zy, align 8, !tbaa !10
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 9
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !10
  %i.aaj = and i8 %i.aai, 3
  %.not763 = icmp eq i8 %i.aaj, 0
  br i1 %.not763, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aak = load i8, ptr %i.zw, align 1, !tbaa !10
  %i.aal = and i8 %i.aak, 4
  %.not764 = icmp eq i8 %i.aal, 0
  br i1 %.not764, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @luaC_barrierback(ptr noundef %0, ptr noundef nonnull %i.zo) #8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.ev
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -1
  %i.aam = icmp sgt i64 %indvars.iv892, 1
  br i1 %i.aam, label %bb.ev, label %.critedge.backedge, !llvm.loop !83

bb.fa:                                            ; preds = %bb.l
  call void @luaF_close(ptr noundef nonnull %0, ptr noundef %i.cb) #8
  br label %.critedge.backedge

bb.fb:                                            ; preds = %bb.l
  %i.aan = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 32
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !84
  %i.aaq = lshr i32 %i.ad, 14
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aar
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !85 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 112
  %i.aav = load i8, ptr %i.aau, align 8, !tbaa !86 ; 3 uses
  %i.aaw = zext i8 %i.aav to i32
  %i.aax = load ptr, ptr %i.aa, align 8, !tbaa !67
  %i.aay = call ptr @luaF_newLclosure(ptr noundef nonnull %0, i32 noundef %i.aaw, ptr noundef %i.aax) #8 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 32
  store ptr %i.aat, ptr %i.aaz, align 8, !tbaa !10
  %.not877 = icmp eq i8 %i.aav, 0
  br i1 %.not877, label %._crit_edge, label %.lr.ph867

.lr.ph867:                                        ; preds = %bb.fb
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aay, i64 40
  %wide.trip.count890 = zext i8 %i.aav to i64
  br label %bb.fc

bb.fc:                                            ; preds = %.lr.ph867, %bb.ff
  %indvars.iv887 = phi i64 [ 0, %.lr.ph867 ], [ %indvars.iv.next888, %bb.ff ] ; 2 uses
end_hunk_0
