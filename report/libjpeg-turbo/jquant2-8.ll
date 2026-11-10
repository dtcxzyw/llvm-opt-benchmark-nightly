Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jquant2-8?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@fill_inverse_cmap:bb.a
  %.phi.trans.insert145.i.4 = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %.phi.trans.insert144.i.4
  %.pre146.i.4 = load i32, ptr %.phi.trans.insert145.i.4, align 4, !tbaa !59 ; 2 uses
  %.pre172.i.4 = shl i32 %.pre146.i.4, 7
  %.pre174.i.4 = mul i32 %.pre172.i.4, %.pre146.i.4
  %.pre176.i.4 = sext i32 %.pre174.i.4 to i64
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %.sroa.341.1 = phi i64 [ %i.vu, %bb.hl ], [ %.sroa.341.0, %bb.hk ]
  %.pre-phi177.i.4 = phi i64 [ %.pre176.i.4, %bb.hl ], [ %i.fi, %bb.hk ]
  %i.vw = add nsw i64 %i.lq, %i.vu                ; 3 uses
  %i.vx = icmp slt i64 %i.vw, %.sroa.344.0
  br i1 %i.vx, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  store i8 %i.kn, ptr %i.jy, align 2, !tbaa !36
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %.sroa.344.1 = phi i64 [ %i.vw, %bb.hn ], [ %.sroa.344.0, %bb.hm ]
  %i.vy = add i64 %i.vw, %i.lq
  %i.vz = add i64 %i.vy, %.pre-phi177.i.4         ; 2 uses
  %i.wa = icmp slt i64 %i.vz, %.sroa.347.0
  br i1 %i.wa, label %bb.hp, label %.preheader.3.i.5

bb.hp:                                            ; preds = %bb.ho
  store i8 %i.kn, ptr %i.jz, align 1, !tbaa !36
  br label %.preheader.3.i.5

.preheader.3.i.5:                                 ; preds = %bb.hp, %bb.ho
  %.sroa.347.1 = phi i64 [ %i.vz, %bb.hp ], [ %.sroa.347.0, %bb.ho ]
  %i.wb = add nsw i64 %i.vs, %i.ne                ; 4 uses
  %i.wc = icmp slt i64 %i.wb, %.sroa.350.0
  br i1 %i.wc, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %.preheader.3.i.5
  store i8 %i.kn, ptr %i.ka, align 4, !tbaa !36
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.preheader.3.i.5
  %.sroa.350.1 = phi i64 [ %i.wb, %bb.hq ], [ %.sroa.350.0, %.preheader.3.i.5 ]
  %i.wd = add nsw i64 %i.wb, %i.lp                ; 3 uses
  %i.we = icmp slt i64 %i.wd, %.sroa.353.0
  br i1 %i.we, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  store i8 %i.kn, ptr %i.kb, align 1, !tbaa !36
  %.pre143.i.5 = load i32, ptr %i.em, align 4, !tbaa !59
  %.phi.trans.insert144.i.5 = sext i32 %.pre143.i.5 to i64
  %.phi.trans.insert145.i.5 = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %.phi.trans.insert144.i.5
  %.pre146.i.5 = load i32, ptr %.phi.trans.insert145.i.5, align 4, !tbaa !59 ; 2 uses
  %.pre172.i.5 = shl i32 %.pre146.i.5, 7
  %.pre174.i.5 = mul i32 %.pre172.i.5, %.pre146.i.5
  %.pre176.i.5 = sext i32 %.pre174.i.5 to i64
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.sroa.353.1 = phi i64 [ %i.wd, %bb.hs ], [ %.sroa.353.0, %bb.hr ]
  %.pre-phi177.i.5 = phi i64 [ %.pre176.i.5, %bb.hs ], [ %i.fi, %bb.hr ]
  %i.wf = add nsw i64 %i.lq, %i.wd                ; 3 uses
  %i.wg = icmp slt i64 %i.wf, %.sroa.356.0
  br i1 %i.wg, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  store i8 %i.kn, ptr %i.kc, align 2, !tbaa !36
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.sroa.356.1 = phi i64 [ %i.wf, %bb.hu ], [ %.sroa.356.0, %bb.ht ]
  %i.wh = add i64 %i.wf, %i.lq
  %i.wi = add i64 %i.wh, %.pre-phi177.i.5         ; 2 uses
  %i.wj = icmp slt i64 %i.wi, %.sroa.359.0
  br i1 %i.wj, label %bb.hw, label %.preheader.3.i.6

bb.hw:                                            ; preds = %bb.hv
  store i8 %i.kn, ptr %i.kd, align 1, !tbaa !36
  br label %.preheader.3.i.6

.preheader.3.i.6:                                 ; preds = %bb.hw, %bb.hv
  %.sroa.359.1 = phi i64 [ %i.wi, %bb.hw ], [ %.sroa.359.0, %bb.hv ]
  %i.wk = add nsw i64 %i.wb, %i.no                ; 4 uses
  %i.wl = icmp slt i64 %i.wk, %.sroa.362.0
  br i1 %i.wl, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %.preheader.3.i.6
  store i8 %i.kn, ptr %i.ke, align 8, !tbaa !36
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %.preheader.3.i.6
  %.sroa.362.1 = phi i64 [ %i.wk, %bb.hx ], [ %.sroa.362.0, %.preheader.3.i.6 ]
  %i.wm = add nsw i64 %i.wk, %i.lp                ; 3 uses
  %i.wn = icmp slt i64 %i.wm, %.sroa.365.0
  br i1 %i.wn, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i8 %i.kn, ptr %i.kf, align 1, !tbaa !36
  %.pre143.i.6 = load i32, ptr %i.em, align 4, !tbaa !59
  %.phi.trans.insert144.i.6 = sext i32 %.pre143.i.6 to i64
  %.phi.trans.insert145.i.6 = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %.phi.trans.insert144.i.6
  %.pre146.i.6 = load i32, ptr %.phi.trans.insert145.i.6, align 4, !tbaa !59 ; 2 uses
  %.pre172.i.6 = shl i32 %.pre146.i.6, 7
  %.pre174.i.6 = mul i32 %.pre172.i.6, %.pre146.i.6
  %.pre176.i.6 = sext i32 %.pre174.i.6 to i64
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.sroa.365.1 = phi i64 [ %i.wm, %bb.hz ], [ %.sroa.365.0, %bb.hy ]
  %.pre-phi177.i.6 = phi i64 [ %.pre176.i.6, %bb.hz ], [ %i.fi, %bb.hy ]
  %i.wo = add nsw i64 %i.lq, %i.wm                ; 3 uses
  %i.wp = icmp slt i64 %i.wo, %.sroa.368.0
  br i1 %i.wp, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  store i8 %i.kn, ptr %i.kg, align 2, !tbaa !36
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.sroa.368.1 = phi i64 [ %i.wo, %bb.ib ], [ %.sroa.368.0, %bb.ia ]
  %i.wq = add i64 %i.wo, %i.lq
  %i.wr = add i64 %i.wq, %.pre-phi177.i.6         ; 2 uses
  %i.ws = icmp slt i64 %i.wr, %.sroa.371.0
  br i1 %i.ws, label %bb.id, label %.preheader.3.i.7

bb.id:                                            ; preds = %bb.ic
  store i8 %i.kn, ptr %i.kh, align 1, !tbaa !36
  br label %.preheader.3.i.7

.preheader.3.i.7:                                 ; preds = %bb.id, %bb.ic
  %.sroa.371.1 = phi i64 [ %i.wr, %bb.id ], [ %.sroa.371.0, %bb.ic ]
  %i.wt = add nsw i64 %i.wk, %i.ny                ; 3 uses
  %i.wu = icmp slt i64 %i.wt, %.sroa.374.0
  br i1 %i.wu, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %.preheader.3.i.7
  store i8 %i.kn, ptr %i.ki, align 4, !tbaa !36
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %.preheader.3.i.7
  %.sroa.374.1 = phi i64 [ %i.wt, %bb.ie ], [ %.sroa.374.0, %.preheader.3.i.7 ]
  %i.wv = add nsw i64 %i.wt, %i.lp                ; 3 uses
  %i.ww = icmp slt i64 %i.wv, %.sroa.377.0
  br i1 %i.ww, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  store i8 %i.kn, ptr %i.kj, align 1, !tbaa !36
  %.pre143.i.7 = load i32, ptr %i.em, align 4, !tbaa !59
  %.phi.trans.insert144.i.7 = sext i32 %.pre143.i.7 to i64
  %.phi.trans.insert145.i.7 = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %.phi.trans.insert144.i.7
  %.pre146.i.7 = load i32, ptr %.phi.trans.insert145.i.7, align 4, !tbaa !59 ; 2 uses
  %.pre172.i.7 = shl i32 %.pre146.i.7, 7
  %.pre174.i.7 = mul i32 %.pre172.i.7, %.pre146.i.7
  %.pre176.i.7 = sext i32 %.pre174.i.7 to i64
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.sroa.377.1 = phi i64 [ %i.wv, %bb.ig ], [ %.sroa.377.0, %bb.if ]
  %.pre-phi177.i.7 = phi i64 [ %.pre176.i.7, %bb.ig ], [ %i.fi, %bb.if ]
  %i.wx = add nsw i64 %i.lq, %i.wv                ; 3 uses
  %i.wy = icmp slt i64 %i.wx, %.sroa.380.0
  br i1 %i.wy, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  store i8 %i.kn, ptr %i.kk, align 2, !tbaa !36
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %.sroa.380.1 = phi i64 [ %i.wx, %bb.ii ], [ %.sroa.380.0, %bb.ih ]
  %i.wz = add i64 %i.wx, %i.lq
  %i.xa = add i64 %i.wz, %.pre-phi177.i.7         ; 2 uses
  %i.xb = icmp slt i64 %i.xa, %.sroa.383.0
  br i1 %i.xb, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !36
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.sroa.383.1 = phi i64 [ %i.xa, %bb.ik ], [ %.sroa.383.0, %bb.ij ]
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, %wide.trip.count.i38
  br i1 %exitcond.not.i43, label %find_best_colors.exit, label %.preheader88.i, !llvm.loop !131

find_best_colors.exit:                            ; preds = %bb.il, %find_nearby_colors.exit.thread, %find_nearby_colors.exit
  %i.xc = and i32 %1, 28
  %i.xd = and i32 %2, 56
  %i.xe = and i32 %3, 28
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = zext nneg i32 %i.xd to i64              ; 8 uses
  %i.xh = zext nneg i32 %i.xc to i64
  %invariant.gep211 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.xh
  br label %.preheader

.preheader:                                       ; preds = %find_best_colors.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %find_best_colors.exit ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.03356 = phi ptr [ %i.c, %find_best_colors.exit ], [ %i.adi, %.preheader ] ; 33 uses
  %gep212 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211, i64 %indvars.iv
  %i.xi = load ptr, ptr %gep212, align 8, !tbaa !51
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.xi, i64 %i.xf ; 8 uses
  %gep = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.03356, i64 1
  %i.xk = load i8, ptr %.03356, align 16, !tbaa !36
  %i.xl = zext i8 %i.xk to i16
  %i.xm = add nuw nsw i16 %i.xl, 1
  %i.xn = getelementptr inbounds nuw i8, ptr %gep, i64 2
  store i16 %i.xm, ptr %gep, align 2, !tbaa !61
  %i.xo = getelementptr inbounds nuw i8, ptr %.03356, i64 2
  %i.xp = load i8, ptr %i.xj, align 1, !tbaa !36
  %i.xq = zext i8 %i.xp to i16
  %i.xr = add nuw nsw i16 %i.xq, 1
  %i.xs = getelementptr inbounds nuw i8, ptr %gep, i64 4
  store i16 %i.xr, ptr %i.xn, align 2, !tbaa !61
  %i.xt = getelementptr inbounds nuw i8, ptr %.03356, i64 3
  %i.xu = load i8, ptr %i.xo, align 2, !tbaa !36
  %i.xv = zext i8 %i.xu to i16
  %i.xw = add nuw nsw i16 %i.xv, 1
  %i.xx = getelementptr inbounds nuw i8, ptr %gep, i64 6
  store i16 %i.xw, ptr %i.xs, align 2, !tbaa !61
  %i.xy = getelementptr inbounds nuw i8, ptr %.03356, i64 4
  %i.xz = load i8, ptr %i.xt, align 1, !tbaa !36
  %i.ya = zext i8 %i.xz to i16
  %i.yb = add nuw nsw i16 %i.ya, 1
  store i16 %i.yb, ptr %i.xx, align 2, !tbaa !61
  %i.yc = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.yc, i64 64
  %i.yd = getelementptr inbounds nuw i8, ptr %.03356, i64 5
  %i.ye = load i8, ptr %i.xy, align 4, !tbaa !36
  %i.yf = zext i8 %i.ye to i16
  %i.yg = add nuw nsw i16 %i.yf, 1
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 66
  store i16 %i.yg, ptr %gep.1, align 2, !tbaa !61
  %i.yi = getelementptr inbounds nuw i8, ptr %.03356, i64 6
  %i.yj = load i8, ptr %i.yd, align 1, !tbaa !36
  %i.yk = zext i8 %i.yj to i16
  %i.yl = add nuw nsw i16 %i.yk, 1
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yc, i64 68
  store i16 %i.yl, ptr %i.yh, align 2, !tbaa !61
  %i.yn = getelementptr inbounds nuw i8, ptr %.03356, i64 7
  %i.yo = load i8, ptr %i.yi, align 2, !tbaa !36
  %i.yp = zext i8 %i.yo to i16
  %i.yq = add nuw nsw i16 %i.yp, 1
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yc, i64 70
  store i16 %i.yq, ptr %i.ym, align 2, !tbaa !61
  %i.ys = getelementptr inbounds nuw i8, ptr %.03356, i64 8
  %i.yt = load i8, ptr %i.yn, align 1, !tbaa !36
  %i.yu = zext i8 %i.yt to i16
  %i.yv = add nuw nsw i16 %i.yu, 1
  store i16 %i.yv, ptr %i.yr, align 2, !tbaa !61
  %i.yw = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.yw, i64 128
  %i.yx = getelementptr inbounds nuw i8, ptr %.03356, i64 9
  %i.yy = load i8, ptr %i.ys, align 8, !tbaa !36
  %i.yz = zext i8 %i.yy to i16
  %i.za = add nuw nsw i16 %i.yz, 1
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 130
  store i16 %i.za, ptr %gep.2, align 2, !tbaa !61
  %i.zc = getelementptr inbounds nuw i8, ptr %.03356, i64 10
  %i.zd = load i8, ptr %i.yx, align 1, !tbaa !36
  %i.ze = zext i8 %i.zd to i16
  %i.zf = add nuw nsw i16 %i.ze, 1
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yw, i64 132
  store i16 %i.zf, ptr %i.zb, align 2, !tbaa !61
  %i.zh = getelementptr inbounds nuw i8, ptr %.03356, i64 11
  %i.zi = load i8, ptr %i.zc, align 2, !tbaa !36
  %i.zj = zext i8 %i.zi to i16
  %i.zk = add nuw nsw i16 %i.zj, 1
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yw, i64 134
  store i16 %i.zk, ptr %i.zg, align 2, !tbaa !61
  %i.zm = getelementptr inbounds nuw i8, ptr %.03356, i64 12
  %i.zn = load i8, ptr %i.zh, align 1, !tbaa !36
  %i.zo = zext i8 %i.zn to i16
  %i.zp = add nuw nsw i16 %i.zo, 1
  store i16 %i.zp, ptr %i.zl, align 2, !tbaa !61
  %i.zq = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.zq, i64 192
  %i.zr = getelementptr inbounds nuw i8, ptr %.03356, i64 13
  %i.zs = load i8, ptr %i.zm, align 4, !tbaa !36
  %i.zt = zext i8 %i.zs to i16
  %i.zu = add nuw nsw i16 %i.zt, 1
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 194
  store i16 %i.zu, ptr %gep.3, align 2, !tbaa !61
  %i.zw = getelementptr inbounds nuw i8, ptr %.03356, i64 14
  %i.zx = load i8, ptr %i.zr, align 1, !tbaa !36
  %i.zy = zext i8 %i.zx to i16
  %i.zz = add nuw nsw i16 %i.zy, 1
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zq, i64 196
  store i16 %i.zz, ptr %i.zv, align 2, !tbaa !61
  %i.aab = getelementptr inbounds nuw i8, ptr %.03356, i64 15
  %i.aac = load i8, ptr %i.zw, align 2, !tbaa !36
  %i.aad = zext i8 %i.aac to i16
  %i.aae = add nuw nsw i16 %i.aad, 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zq, i64 198
  store i16 %i.aae, ptr %i.aaa, align 2, !tbaa !61
  %i.aag = getelementptr inbounds nuw i8, ptr %.03356, i64 16
  %i.aah = load i8, ptr %i.aab, align 1, !tbaa !36
  %i.aai = zext i8 %i.aah to i16
  %i.aaj = add nuw nsw i16 %i.aai, 1
  store i16 %i.aaj, ptr %i.aaf, align 2, !tbaa !61
  %i.aak = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.aak, i64 256
  %i.aal = getelementptr inbounds nuw i8, ptr %.03356, i64 17
  %i.aam = load i8, ptr %i.aag, align 16, !tbaa !36
  %i.aan = zext i8 %i.aam to i16
  %i.aao = add nuw nsw i16 %i.aan, 1
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aak, i64 258
  store i16 %i.aao, ptr %gep.4, align 2, !tbaa !61
  %i.aaq = getelementptr inbounds nuw i8, ptr %.03356, i64 18
  %i.aar = load i8, ptr %i.aal, align 1, !tbaa !36
  %i.aas = zext i8 %i.aar to i16
  %i.aat = add nuw nsw i16 %i.aas, 1
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aak, i64 260
  store i16 %i.aat, ptr %i.aap, align 2, !tbaa !61
  %i.aav = getelementptr inbounds nuw i8, ptr %.03356, i64 19
  %i.aaw = load i8, ptr %i.aaq, align 2, !tbaa !36
  %i.aax = zext i8 %i.aaw to i16
  %i.aay = add nuw nsw i16 %i.aax, 1
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aak, i64 262
  store i16 %i.aay, ptr %i.aau, align 2, !tbaa !61
  %i.aba = getelementptr inbounds nuw i8, ptr %.03356, i64 20
  %i.abb = load i8, ptr %i.aav, align 1, !tbaa !36
  %i.abc = zext i8 %i.abb to i16
  %i.abd = add nuw nsw i16 %i.abc, 1
  store i16 %i.abd, ptr %i.aaz, align 2, !tbaa !61
  %i.abe = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.abe, i64 320
  %i.abf = getelementptr inbounds nuw i8, ptr %.03356, i64 21
  %i.abg = load i8, ptr %i.aba, align 4, !tbaa !36
  %i.abh = zext i8 %i.abg to i16
  %i.abi = add nuw nsw i16 %i.abh, 1
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abe, i64 322
  store i16 %i.abi, ptr %gep.5, align 2, !tbaa !61
  %i.abk = getelementptr inbounds nuw i8, ptr %.03356, i64 22
  %i.abl = load i8, ptr %i.abf, align 1, !tbaa !36
  %i.abm = zext i8 %i.abl to i16
  %i.abn = add nuw nsw i16 %i.abm, 1
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abe, i64 324
  store i16 %i.abn, ptr %i.abj, align 2, !tbaa !61
  %i.abp = getelementptr inbounds nuw i8, ptr %.03356, i64 23
  %i.abq = load i8, ptr %i.abk, align 2, !tbaa !36
  %i.abr = zext i8 %i.abq to i16
  %i.abs = add nuw nsw i16 %i.abr, 1
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abe, i64 326
  store i16 %i.abs, ptr %i.abo, align 2, !tbaa !61
  %i.abu = getelementptr inbounds nuw i8, ptr %.03356, i64 24
  %i.abv = load i8, ptr %i.abp, align 1, !tbaa !36
  %i.abw = zext i8 %i.abv to i16
  %i.abx = add nuw nsw i16 %i.abw, 1
  store i16 %i.abx, ptr %i.abt, align 2, !tbaa !61
  %i.aby = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.aby, i64 384
  %i.abz = getelementptr inbounds nuw i8, ptr %.03356, i64 25
  %i.aca = load i8, ptr %i.abu, align 8, !tbaa !36
  %i.acb = zext i8 %i.aca to i16
  %i.acc = add nuw nsw i16 %i.acb, 1
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aby, i64 386
  store i16 %i.acc, ptr %gep.6, align 2, !tbaa !61
  %i.ace = getelementptr inbounds nuw i8, ptr %.03356, i64 26
  %i.acf = load i8, ptr %i.abz, align 1, !tbaa !36
  %i.acg = zext i8 %i.acf to i16
  %i.ach = add nuw nsw i16 %i.acg, 1
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aby, i64 388
  store i16 %i.ach, ptr %i.acd, align 2, !tbaa !61
  %i.acj = getelementptr inbounds nuw i8, ptr %.03356, i64 27
  %i.ack = load i8, ptr %i.ace, align 2, !tbaa !36
  %i.acl = zext i8 %i.ack to i16
  %i.acm = add nuw nsw i16 %i.acl, 1
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aby, i64 390
  store i16 %i.acm, ptr %i.aci, align 2, !tbaa !61
  %i.aco = getelementptr inbounds nuw i8, ptr %.03356, i64 28
  %i.acp = load i8, ptr %i.acj, align 1, !tbaa !36
  %i.acq = zext i8 %i.acp to i16
  %i.acr = add nuw nsw i16 %i.acq, 1
  store i16 %i.acr, ptr %i.acn, align 2, !tbaa !61
  %i.acs = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep, i64 %i.xg ; 4 uses
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.acs, i64 448
  %i.act = getelementptr inbounds nuw i8, ptr %.03356, i64 29
  %i.acu = load i8, ptr %i.aco, align 4, !tbaa !36
  %i.acv = zext i8 %i.acu to i16
  %i.acw = add nuw nsw i16 %i.acv, 1
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acs, i64 450
  store i16 %i.acw, ptr %gep.7, align 2, !tbaa !61
  %i.acy = getelementptr inbounds nuw i8, ptr %.03356, i64 30
  %i.acz = load i8, ptr %i.act, align 1, !tbaa !36
  %i.ada = zext i8 %i.acz to i16
  %i.adb = add nuw nsw i16 %i.ada, 1
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acs, i64 452
  store i16 %i.adb, ptr %i.acx, align 2, !tbaa !61
  %i.add = getelementptr inbounds nuw i8, ptr %.03356, i64 31
  %i.ade = load i8, ptr %i.acy, align 2, !tbaa !36
  %i.adf = zext i8 %i.ade to i16
  %i.adg = add nuw nsw i16 %i.adf, 1
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acs, i64 454
  store i16 %i.adg, ptr %i.adc, align 2, !tbaa !61
  %i.adi = getelementptr inbounds nuw i8, ptr %.03356, i64 32
  %i.adj = load i8, ptr %i.add, align 1, !tbaa !36
  %i.adk = zext i8 %i.adj to i16
  %i.adl = add nuw nsw i16 %i.adk, 1
  store i16 %i.adl, ptr %i.adh, align 2, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.im, label %.preheader, !llvm.loop !132

bb.im:                                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"any p2 pointer", !8, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!"p1 int", !8, i64 0}
!17 = !{!"short", !4, i64 0}
!18 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!19 = !{!"p1 omnipotent char", !8, i64 0}
!20 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!21 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_post_controller", !8, i64 0}
!24 = !{!"p1 _ZTS21jpeg_input_controller", !8, i64 0}
!25 = !{!"p1 _ZTS18jpeg_marker_reader", !8, i64 0}
!26 = !{!"p1 _ZTS20jpeg_entropy_decoder", !8, i64 0}
!27 = !{!"p1 _ZTS16jpeg_inverse_dct", !8, i64 0}
!28 = !{!"p1 _ZTS14jpeg_upsampler", !8, i64 0}
!29 = !{!"p1 _ZTS22jpeg_color_deconverter", !8, i64 0}
!30 = !{!"p1 _ZTS20jpeg_color_quantizer", !8, i64 0}
!31 = !{!"jpeg_decompress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !15, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !16, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !17, i64 380, !17, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !18, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !19, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !20, i64 544, !21, i64 552, !22, i64 560, !23, i64 568, !24, i64 576, !25, i64 584, !26, i64 592, !27, i64 600, !28, i64 608, !29, i64 616, !30, i64 624}
!32 = !{!31, !9, i64 0}
!33 = !{!"long", !4, i64 0}
!34 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !33, i64 128, !15, i64 136, !5, i64 144, !15, i64 152, !5, i64 160, !5, i64 164}
!35 = !{!34, !5, i64 40}
!36 = !{!4, !4, i64 0}
!37 = !{!34, !8, i64 0}
!38 = !{!31, !10, i64 8}
!39 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !33, i64 88, !33, i64 96}
!40 = !{!39, !8, i64 0}
!41 = !{!31, !30, i64 624}
!42 = !{!"jpeg_color_quantizer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!43 = !{!"p2 short", !14, i64 0}
!44 = !{!"p1 short", !8, i64 0}
!45 = !{!"", !42, i64 0, !15, i64 40, !5, i64 48, !43, i64 56, !5, i64 64, !44, i64 72, !5, i64 80, !16, i64 88}
!46 = !{!45, !44, i64 72}
!47 = !{!45, !16, i64 88}
!48 = !{!31, !5, i64 64}
!49 = !{!45, !43, i64 56}
!50 = !{!39, !8, i64 8}
!51 = !{!44, !44, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!45, !5, i64 64}
!54 = !{!45, !15, i64 40}
!55 = !{!45, !5, i64 48}
!56 = !{!31, !5, i64 112}
!57 = !{!31, !5, i64 136}
!58 = !{!31, !5, i64 156}
!59 = !{!5, !5, i64 0}
!60 = !{!19, !19, i64 0}
!61 = !{!17, !17, i64 0}
!62 = !{!31, !15, i64 160}
!63 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !33, i64 24, !33, i64 32}
!64 = !{!63, !5, i64 16}
!65 = !{!63, !5, i64 20}
!66 = !{!63, !33, i64 32}
!67 = !{!63, !33, i64 24}
!68 = !{!63, !5, i64 4}
!69 = !{!63, !5, i64 12}
!70 = !{!63, !5, i64 0}
!71 = !{!63, !5, i64 8}
!72 = distinct !{!72, !52}
!73 = !{!31, !5, i64 296}
!74 = !{!45, !8, i64 0}
!75 = !{!45, !8, i64 32}
!76 = !{!31, !5, i64 144}
!77 = !{!31, !20, i64 544}
!78 = !{!"jpeg_decomp_master", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 72, !5, i64 112, !5, i64 116, !18, i64 120, !5, i64 128, !5, i64 132, !5, i64 136}
!79 = !{!78, !5, i64 20}
!80 = !{!31, !5, i64 132}
!81 = !{!31, !5, i64 120}
!82 = !{!39, !8, i64 16}
!83 = !{!45, !8, i64 8}
!84 = !{!45, !8, i64 24}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, !52}
!87 = distinct !{!87, !52}
!88 = distinct !{null}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !97}
!92 = distinct !{!92, !52}
!93 = distinct !{!93, !52}
!94 = distinct !{!94, !52}
!95 = distinct !{!95, !52}
!96 = distinct !{!96, !52}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!34, !8, i64 8}
!99 = distinct !{!99, !52}
!100 = distinct !{!100, !52}
!101 = !{!31, !19, i64 424}
!102 = !{!45, !5, i64 80}
!103 = distinct !{!103, !52}
!104 = distinct !{!104, !52}
!105 = distinct !{!105, !52}
!106 = distinct !{!106, !52}
!107 = distinct !{!107, !52}
!108 = distinct !{!108, !52}
!109 = distinct !{!109, !52}
!110 = distinct !{!110, !52}
!111 = distinct !{!111, !52}
!112 = distinct !{!112, !52}
!113 = distinct !{!113, !52}
!114 = distinct !{!114, !52}
!115 = distinct !{!115, !52}
!116 = distinct !{!116, !52}
!117 = distinct !{!117, !52}
!118 = distinct !{!118, !52}
!119 = distinct !{!119, !52}
!120 = distinct !{!120, !52}
!121 = distinct !{!121, !52}
!122 = distinct !{!122, !52}
!123 = distinct !{!123, !52, !127, !128}
!124 = distinct !{!124, !52, !128, !127}
!125 = distinct !{!125, !52}
!126 = distinct !{!126, !52}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = distinct !{!129, !52}
!130 = distinct !{!130, !52}
!131 = distinct !{!131, !52}
!132 = distinct !{!132, !52}
!133 = !{!33, !33, i64 0}
end_hunk_0
