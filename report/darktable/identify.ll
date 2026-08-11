inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw27identify_process_dng_fieldsEv:bb.a
bb.co:                                            ; preds = %bb.cn
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 153264
  store float 0.000000e+00, ptr %i.ry, align 8, !tbaa !99
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !119 ; 2 uses
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %vector.body900, label %.loopexit528

vector.body900:                                   ; preds = %bb.co
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.sd = call i32 @llvm.umin.i32(i32 %i.sa, i32 4)
  %wide.trip.count696 = zext nneg i32 %i.sd to i64
  %trip.count.minus.1897 = add nsw i64 %wide.trip.count696, -1
  %broadcast.splatinsert898 = insertelement <4 x i64> poison, i64 %trip.count.minus.1897, i64 0
  %broadcast.splat899 = shufflevector <4 x i64> %broadcast.splatinsert898, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.se = icmp uge <4 x i64> %broadcast.splat899, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load901 = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.rs, <4 x i1> %i.se, <4 x float> poison), !tbaa !99 ; 2 uses
  %i.sf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.masked.load901)
  %i.sg = fpext reassoc nsz arcp contract afn <4 x float> %i.sf to <4 x double>
  %i.sh = fcmp reassoc nsz arcp contract afn ogt <4 x double> %i.sg, splat (double 1.000000e-04)
  %i.si = select <4 x i1> %i.se, <4 x i1> %i.sh, <4 x i1> zeroinitializer
  %i.sj = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %wide.masked.load901
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.sj, ptr align 4 %i.sc, <4 x i1> %i.si), !tbaa !99
  br label %.loopexit528

.loopexit528:                                     ; preds = %vector.body900, %bb.co, %bb.cn, %bb.cm
  %i.sk = and i32 %i.oz, 32
  %.not454 = icmp eq i32 %i.sk, 0
  br i1 %.not454, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.loopexit528
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !256
  %i.sn = lshr i32 %i.sm, 5
  %i.so = and i32 %i.sn, 1
  %sext456 = add nsw i32 %i.so, -1
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit528, %bb.cp
  %i.sp = phi i32 [ %sext456, %bb.cp ], [ %i.w, %.loopexit528 ] ; 2 uses
  %i.sq = icmp sgt i32 %i.sp, -1
  br i1 %i.sq, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.sr = zext nneg i32 %i.sp to i64
  %i.ss = getelementptr inbounds nuw [33472 x i8], ptr %i.me, i64 %i.sr ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 33328
  %i.su = load float, ptr %i.st, align 8, !tbaa !264
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 187088
  store float %i.su, ptr %i.sv, align 8, !tbaa !265
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 16908
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !266
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 170668
  store i32 %i.sx, ptr %i.sy, align 4, !tbaa !267
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 154252
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ss, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16416) %i.sz, ptr noundef nonnull align 4 dereferenceable(16416) %i.ta, i64 16416, i1 false)
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 170672
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ss, i64 16912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.tb, ptr noundef nonnull align 8 dereferenceable(16416) %i.tc, i64 16416, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.td = icmp sgt i32 %i.z, -1
  br i1 %i.td, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.te = zext nneg i32 %i.z to i64
  %i.tf = getelementptr inbounds nuw [33472 x i8], ptr %i.me, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 488
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !256
  %i.ti = and i32 %i.th, 2048
  %.not457 = icmp eq i32 %i.ti, 0
  br i1 %.not457, label %bb.cu, label %.thread509

bb.cu:                                            ; preds = %bb.ct
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !256
  %i.tl = and i32 %i.tk, 2048
  %.not520 = icmp eq i32 %i.tl, 0
  br i1 %.not520, label %bb.cv, label %.thread509

.thread509:                                       ; preds = %bb.cu, %bb.ct
  %i.tm = phi i32 [ %i.z, %bb.ct ], [ 0, %bb.cu ]
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [33472 x i8], ptr %i.me, i64 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 33372
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !268
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 187132
  store i32 %i.tq, ptr %i.tr, align 4, !tbaa !269
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.thread509, %bb.cs
  %i.ts = and i32 %i.oz, 128
  %.not460 = icmp eq i32 %i.ts, 0
  br i1 %.not460, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !256
  %i.tv = lshr i32 %i.tu, 7
  %i.tw = and i32 %i.tv, 1
  %sext462 = add nsw i32 %i.tw, -1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.tx = phi i32 [ %sext462, %bb.cw ], [ %i.w, %bb.cv ] ; 2 uses
  %i.ty = icmp sgt i32 %i.tx, -1
  br i1 %i.ty, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.tz = zext nneg i32 %i.tx to i64
  %i.ua = getelementptr inbounds nuw [33472 x i8], ptr %i.me, i64 %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 128
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !270
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 381768
  store i64 %i.uc, ptr %i.ud, align 8, !tbaa !271
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ue = and i32 %i.oz, 256
  %.not463 = icmp eq i32 %i.ue, 0
  br i1 %.not463, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !256
  %i.uh = lshr i32 %i.ug, 8
  %i.ui = and i32 %i.uh, 1
  %sext465 = add nsw i32 %i.ui, -1
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.uj = phi i32 [ %sext465, %bb.da ], [ %i.w, %bb.cz ] ; 2 uses
  %i.uk = icmp sgt i32 %i.uj, -1
  br i1 %i.uk, label %bb.dc, label %.thread510

bb.dc:                                            ; preds = %bb.db
  %i.ul = zext nneg i32 %i.uj to i64
  %i.um = getelementptr inbounds nuw [33472 x i8], ptr %i.me, i64 %i.ul ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 136
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !272 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 144
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !273 ; 2 uses
  %i.ur = icmp sgt i64 %i.uo, -1
  %i.us = icmp sgt i32 %i.uq, 0
  %or.cond13 = select i1 %i.ur, i1 %i.us, i1 false
  br i1 %or.cond13, label %bb.dd, label %.thread510

bb.dd:                                            ; preds = %bb.dc
  %i.ut = load ptr, ptr %i.t, align 8, !tbaa !125 ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !126
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 40
  %i.uw = load ptr, ptr %i.uv, align 8
  %i.ux = call noundef i64 %i.uw(ptr noundef nonnull align 8 dereferenceable(8) %i.ut), !call_target !149
  %i.uy = load ptr, ptr %i.t, align 8, !tbaa !125 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !126
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 32
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = call noundef i32 %i.vb(ptr noundef nonnull align 8 dereferenceable(8) %i.uy, i64 noundef %i.uo, i32 noundef 0), !call_target !128 ; 0 uses
  call void @_ZN6LibRaw12linear_tableEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.uq)
  %i.vd = load ptr, ptr %i.t, align 8, !tbaa !125 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !126
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = call noundef i32 %i.vg(ptr noundef nonnull align 8 dereferenceable(8) %i.vd, i64 noundef %i.ux, i32 noundef 0), !call_target !128 ; 0 uses
  br label %.thread510

.thread510:                                       ; preds = %bb.db, %bb.dc, %bb.dd, %bb.b
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack = load i64, ptr %i.vi, align 8, !tbaa !153
  %.elt466 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack467 = load i64, ptr %.elt466, align 8, !tbaa !153
  %i.vj = icmp eq i64 %.unpack, ptrtoint (ptr @_ZN6LibRaw18lossy_dng_load_rawEv to i64)
  %i.vk = icmp eq i64 %.unpack467, 0
  %i.vl = and i1 %i.vj, %i.vk
  br i1 %i.vl, label %.loopexit.loopexit, label %bb.de

.loopexit.loopexit:                               ; preds = %.thread510
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 153096
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 187092
  store <4 x i32> splat (i32 65535), ptr %i.vm, align 8, !tbaa !83
  store <4 x i32> splat (i32 65535), ptr %i.vn, align 4, !tbaa !83
  br label %.loopexit

bb.de:                                            ; preds = %.thread510
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 187092
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.de
  %.sink973 = phi i64 [ 153112, %.loopexit.loopexit ], [ 153096, %bb.de ]
  %.sink = phi i32 [ 65535, %.loopexit.loopexit ], [ %i.vp, %bb.de ] ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink973
  store i32 %.sink, ptr %i.vq, align 8, !tbaa !83
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 170668
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !267 ; 6 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  store i32 %i.vs, ptr %i.vt, align 8, !tbaa !109
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 381832
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !187 ; 10 uses
  %i.vw = icmp eq i32 %i.vv, 2
  br i1 %i.vw, label %bb.df, label %bb.dy

bb.df:                                            ; preds = %.loopexit
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 154252 ; 7 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 154260
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !83 ; 2 uses
  %.not468 = icmp eq i32 %i.vz, 0
  br i1 %.not468, label %bb.dg, label %bb.dl

bb.dg:                                            ; preds = %bb.df
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 154264
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !83
  %.not469 = icmp eq i32 %i.wb, 0
  br i1 %.not469, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 154268 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !83
  %i.we = icmp eq i32 %i.wd, 1
  br i1 %i.we, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 154272 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !83
  %i.wh = icmp eq i32 %i.wg, 1
  br i1 %i.wh, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 170664
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !83
  %i.wk = icmp eq i32 %i.wj, 2
  br i1 %i.wk, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !161
  %i.wn = zext i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !83 ; 2 uses
  store i32 %i.wp, ptr %i.vt, align 8, !tbaa !109
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 154256
  store i32 0, ptr %i.wq, align 8, !tbaa !83
  store i32 0, ptr %i.vx, align 4, !tbaa !83
  store i32 0, ptr %i.wf, align 8, !tbaa !83
  store i32 0, ptr %i.wc, align 4, !tbaa !83
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 170672
  store <2 x float> zeroinitializer, ptr %i.wr, align 8, !tbaa !99
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 170688
  store <2 x float> zeroinitializer, ptr %i.ws, align 8, !tbaa !99
  br label %.thread515

bb.dl:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 154268 ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !83 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 154272 ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !83 ; 6 uses
  %i.wx = shl i32 %i.wu, 1
  %i.wy = mul i32 %i.wx, %i.ww
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 170664
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !83
  %i.xb = icmp eq i32 %i.wy, %i.xa
  br i1 %i.xb, label %bb.dm, label %.thread515

bb.dm:                                            ; preds = %bb.dl
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !85 ; 8 uses
  %i.xe = icmp ugt i32 %i.xd, 999
  br i1 %i.xe, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !119
  %i.xh = icmp eq i32 %i.xg, 3
  br i1 %i.xh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.xi = lshr i32 %i.xd, 2
  %i.xj = and i32 %i.xi, 572662306
  %i.xk = shl i32 %i.xd, 2
  %i.xl = and i32 %i.xk, -2004318072
  %i.xm = or disjoint i32 %i.xj, %i.xl
  %i.xn = shl i32 %i.xd, 1
  %i.xo = and i32 %i.xm, %i.xn
  %i.xp = or i32 %i.xo, %i.xd                     ; 2 uses
  store i32 %i.xp, ptr %i.xc, align 8, !tbaa !85
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %i.xq = phi i32 [ %i.xp, %bb.do ], [ %i.xd, %bb.dn ], [ %i.xd, %bb.dm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.xr = icmp ne i32 %i.wu, 0
  %i.xs = icmp ne i32 %i.ww, 0
  %or.cond628 = and i1 %i.xr, %i.xs
  br i1 %or.cond628, label %.preheader524.lr.ph.split, label %.preheader523.thread

.preheader524.lr.ph.split:                        ; preds = %bb.dp
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !161
  %i.xv = add i32 %i.xu, 6
  %xtraiter992 = and i32 %i.ww, 1
  %i.xw = icmp eq i32 %i.ww, 1
  %unroll_iter997 = and i32 %i.ww, -2
  %lcmp.mod994.not = icmp eq i32 %xtraiter992, 0
  %lcmp.mod996 = trunc i32 %i.ww to i1
  br label %.preheader524

.preheader524:                                    ; preds = %.preheader524.lr.ph.split, %._crit_edge605
  %.0341608 = phi i32 [ 0, %.preheader524.lr.ph.split ], [ %i.zc, %._crit_edge605 ] ; 2 uses
  %.0342607 = phi i32 [ %i.xv, %.preheader524.lr.ph.split ], [ %.lcssa982, %._crit_edge605 ] ; 2 uses
  %i.xx = shl i32 %.0341608, 1
  %i.xy = and i32 %i.xx, 14                       ; 3 uses
  br i1 %i.xw, label %.epil.preheader, label %.preheader524.new

.preheader524.new:                                ; preds = %.preheader524
  %i.xz = shl nuw nsw i32 %i.xy, 1
  %i.ya = lshr i32 %i.xq, %i.xz
  %i.yb = and i32 %i.ya, 3
  %i.yc = zext nneg i32 %i.yb to i64              ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yc ; 2 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.yc ; 2 uses
  %i.yf = shl nuw nsw i32 %i.xy, 1
  %i.yg = or disjoint i32 %i.yf, 2
  %i.yh = lshr i32 %i.xq, %i.yg
  %i.yi = and i32 %i.yh, 3
  %i.yj = zext nneg i32 %i.yi to i64              ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yj ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.yj ; 2 uses
  br label %bb.dq

.preheader523:                                    ; preds = %._crit_edge605
  %.pre742 = load i32, ptr %i.f, align 16, !tbaa !83 ; 2 uses
  %.not477 = icmp eq i32 %.pre742, 0
  br i1 %.not477, label %.preheader523.thread, label %bb.dr

._crit_edge605.unr-lcssa:                         ; preds = %bb.dq
  br i1 %lcmp.mod994.not, label %._crit_edge605, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge605.unr-lcssa, %.preheader524
  %.0340603.epil.init = phi i32 [ 0, %.preheader524 ], [ %i.zt, %._crit_edge605.unr-lcssa ]
  %.1343602.epil.init = phi i32 [ %.0342607, %.preheader524 ], [ %i.zs, %._crit_edge605.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod996)
  %i.ym = sext i32 %.1343602.epil.init to i64
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !83
  %i.yp = and i32 %.0340603.epil.init, 1
  %i.yq = or disjoint i32 %i.yp, %i.xy
  %i.yr = shl nuw nsw i32 %i.yq, 1
  %i.ys = lshr i32 %i.xq, %i.yr
  %i.yt = and i32 %i.ys, 3
  %i.yu = zext nneg i32 %i.yt to i64              ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.yu ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !83
  %i.yx = add i32 %i.yw, %i.yo
  store i32 %i.yx, ptr %i.yv, align 4, !tbaa !83
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.yu ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !83
  %i.za = add nsw i32 %i.yz, 1
  store i32 %i.za, ptr %i.yy, align 4, !tbaa !83
  %i.zb = add i32 %.1343602.epil.init, 2
  br label %._crit_edge605

._crit_edge605:                                   ; preds = %._crit_edge605.unr-lcssa, %.epil.preheader
  %.lcssa982 = phi i32 [ %i.zs, %._crit_edge605.unr-lcssa ], [ %i.zb, %.epil.preheader ]
  %i.zc = add nuw i32 %.0341608, 1                ; 2 uses
  %exitcond718.not = icmp eq i32 %i.zc, %i.wu
  br i1 %exitcond718.not, label %.preheader523, label %.preheader524, !llvm.loop !274

bb.dq:                                            ; preds = %bb.dq, %.preheader524.new
  %.0340603 = phi i32 [ 0, %.preheader524.new ], [ %i.zt, %bb.dq ]
  %.1343602 = phi i32 [ %.0342607, %.preheader524.new ], [ %i.zs, %bb.dq ] ; 3 uses
  %niter998 = phi i32 [ 0, %.preheader524.new ], [ %niter998.next.1, %bb.dq ]
  %i.zd = sext i32 %.1343602 to i64
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !83
  %i.zg = load i32, ptr %i.yd, align 4, !tbaa !83
  %i.zh = add i32 %i.zg, %i.zf
  store i32 %i.zh, ptr %i.yd, align 4, !tbaa !83
  %i.zi = load i32, ptr %i.ye, align 4, !tbaa !83
  %i.zj = add nsw i32 %i.zi, 1
  store i32 %i.zj, ptr %i.ye, align 4, !tbaa !83
  %i.zk = add i32 %.1343602, 2
  %i.zl = sext i32 %i.zk to i64
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !83
  %i.zo = load i32, ptr %i.yk, align 4, !tbaa !83
  %i.zp = add i32 %i.zo, %i.zn
  store i32 %i.zp, ptr %i.yk, align 4, !tbaa !83
  %i.zq = load i32, ptr %i.yl, align 4, !tbaa !83
  %i.zr = add nsw i32 %i.zq, 1
  store i32 %i.zr, ptr %i.yl, align 4, !tbaa !83
  %i.zs = add i32 %.1343602, 4                    ; 3 uses
  %i.zt = add nuw i32 %.0340603, 2                ; 2 uses
  %niter998.next.1 = add nuw i32 %niter998, 2     ; 2 uses
  %niter998.ncmp.1 = icmp eq i32 %niter998.next.1, %unroll_iter997
  br i1 %niter998.ncmp.1, label %._crit_edge605.unr-lcssa, label %bb.dq, !llvm.loop !275

bb.dr:                                            ; preds = %.preheader523
  %i.zu = load i32, ptr %i.e, align 16, !tbaa !83
  %i.zv = sdiv i32 %i.zu, %.pre742
  %i.zw = load i32, ptr %i.vx, align 4, !tbaa !83
  %i.zx = add i32 %i.zw, %i.zv
  store i32 %i.zx, ptr %i.vx, align 4, !tbaa !83
  br label %.preheader523.thread

.preheader523.thread:                             ; preds = %bb.dp, %.preheader523, %bb.dr
  %i.zy = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !83 ; 2 uses
  %.not477.1 = icmp eq i32 %i.zz, 0
  br i1 %.not477.1, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.preheader523.thread
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !83
  %i.aac = sdiv i32 %i.aab, %i.zz
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 154256 ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !83
  %i.aaf = add i32 %i.aae, %i.aac
  store i32 %i.aaf, ptr %i.aad, align 8, !tbaa !83
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.preheader523.thread
  %i.aag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !83 ; 2 uses
  %.not477.2 = icmp eq i32 %i.aah, 0
  br i1 %.not477.2, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !83
  %i.aak = sdiv i32 %i.aaj, %i.aah
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 154260
  %i.aam = add i32 %i.vz, %i.aak
  store i32 %i.aam, ptr %i.aal, align 4, !tbaa !83
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.aan = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !83 ; 2 uses
  %.not477.3 = icmp eq i32 %i.aao, 0
  br i1 %.not477.3, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aap = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !83
  %i.aar = sdiv i32 %i.aaq, %i.aao
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 154264 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !83
  %i.aau = add i32 %i.aat, %i.aar
  store i32 %i.aau, ptr %i.aas, align 8, !tbaa !83
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  store i32 0, ptr %i.wv, align 8, !tbaa !83
  store i32 0, ptr %i.wt, align 4, !tbaa !83
  store i32 %i.xd, ptr %i.xc, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.thread515

bb.dy:                                            ; preds = %.loopexit
  %i.aav = add i32 %i.vv, -3
  %or.cond505 = icmp ult i32 %i.aav, 2
  br i1 %or.cond505, label %bb.dz, label %.thread515

bb.dz:                                            ; preds = %bb.dy
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 154252 ; 7 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 154268 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !83 ; 3 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 154272 ; 2 uses
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !83 ; 6 uses
  %i.abb = mul i32 %i.aay, %i.vv
  %i.abc = mul i32 %i.abb, %i.aba
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 170664
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !83
  %i.abf = icmp eq i32 %i.abc, %i.abe
  br i1 %i.abf, label %bb.ea, label %.thread515

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %.not629 = icmp eq i32 %i.aay, 0
  %.not630 = icmp eq i32 %i.aba, 0
  %or.cond808 = or i1 %.not629, %.not630
  br i1 %or.cond808, label %.preheader525.thread, label %.preheader527.us.preheader

.preheader527.us.preheader:                       ; preds = %bb.ea
  %1 = mul i32 %i.aba, %i.vv
  %wide.trip.count709 = zext nneg i32 %i.vv to i64
  %i.abg = add i32 %i.aba, -1
  %trip.count.minus.1906 = add nsw i64 %wide.trip.count709, -1
  %broadcast.splatinsert907 = insertelement <4 x i64> poison, i64 %trip.count.minus.1906, i64 0
  %broadcast.splat908 = shufflevector <4 x i64> %broadcast.splatinsert907, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.abh = icmp uge <4 x i64> %broadcast.splat908, <i64 0, i64 1, i64 2, i64 3> ; 15 uses
  %xtraiter = and i32 %i.aba, 3                   ; 3 uses
  %i.abi = icmp ult i32 %i.abg, 3
  %unroll_iter = and i32 %i.aba, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod991 = icmp ne i32 %xtraiter, 0
  br label %.preheader527.us

.preheader527.us:                                 ; preds = %.preheader527.us.preheader, %._crit_edge595.split.us.us
  %.0335598.us = phi i32 [ %i.aby, %._crit_edge595.split.us.us ], [ 0, %.preheader527.us.preheader ]
  %.0336597.us = phi i32 [ %7, %._crit_edge595.split.us.us ], [ 6, %.preheader527.us.preheader ] ; 3 uses
  br i1 %i.abi, label %vector.ph903.epil.preheader, label %vector.ph903

vector.ph903:                                     ; preds = %.preheader527.us, %vector.ph903
  %indvars.iv704 = phi i32 [ %indvars.iv.next705.3, %vector.ph903 ], [ %.0336597.us, %.preheader527.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %vector.ph903 ], [ 0, %.preheader527.us ]
  %2 = sext i32 %indvars.iv704 to i64
  %i.abj = getelementptr [4 x i8], ptr %i.aaw, i64 %2
  %wide.masked.load912 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abj, <4 x i1> %i.abh, <4 x i32> poison), !tbaa !83
  %unmaskedload1014 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abk = add <4 x i32> %unmaskedload1014, %wide.masked.load912
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abk, ptr align 16 %i.g, <4 x i1> %i.abh), !tbaa !83
  %unmaskedload1015 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abl = add nsw <4 x i32> %unmaskedload1015, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abl, ptr align 16 %i.h, <4 x i1> %i.abh), !tbaa !83
  %indvars.iv.next705 = add i32 %indvars.iv704, %i.vv ; 2 uses
  %3 = sext i32 %indvars.iv.next705 to i64
  %i.abm = getelementptr [4 x i8], ptr %i.aaw, i64 %3
  %wide.masked.load912.1 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abm, <4 x i1> %i.abh, <4 x i32> poison), !tbaa !83
  %unmaskedload1016 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abn = add <4 x i32> %unmaskedload1016, %wide.masked.load912.1
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abn, ptr align 16 %i.g, <4 x i1> %i.abh), !tbaa !83
  %unmaskedload1017 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abo = add nsw <4 x i32> %unmaskedload1017, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abo, ptr align 16 %i.h, <4 x i1> %i.abh), !tbaa !83
  %indvars.iv.next705.1 = add i32 %indvars.iv.next705, %i.vv ; 2 uses
  %4 = sext i32 %indvars.iv.next705.1 to i64
  %i.abp = getelementptr [4 x i8], ptr %i.aaw, i64 %4
  %wide.masked.load912.2 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abp, <4 x i1> %i.abh, <4 x i32> poison), !tbaa !83
  %unmaskedload1018 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abq = add <4 x i32> %unmaskedload1018, %wide.masked.load912.2
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abq, ptr align 16 %i.g, <4 x i1> %i.abh), !tbaa !83
  %unmaskedload1019 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abr = add nsw <4 x i32> %unmaskedload1019, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abr, ptr align 16 %i.h, <4 x i1> %i.abh), !tbaa !83
  %indvars.iv.next705.2 = add i32 %indvars.iv.next705.1, %i.vv ; 2 uses
  %5 = sext i32 %indvars.iv.next705.2 to i64
  %i.abs = getelementptr [4 x i8], ptr %i.aaw, i64 %5
  %wide.masked.load912.3 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abs, <4 x i1> %i.abh, <4 x i32> poison), !tbaa !83
  %unmaskedload1020 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abt = add <4 x i32> %unmaskedload1020, %wide.masked.load912.3
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abt, ptr align 16 %i.g, <4 x i1> %i.abh), !tbaa !83
  %unmaskedload1021 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abu = add nsw <4 x i32> %unmaskedload1021, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abu, ptr align 16 %i.h, <4 x i1> %i.abh), !tbaa !83
  %indvars.iv.next705.3 = add i32 %indvars.iv.next705.2, %i.vv ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge595.split.us.us.unr-lcssa, label %vector.ph903, !llvm.loop !276

._crit_edge595.split.us.us.unr-lcssa:             ; preds = %vector.ph903
  br i1 %lcmp.mod.not, label %._crit_edge595.split.us.us, label %vector.ph903.epil.preheader

vector.ph903.epil.preheader:                      ; preds = %._crit_edge595.split.us.us.unr-lcssa, %.preheader527.us
  %indvars.iv704.epil.init = phi i32 [ %.0336597.us, %.preheader527.us ], [ %indvars.iv.next705.3, %._crit_edge595.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod991)
  br label %vector.ph903.epil

vector.ph903.epil:                                ; preds = %vector.ph903.epil, %vector.ph903.epil.preheader
  %indvars.iv704.epil = phi i32 [ %indvars.iv.next705.epil, %vector.ph903.epil ], [ %indvars.iv704.epil.init, %vector.ph903.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %vector.ph903.epil ], [ 0, %vector.ph903.epil.preheader ]
  %6 = sext i32 %indvars.iv704.epil to i64
  %i.abv = getelementptr [4 x i8], ptr %i.aaw, i64 %6
  %wide.masked.load912.epil = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abv, <4 x i1> %i.abh, <4 x i32> poison), !tbaa !83
  %unmaskedload1022 = load <4 x i32>, ptr %i.g, align 16, !tbaa !83
  %i.abw = add <4 x i32> %unmaskedload1022, %wide.masked.load912.epil
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abw, ptr align 16 %i.g, <4 x i1> %i.abh), !tbaa !83
  %unmaskedload1023 = load <4 x i32>, ptr %i.h, align 16, !tbaa !83
  %i.abx = add nsw <4 x i32> %unmaskedload1023, splat (i32 1)
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %i.abx, ptr align 16 %i.h, <4 x i1> %i.abh), !tbaa !83
  %indvars.iv.next705.epil = add i32 %indvars.iv704.epil, %i.vv
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge595.split.us.us, label %vector.ph903.epil, !llvm.loop !277

._crit_edge595.split.us.us:                       ; preds = %vector.ph903.epil, %._crit_edge595.split.us.us.unr-lcssa
  %7 = add i32 %1, %.0336597.us
  %i.aby = add nuw i32 %.0335598.us, 1            ; 2 uses
  %exitcond712.not = icmp eq i32 %i.aby, %i.aay
  br i1 %exitcond712.not, label %.preheader525, label %.preheader527.us, !llvm.loop !278

.preheader525:                                    ; preds = %._crit_edge595.split.us.us
  %.pre = load i32, ptr %i.h, align 16, !tbaa !83 ; 2 uses
  %.not470 = icmp eq i32 %.pre, 0
  br i1 %.not470, label %.preheader525.thread, label %bb.eb

bb.eb:                                            ; preds = %.preheader525
  %i.abz = load i32, ptr %i.g, align 16, !tbaa !83
  %i.aca = sdiv i32 %i.abz, %.pre
  %i.acb = load i32, ptr %i.aaw, align 4, !tbaa !83
  %i.acc = add i32 %i.acb, %i.aca
  store i32 %i.acc, ptr %i.aaw, align 4, !tbaa !83
  br label %.preheader525.thread

.preheader525.thread:                             ; preds = %bb.ea, %.preheader525, %bb.eb
  %i.acd = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !83 ; 2 uses
  %.not470.1 = icmp eq i32 %i.ace, 0
  br i1 %.not470.1, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %.preheader525.thread
  %i.acf = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !83
  %i.ach = sdiv i32 %i.acg, %i.ace
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 154256 ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !83
  %i.ack = add i32 %i.acj, %i.ach
  store i32 %i.ack, ptr %i.aci, align 8, !tbaa !83
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.preheader525.thread
  %i.acl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.acm = load i32, ptr %i.acl, align 8, !tbaa !83 ; 2 uses
  %.not470.2 = icmp eq i32 %i.acm, 0
  br i1 %.not470.2, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.acn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aco = load i32, ptr %i.acn, align 8, !tbaa !83
  %i.acp = sdiv i32 %i.aco, %i.acm
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 154260 ; 2 uses
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !83
  %i.acs = add i32 %i.acr, %i.acp
  store i32 %i.acs, ptr %i.acq, align 4, !tbaa !83
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.act = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !83 ; 2 uses
  %.not470.3 = icmp eq i32 %i.acu, 0
  br i1 %.not470.3, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.acv = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !83
  %i.acx = sdiv i32 %i.acw, %i.acu
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 154264 ; 2 uses
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !83
  %i.ada = add i32 %i.acz, %i.acx
  store i32 %i.ada, ptr %i.acy, align 8, !tbaa !83
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  store i32 0, ptr %i.aaz, align 8, !tbaa !83
  store i32 0, ptr %i.aax, align 4, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.thread515

.thread515:                                       ; preds = %bb.dl, %bb.dx, %bb.eh, %bb.dz, %bb.dy, %bb.dk
  %i.adb = phi i32 [ %i.vs, %bb.dl ], [ %i.vs, %bb.dx ], [ %i.vs, %bb.eh ], [ %i.vs, %bb.dz ], [ %i.vs, %bb.dy ], [ %i.wp, %bb.dk ]
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 5 uses
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 154252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16416) %i.adc, ptr noundef nonnull align 4 dereferenceable(16416) %i.add, i64 16416, i1 false)
  %i.ade = load i32, ptr %i.aa, align 8, !tbaa !92
  %i.adf = icmp slt i32 %i.w, %i.ade
  %or.cond15 = and i1 %i.ad, %i.adf
  br i1 %or.cond15, label %bb.ei, label %bb.en

bb.ei:                                            ; preds = %.thread515
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 433512 ; 2 uses
  %i.adh = zext nneg i32 %i.w to i64
  %i.adi = getelementptr inbounds nuw [33472 x i8], ptr %i.adg, i64 %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 488
  %i.adk = load i32, ptr %i.adj, align 8, !tbaa !256
  %i.adl = and i32 %i.adk, 16384
  %.not471 = icmp eq i32 %i.adl, 0
  br i1 %.not471, label %bb.ej, label %.thread517

bb.ej:                                            ; preds = %bb.ei
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 434000
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !256
  %i.ado = and i32 %i.adn, 16384
  %.not521 = icmp eq i32 %i.ado, 0
  br i1 %.not521, label %bb.en, label %.thread517

.thread517:                                       ; preds = %bb.ej, %bb.ei
  %i.adp = phi i32 [ %i.w, %bb.ei ], [ 0, %bb.ej ]
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [33472 x i8], ptr %i.adg, i64 %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 33412
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !279 ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 187172
  store float %i.adt, ptr %i.adu, align 4, !tbaa !280
  %i.adv = fpext reassoc nsz arcp contract afn float %i.adt to double
  %i.adw = fcmp reassoc nsz arcp contract afn ule double %i.adv, 1.000000e-01
  %i.adx = fcmp reassoc nsz arcp contract afn ugt float %i.adt, 1.000000e+00
  %or.cond506 = or i1 %i.adx, %i.adw
  br i1 %or.cond506, label %bb.en, label %.preheader522

.preheader522:                                    ; preds = %.thread517
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !119 ; 3 uses
  %invariant.smin611 = call i32 @llvm.smin.i32(i32 %i.adz, i32 4) ; 2 uses
  %i.aea = icmp sgt i32 %i.adz, 0                 ; 2 uses
  br i1 %i.aea, label %vector.body924, label %._crit_edge615

vector.body924:                                   ; preds = %.preheader522
  %wide.trip.count726 = zext nneg i32 %invariant.smin611 to i64
  %trip.count.minus.1921 = add nsw i64 %wide.trip.count726, -1
  %broadcast.splatinsert922 = insertelement <4 x i64> poison, i64 %trip.count.minus.1921, i64 0
  %broadcast.splat923 = shufflevector <4 x i64> %broadcast.splatinsert922, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.aeb = icmp uge <4 x i64> %broadcast.splat923, <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.load928 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 8 %i.adc, <4 x i1> %i.aeb, <4 x i32> zeroinitializer), !tbaa !83
  %i.aec = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %wide.masked.load928)
  br label %._crit_edge615

._crit_edge615:                                   ; preds = %vector.body924, %.preheader522
  %.0331.lcssa = phi i32 [ 0, %.preheader522 ], [ %i.aec, %vector.body924 ]
  %i.aed = call i32 @llvm.smax.i32(i32 %i.adz, i32 1)
  %i.aee = call i32 @llvm.umin.i32(i32 %i.aed, i32 4)
  %i.aef = sdiv i32 %.0331.lcssa, %i.aee
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 136688
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !83
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !83
  %i.aek = mul i32 %i.aej, %i.aeh                 ; 4 uses
  %.not474 = icmp eq i32 %i.aek, 0
  br i1 %.not474, label %bb.ek, label %iter.check

iter.check:                                       ; preds = %._crit_edge615
  %invariant.umin618 = call i32 @llvm.umin.i32(i32 %i.aek, i32 4096) ; 2 uses
  %wide.trip.count733 = zext nneg i32 %invariant.umin618 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.aek, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check932 = icmp ult i32 %i.aek, 32
  br i1 %min.iters.check932, label %vec.epilog.ph, label %vector.ph933

vector.ph933:                                     ; preds = %vector.main.loop.iter.check
  %i.ael = and i64 %wide.trip.count733, 28
  %n.vec934 = and i64 %wide.trip.count733, 8160   ; 4 uses
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next944, %vector.body935 ] ; 2 uses
  %vec.phi937 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aer, %vector.body935 ]
  %vec.phi938 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aes, %vector.body935 ]
  %vec.phi939 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aet, %vector.body935 ]
  %vec.phi940 = phi <8 x i32> [ zeroinitializer, %vector.ph933 ], [ %i.aeu, %vector.body935 ]
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %index936 ; 4 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 56
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 88
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aem, i64 120
  %wide.load = load <8 x i32>, ptr %i.aen, align 8, !tbaa !83
  %wide.load941 = load <8 x i32>, ptr %i.aeo, align 8, !tbaa !83
  %wide.load942 = load <8 x i32>, ptr %i.aep, align 8, !tbaa !83
  %wide.load943 = load <8 x i32>, ptr %i.aeq, align 8, !tbaa !83
  %i.aer = add <8 x i32> %wide.load, %vec.phi937  ; 2 uses
  %i.aes = add <8 x i32> %wide.load941, %vec.phi938 ; 2 uses
  %i.aet = add <8 x i32> %wide.load942, %vec.phi939 ; 2 uses
  %i.aeu = add <8 x i32> %wide.load943, %vec.phi940 ; 2 uses
  %index.next944 = add nuw i64 %index936, 32      ; 2 uses
  %i.aev = icmp eq i64 %index.next944, %n.vec934
  br i1 %i.aev, label %middle.block945, label %vector.body935, !llvm.loop !281

middle.block945:                                  ; preds = %vector.body935
  %bin.rdx = add <8 x i32> %i.aes, %i.aer
  %bin.rdx946 = add <8 x i32> %i.aet, %bin.rdx
  %bin.rdx947 = add <8 x i32> %i.aeu, %bin.rdx946
  %i.aew = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx947) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec934, %wide.trip.count733
  br i1 %cmp.n, label %.critedge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block945
  %min.epilog.iters.check = icmp eq i64 %i.ael, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !282

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec934, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aew, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec948 = and i64 %wide.trip.count733, 8188   ; 3 uses
  %i.aex = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

end_hunk_0
