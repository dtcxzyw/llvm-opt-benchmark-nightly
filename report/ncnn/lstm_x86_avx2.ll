Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx2?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined:bb.a
  store i8 %i.vw, ptr %i.vx, align 1, !tbaa !42
  %i.vy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ux
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !42
  %i.wa = getelementptr inbounds nuw i8, ptr %.68271084, i64 9
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !42
  %i.wb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv1185
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !42
  %i.wd = getelementptr inbounds nuw i8, ptr %.68271084, i64 10
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !42
  %i.we = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ux
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !42
  %i.wg = getelementptr inbounds nuw i8, ptr %.68271084, i64 11
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !42
  %i.wh = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv1185
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !42
  %i.wj = getelementptr inbounds nuw i8, ptr %.68271084, i64 12
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !42
  %i.wk = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ux
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !42
  %i.wm = getelementptr inbounds nuw i8, ptr %.68271084, i64 13
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !42
  %i.wn = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv1185
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !42
  %i.wp = getelementptr inbounds nuw i8, ptr %.68271084, i64 14
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !42
  %i.wq = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.ux
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !42
  %i.ws = getelementptr inbounds nuw i8, ptr %.68271084, i64 15
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !42
  %i.wt = getelementptr inbounds nuw i8, ptr %.68271084, i64 16 ; 2 uses
  %indvars.iv.next1186 = add nuw nsw i64 %indvars.iv1185, 2 ; 3 uses
  %i.wu = or disjoint i64 %indvars.iv.next1186, 1 ; 2 uses
  %i.wv = load i32, ptr %13, align 4, !tbaa !9    ; 2 uses
  %i.ww = trunc nuw i64 %i.wu to i32
  %i.wx = icmp sgt i32 %i.wv, %i.ww
  br i1 %i.wx, label %.lr.ph1086, label %.preheader1049.loopexit, !llvm.loop !50

.lr.ph1091:                                       ; preds = %.lr.ph1091.preheader, %.lr.ph1091
  %indvars.iv1188 = phi i64 [ %i.uw, %.lr.ph1091.preheader ], [ %indvars.iv.next1189, %.lr.ph1091 ] ; 9 uses
  %.78281089 = phi ptr [ %.6827.lcssa, %.lr.ph1091.preheader ], [ %i.xv, %.lr.ph1091 ] ; 9 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv1188
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !42
  store i8 %i.wz, ptr %.78281089, align 1, !tbaa !42
  %i.xa = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv1188
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !42
  %i.xc = getelementptr inbounds nuw i8, ptr %.78281089, i64 1
  store i8 %i.xb, ptr %i.xc, align 1, !tbaa !42
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ft, i64 %indvars.iv1188
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !42
  %i.xf = getelementptr inbounds nuw i8, ptr %.78281089, i64 2
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !42
  %i.xg = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv1188
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !42
  %i.xi = getelementptr inbounds nuw i8, ptr %.78281089, i64 3
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !42
  %i.xj = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv1188
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !42
  %i.xl = getelementptr inbounds nuw i8, ptr %.78281089, i64 4
  store i8 %i.xk, ptr %i.xl, align 1, !tbaa !42
  %i.xm = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv1188
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !42
  %i.xo = getelementptr inbounds nuw i8, ptr %.78281089, i64 5
  store i8 %i.xn, ptr %i.xo, align 1, !tbaa !42
  %i.xp = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv1188
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !42
  %i.xr = getelementptr inbounds nuw i8, ptr %.78281089, i64 6
  store i8 %i.xq, ptr %i.xr, align 1, !tbaa !42
  %i.xs = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv1188
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !42
  %i.xu = getelementptr inbounds nuw i8, ptr %.78281089, i64 7
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !42
  %i.xv = getelementptr inbounds nuw i8, ptr %.78281089, i64 8
  %indvars.iv.next1189 = add nuw nsw i64 %indvars.iv1188, 1 ; 2 uses
  %i.xw = load i32, ptr %13, align 4, !tbaa !9
  %i.xx = trunc nuw i64 %indvars.iv.next1189 to i32
  %i.xy = icmp sgt i32 %i.xw, %i.xx
  br i1 %i.xy, label %.lr.ph1091, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph1091, %.preheader1049
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv1191
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !40
  %i.yb = fdiv fast float 1.000000e+00, %i.ya
  store float %i.yb, ptr %i.gi, align 4, !tbaa !40
  %i.yc = load i32, ptr %11, align 4, !tbaa !9    ; 6 uses
  %i.yd = add nsw i32 %i.yc, %i.el
  %i.ye = sext i32 %i.yd to i64                   ; 2 uses
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ye ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !40
  %i.yh = fdiv fast float 1.000000e+00, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store float %i.yh, ptr %i.yi, align 4, !tbaa !40
  %i.yj = shl nsw i32 %i.yc, 1
  %i.yk = add nsw i32 %i.yj, %i.el
  %i.yl = sext i32 %i.yk to i64                   ; 2 uses
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.yl ; 2 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !40
  %i.yo = fdiv fast float 1.000000e+00, %i.yn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store float %i.yo, ptr %i.yp, align 4, !tbaa !40
  %i.yq = mul nsw i32 %i.yc, 3
  %i.yr = add nsw i32 %i.yq, %i.el
  %i.ys = sext i32 %i.yr to i64                   ; 2 uses
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ys ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !40
  %i.yv = fdiv fast float 1.000000e+00, %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store float %i.yv, ptr %i.yw, align 4, !tbaa !40
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dk
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !40
  %i.yz = fdiv fast float 1.000000e+00, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store float %i.yz, ptr %i.za, align 4, !tbaa !40
  %i.zb = getelementptr i8, ptr %i.yf, i64 4
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !40
  %i.zd = fdiv fast float 1.000000e+00, %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store float %i.zd, ptr %i.ze, align 4, !tbaa !40
  %i.zf = getelementptr i8, ptr %i.ym, i64 4
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !40
  %i.zh = fdiv fast float 1.000000e+00, %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store float %i.zh, ptr %i.zi, align 4, !tbaa !40
  %i.zj = getelementptr i8, ptr %i.yt, i64 4
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !40
  %i.zl = fdiv fast float 1.000000e+00, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  store float %i.zl, ptr %i.zm, align 4, !tbaa !40
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1191
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !40
  %i.zp = fdiv fast float 1.000000e+00, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store float %i.zp, ptr %i.zq, align 4, !tbaa !40
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ye ; 2 uses
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !40
  %i.zt = fdiv fast float 1.000000e+00, %i.zs
  %i.zu = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store float %i.zt, ptr %i.zu, align 4, !tbaa !40
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.yl ; 2 uses
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !40
  %i.zx = fdiv fast float 1.000000e+00, %i.zw
  %i.zy = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  store float %i.zx, ptr %i.zy, align 4, !tbaa !40
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.ys ; 2 uses
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !40
  %i.aab = fdiv fast float 1.000000e+00, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  store float %i.aab, ptr %i.aac, align 4, !tbaa !40
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dk
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !40
  %i.aaf = fdiv fast float 1.000000e+00, %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  store float %i.aaf, ptr %i.aag, align 4, !tbaa !40
  %i.aah = getelementptr i8, ptr %i.zr, i64 4
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !40
  %i.aaj = fdiv fast float 1.000000e+00, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.gi, i64 52
  store float %i.aaj, ptr %i.aak, align 4, !tbaa !40
  %i.aal = getelementptr i8, ptr %i.zv, i64 4
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !40
  %i.aan = fdiv fast float 1.000000e+00, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  store float %i.aan, ptr %i.aao, align 4, !tbaa !40
  %i.aap = getelementptr i8, ptr %i.zz, i64 4
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !40
  %i.aar = fdiv fast float 1.000000e+00, %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %i.gi, i64 60
  store float %i.aar, ptr %i.aas, align 4, !tbaa !40
  %indvars.iv.next1192 = add nuw nsw i64 %indvars.iv1191, 2 ; 3 uses
  %i.aat = or disjoint i64 %indvars.iv.next1192, 1
  %i.aau = sext i32 %i.yc to i64
  %i.aav = icmp slt i64 %i.aat, %i.aau
  br i1 %i.aav, label %bb.c, label %.preheader1056.loopexit, !llvm.loop !52

bb.d:                                             ; preds = %.lr.ph1138, %._crit_edge1135
  %indvars.iv1218 = phi i64 [ %i.di, %.lr.ph1138 ], [ %indvars.iv.next1219, %._crit_edge1135 ] ; 10 uses
  %i.aaw = phi i32 [ %i.dc, %.lr.ph1138 ], [ %i.amy, %._crit_edge1135 ] ; 3 uses
  %.18321136 = phi ptr [ %.0831.lcssa, %.lr.ph1138 ], [ %i.abi, %._crit_edge1135 ] ; 5 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv1218
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !40
  store float %i.aay, ptr %.18321136, align 4, !tbaa !40
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv1218
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !40
  %i.abb = getelementptr inbounds nuw i8, ptr %.18321136, i64 4
  store float %i.aba, ptr %i.abb, align 4, !tbaa !40
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv1218
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !40
  %i.abe = getelementptr inbounds nuw i8, ptr %.18321136, i64 8
  store float %i.abd, ptr %i.abe, align 4, !tbaa !40
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv1218
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !40
  %i.abh = getelementptr inbounds nuw i8, ptr %.18321136, i64 12
  store float %i.abg, ptr %i.abh, align 4, !tbaa !40
  %i.abi = getelementptr inbounds nuw i8, ptr %.18321136, i64 16
  %i.abj = mul i64 %i.de, %indvars.iv1218
  %i.abk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.abj ; 8 uses
  %i.abl = trunc nuw nsw i64 %indvars.iv1218 to i32 ; 8 uses
  %i.abm = add nsw i32 %i.aaw, %i.abl
  %i.abn = sext i32 %i.abm to i64                 ; 2 uses
  %i.abo = mul i64 %i.de, %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.abo ; 8 uses
  %i.abq = shl nuw nsw i32 %i.aaw, 1
  %i.abr = add nsw i32 %i.abq, %i.abl
  %i.abs = sext i32 %i.abr to i64                 ; 2 uses
  %i.abt = mul i64 %i.de, %i.abs
  %i.abu = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.abt ; 8 uses
  %i.abv = mul nuw nsw i32 %i.aaw, 3
  %i.abw = add nuw nsw i32 %i.abv, %i.abl
  %14 = zext nneg i32 %i.abw to i64               ; 2 uses
  %i.abx = mul i64 %i.de, %14
  %i.aby = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.abx ; 8 uses
  %i.abz = mul i64 %i.df, %indvars.iv1218
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.abz ; 8 uses
  %i.acb = mul i64 %i.df, %i.abn
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.acb ; 8 uses
  %i.acd = mul i64 %i.df, %i.abs
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.acd ; 8 uses
  %i.acf = mul i64 %i.df, %14
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.acf ; 8 uses
  %i.ach = lshr i32 %i.abl, 1
  %i.aci = and i32 %i.abl, 1
  %i.acj = add nuw nsw i32 %i.ach, %i.aci
  %i.ack = zext nneg i32 %i.acj to i64            ; 2 uses
  %i.acl = mul i64 %i.dg, %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.acl ; 2 uses
  %i.acn = mul i64 %i.dh, %i.ack
  %i.aco = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.acn ; 8 uses
  %i.acp = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.acq = icmp sgt i32 %i.acp, 7
  br i1 %i.acq, label %.lr.ph1100, label %.preheader1048

.preheader1048.loopexit:                          ; preds = %.lr.ph1100
  %i.acr = trunc nuw nsw i64 %indvars.iv.next1195 to i32
  br label %.preheader1048

.preheader1048:                                   ; preds = %.preheader1048.loopexit, %bb.d
  %i.acs = phi i32 [ %i.acp, %bb.d ], [ %i.adk, %.preheader1048.loopexit ] ; 2 uses
  %.0805.lcssa = phi ptr [ %i.acm, %bb.d ], [ %i.adi, %.preheader1048.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %i.acr, %.preheader1048.loopexit ] ; 3 uses
  %i.act = or disjoint i32 %.0.lcssa, 3           ; 2 uses
  %i.acu = icmp slt i32 %i.act, %i.acs
  br i1 %i.acu, label %.lr.ph1105.preheader, label %.preheader1047

.lr.ph1105.preheader:                             ; preds = %.preheader1048
  %i.acv = zext nneg i32 %.0.lcssa to i64
  %i.acw = zext nneg i32 %i.act to i64
  br label %.lr.ph1105

.lr.ph1100:                                       ; preds = %bb.d, %.lr.ph1100
  %indvars.iv1194 = phi i64 [ %indvars.iv.next1195, %.lr.ph1100 ], [ 0, %bb.d ] ; 5 uses
  %.08051097 = phi ptr [ %i.adi, %.lr.ph1100 ], [ %i.acm, %bb.d ] ; 5 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.abk, i64 %indvars.iv1194
  %i.acy = load i64, ptr %i.acx, align 1, !tbaa !42
  store i64 %i.acy, ptr %.08051097, align 1, !tbaa !42
  %i.acz = getelementptr inbounds nuw i8, ptr %.08051097, i64 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.abp, i64 %indvars.iv1194
  %i.adb = load i64, ptr %i.ada, align 1, !tbaa !42
  store i64 %i.adb, ptr %i.acz, align 1, !tbaa !42
  %i.adc = getelementptr inbounds nuw i8, ptr %.08051097, i64 16
  %i.add = getelementptr inbounds nuw i8, ptr %i.abu, i64 %indvars.iv1194
  %i.ade = load i64, ptr %i.add, align 1, !tbaa !42
  store i64 %i.ade, ptr %i.adc, align 1, !tbaa !42
  %i.adf = getelementptr inbounds nuw i8, ptr %.08051097, i64 24
  %i.adg = getelementptr inbounds nuw i8, ptr %i.aby, i64 %indvars.iv1194
  %i.adh = load i64, ptr %i.adg, align 1, !tbaa !42
  store i64 %i.adh, ptr %i.adf, align 1, !tbaa !42
  %i.adi = getelementptr inbounds nuw i8, ptr %.08051097, i64 32 ; 2 uses
  %indvars.iv.next1195 = add nuw nsw i64 %indvars.iv1194, 8 ; 3 uses
  %i.adj = or disjoint i64 %indvars.iv.next1195, 7
  %i.adk = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.adl = sext i32 %i.adk to i64
  %i.adm = icmp slt i64 %i.adj, %i.adl
  br i1 %i.adm, label %.lr.ph1100, label %.preheader1048.loopexit, !llvm.loop !53

.preheader1047.loopexit:                          ; preds = %.lr.ph1105
  %i.adn = trunc nuw nsw i64 %indvars.iv.next1198 to i32
  br label %.preheader1047

.preheader1047:                                   ; preds = %.preheader1047.loopexit, %.preheader1048
  %i.ado = phi i32 [ %i.acs, %.preheader1048 ], [ %i.aft, %.preheader1047.loopexit ] ; 2 uses
  %.1806.lcssa = phi ptr [ %.0805.lcssa, %.preheader1048 ], [ %i.afr, %.preheader1047.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader1048 ], [ %i.adn, %.preheader1047.loopexit ] ; 3 uses
  %i.adp = or disjoint i32 %.1.lcssa, 1           ; 2 uses
  %i.adq = icmp slt i32 %i.adp, %i.ado
  br i1 %i.adq, label %.lr.ph1110.preheader, label %.preheader1046

.lr.ph1110.preheader:                             ; preds = %.preheader1047
  %i.adr = zext nneg i32 %.1.lcssa to i64
  %i.ads = zext nneg i32 %i.adp to i64
  br label %.lr.ph1110

.lr.ph1105:                                       ; preds = %.lr.ph1105.preheader, %.lr.ph1105
  %indvars.iv1197 = phi i64 [ %i.acv, %.lr.ph1105.preheader ], [ %indvars.iv.next1198, %.lr.ph1105 ] ; 7 uses
  %i.adt = phi i64 [ %i.acw, %.lr.ph1105.preheader ], [ %i.afs, %.lr.ph1105 ] ; 4 uses
  %.18061103 = phi ptr [ %.0805.lcssa, %.lr.ph1105.preheader ], [ %i.afr, %.lr.ph1105 ] ; 17 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.abk, i64 %indvars.iv1197
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !42
  store i8 %i.adv, ptr %.18061103, align 1, !tbaa !42
  %i.adw = or disjoint i64 %indvars.iv1197, 1     ; 4 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adw
  %i.ady = load i8, ptr %i.adx, align 1, !tbaa !42
  %i.adz = getelementptr inbounds nuw i8, ptr %.18061103, i64 1
  store i8 %i.ady, ptr %i.adz, align 1, !tbaa !42
  %i.aea = or disjoint i64 %indvars.iv1197, 2     ; 4 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aea
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !42
  %i.aed = getelementptr inbounds nuw i8, ptr %.18061103, i64 2
  store i8 %i.aec, ptr %i.aed, align 1, !tbaa !42
  %i.aee = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adt
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !42
  %i.aeg = getelementptr inbounds nuw i8, ptr %.18061103, i64 3
  store i8 %i.aef, ptr %i.aeg, align 1, !tbaa !42
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.abp, i64 %indvars.iv1197
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !42
  %i.aej = getelementptr inbounds nuw i8, ptr %.18061103, i64 4
  store i8 %i.aei, ptr %i.aej, align 1, !tbaa !42
  %i.aek = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.adw
  %i.ael = load i8, ptr %i.aek, align 1, !tbaa !42
  %i.aem = getelementptr inbounds nuw i8, ptr %.18061103, i64 5
  store i8 %i.ael, ptr %i.aem, align 1, !tbaa !42
  %i.aen = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.aea
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !42
  %i.aep = getelementptr inbounds nuw i8, ptr %.18061103, i64 6
  store i8 %i.aeo, ptr %i.aep, align 1, !tbaa !42
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.adt
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !42
  %i.aes = getelementptr inbounds nuw i8, ptr %.18061103, i64 7
  store i8 %i.aer, ptr %i.aes, align 1, !tbaa !42
  %i.aet = getelementptr inbounds nuw i8, ptr %i.abu, i64 %indvars.iv1197
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !42
  %i.aev = getelementptr inbounds nuw i8, ptr %.18061103, i64 8
  store i8 %i.aeu, ptr %i.aev, align 1, !tbaa !42
  %i.aew = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.adw
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !42
  %i.aey = getelementptr inbounds nuw i8, ptr %.18061103, i64 9
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !42
  %i.aez = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.aea
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !42
  %i.afb = getelementptr inbounds nuw i8, ptr %.18061103, i64 10
  store i8 %i.afa, ptr %i.afb, align 1, !tbaa !42
  %i.afc = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.adt
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !42
  %i.afe = getelementptr inbounds nuw i8, ptr %.18061103, i64 11
  store i8 %i.afd, ptr %i.afe, align 1, !tbaa !42
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aby, i64 %indvars.iv1197
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !42
  %i.afh = getelementptr inbounds nuw i8, ptr %.18061103, i64 12
  store i8 %i.afg, ptr %i.afh, align 1, !tbaa !42
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.adw
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !42
  %i.afk = getelementptr inbounds nuw i8, ptr %.18061103, i64 13
  store i8 %i.afj, ptr %i.afk, align 1, !tbaa !42
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.aea
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !42
  %i.afn = getelementptr inbounds nuw i8, ptr %.18061103, i64 14
  store i8 %i.afm, ptr %i.afn, align 1, !tbaa !42
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.adt
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !42
  %i.afq = getelementptr inbounds nuw i8, ptr %.18061103, i64 15
  store i8 %i.afp, ptr %i.afq, align 1, !tbaa !42
  %i.afr = getelementptr inbounds nuw i8, ptr %.18061103, i64 16 ; 2 uses
  %indvars.iv.next1198 = add nuw nsw i64 %indvars.iv1197, 4 ; 3 uses
  %i.afs = or disjoint i64 %indvars.iv.next1198, 3 ; 2 uses
  %i.aft = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.afu = trunc nuw i64 %i.afs to i32
  %i.afv = icmp sgt i32 %i.aft, %i.afu
  br i1 %i.afv, label %.lr.ph1105, label %.preheader1047.loopexit, !llvm.loop !54

.preheader1046.loopexit:                          ; preds = %.lr.ph1110
  %i.afw = trunc nuw i64 %indvars.iv.next1201 to i32
  br label %.preheader1046

.preheader1046:                                   ; preds = %.preheader1046.loopexit, %.preheader1047
  %i.afx = phi i32 [ %i.ado, %.preheader1047 ], [ %i.aha, %.preheader1046.loopexit ]
  %.2807.lcssa = phi ptr [ %.1806.lcssa, %.preheader1047 ], [ %i.agy, %.preheader1046.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1047 ], [ %i.afw, %.preheader1046.loopexit ] ; 2 uses
  %i.afy = icmp slt i32 %.2.lcssa, %i.afx
  br i1 %i.afy, label %.lr.ph1115.preheader, label %.preheader1045

.lr.ph1115.preheader:                             ; preds = %.preheader1046
  %i.afz = zext i32 %.2.lcssa to i64
  br label %.lr.ph1115

.lr.ph1110:                                       ; preds = %.lr.ph1110.preheader, %.lr.ph1110
  %indvars.iv1200 = phi i64 [ %i.adr, %.lr.ph1110.preheader ], [ %indvars.iv.next1201, %.lr.ph1110 ] ; 5 uses
  %i.aga = phi i64 [ %i.ads, %.lr.ph1110.preheader ], [ %i.agz, %.lr.ph1110 ] ; 4 uses
  %.28071108 = phi ptr [ %.1806.lcssa, %.lr.ph1110.preheader ], [ %i.agy, %.lr.ph1110 ] ; 9 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.abk, i64 %indvars.iv1200
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !42
  store i8 %i.agc, ptr %.28071108, align 1, !tbaa !42
  %i.agd = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aga
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !42
  %i.agf = getelementptr inbounds nuw i8, ptr %.28071108, i64 1
  store i8 %i.age, ptr %i.agf, align 1, !tbaa !42
  %i.agg = getelementptr inbounds nuw i8, ptr %i.abp, i64 %indvars.iv1200
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !42
  %i.agi = getelementptr inbounds nuw i8, ptr %.28071108, i64 2
  store i8 %i.agh, ptr %i.agi, align 1, !tbaa !42
  %i.agj = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.aga
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !42
  %i.agl = getelementptr inbounds nuw i8, ptr %.28071108, i64 3
  store i8 %i.agk, ptr %i.agl, align 1, !tbaa !42
  %i.agm = getelementptr inbounds nuw i8, ptr %i.abu, i64 %indvars.iv1200
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !42
  %i.ago = getelementptr inbounds nuw i8, ptr %.28071108, i64 4
  store i8 %i.agn, ptr %i.ago, align 1, !tbaa !42
  %i.agp = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.aga
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !42
  %i.agr = getelementptr inbounds nuw i8, ptr %.28071108, i64 5
end_hunk_0
