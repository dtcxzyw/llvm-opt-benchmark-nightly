Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12enc?download=true
inline.NumInlined: 182
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mpeg12_encode_mb:bb.a
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 2828 ; 2 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !79
  %i.vw = ashr i32 %i.vv, 1
  %i.vx = sub nsw i32 %i.vt, %i.vw
  %i.vy = load i32, ptr %i.tl, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.vx, i32 noundef %i.vy)
  %i.vz = load i32, ptr %i.vm, align 8, !tbaa !79
  store i32 %i.vz, ptr %i.vo, align 8, !tbaa !79
  %i.wa = load i32, ptr %i.vs, align 4, !tbaa !79
  %i.wb = shl nsw i32 %i.wa, 1
  store i32 %i.wb, ptr %i.vu, align 4, !tbaa !79
  %i.wc = load ptr, ptr %i.sp, align 16, !tbaa !54 ; 2 uses
  %i.wd = load ptr, ptr %i.sr, align 8, !tbaa !95
  %i.we = ptrtoint ptr %i.wc to i64
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = sub i64 %i.we, %i.wf
  %i.wh = load i32, ptr %i.sw, align 4, !tbaa !51 ; 2 uses
  %.tr.i.i93 = trunc i64 %i.wg to i32
  %i.wi = shl i32 %.tr.i.i93, 3
  %reass.sub.i.i94 = sub i32 %i.wi, %i.wh
  %i.wj = add i32 %reass.sub.i.i94, 32            ; 2 uses
  %i.wk = load i32, ptr %i.ta, align 16, !tbaa !191
  store i32 %i.wj, ptr %i.ta, align 16, !tbaa !191
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 6332 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !194
  %i.wn = sub i32 %i.wm, %i.wk
  %i.wo = add i32 %i.wn, %i.wj
  store i32 %i.wo, ptr %i.wl, align 4, !tbaa !194
  br label %bb.dd

bb.dd:                                            ; preds = %put_bits.exit92.1, %bb.co
  %i.wp = phi ptr [ %i.wc, %put_bits.exit92.1 ], [ %i.ru, %bb.co ] ; 2 uses
  %i.wq = phi i32 [ %i.wh, %put_bits.exit92.1 ], [ %i.rv, %bb.co ] ; 5 uses
  br i1 %i.aj, label %bb.de, label %bb.fe

bb.de:                                            ; preds = %bb.dd
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.ws = zext nneg i32 %op.rdx401 to i64
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg12_mbPatTable, i64 %i.ws ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 1
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !9
  %i.ww = zext i8 %i.wv to i32                    ; 5 uses
  %i.wx = load i8, ptr %i.wt, align 2, !tbaa !9
  %i.wy = zext i8 %i.wx to i32                    ; 3 uses
  %i.wz = load i32, ptr %i.wr, align 16, !tbaa !52 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.xb = icmp sgt i32 %i.wq, %i.ww
  br i1 %i.xb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.xc = shl i32 %i.wz, %i.ww
  %i.xd = or i32 %i.xc, %i.wy
  %i.xe = sub nuw nsw i32 %i.wq, %i.ww
  br label %put_bits.exit98

bb.dg:                                            ; preds = %bb.de
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !53
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = ptrtoint ptr %i.wp to i64
  %i.xj = sub i64 %i.xh, %i.xi
  %i.xk = icmp ugt i64 %i.xj, 3
  br i1 %i.xk, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.xm = shl i32 %i.wz, %i.wq
  %i.xn = sub nsw i32 %i.ww, %i.wq
  %i.xo = lshr i32 %i.wy, %i.xn
  %i.xp = or i32 %i.xo, %i.xm
  %i.xq = tail call i32 @llvm.bswap.i32(i32 %i.xp)
  store i32 %i.xq, ptr %i.wp, align 1, !tbaa !9
  %i.xr = load ptr, ptr %i.xl, align 16, !tbaa !54
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  store ptr %i.xs, ptr %i.xl, align 16, !tbaa !54
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %reass.sub274 = sub i32 %i.wq, %i.ww
  %i.xt = add i32 %reass.sub274, 32
  br label %put_bits.exit98

put_bits.exit98:                                  ; preds = %bb.df, %bb.dj
  %.026.i.i96 = phi i32 [ %i.xd, %bb.df ], [ %i.wy, %bb.dj ]
  %.0.i.i97 = phi i32 [ %i.xe, %bb.df ], [ %i.xt, %bb.dj ]
  store i32 %.026.i.i96, ptr %i.wr, align 16, !tbaa !52
  store i32 %.0.i.i97, ptr %i.xa, align 4, !tbaa !51
  br label %bb.fe

bb.dk:                                            ; preds = %bb.bz
  br i1 %i.nw, label %bb.dl, label %bb.dz

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.aj, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !190
  %.not341.i29 = icmp eq i32 %i.xv, 0
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !187 ; 3 uses
  br i1 %.not341.i29, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xy = icmp eq i32 %i.xx, 1
  br i1 %i.xy, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 3, i32 noundef 1, i32 noundef 0)
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.xz = sub nsw i32 8, %i.xx
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.xz, i32 noundef 2, i32 noundef 1, i32 noundef 0)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.yc = load i32, ptr %i.yb, align 8, !tbaa !55
  tail call fastcc void @put_bits(ptr noundef nonnull %i.ya, i32 noundef 5, i32 noundef %i.yc)
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dm
  %i.yd = sub nsw i32 5, %i.xx
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.yd, i32 noundef 3, i32 noundef 1, i32 noundef 0)
  br label %bb.dv

bb.ds:                                            ; preds = %bb.dl
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !187
  %i.yh = sub nsw i32 5, %i.yg
  tail call fastcc void @put_bits(ptr noundef nonnull %i.ye, i32 noundef %i.yh, i32 noundef 2)
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 3824
  %i.yj = load i32, ptr %i.yi, align 16, !tbaa !98
  %.not340.i26 = icmp eq i32 %i.yj, 0
  br i1 %.not340.i26, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  tail call fastcc void @put_bits(ptr noundef nonnull %i.ye, i32 noundef 2, i32 noundef 2)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !190
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !55
  %i.yo = sub nsw i32 %i.yn, %i.yl
  store i32 %i.yo, ptr %i.ym, align 8, !tbaa !55
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dr, %bb.dq
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.yq = load ptr, ptr %i.yp, align 16, !tbaa !54
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !95
  %i.yt = ptrtoint ptr %i.yq to i64
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = sub i64 %i.yt, %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !51
  %.tr.i.i99 = trunc i64 %i.yv to i32
  %i.yy = shl i32 %.tr.i.i99, 3
  %reass.sub.i.i100 = sub i32 %i.yy, %i.yx
  %i.yz = add i32 %reass.sub.i.i100, 32           ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 16, !tbaa !191
  store i32 %i.yz, ptr %i.za, align 16, !tbaa !191
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !192
  %i.ze = sub i32 %i.zd, %i.zb
  %i.zf = add i32 %i.ze, %i.yz
  store i32 %i.zf, ptr %i.zc, align 4, !tbaa !192
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !187 ; 2 uses
  %i.zi = and i32 %i.zh, 1
  %.not342.i27 = icmp eq i32 %i.zi, 0
  br i1 %.not342.i27, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 16, !tbaa !79
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 16, !tbaa !79
  %i.zn = sub nsw i32 %i.zk, %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.zn, i32 noundef %i.zp)
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 2740
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !79
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !79
  %i.zu = sub nsw i32 %i.zr, %i.zt
  %i.zv = load i32, ptr %i.zo, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.zu, i32 noundef %i.zv)
  %4 = load <1 x i64>, ptr %i.zj, align 16, !tbaa !79
  %5 = shufflevector <1 x i64> %4, <1 x i64> poison, <2 x i32> zeroinitializer
  store <2 x i64> %5, ptr %i.zl, align 16, !tbaa !79
  %.pre287 = load i32, ptr %i.zg, align 8, !tbaa !187
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.zw = phi i32 [ %.pre287, %bb.dw ], [ %i.zh, %bb.dv ]
  %i.zx = and i32 %i.zw, 2
  %.not343.i28 = icmp eq i32 %i.zx, 0
  br i1 %.not343.i28, label %.loopexit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 16, !tbaa !79
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 2832 ; 2 uses
  %i.aab = load i32, ptr %i.aaa, align 16, !tbaa !79
  %i.aac = sub nsw i32 %i.zz, %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !97
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.aac, i32 noundef %i.aae)
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 2772
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !79
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !79
  %i.aaj = sub nsw i32 %i.aag, %i.aai
  %i.aak = load i32, ptr %i.aad, align 4, !tbaa !97
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.aaj, i32 noundef %i.aak)
  %6 = load <1 x i64>, ptr %i.zy, align 16, !tbaa !79
  %7 = shufflevector <1 x i64> %6, <1 x i64> poison, <2 x i32> zeroinitializer
  store <2 x i64> %7, ptr %i.aaa, align 16, !tbaa !79
  br label %.loopexit

bb.dz:                                            ; preds = %bb.dk
  br i1 %i.aj, label %bb.ea, label %bb.eg

bb.ea:                                            ; preds = %bb.dz
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !190
  %.not337.i25 = icmp eq i32 %i.aam, 0
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !187 ; 3 uses
  br i1 %.not337.i25, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aap = icmp eq i32 %i.aao, 1
  br i1 %i.aap, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 3, i32 noundef 1, i32 noundef 1)
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.aaq = sub nsw i32 8, %i.aao
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.aaq, i32 noundef 2, i32 noundef 1, i32 noundef 1)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !55
  tail call fastcc void @put_bits(ptr noundef nonnull %i.aar, i32 noundef 5, i32 noundef %i.aat)
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ea
  %i.aau = sub nsw i32 5, %i.aao
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.aau, i32 noundef 3, i32 noundef 1, i32 noundef 1)
  br label %bb.eh

bb.eg:                                            ; preds = %bb.dz
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !187
  %i.aay = sub nsw i32 5, %i.aax
  tail call fastcc void @put_bits(ptr noundef nonnull %i.aav, i32 noundef %i.aay, i32 noundef 2)
  tail call fastcc void @put_bits(ptr noundef nonnull %i.aav, i32 noundef 2, i32 noundef 1)
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !190
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !55
  %i.abd = sub nsw i32 %i.abc, %i.aba
  store i32 %i.abd, ptr %i.abb, align 8, !tbaa !55
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 12 uses
  %i.abf = load ptr, ptr %i.abe, align 16, !tbaa !54 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !95
  %i.abi = ptrtoint ptr %i.abf to i64             ; 2 uses
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 8 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !51 ; 5 uses
  %.tr.i.i101 = trunc i64 %i.abk to i32
  %i.abn = shl i32 %.tr.i.i101, 3
  %reass.sub.i.i102 = sub i32 %i.abn, %i.abm
  %i.abo = add i32 %reass.sub.i.i102, 32          ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 16, !tbaa !191
  store i32 %i.abo, ptr %i.abp, align 16, !tbaa !191
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !192
  %i.abt = sub i32 %i.abs, %i.abq
  %i.abu = add i32 %i.abt, %i.abo
  store i32 %i.abu, ptr %i.abr, align 4, !tbaa !192
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !187 ; 2 uses
  %i.abx = and i32 %i.abw, 1
  %.not338.i21 = icmp eq i32 %i.abx, 0
  br i1 %.not338.i21, label %.loopexit255, label %.preheader254

.preheader254:                                    ; preds = %bb.eh
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 4 uses
  %i.ace = load i32, ptr %i.abz, align 16, !tbaa !79 ; 4 uses
  %i.acf = load i32, ptr %i.aby, align 16, !tbaa !52 ; 2 uses
  %i.acg = icmp sgt i32 %i.abm, 1
  br i1 %i.acg, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.preheader254
  %i.ach = shl i32 %i.acf, 1
  %i.aci = or i32 %i.ach, %i.ace
  br label %put_bits.exit106

bb.ej:                                            ; preds = %.preheader254
  %i.acj = load ptr, ptr %i.aca, align 8, !tbaa !53
  %i.ack = ptrtoint ptr %i.acj to i64
  %i.acl = sub i64 %i.ack, %i.abi
  %i.acm = icmp ugt i64 %i.acl, 3
  br i1 %i.acm, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.acn = shl i32 %i.acf, %i.abm
  %i.aco = sub nsw i32 1, %i.abm
  %i.acp = lshr i32 %i.ace, %i.aco
  %i.acq = or i32 %i.acp, %i.acn
  %i.acr = tail call i32 @llvm.bswap.i32(i32 %i.acq)
  store i32 %i.acr, ptr %i.abf, align 1, !tbaa !9
  %i.acs = load ptr, ptr %i.abe, align 16, !tbaa !54
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  store ptr %i.act, ptr %i.abe, align 16, !tbaa !54
  br label %put_bits.exit106

bb.el:                                            ; preds = %bb.ej
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit106

put_bits.exit106:                                 ; preds = %bb.ek, %bb.el, %bb.ei
  %.sink374 = phi i32 [ -1, %bb.ei ], [ 31, %bb.el ], [ 31, %bb.ek ]
  %.026.i.i104 = phi i32 [ %i.aci, %bb.ei ], [ %i.ace, %bb.el ], [ %i.ace, %bb.ek ]
  %i.acu = add nsw i32 %i.abm, %.sink374
  store i32 %.026.i.i104, ptr %i.aby, align 16, !tbaa !52
  store i32 %i.acu, ptr %i.abl, align 4, !tbaa !51
  %i.acv = load i32, ptr %i.acb, align 16, !tbaa !79
  %i.acw = load i32, ptr %i.acc, align 16, !tbaa !79
  %i.acx = sub nsw i32 %i.acv, %i.acw
  %i.acy = load i32, ptr %i.acd, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.acx, i32 noundef %i.acy)
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !79
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 2820 ; 2 uses
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !79
  %i.add = ashr i32 %i.adc, 1
  %i.ade = sub nsw i32 %i.ada, %i.add
  %i.adf = load i32, ptr %i.acd, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.ade, i32 noundef %i.adf)
  %i.adg = load i32, ptr %i.acb, align 16, !tbaa !79
  store i32 %i.adg, ptr %i.acc, align 16, !tbaa !79
  %i.adh = load i32, ptr %i.acz, align 4, !tbaa !79
  %i.adi = shl nsw i32 %i.adh, 1
  store i32 %i.adi, ptr %i.adb, align 4, !tbaa !79
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 2804
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !79 ; 4 uses
  %i.adl = load i32, ptr %i.aby, align 16, !tbaa !52 ; 2 uses
  %i.adm = load i32, ptr %i.abl, align 4, !tbaa !51 ; 4 uses
  %i.adn = icmp sgt i32 %i.adm, 1
  br i1 %i.adn, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %put_bits.exit106
  %i.ado = load ptr, ptr %i.aca, align 8, !tbaa !53
  %i.adp = load ptr, ptr %i.abe, align 16, !tbaa !54 ; 2 uses
  %i.adq = ptrtoint ptr %i.ado to i64
  %i.adr = ptrtoint ptr %i.adp to i64
  %i.ads = sub i64 %i.adq, %i.adr
  %i.adt = icmp ugt i64 %i.ads, 3
  br i1 %i.adt, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit106.1

bb.eo:                                            ; preds = %bb.em
  %i.adu = shl i32 %i.adl, %i.adm
  %i.adv = sub nsw i32 1, %i.adm
  %i.adw = lshr i32 %i.adk, %i.adv
  %i.adx = or i32 %i.adw, %i.adu
  %i.ady = tail call i32 @llvm.bswap.i32(i32 %i.adx)
  store i32 %i.ady, ptr %i.adp, align 1, !tbaa !9
  %i.adz = load ptr, ptr %i.abe, align 16, !tbaa !54
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 4
  store ptr %i.aea, ptr %i.abe, align 16, !tbaa !54
  br label %put_bits.exit106.1

bb.ep:                                            ; preds = %put_bits.exit106
  %i.aeb = shl i32 %i.adl, 1
  %i.aec = or i32 %i.aeb, %i.adk
  br label %put_bits.exit106.1

put_bits.exit106.1:                               ; preds = %bb.en, %bb.eo, %bb.ep
  %.sink375 = phi i32 [ -1, %bb.ep ], [ 31, %bb.eo ], [ 31, %bb.en ]
  %.026.i.i104.1 = phi i32 [ %i.aec, %bb.ep ], [ %i.adk, %bb.eo ], [ %i.adk, %bb.en ]
  %i.aed = add nsw i32 %i.adm, %.sink375
  store i32 %.026.i.i104.1, ptr %i.aby, align 16, !tbaa !52
  store i32 %i.aed, ptr %i.abl, align 4, !tbaa !51
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 2744 ; 2 uses
  %i.aef = load i32, ptr %i.aee, align 8, !tbaa !79
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 2 uses
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !79
  %i.aei = sub nsw i32 %i.aef, %i.aeh
  %i.aej = load i32, ptr %i.acd, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.aei, i32 noundef %i.aej)
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !79
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 2828 ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !79
  %i.aeo = ashr i32 %i.aen, 1
end_hunk_0
begin_hunk_1_@mpeg12_encode_mb:bb.a
  %i.bif = zext i8 %i.bie to i32                  ; 5 uses
  %i.big = load i8, ptr %i.bic, align 2, !tbaa !9
  %i.bih = zext i8 %i.big to i32                  ; 3 uses
  %i.bii = load i32, ptr %i.bhz, align 16, !tbaa !52 ; 2 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 2 uses
  %i.bik = icmp sgt i32 %i.bhy, %i.bif
  br i1 %i.bik, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.bil = shl i32 %i.bii, %i.bif
  %i.bim = or i32 %i.bil, %i.bih
  %i.bin = sub nuw nsw i32 %i.bhy, %i.bif
  br label %put_bits.exit190

bb.ju:                                            ; preds = %bb.js
  %i.bio = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !53
  %i.biq = ptrtoint ptr %i.bip to i64
  %i.bir = ptrtoint ptr %i.bhx to i64
  %i.bis = sub i64 %i.biq, %i.bir
  %i.bit = icmp ugt i64 %i.bis, 3
  br i1 %i.bit, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.biv = shl i32 %i.bii, %i.bhy
  %i.biw = sub nsw i32 %i.bif, %i.bhy
  %i.bix = lshr i32 %i.bih, %i.biw
  %i.biy = or i32 %i.bix, %i.biv
  %i.biz = tail call i32 @llvm.bswap.i32(i32 %i.biy)
  store i32 %i.biz, ptr %i.bhx, align 1, !tbaa !9
  %i.bja = load ptr, ptr %i.biu, align 16, !tbaa !54
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 4
  store ptr %i.bjb, ptr %i.biu, align 16, !tbaa !54
  br label %bb.jx

bb.jw:                                            ; preds = %bb.ju
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %reass.sub272 = sub i32 %i.bhy, %i.bif
  %i.bjc = add i32 %reass.sub272, 32
  br label %put_bits.exit190

put_bits.exit190:                                 ; preds = %bb.jt, %bb.jx
  %.026.i.i188 = phi i32 [ %i.bim, %bb.jt ], [ %i.bih, %bb.jx ] ; 3 uses
  %.0.i.i189 = phi i32 [ %i.bin, %bb.jt ], [ %i.bjc, %bb.jx ] ; 5 uses
  store i32 %.026.i.i188, ptr %i.bhz, align 16, !tbaa !52
  store i32 %.0.i.i189, ptr %i.bij, align 4, !tbaa !51
  %i.bjd = icmp sgt i32 %.0.i.i189, 2
  br i1 %i.bjd, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %put_bits.exit190
  %i.bje = shl i32 %.026.i.i188, 2
  %i.bjf = or disjoint i32 %i.bje, %i.alw
  br label %put_sbits.exit

bb.jz:                                            ; preds = %put_bits.exit190
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.bjh = load ptr, ptr %i.bjg, align 8, !tbaa !53
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.bjj = load ptr, ptr %i.bji, align 16, !tbaa !54 ; 2 uses
  %i.bjk = ptrtoint ptr %i.bjh to i64
  %i.bjl = ptrtoint ptr %i.bjj to i64
  %i.bjm = sub i64 %i.bjk, %i.bjl
  %i.bjn = icmp ugt i64 %i.bjm, 3
  br i1 %i.bjn, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.bjo = shl i32 %.026.i.i188, %.0.i.i189
  %i.bjp = sub nsw i32 2, %.0.i.i189
  %i.bjq = lshr i32 %i.alw, %i.bjp
  %i.bjr = or i32 %i.bjq, %i.bjo
  %i.bjs = tail call i32 @llvm.bswap.i32(i32 %i.bjr)
  store i32 %i.bjs, ptr %i.bjj, align 1, !tbaa !9
  %i.bjt = load ptr, ptr %i.bji, align 16, !tbaa !54
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 4
  store ptr %i.bju, ptr %i.bji, align 16, !tbaa !54
  br label %put_sbits.exit

bb.kb:                                            ; preds = %bb.jz
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_sbits.exit

put_sbits.exit:                                   ; preds = %bb.ka, %bb.kb, %bb.jy
  %.sink395 = phi i32 [ -2, %bb.jy ], [ 30, %bb.kb ], [ 30, %bb.ka ]
  %.026.i.i.i193 = phi i32 [ %i.bjf, %bb.jy ], [ %i.alw, %bb.kb ], [ %i.alw, %bb.ka ]
  %i.bjv = add nsw i32 %.0.i.i189, %.sink395
  store i32 %.026.i.i.i193, ptr %i.bhz, align 16, !tbaa !52
  store i32 %i.bjv, ptr %i.bij, align 4, !tbaa !51
  br label %bb.ma

bb.kc:                                            ; preds = %bb.in
  br i1 %i.aze, label %bb.kd, label %bb.kr

bb.kd:                                            ; preds = %bb.kc
  br i1 %i.alx, label %bb.ke, label %bb.kk

bb.ke:                                            ; preds = %bb.kd
  %i.bjw = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.bjx = load i32, ptr %i.bjw, align 4, !tbaa !190
  %.not341.i = icmp eq i32 %i.bjx, 0
  %i.bjy = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.bjz = load i32, ptr %i.bjy, align 8, !tbaa !187 ; 3 uses
  br i1 %.not341.i, label %bb.kj, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.bka = icmp eq i32 %i.bjz, 1
  br i1 %i.bka, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 3, i32 noundef 1, i32 noundef 0)
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kf
  %i.bkb = sub nsw i32 8, %i.bjz
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.bkb, i32 noundef 2, i32 noundef 1, i32 noundef 0)
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %i.bkc = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.bkd = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bke = load i32, ptr %i.bkd, align 8, !tbaa !55
  tail call fastcc void @put_bits(ptr noundef nonnull %i.bkc, i32 noundef 5, i32 noundef %i.bke)
  br label %bb.kn

bb.kj:                                            ; preds = %bb.ke
  %i.bkf = sub nsw i32 5, %i.bjz
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.bkf, i32 noundef 3, i32 noundef 1, i32 noundef 0)
  br label %bb.kn

bb.kk:                                            ; preds = %bb.kd
  %i.bkg = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.bki = load i32, ptr %i.bkh, align 8, !tbaa !187
  %i.bkj = sub nsw i32 5, %i.bki
  tail call fastcc void @put_bits(ptr noundef nonnull %i.bkg, i32 noundef %i.bkj, i32 noundef 2)
  %i.bkk = getelementptr inbounds nuw i8, ptr %0, i64 3824
  %i.bkl = load i32, ptr %i.bkk, align 16, !tbaa !98
  %.not340.i = icmp eq i32 %i.bkl, 0
  br i1 %.not340.i, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  tail call fastcc void @put_bits(ptr noundef nonnull %i.bkg, i32 noundef 2, i32 noundef 2)
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.bkm = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.bkn = load i32, ptr %i.bkm, align 4, !tbaa !190
  %i.bko = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.bkp = load i32, ptr %i.bko, align 8, !tbaa !55
  %i.bkq = sub nsw i32 %i.bkp, %i.bkn
  store i32 %i.bkq, ptr %i.bko, align 8, !tbaa !55
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kj, %bb.ki
  %i.bkr = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.bks = load ptr, ptr %i.bkr, align 16, !tbaa !54
  %i.bkt = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !95
  %i.bkv = ptrtoint ptr %i.bks to i64
  %i.bkw = ptrtoint ptr %i.bku to i64
  %i.bkx = sub i64 %i.bkv, %i.bkw
  %i.bky = getelementptr inbounds nuw i8, ptr %0, i64 4388
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !51
  %.tr.i.i195 = trunc i64 %i.bkx to i32
  %i.bla = shl i32 %.tr.i.i195, 3
  %reass.sub.i.i196 = sub i32 %i.bla, %i.bkz
  %i.blb = add i32 %reass.sub.i.i196, 32          ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.bld = load i32, ptr %i.blc, align 16, !tbaa !191
  store i32 %i.blb, ptr %i.blc, align 16, !tbaa !191
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.blf = load i32, ptr %i.ble, align 4, !tbaa !192
  %i.blg = sub i32 %i.blf, %i.bld
  %i.blh = add i32 %i.blg, %i.blb
  store i32 %i.blh, ptr %i.ble, align 4, !tbaa !192
  %i.bli = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.blj = load i32, ptr %i.bli, align 8, !tbaa !187 ; 2 uses
  %i.blk = and i32 %i.blj, 1
  %.not342.i = icmp eq i32 %i.blk, 0
  br i1 %.not342.i, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 2 uses
  %i.blm = load i32, ptr %i.bll, align 16, !tbaa !79
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.blo = load i32, ptr %i.bln, align 16, !tbaa !79
  %i.blp = sub nsw i32 %i.blm, %i.blo
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 2 uses
  %i.blr = load i32, ptr %i.blq, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.blp, i32 noundef %i.blr)
  %i.bls = getelementptr inbounds nuw i8, ptr %0, i64 2740
  %i.blt = load i32, ptr %i.bls, align 4, !tbaa !79
  %i.blu = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !79
  %i.blw = sub nsw i32 %i.blt, %i.blv
  %i.blx = load i32, ptr %i.blq, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.blw, i32 noundef %i.blx)
  %8 = load <1 x i64>, ptr %i.bll, align 16, !tbaa !79
  %9 = shufflevector <1 x i64> %8, <1 x i64> poison, <2 x i32> zeroinitializer
  store <2 x i64> %9, ptr %i.bln, align 16, !tbaa !79
  %.pre285 = load i32, ptr %i.bli, align 8, !tbaa !187
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  %i.bly = phi i32 [ %.pre285, %bb.ko ], [ %i.blj, %bb.kn ]
  %i.blz = and i32 %i.bly, 2
  %.not343.i = icmp eq i32 %i.blz, 0
  br i1 %.not343.i, label %.loopexit257, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.bma = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 2 uses
  %i.bmb = load i32, ptr %i.bma, align 16, !tbaa !79
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 2832 ; 2 uses
  %i.bmd = load i32, ptr %i.bmc, align 16, !tbaa !79
  %i.bme = sub nsw i32 %i.bmb, %i.bmd
  %i.bmf = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 2 uses
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !97
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.bme, i32 noundef %i.bmg)
  %i.bmh = getelementptr inbounds nuw i8, ptr %0, i64 2772
  %i.bmi = load i32, ptr %i.bmh, align 4, !tbaa !79
  %i.bmj = getelementptr inbounds nuw i8, ptr %0, i64 2836
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !79
  %i.bml = sub nsw i32 %i.bmi, %i.bmk
  %i.bmm = load i32, ptr %i.bmf, align 4, !tbaa !97
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.bml, i32 noundef %i.bmm)
  %10 = load <1 x i64>, ptr %i.bma, align 16, !tbaa !79
  %11 = shufflevector <1 x i64> %10, <1 x i64> poison, <2 x i32> zeroinitializer
  store <2 x i64> %11, ptr %i.bmc, align 16, !tbaa !79
  br label %.loopexit257

bb.kr:                                            ; preds = %bb.kc
  br i1 %i.alx, label %bb.ks, label %bb.ky

bb.ks:                                            ; preds = %bb.kr
  %i.bmn = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !190
  %.not337.i = icmp eq i32 %i.bmo, 0
  %i.bmp = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.bmq = load i32, ptr %i.bmp, align 8, !tbaa !187 ; 3 uses
  br i1 %.not337.i, label %bb.kx, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bmr = icmp eq i32 %i.bmq, 1
  br i1 %i.bmr, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 3, i32 noundef 1, i32 noundef 1)
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kt
  %i.bms = sub nsw i32 8, %i.bmq
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.bms, i32 noundef 2, i32 noundef 1, i32 noundef 1)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kv, %bb.ku
  %i.bmt = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.bmu = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bmv = load i32, ptr %i.bmu, align 8, !tbaa !55
  tail call fastcc void @put_bits(ptr noundef nonnull %i.bmt, i32 noundef 5, i32 noundef %i.bmv)
  br label %bb.kz

bb.kx:                                            ; preds = %bb.ks
  %i.bmw = sub nsw i32 5, %i.bmq
  tail call fastcc void @put_mb_modes(ptr noundef nonnull %0, i32 noundef %i.bmw, i32 noundef 3, i32 noundef 1, i32 noundef 1)
  br label %bb.kz

bb.ky:                                            ; preds = %bb.kr
  %i.bmx = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.bmz = load i32, ptr %i.bmy, align 8, !tbaa !187
  %i.bna = sub nsw i32 5, %i.bmz
  tail call fastcc void @put_bits(ptr noundef nonnull %i.bmx, i32 noundef %i.bna, i32 noundef 2)
  tail call fastcc void @put_bits(ptr noundef nonnull %i.bmx, i32 noundef 2, i32 noundef 1)
  %i.bnb = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.bnc = load i32, ptr %i.bnb, align 4, !tbaa !190
  %i.bnd = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.bne = load i32, ptr %i.bnd, align 8, !tbaa !55
  %i.bnf = sub nsw i32 %i.bne, %i.bnc
  store i32 %i.bnf, ptr %i.bnd, align 8, !tbaa !55
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx, %bb.kw
  %i.bng = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 12 uses
  %i.bnh = load ptr, ptr %i.bng, align 16, !tbaa !54 ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !95
  %i.bnk = ptrtoint ptr %i.bnh to i64             ; 2 uses
  %i.bnl = ptrtoint ptr %i.bnj to i64
  %i.bnm = sub i64 %i.bnk, %i.bnl
  %i.bnn = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 8 uses
  %i.bno = load i32, ptr %i.bnn, align 4, !tbaa !51 ; 5 uses
  %.tr.i.i197 = trunc i64 %i.bnm to i32
  %i.bnp = shl i32 %.tr.i.i197, 3
  %reass.sub.i.i198 = sub i32 %i.bnp, %i.bno
  %i.bnq = add i32 %reass.sub.i.i198, 32          ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %0, i64 6352 ; 2 uses
  %i.bns = load i32, ptr %i.bnr, align 16, !tbaa !191
  store i32 %i.bnq, ptr %i.bnr, align 16, !tbaa !191
  %i.bnt = getelementptr inbounds nuw i8, ptr %0, i64 6348 ; 2 uses
  %i.bnu = load i32, ptr %i.bnt, align 4, !tbaa !192
  %i.bnv = sub i32 %i.bnu, %i.bns
  %i.bnw = add i32 %i.bnv, %i.bnq
  store i32 %i.bnw, ptr %i.bnt, align 4, !tbaa !192
  %i.bnx = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.bny = load i32, ptr %i.bnx, align 8, !tbaa !187 ; 2 uses
  %i.bnz = and i32 %i.bny, 1
  %.not338.i = icmp eq i32 %i.bnz, 0
  br i1 %.not338.i, label %.loopexit259, label %.preheader258

.preheader258:                                    ; preds = %bb.kz
  %i.boa = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 4 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.boc = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 2 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 4 uses
  %i.bog = load i32, ptr %i.bob, align 16, !tbaa !79 ; 4 uses
  %i.boh = load i32, ptr %i.boa, align 16, !tbaa !52 ; 2 uses
  %i.boi = icmp sgt i32 %i.bno, 1
  br i1 %i.boi, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %.preheader258
  %i.boj = shl i32 %i.boh, 1
  %i.bok = or i32 %i.boj, %i.bog
  br label %put_bits.exit202

bb.lb:                                            ; preds = %.preheader258
  %i.bol = load ptr, ptr %i.boc, align 8, !tbaa !53
  %i.bom = ptrtoint ptr %i.bol to i64
  %i.bon = sub i64 %i.bom, %i.bnk
  %i.boo = icmp ugt i64 %i.bon, 3
  br i1 %i.boo, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.bop = shl i32 %i.boh, %i.bno
  %i.boq = sub nsw i32 1, %i.bno
  %i.bor = lshr i32 %i.bog, %i.boq
  %i.bos = or i32 %i.bor, %i.bop
  %i.bot = tail call i32 @llvm.bswap.i32(i32 %i.bos)
  store i32 %i.bot, ptr %i.bnh, align 1, !tbaa !9
  %i.bou = load ptr, ptr %i.bng, align 16, !tbaa !54
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 4
  store ptr %i.bov, ptr %i.bng, align 16, !tbaa !54
  br label %put_bits.exit202

bb.ld:                                            ; preds = %bb.lb
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit202

put_bits.exit202:                                 ; preds = %bb.lc, %bb.ld, %bb.la
  %.sink396 = phi i32 [ -1, %bb.la ], [ 31, %bb.ld ], [ 31, %bb.lc ]
  %.026.i.i200 = phi i32 [ %i.bok, %bb.la ], [ %i.bog, %bb.ld ], [ %i.bog, %bb.lc ]
  %i.bow = add nsw i32 %i.bno, %.sink396
  store i32 %.026.i.i200, ptr %i.boa, align 16, !tbaa !52
  store i32 %i.bow, ptr %i.bnn, align 4, !tbaa !51
  %i.box = load i32, ptr %i.bod, align 16, !tbaa !79
  %i.boy = load i32, ptr %i.boe, align 16, !tbaa !79
  %i.boz = sub nsw i32 %i.box, %i.boy
  %i.bpa = load i32, ptr %i.bof, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.boz, i32 noundef %i.bpa)
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !79
  %i.bpd = getelementptr inbounds nuw i8, ptr %0, i64 2820 ; 2 uses
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !79
  %i.bpf = ashr i32 %i.bpe, 1
  %i.bpg = sub nsw i32 %i.bpc, %i.bpf
  %i.bph = load i32, ptr %i.bof, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.bpg, i32 noundef %i.bph)
  %i.bpi = load i32, ptr %i.bod, align 16, !tbaa !79
  store i32 %i.bpi, ptr %i.boe, align 16, !tbaa !79
  %i.bpj = load i32, ptr %i.bpb, align 4, !tbaa !79
  %i.bpk = shl nsw i32 %i.bpj, 1
  store i32 %i.bpk, ptr %i.bpd, align 4, !tbaa !79
  %i.bpl = getelementptr inbounds nuw i8, ptr %0, i64 2804
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !79 ; 4 uses
  %i.bpn = load i32, ptr %i.boa, align 16, !tbaa !52 ; 2 uses
  %i.bpo = load i32, ptr %i.bnn, align 4, !tbaa !51 ; 4 uses
  %i.bpp = icmp sgt i32 %i.bpo, 1
  br i1 %i.bpp, label %bb.lh, label %bb.le

bb.le:                                            ; preds = %put_bits.exit202
  %i.bpq = load ptr, ptr %i.boc, align 8, !tbaa !53
  %i.bpr = load ptr, ptr %i.bng, align 16, !tbaa !54 ; 2 uses
  %i.bps = ptrtoint ptr %i.bpq to i64
  %i.bpt = ptrtoint ptr %i.bpr to i64
  %i.bpu = sub i64 %i.bps, %i.bpt
  %i.bpv = icmp ugt i64 %i.bpu, 3
  br i1 %i.bpv, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #10
  br label %put_bits.exit202.1

bb.lg:                                            ; preds = %bb.le
  %i.bpw = shl i32 %i.bpn, %i.bpo
  %i.bpx = sub nsw i32 1, %i.bpo
  %i.bpy = lshr i32 %i.bpm, %i.bpx
  %i.bpz = or i32 %i.bpy, %i.bpw
  %i.bqa = tail call i32 @llvm.bswap.i32(i32 %i.bpz)
  store i32 %i.bqa, ptr %i.bpr, align 1, !tbaa !9
  %i.bqb = load ptr, ptr %i.bng, align 16, !tbaa !54
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 4
  store ptr %i.bqc, ptr %i.bng, align 16, !tbaa !54
  br label %put_bits.exit202.1

bb.lh:                                            ; preds = %put_bits.exit202
  %i.bqd = shl i32 %i.bpn, 1
  %i.bqe = or i32 %i.bqd, %i.bpm
  br label %put_bits.exit202.1

put_bits.exit202.1:                               ; preds = %bb.lf, %bb.lg, %bb.lh
  %.sink397 = phi i32 [ -1, %bb.lh ], [ 31, %bb.lg ], [ 31, %bb.lf ]
  %.026.i.i200.1 = phi i32 [ %i.bqe, %bb.lh ], [ %i.bpm, %bb.lg ], [ %i.bpm, %bb.lf ]
  %i.bqf = add nsw i32 %i.bpo, %.sink397
  store i32 %.026.i.i200.1, ptr %i.boa, align 16, !tbaa !52
  store i32 %i.bqf, ptr %i.bnn, align 4, !tbaa !51
  %i.bqg = getelementptr inbounds nuw i8, ptr %0, i64 2744 ; 2 uses
  %i.bqh = load i32, ptr %i.bqg, align 8, !tbaa !79
  %i.bqi = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 2 uses
  %i.bqj = load i32, ptr %i.bqi, align 8, !tbaa !79
  %i.bqk = sub nsw i32 %i.bqh, %i.bqj
  %i.bql = load i32, ptr %i.bof, align 8, !tbaa !96
  tail call fastcc void @mpeg1_encode_motion(ptr noundef nonnull %0, i32 noundef %i.bqk, i32 noundef %i.bql)
  %i.bqm = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.bqn = load i32, ptr %i.bqm, align 4, !tbaa !79
  %i.bqo = getelementptr inbounds nuw i8, ptr %0, i64 2828 ; 2 uses
  %i.bqp = load i32, ptr %i.bqo, align 4, !tbaa !79
  %i.bqq = ashr i32 %i.bqp, 1
end_hunk_1
