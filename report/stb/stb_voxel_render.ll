Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_voxel_render?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbvox_make_mesh_for_block_with_geo:bb.a
  %i.sn = or i8 %i.sm, %.sroa.0172.2.masked
  %i.so = or disjoint i8 %i.sn, %.2800
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.0172.3 = phi i8 [ %i.sj, %bb.ap ], [ %i.so, %bb.aq ]
  %i.sp = and i8 %.sroa.0172.3, -49               ; 4 uses
  %i.sq = and i32 %.5, 2
  %.not847 = icmp eq i32 %i.sq, 0
  br i1 %.not847, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.sp, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.qt, ptr noundef nonnull %i.ky, i8 noundef zeroext %.1790, i32 noundef 1)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sr = and i32 %.5, 8
  %.not848 = icmp eq i32 %i.sr, 0
  br i1 %.not848, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.sp, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.qt, ptr noundef nonnull %i.ni, i8 noundef zeroext %.1790, i32 noundef 3)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ss = and i32 %.5, 1
  %.not849 = icmp eq i32 %i.ss, 0
  br i1 %.not849, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.sp, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.qt, ptr noundef nonnull %i.a, i8 noundef zeroext %.1790, i32 noundef 0)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.st = and i32 %.5, 4
  %.not850 = icmp eq i32 %i.st, 0
  br i1 %.not850, label %.thread1033, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %i.sp, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.qt, ptr noundef nonnull %i.md, i8 noundef zeroext %.1790, i32 noundef 2)
  br label %.thread1033

.thread1033:                                      ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.cs

bb.az:                                            ; preds = %bb.ac
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 1, ptr %i.su, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.cs

bb.ba:                                            ; preds = %bb.x
  %i.sv = icmp ugt i8 %spec.store.select, 11
  br i1 %i.sv, label %bb.bb, label %bb.ci

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !84 ; 2 uses
  %.not852 = icmp eq ptr %i.sx, null
  br i1 %.not852, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.sy = getelementptr inbounds i8, ptr %i.sx, i64 %i.l
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !8   ; 4 uses
  %i.ta = and i8 %i.sz, 3                         ; 2 uses
  store i8 %i.ta, ptr %i.d, align 1, !tbaa !8
  %i.tb = lshr i8 %i.sz, 2
  %i.tc = and i8 %i.tb, 3                         ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.tc, ptr %i.td, align 1, !tbaa !8
  %i.te = lshr i8 %i.sz, 4
  %i.tf = and i8 %i.te, 3                         ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !8
  %i.th = lshr i8 %i.sz, 6                        ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !8
  br label %bb.bj

bb.bd:                                            ; preds = %bb.bb
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !85 ; 2 uses
  %.not853 = icmp eq ptr %i.tk, null
  br i1 %.not853, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.tl = zext i8 %i.n to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.to = and i8 %i.tn, 3
  store i8 %i.to, ptr %i.e, align 1, !tbaa !8
  %i.tp = lshr i8 %i.tn, 2
  %i.tq = and i8 %i.tp, 3
  %i.tr = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %i.tq, ptr %i.tr, align 1, !tbaa !8
  %i.ts = lshr i8 %i.tn, 4
  %i.tt = and i8 %i.ts, 3
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !8
  %i.tv = lshr i8 %i.tn, 6
  %i.tw = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !8
  %invariant.gep917 = getelementptr inbounds nuw i8, ptr @stbvox_rotate_vertex, i64 %i.ed ; 4 uses
  %i.tx = load i8, ptr %invariant.gep917, align 1, !tbaa !8
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !8   ; 2 uses
  store i8 %i.ua, ptr %i.d, align 1, !tbaa !8
  %gep918.1 = getelementptr inbounds nuw i8, ptr %invariant.gep917, i64 4
  %i.ub = load i8, ptr %gep918.1, align 1, !tbaa !8
  %i.uc = zext i8 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !8   ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !8
  %gep918.2 = getelementptr inbounds nuw i8, ptr %invariant.gep917, i64 8
  %i.ug = load i8, ptr %gep918.2, align 1, !tbaa !8
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !8   ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.uj, ptr %i.uk, align 1, !tbaa !8
  %gep918.3 = getelementptr inbounds nuw i8, ptr %invariant.gep917, i64 12
  %i.ul = load i8, ptr %gep918.3, align 1, !tbaa !8
  %i.um = zext i8 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !8   ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.uq = load ptr, ptr %i.dz, align 8, !tbaa !30 ; 5 uses
  %.not854 = icmp eq ptr %i.uq, null
  br i1 %.not854, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ur = getelementptr inbounds i8, ptr %i.uq, i64 %i.l
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !8
  %i.ut = lshr i8 %i.us, 2
  %i.uu = and i8 %i.ut, 3                         ; 2 uses
  store i8 %i.uu, ptr %i.d, align 1, !tbaa !8
  %i.uv = getelementptr inbounds i8, ptr %i.uq, i64 %i.p
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !8
  %i.ux = lshr i8 %i.uw, 2
  %i.uy = and i8 %i.ux, 3                         ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.uy, ptr %i.uz, align 1, !tbaa !8
  %i.va = getelementptr inbounds i8, ptr %i.uq, i64 %i.t
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !8
  %i.vc = lshr i8 %i.vb, 2
  %i.vd = and i8 %i.vc, 3                         ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.vd, ptr %i.ve, align 1, !tbaa !8
  %i.vf = add nsw i32 %i.o, %i.g
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds i8, ptr %i.uq, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !8
  %i.vj = lshr i8 %i.vi, 2
  %i.vk = and i8 %i.vj, 3                         ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !8
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.vm = load ptr, ptr %i.am, align 8, !tbaa !32 ; 5 uses
  %.not855 = icmp eq ptr %i.vm, null
  br i1 %.not855, label %.thread1026, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 %i.l
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !8
  %i.vp = lshr i8 %i.vo, 6                        ; 2 uses
  store i8 %i.vp, ptr %i.d, align 1, !tbaa !8
  %i.vq = getelementptr inbounds i8, ptr %i.vm, i64 %i.p
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !8
  %i.vs = lshr i8 %i.vr, 6                        ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !8
  %i.vu = getelementptr inbounds i8, ptr %i.vm, i64 %i.t
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !8
  %i.vw = lshr i8 %i.vv, 6                        ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.vw, ptr %i.vx, align 1, !tbaa !8
  %i.vy = add nsw i32 %i.o, %i.g
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr inbounds i8, ptr %i.vm, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !8
  %i.wc = lshr i8 %i.wb, 6                        ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bi, %bb.bg, %bb.bc
  %i.we = phi i8 [ %i.uo, %bb.be ], [ %i.wc, %bb.bi ], [ %i.th, %bb.bc ], [ %i.vk, %bb.bg ] ; 2 uses
  %i.wf = phi i8 [ %i.uj, %bb.be ], [ %i.vw, %bb.bi ], [ %i.tf, %bb.bc ], [ %i.vd, %bb.bg ] ; 2 uses
  %i.wg = phi i8 [ %i.ue, %bb.be ], [ %i.vs, %bb.bi ], [ %i.tc, %bb.bc ], [ %i.uy, %bb.bg ] ; 2 uses
  %i.wh = phi i8 [ %i.ua, %bb.be ], [ %i.vp, %bb.bi ], [ %i.ta, %bb.bc ], [ %i.uu, %bb.bg ] ; 2 uses
  %3 = icmp eq i8 %i.wh, 3                        ; 2 uses
  %i.wi = icmp eq i8 %i.wg, 3                     ; 2 uses
  %or.cond = select i1 %3, i1 true, i1 %i.wi      ; 2 uses
  %i.wj = icmp eq i8 %i.wf, 3                     ; 2 uses
  %or.cond9.a = select i1 %or.cond, i1 true, i1 %i.wj
  %i.wk = icmp eq i8 %i.we, 3
  %spec.select1038 = select i1 %or.cond9.a, i1 true, i1 %i.wk
  br label %.thread1026

.thread1026:                                      ; preds = %bb.bj, %bb.bh
  %4 = phi i1 [ %i.wj, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %or.cond1029 = phi i1 [ %or.cond, %bb.bj ], [ true, %bb.bh ] ; 3 uses
  %5 = phi i1 [ %i.wi, %bb.bj ], [ undef, %bb.bh ] ; 2 uses
  %6 = phi i1 [ %3, %bb.bj ], [ undef, %bb.bh ]   ; 2 uses
  %7 = phi i8 [ %i.wh, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %8 = phi i8 [ %i.wg, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %9 = phi i8 [ %i.wf, %bb.bj ], [ undef, %bb.bh ] ; 3 uses
  %10 = phi i8 [ %i.we, %bb.bj ], [ undef, %bb.bh ] ; 4 uses
  %11 = phi i1 [ %spec.select1038, %bb.bj ], [ true, %bb.bh ] ; 4 uses
  %i.wl = icmp ugt i8 %spec.store.select, 13      ; 9 uses
  %i.wm = zext i8 %7 to i32
  %i.wn = shl nuw nsw i32 %i.wm, 14               ; 2 uses
  %i.wo = zext i8 %8 to i32
  %i.wp = shl nuw nsw i32 %i.wo, 14               ; 2 uses
  %i.wq = zext i8 %9 to i32
  %i.wr = shl nuw nsw i32 %i.wq, 14               ; 2 uses
  %i.ws = zext i8 %10 to i32
  %i.wt = shl nuw nsw i32 %i.ws, 14               ; 2 uses
  %. = select i1 %i.wl, i32 %i.wn, i32 0          ; 2 uses
  %.1039.a = select i1 %i.wl, i32 %i.wp, i32 0    ; 2 uses
  %.1040.a = select i1 %i.wl, i32 %i.wr, i32 0    ; 2 uses
  %.1041.a = select i1 %i.wl, i32 %i.wt, i32 0    ; 2 uses
  %.1042.a = select i1 %i.wl, i32 32768, i32 %i.wn ; 2 uses
  %.1043.a = select i1 %i.wl, i32 32768, i32 %i.wp ; 2 uses
  %.1044.a = select i1 %i.wl, i32 32768, i32 %i.wr ; 2 uses
  %.1045 = select i1 %i.wl, i32 32768, i32 %i.wt  ; 2 uses
  store i32 %., ptr %i.c, align 16, !tbaa !17
  %i.wu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.1039.a, ptr %i.wu, align 4, !tbaa !17
  %i.wv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.1040.a, ptr %i.wv, align 8, !tbaa !17
  %i.ww = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %.1041.a, ptr %i.ww, align 4, !tbaa !17
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %.1042.a, ptr %i.wx, align 16, !tbaa !17
  %i.wy = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %.1043.a, ptr %i.wy, align 4, !tbaa !17
  %i.wz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.1044.a, ptr %i.wz, align 8, !tbaa !17
  %i.xa = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.1045, ptr %i.xa, align 4, !tbaa !17
  %i.xb = load i8, ptr @stbvox_vertex_selector, align 16, !tbaa !8
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !17
  %i.xf = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 1), align 1, !tbaa !8
  %i.xg = zext i8 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !17
  %i.xj = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 2), align 2, !tbaa !8
  %i.xk = zext i8 %i.xj to i64
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.xk
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !17
  %i.xn = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 3), align 1, !tbaa !8
  %i.xo = zext i8 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !17
  %i.xr = load <4 x i32>, ptr @stbvox_vmesh_pre_vheight, align 16, !tbaa !17
  %i.xs = insertelement <4 x i32> poison, i32 %i.xe, i64 0
  %i.xt = insertelement <4 x i32> %i.xs, i32 %i.xi, i64 1
  %i.xu = insertelement <4 x i32> %i.xt, i32 %i.xm, i64 2
  %i.xv = insertelement <4 x i32> %i.xu, i32 %i.xq, i64 3
  %i.xw = add <4 x i32> %i.xv, %i.xr
  store <4 x i32> %i.xw, ptr %i.b, align 16, !tbaa !17
  %i.xx = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 4), align 4, !tbaa !8
  %i.xy = zext i8 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !17
  %i.yb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.yc = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 5), align 1, !tbaa !8
  %i.yd = zext i8 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.yd
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !17
  %i.yg = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 6), align 2, !tbaa !8
  %i.yh = zext i8 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.yh
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !17
  %i.yk = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 7), align 1, !tbaa !8
  %i.yl = zext i8 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.yl
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !17
  %i.yo = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 16), align 16, !tbaa !17
  %i.yp = insertelement <4 x i32> poison, i32 %i.ya, i64 0
  %i.yq = insertelement <4 x i32> %i.yp, i32 %i.yf, i64 1
  %i.yr = insertelement <4 x i32> %i.yq, i32 %i.yj, i64 2
  %i.ys = insertelement <4 x i32> %i.yr, i32 %i.yn, i64 3
  %i.yt = add <4 x i32> %i.ys, %i.yo
  store <4 x i32> %i.yt, ptr %i.yb, align 16, !tbaa !17
  %i.yu = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 8), align 8, !tbaa !8
  %i.yv = zext i8 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !17
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.yz = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 9), align 1, !tbaa !8
  %i.za = zext i8 %i.yz to i64
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.za
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !17
  %i.zd = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 10), align 2, !tbaa !8
  %i.ze = zext i8 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !17
  %i.zh = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 11), align 1, !tbaa !8
  %i.zi = zext i8 %i.zh to i64
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.zi
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !17
  %i.zl = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 32), align 16, !tbaa !17
  %i.zm = insertelement <4 x i32> poison, i32 %i.yx, i64 0
  %i.zn = insertelement <4 x i32> %i.zm, i32 %i.zc, i64 1
  %i.zo = insertelement <4 x i32> %i.zn, i32 %i.zg, i64 2
  %i.zp = insertelement <4 x i32> %i.zo, i32 %i.zk, i64 3
  %i.zq = add <4 x i32> %i.zp, %i.zl
  store <4 x i32> %i.zq, ptr %i.yy, align 16, !tbaa !17
  %i.zr = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 12), align 4, !tbaa !8
  %i.zs = zext i8 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.zs
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !17
  %i.zv = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.zw = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 13), align 1, !tbaa !8
  %i.zx = zext i8 %i.zw to i64
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.zx
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !17
  %i.aaa = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 14), align 2, !tbaa !8
  %i.aab = zext i8 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !17
  %i.aae = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 15), align 1, !tbaa !8
  %i.aaf = zext i8 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !17
  %i.aai = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 48), align 16, !tbaa !17
  %i.aaj = insertelement <4 x i32> poison, i32 %i.zu, i64 0
  %i.aak = insertelement <4 x i32> %i.aaj, i32 %i.zz, i64 1
  %i.aal = insertelement <4 x i32> %i.aak, i32 %i.aad, i64 2
  %i.aam = insertelement <4 x i32> %i.aal, i32 %i.aah, i64 3
  %i.aan = add <4 x i32> %i.aam, %i.aai
  store <4 x i32> %i.aan, ptr %i.zv, align 16, !tbaa !17
  %i.aao = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 16), align 16, !tbaa !8
  %i.aap = zext i8 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !17
  %i.aas = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.aat = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 17), align 1, !tbaa !8
  %i.aau = zext i8 %i.aat to i64
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aau
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !17
  %i.aax = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 18), align 2, !tbaa !8
  %i.aay = zext i8 %i.aax to i64
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aay
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !17
  %i.abb = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 19), align 1, !tbaa !8
  %i.abc = zext i8 %i.abb to i64
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abc
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !17
  %i.abf = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 64), align 16, !tbaa !17
  %i.abg = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %i.abh = insertelement <4 x i32> %i.abg, i32 %i.aaw, i64 1
  %i.abi = insertelement <4 x i32> %i.abh, i32 %i.aba, i64 2
  %i.abj = insertelement <4 x i32> %i.abi, i32 %i.abe, i64 3
  %i.abk = add <4 x i32> %i.abj, %i.abf
  store <4 x i32> %i.abk, ptr %i.aas, align 16, !tbaa !17
  %i.abl = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 20), align 4, !tbaa !8
  %i.abm = zext i8 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !17
  %i.abp = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 5 uses
  %i.abq = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 21), align 1, !tbaa !8
  %i.abr = zext i8 %i.abq to i64
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abr
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !17
  %i.abu = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 22), align 2, !tbaa !8
  %i.abv = zext i8 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abv
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !17
  %i.aby = load i8, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vertex_selector, i64 23), align 1, !tbaa !8
  %i.abz = zext i8 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !17
  %i.acc = load <4 x i32>, ptr getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_pre_vheight, i64 80), align 16, !tbaa !17
  %i.acd = insertelement <4 x i32> poison, i32 %i.abo, i64 0
  %i.ace = insertelement <4 x i32> %i.acd, i32 %i.abt, i64 1
  %i.acf = insertelement <4 x i32> %i.ace, i32 %i.abx, i64 2
  %i.acg = insertelement <4 x i32> %i.acf, i32 %i.acb, i64 3
  %i.ach = add <4 x i32> %i.acg, %i.acc
  store <4 x i32> %i.ach, ptr %i.abp, align 16, !tbaa !17
  %.sroa.0529.0.extract.trunc.mask856 = and i24 %1, 255
  %.sroa.28.0.extract.trunc.mask857 = shl nuw nsw i24 %.sroa.28.0.extract.shift, 7
  %i.aci = and i24 %.sroa.28.0.extract.trunc.mask857, 32640
  %i.acj = shl nuw nsw i24 %.sroa.31.0.extract.shift, 15
  %narrow858 = or disjoint i24 %i.acj, %.sroa.0529.0.extract.trunc.mask856
  %narrow859 = add nuw i24 %narrow858, %i.aci
  %i.ack = zext i24 %narrow859 to i32             ; 12 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.acm = zext i8 %.0789 to i64                  ; 3 uses
  %i.acn = getelementptr inbounds nuw [24 x i8], ptr %i.acl, i64 %i.acm
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !16
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.acq = getelementptr inbounds nuw [12 x i8], ptr %i.acp, i64 %i.acm
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !17
  %i.acs = mul nsw i32 %i.acr, 6
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds i8, ptr %i.aco, i64 %i.act
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.acw = getelementptr inbounds nuw [24 x i8], ptr %i.acv, i64 %i.acm
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !16
  %.not870 = icmp ugt ptr %i.acu, %i.acx
  br i1 %.not870, label %.thread900, label %bb.bk

.thread900:                                       ; preds = %.thread1026
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 1, ptr %i.acy, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cs

bb.bk:                                            ; preds = %.thread1026
  %i.acz = and i32 %.5, 16
  %.not860 = icmp eq i32 %i.acz, 0
  br i1 %.not860, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.wl, label %.sink.split1046, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ada = add nuw nsw i32 %.1043.a, %.1044.a
  %i.adb = add nuw nsw i32 %.1042.a, %.1045
  %.not861 = icmp eq i32 %i.ada, %i.adb
  br i1 %.not861, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.adc = icmp eq i8 %spec.store.select, 12
  %i.add = and i32 %.5, 32
  %.not862883 = icmp eq i32 %i.add, 0             ; 2 uses
  br i1 %i.adc, label %.thread882, label %.thread1030

bb.bo:                                            ; preds = %bb.bm
  %i.ade = zext i8 %9 to i64
  %i.adf = getelementptr inbounds nuw [16 x i8], ptr @stbvox_planar_face_up_normal, i64 %i.ade
  %i.adg = zext i8 %8 to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %i.adg
  %i.adi = zext i8 %7 to i64
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.adi
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !8
  %i.adl = zext i8 %i.adk to i32
  br label %.sink.split1046

.sink.split1046:                                  ; preds = %bb.bl, %bb.bo
  %.sink = phi i32 [ %i.adl, %bb.bo ], [ 4, %bb.bl ]
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.aas, i8 noundef zeroext %.0789, i32 noundef %.sink)
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split1046, %bb.bk
  %i.adm = and i32 %.5, 32
  %.not862 = icmp eq i32 %i.adm, 0
  br i1 %.not862, label %bb.bw, label %bb.bq

.thread1030:                                      ; preds = %bb.bn
  call void @stbvox_make_12_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.aas, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br i1 %.not862883, label %bb.bw, label %.thread884

.thread882:                                       ; preds = %bb.bn
  call void @stbvox_make_03_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 4, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.aas, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br i1 %.not862883, label %bb.bw, label %.thread884

bb.bq:                                            ; preds = %bb.bp
  %i.adn = icmp ult i8 %spec.store.select, 14
  br i1 %i.adn, label %.thread884, label %bb.br

.thread884:                                       ; preds = %.thread1030, %.thread882, %bb.bq
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.abp, i8 noundef zeroext %.0789, i32 noundef 5)
  br label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.ado = add nuw nsw i32 %.1039.a, %.1040.a
  %i.adp = add nuw nsw i32 %., %.1041.a
  %.not863 = icmp eq i32 %i.ado, %i.adp
  br i1 %.not863, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.adq = icmp eq i8 %spec.store.select, 14
  br i1 %i.adq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @stbvox_make_03_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.abp, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @stbvox_make_12_split_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.abp, i8 noundef zeroext %.0789, ptr noundef nonnull %i.d)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.br
  %i.adr = zext i8 %9 to i64
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr @stbvox_planar_face_up_normal, i64 %i.adr
  %i.adt = zext i8 %8 to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %i.adt
  %i.adv = zext i8 %7 to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adv
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !8
  %i.ady = zext i8 %i.adx to i64
  %i.adz = getelementptr inbounds nuw i8, ptr @stbvox_reverse_face, i64 %i.ady
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !8
  %i.aeb = zext i8 %i.aea to i32
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 0, i32 noundef 5, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.abp, i8 noundef zeroext %.0789, i32 noundef %i.aeb)
  br label %bb.bw

bb.bw:                                            ; preds = %.thread1030, %.thread882, %.thread884, %bb.bt, %bb.bu, %bb.bv, %bb.bp
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !31 ; 2 uses
  %.not864 = icmp eq ptr %i.aed, null
  br i1 %.not864, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aee = getelementptr inbounds i8, ptr %i.aed, i64 %i.l
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !8
  %i.aeg = and i8 %i.aef, -49
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.aeh = load ptr, ptr %i.ja, align 8, !tbaa !26
  %.not865 = icmp eq ptr %i.aeh, null
  %i.aei = mul nuw i8 %.2800, 69
  %spec.select1047 = select i1 %.not865, i8 0, i8 %i.aei
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.0109.0 = phi i8 [ %i.aeg, %bb.bx ], [ %spec.select1047, %bb.by ] ; 5 uses
  %i.aej = and i32 %.5, 2
  %.not866 = icmp eq i32 %i.aej, 0
  br i1 %.not866, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  br i1 %11, label %bb.cb, label %.thread885

bb.cb:                                            ; preds = %bb.ca
  %i.aek = icmp eq i8 %10, 3
  %or.cond13 = select i1 %4, i1 true, i1 %i.aek
  br i1 %or.cond13, label %.thread903, label %.thread888

bb.cc:                                            ; preds = %bb.bz
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.yb, i8 noundef zeroext %.0789, i32 noundef 1)
  %i.ael = and i32 %.5, 8
  %.not867 = icmp eq i32 %i.ael, 0
  br i1 %.not867, label %bb.cd, label %bb.ce

.thread903:                                       ; preds = %bb.cb
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.yb, i8 noundef zeroext %.0789, i32 noundef 1)
  %i.aem = and i32 %.5, 8
  %.not867904 = icmp ne i32 %i.aem, 0
  %brmerge = or i1 %.not867904, %or.cond1029
  br i1 %brmerge, label %bb.ce, label %.thread891

.thread888:                                       ; preds = %bb.cb
  %i.aen = and i32 %.5, 8
  %.not867889 = icmp ne i32 %i.aen, 0
  %brmerge906 = or i1 %.not867889, %or.cond1029
  br i1 %brmerge906, label %bb.ce, label %.thread891

.thread885:                                       ; preds = %bb.ca
  %i.aeo = and i32 %.5, 8
  %.not867886 = icmp eq i32 %i.aeo, 0
  br i1 %.not867886, label %.thread887, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  br i1 %11, label %.thread890, label %.thread887

.thread890:                                       ; preds = %bb.cd
  br i1 %or.cond1029, label %bb.ce, label %.thread891

bb.ce:                                            ; preds = %.thread888, %.thread903, %.thread885, %.thread890, %bb.cc
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.zv, i8 noundef zeroext %.0789, i32 noundef 3)
  br label %.thread887

.thread887:                                       ; preds = %.thread885, %bb.ce, %bb.cd
  %i.aep = and i32 %.5, 1
  %.not868 = icmp eq i32 %i.aep, 0
  br i1 %.not868, label %bb.cf, label %bb.cg

.thread891:                                       ; preds = %.thread888, %.thread903, %.thread890
  %.not868892 = trunc i32 %.5 to i1
  %i.aeq = icmp eq i8 %10, 3
  %i.aer = select i1 %.not868892, i1 true, i1 %5
  %or.cond1049 = select i1 %i.aer, i1 true, i1 %i.aeq
  br i1 %or.cond1049, label %bb.cg, label %.thread897

bb.cf:                                            ; preds = %.thread887
  br i1 %11, label %.thread893, label %.thread894

.thread893:                                       ; preds = %bb.cf
  %.old1048 = icmp eq i8 %10, 3
  %or.cond21.old = select i1 %5, i1 true, i1 %.old1048
  br i1 %or.cond21.old, label %bb.cg, label %.thread897

bb.cg:                                            ; preds = %.thread887, %.thread893, %.thread891
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.b, i8 noundef zeroext %.0789, i32 noundef 0)
  %i.aes = and i32 %.5, 4
  %.not869 = icmp ne i32 %i.aes, 0
  %or.cond25.old = select i1 %6, i1 true, i1 %4
  %or.cond908 = select i1 %11, i1 %or.cond25.old, i1 false
  %or.cond909 = select i1 %.not869, i1 true, i1 %or.cond908
  br i1 %or.cond909, label %bb.ch, label %.thread896

.thread897:                                       ; preds = %.thread891, %.thread893
  %i.aet = and i32 %.5, 4
  %.not869898 = icmp ne i32 %i.aet, 0
  %i.aeu = or i1 %.not869898, %6
  %or.cond907 = select i1 %i.aeu, i1 true, i1 %4
  br i1 %or.cond907, label %bb.ch, label %.thread896

.thread894:                                       ; preds = %bb.cf
  %i.aev = and i32 %.5, 4
  %.not869895 = icmp eq i32 %i.aev, 0
  br i1 %.not869895, label %.thread896, label %bb.ch

bb.ch:                                            ; preds = %.thread897, %.thread894, %bb.cg
  call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0109.0, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.ack, ptr noundef nonnull %i.yy, i8 noundef zeroext %.0789, i32 noundef 2)
  br label %.thread896

.thread896:                                       ; preds = %bb.cg, %.thread897, %.thread894, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.cs

bb.ci:                                            ; preds = %bb.ba
  %.old = icmp eq i8 %spec.store.select, 10
  br i1 %.old, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  %.sroa.0529.0.extract.trunc.mask871 = and i24 %1, 255
  %.sroa.28.0.extract.trunc.mask872 = shl nuw nsw i24 %.sroa.28.0.extract.shift, 7
  %i.aew = and i24 %.sroa.28.0.extract.trunc.mask872, 32640
  %i.aex = shl nuw nsw i24 %.sroa.31.0.extract.shift, 15
  %narrow873 = or disjoint i24 %i.aex, %.sroa.0529.0.extract.trunc.mask871
  %narrow874 = add nuw i24 %narrow873, %i.aew
  %i.aey = zext i24 %narrow874 to i32             ; 4 uses
  %i.aez = load i32, ptr %i.iz, align 8, !tbaa !27
  %i.afa = trunc i32 %i.aez to i8
  %i.afb = load ptr, ptr %i.ja, align 8, !tbaa !26 ; 2 uses
  %.not875 = icmp eq ptr %i.afb, null
  br i1 %.not875, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.afc = getelementptr inbounds i8, ptr %i.afb, i64 %i.l
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !8 ; 2 uses
  %i.afe = lshr i8 %i.afd, 4
  %i.aff = and i8 %i.afd, 15
  %i.afg = and i8 %i.afe, 3
  %i.afh = mul nuw i8 %i.afg, 69
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %spec.select1050 = phi i8 [ %i.afh, %bb.ck ], [ 0, %bb.cj ]
  %.0792 = phi i8 [ %i.aff, %bb.ck ], [ %i.afa, %bb.cj ]
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !28 ; 2 uses
  %.not876 = icmp eq ptr %i.afj, null
  br i1 %.not876, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afk = zext i8 %i.n to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.1793 = phi i8 [ %i.afm, %bb.cm ], [ %.0792, %bb.cl ] ; 5 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.afo = zext i8 %.1793 to i64                  ; 3 uses
  %i.afp = getelementptr inbounds nuw [24 x i8], ptr %i.afn, i64 %i.afo
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !16
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.afs = getelementptr inbounds nuw [12 x i8], ptr %i.afr, i64 %i.afo
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !17
  %i.afu = shl nsw i32 %i.aft, 2
  %i.afv = sext i32 %i.afu to i64
  %i.afw = getelementptr inbounds i8, ptr %i.afq, i64 %i.afv
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.afy = getelementptr inbounds nuw [24 x i8], ptr %i.afx, i64 %i.afo
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !16
  %.not879 = icmp ugt ptr %i.afw, %i.afz
  br i1 %.not879, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 1, ptr %i.aga, align 4, !tbaa !29
  br label %bb.cs

bb.cp:                                            ; preds = %bb.cn
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !31 ; 2 uses
  %.not877 = icmp eq ptr %i.agc, null
  br i1 %.not877, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.agd = getelementptr inbounds i8, ptr %i.agc, i64 %i.l
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !8
  %i.agf = and i8 %i.age, -49
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %.sroa.0.0 = phi i8 [ %i.agf, %bb.cq ], [ %spec.select1050, %bb.cp ] ; 4 uses
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 1, i32 noundef %2, i24 poison, i32 noundef %i.aey, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 16), i8 noundef zeroext %.1793, i32 noundef 24)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 3, i32 noundef %2, i24 poison, i32 noundef %i.aey, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 48), i8 noundef zeroext %.1793, i32 noundef 26)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 0, i32 noundef %2, i24 poison, i32 noundef %i.aey, ptr noundef nonnull @stbvox_vmesh_crossed_pair, i8 noundef zeroext %.1793, i32 noundef 27)
  tail call void @stbvox_make_mesh_for_face(ptr noundef nonnull %0, i8 %.sroa.0.0, i32 noundef 2, i32 noundef %2, i24 poison, i32 noundef %i.aey, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @stbvox_vmesh_crossed_pair, i64 32), i8 noundef zeroext %.1793, i32 noundef 25)
  br label %bb.cs

bb.cs:                                            ; preds = %.thread1033, %.thread896, %.thread900, %bb.az, %bb.co, %bb.cr, %bb.ci, %bb.s
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbvox_make_mesh_for_column(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %i.c = mul nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 4 uses
  %i.f = mul nsw i32 %i.e, %2
  %i.g = add nsw i32 %i.f, %i.c                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = sext i32 %i.g to i64                     ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l ; 7 uses
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %.not198208 = icmp slt i32 %3, %i.p
  br i1 %.not198208, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.q = trunc i32 %2 to i24
  %.sroa.6.0.insert.ext118 = shl i24 %i.q, 8
  %.sroa.6.0.insert.shift119 = and i24 %.sroa.6.0.insert.ext118, 65280
  %i.r = trunc i32 %1 to i24
  %.sroa.0.0.insert.ext111 = and i24 %i.r, 255
  %invariant.op = or disjoint i24 %.sroa.6.0.insert.shift119, %.sroa.0.0.insert.ext111
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.t = sext i32 %3 to i64
  %i.u = sext i32 %i.e to i64                     ; 2 uses
  %i.v = sext i32 %i.b to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.q
  %i.w = phi i32 [ %i.p, %.lr.ph ], [ %i.bn, %bb.q ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 11 uses
  %i.x = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %.not184 = icmp eq i8 %i.y, 0
  br i1 %.not184, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = add nsw i64 %indvars.iv, %i.u            ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.m, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %.not185 = icmp eq i8 %i.ab, 0
  br i1 %.not185, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.n, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = and i8 %i.ad, 15
  %.not186 = icmp eq i8 %i.ae, 0
  br i1 %.not186, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub nsw i64 %indvars.iv, %i.u           ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.m, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %.not187 = icmp eq i8 %i.ah, 0
  br i1 %.not187, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.n, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = and i8 %i.aj, 15
  %.not188 = icmp eq i8 %i.ak, 0
  br i1 %.not188, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i64 %indvars.iv, %i.v           ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %.not189 = icmp eq i8 %i.an, 0
  br i1 %.not189, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds i8, ptr %i.n, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = and i8 %i.ap, 15
  %.not190 = icmp eq i8 %i.aq, 0
  br i1 %.not190, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = sub nsw i64 %indvars.iv, %i.v           ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.m, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %.not191 = icmp eq i8 %i.at, 0
  br i1 %.not191, label %bb.p, label %bb.k
end_hunk_0
