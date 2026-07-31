inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
  br i1 %i.wo, label %opj_mqc_raw_decode.exit.i73.us.i.i, label %.sink.split.i.i76.us.i.i

.sink.split.i.i76.us.i.i:                         ; preds = %bb.cp, %bb.co
  %.ph17.i.i77.us.i.i = phi i32 [ 7, %bb.cp ], [ 8, %bb.co ]
  %i.wp = zext i8 %i.wn to i32                    ; 2 uses
  store i32 %i.wp, ptr %.0254, align 8, !tbaa !110
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  store ptr %i.wq, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i73.us.i.i

opj_mqc_raw_decode.exit.i73.us.i.i:               ; preds = %.sink.split.i.i76.us.i.i, %bb.cp, %bb.cn
  %i.wr = phi i32 [ %.pre.i.i72.us.i.i, %bb.cn ], [ 255, %bb.cp ], [ %i.wp, %.sink.split.i.i76.us.i.i ]
  %i.ws = phi i32 [ %i.wj, %bb.cn ], [ 8, %bb.cp ], [ %.ph17.i.i77.us.i.i, %.sink.split.i.i76.us.i.i ]
  %i.wt = add i32 %i.ws, -1                       ; 2 uses
  store i32 %i.wt, ptr %i.gv, align 8, !tbaa !109
  %i.wu = lshr i32 %i.wr, %i.wt
  %i.wv = and i32 %i.wu, 1
  %i.ww = load i32, ptr %i.wg, align 4, !tbaa !3  ; 2 uses
  %.lobit.i74.us.i.i = lshr i32 %i.ww, 31
  %.not.i75.us.i.i = icmp eq i32 %i.wv, %.lobit.i74.us.i.i
  %i.wx = select i1 %.not.i75.us.i.i, i32 %i.ui, i32 %i.ug
  %i.wy = add nsw i32 %i.wx, %i.ww
  store i32 %i.wy, ptr %i.wg, align 4, !tbaa !3
  %i.wz = load i32, ptr %.15798.us.i.i, align 4, !tbaa !3
  %i.xa = or i32 %i.wz, 67108864                  ; 2 uses
  store i32 %i.xa, ptr %.15798.us.i.i, align 4, !tbaa !3
  br label %opj_t1_dec_refpass_step_raw.exit78.us.i.i

opj_t1_dec_refpass_step_raw.exit78.us.i.i:        ; preds = %opj_mqc_raw_decode.exit.i73.us.i.i, %opj_t1_dec_refpass_step_raw.exit71.us.i.i
  %i.xb = phi i32 [ %i.xa, %opj_mqc_raw_decode.exit.i73.us.i.i ], [ %i.wf, %opj_t1_dec_refpass_step_raw.exit71.us.i.i ]
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.15996.us.i.i, i64 %i.un ; 2 uses
  %i.xd = and i32 %i.xb, 1073750016
  %i.xe = icmp eq i32 %i.xd, 8192
  br i1 %i.xe, label %bb.cq, label %opj_t1_dec_refpass_step_raw.exit85.us.i.i

bb.cq:                                            ; preds = %opj_t1_dec_refpass_step_raw.exit78.us.i.i
  %i.xf = load i32, ptr %i.gv, align 8, !tbaa !109 ; 2 uses
  %i.xg = icmp eq i32 %i.xf, 0
  %.pre.i.i79.us.i.i = load i32, ptr %.0254, align 8, !tbaa !110 ; 2 uses
  br i1 %i.xg, label %bb.cr, label %opj_mqc_raw_decode.exit.i80.us.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.xh = icmp eq i32 %.pre.i.i79.us.i.i, 255
  %i.xi = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !48  ; 2 uses
  br i1 %i.xh, label %bb.cs, label %.sink.split.i.i83.us.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.xk = icmp ugt i8 %i.xj, -113
  br i1 %i.xk, label %opj_mqc_raw_decode.exit.i80.us.i.i, label %.sink.split.i.i83.us.i.i

.sink.split.i.i83.us.i.i:                         ; preds = %bb.cs, %bb.cr
  %.ph17.i.i84.us.i.i = phi i32 [ 7, %bb.cs ], [ 8, %bb.cr ]
  %i.xl = zext i8 %i.xj to i32                    ; 2 uses
  store i32 %i.xl, ptr %.0254, align 8, !tbaa !110
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 1
  store ptr %i.xm, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i80.us.i.i

opj_mqc_raw_decode.exit.i80.us.i.i:               ; preds = %.sink.split.i.i83.us.i.i, %bb.cs, %bb.cq
  %i.xn = phi i32 [ %.pre.i.i79.us.i.i, %bb.cq ], [ 255, %bb.cs ], [ %i.xl, %.sink.split.i.i83.us.i.i ]
  %i.xo = phi i32 [ %i.xf, %bb.cq ], [ 8, %bb.cs ], [ %.ph17.i.i84.us.i.i, %.sink.split.i.i83.us.i.i ]
  %i.xp = add i32 %i.xo, -1                       ; 2 uses
  store i32 %i.xp, ptr %i.gv, align 8, !tbaa !109
  %i.xq = lshr i32 %i.xn, %i.xp
  %i.xr = and i32 %i.xq, 1
  %i.xs = load i32, ptr %i.xc, align 4, !tbaa !3  ; 2 uses
  %.lobit.i81.us.i.i = lshr i32 %i.xs, 31
  %.not.i82.us.i193.i = icmp eq i32 %i.xr, %.lobit.i81.us.i.i
  %i.xt = select i1 %.not.i82.us.i193.i, i32 %i.ui, i32 %i.ug
  %i.xu = add nsw i32 %i.xt, %i.xs
  store i32 %i.xu, ptr %i.xc, align 4, !tbaa !3
  %i.xv = load i32, ptr %.15798.us.i.i, align 4, !tbaa !3
  %i.xw = or i32 %i.xv, 536870912
  store i32 %i.xw, ptr %.15798.us.i.i, align 4, !tbaa !3
  br label %opj_t1_dec_refpass_step_raw.exit85.us.i.i

opj_t1_dec_refpass_step_raw.exit85.us.i.i:        ; preds = %opj_mqc_raw_decode.exit.i80.us.i.i, %opj_t1_dec_refpass_step_raw.exit78.us.i.i, %bb.cf
  %i.xx = add nuw i32 %.099.us.i.i, 1             ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.15798.us.i.i, i64 4
  %i.xz = getelementptr inbounds nuw i8, ptr %.15996.us.i.i, i64 4 ; 2 uses
  %exitcond.not.i182.i = icmp eq i32 %i.xx, %i.ub
  br i1 %exitcond.not.i182.i, label %._crit_edge.us.i183.i, label %bb.cf, !llvm.loop !116

._crit_edge.us.i183.i:                            ; preds = %opj_t1_dec_refpass_step_raw.exit85.us.i.i
  %i.ya = add nuw i32 %.061101.us.i.i, 4          ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.15798.us.i.i, i64 12 ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %i.un ; 2 uses
  %i.yd = load i32, ptr %i.gq, align 4, !tbaa !108 ; 2 uses
  %i.ye = and i32 %i.yd, -4
  %i.yf = icmp ult i32 %i.ya, %i.ye
  br i1 %i.yf, label %.preheader94.us.i.i, label %._crit_edge104.i.i, !llvm.loop !117

._crit_edge104.i.i:                               ; preds = %._crit_edge.us.i183.i, %bb.ce
  %.061.lcssa.i.i = phi i32 [ 0, %bb.ce ], [ %i.ya, %._crit_edge.us.i183.i ] ; 4 uses
  %.058.lcssa.i.i = phi ptr [ %i.tz, %bb.ce ], [ %i.yc, %._crit_edge.us.i183.i ]
  %.056.lcssa.i.i = phi ptr [ %i.ue, %bb.ce ], [ %i.yb, %._crit_edge.us.i183.i ]
  %.lcssa.i184.i = phi i32 [ %i.uh, %bb.ce ], [ %i.yd, %._crit_edge.us.i183.i ] ; 3 uses
  %i.yg = icmp ult i32 %.061.lcssa.i.i, %.lcssa.i184.i
  %i.yh = icmp ne i32 %i.ub, 0
  %or.cond.i185.i = select i1 %i.yg, i1 %i.yh, i1 false
  br i1 %or.cond.i185.i, label %.preheader.lr.ph.i186.i, label %opj_t1_dec_sigpass_raw.exit.i

.preheader.lr.ph.i186.i:                          ; preds = %._crit_edge104.i.i
  %i.yi = sub nsw i32 0, %i.ug
  br label %.preheader.i187.i

.preheader.i187.i:                                ; preds = %._crit_edge.i192.i, %.preheader.lr.ph.i186.i
  %i.yj = phi i32 [ %.lcssa.i184.i, %.preheader.lr.ph.i186.i ], [ %i.zu, %._crit_edge.i192.i ] ; 2 uses
  %i.yk = phi i32 [ %.lcssa.i184.i, %.preheader.lr.ph.i186.i ], [ %i.zv, %._crit_edge.i192.i ]
  %.1115.i.i = phi i32 [ 0, %.preheader.lr.ph.i186.i ], [ %i.zw, %._crit_edge.i192.i ]
  %.2114.i.i = phi ptr [ %.056.lcssa.i.i, %.preheader.lr.ph.i186.i ], [ %i.zx, %._crit_edge.i192.i ] ; 4 uses
  %.260113.i.i = phi ptr [ %.058.lcssa.i.i, %.preheader.lr.ph.i186.i ], [ %i.zy, %._crit_edge.i192.i ] ; 2 uses
  %.not117.i.i = icmp eq i32 %i.yk, %.061.lcssa.i.i
  br i1 %.not117.i.i, label %._crit_edge.i192.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i187.i
  %.pre.i188.i = load i32, ptr %.2114.i.i, align 4, !tbaa !3
  br label %.lr.ph.i189.i

.lr.ph.i189.i:                                    ; preds = %opj_t1_dec_refpass_step_raw.exit92.i.i, %.lr.ph.preheader.i.i
  %i.yl = phi i32 [ %i.yj, %.lr.ph.preheader.i.i ], [ %i.zp, %opj_t1_dec_refpass_step_raw.exit92.i.i ]
  %i.ym = phi i32 [ %.pre.i188.i, %.lr.ph.preheader.i.i ], [ %i.zq, %opj_t1_dec_refpass_step_raw.exit92.i.i ] ; 2 uses
  %indvars.iv.i190.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i191.i, %opj_t1_dec_refpass_step_raw.exit92.i.i ] ; 2 uses
  %i.yn = trunc nuw i64 %indvars.iv.i190.i to i32 ; 2 uses
  %i.yo = mul i32 %i.ub, %i.yn
  %i.yp = zext i32 %i.yo to i64
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.260113.i.i, i64 %i.yp ; 2 uses
  %i.yr = mul i32 %i.yn, 3                        ; 3 uses
  %i.ys = shl i32 2097168, %i.yr
  %i.yt = and i32 %i.ys, %i.ym
  %i.yu = shl i32 16, %i.yr
  %i.yv = icmp eq i32 %i.yt, %i.yu
  br i1 %i.yv, label %bb.ct, label %opj_t1_dec_refpass_step_raw.exit92.i.i

bb.ct:                                            ; preds = %.lr.ph.i189.i
  %i.yw = load i32, ptr %i.gv, align 8, !tbaa !109 ; 2 uses
  %i.yx = icmp eq i32 %i.yw, 0
  %.pre.i.i86.i.i = load i32, ptr %.0254, align 8, !tbaa !110 ; 2 uses
  br i1 %i.yx, label %bb.cu, label %opj_mqc_raw_decode.exit.i87.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.yy = icmp eq i32 %.pre.i.i86.i.i, 255
  %i.yz = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !48  ; 2 uses
  br i1 %i.yy, label %bb.cv, label %.sink.split.i.i90.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.zb = icmp ugt i8 %i.za, -113
  br i1 %i.zb, label %opj_mqc_raw_decode.exit.i87.i.i, label %.sink.split.i.i90.i.i

.sink.split.i.i90.i.i:                            ; preds = %bb.cv, %bb.cu
  %.ph17.i.i91.i.i = phi i32 [ 7, %bb.cv ], [ 8, %bb.cu ]
  %i.zc = zext i8 %i.za to i32                    ; 2 uses
  store i32 %i.zc, ptr %.0254, align 8, !tbaa !110
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 1
  store ptr %i.zd, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i87.i.i

opj_mqc_raw_decode.exit.i87.i.i:                  ; preds = %.sink.split.i.i90.i.i, %bb.cv, %bb.ct
  %i.ze = phi i32 [ %.pre.i.i86.i.i, %bb.ct ], [ 255, %bb.cv ], [ %i.zc, %.sink.split.i.i90.i.i ]
  %i.zf = phi i32 [ %i.yw, %bb.ct ], [ 8, %bb.cv ], [ %.ph17.i.i91.i.i, %.sink.split.i.i90.i.i ]
  %i.zg = add i32 %i.zf, -1                       ; 2 uses
  store i32 %i.zg, ptr %i.gv, align 8, !tbaa !109
  %i.zh = lshr i32 %i.ze, %i.zg
  %i.zi = and i32 %i.zh, 1
  %i.zj = load i32, ptr %i.yq, align 4, !tbaa !3  ; 2 uses
  %.lobit.i88.i.i = lshr i32 %i.zj, 31
  %.not.i89.i.i = icmp eq i32 %i.zi, %.lobit.i88.i.i
  %i.zk = select i1 %.not.i89.i.i, i32 %i.yi, i32 %i.ug
  %i.zl = add nsw i32 %i.zk, %i.zj
  store i32 %i.zl, ptr %i.yq, align 4, !tbaa !3
  %i.zm = shl i32 1048576, %i.yr
  %i.zn = load i32, ptr %.2114.i.i, align 4, !tbaa !3
  %i.zo = or i32 %i.zn, %i.zm                     ; 2 uses
  store i32 %i.zo, ptr %.2114.i.i, align 4, !tbaa !3
  %.pre130.i.i = load i32, ptr %i.gq, align 4, !tbaa !108
  br label %opj_t1_dec_refpass_step_raw.exit92.i.i

opj_t1_dec_refpass_step_raw.exit92.i.i:           ; preds = %opj_mqc_raw_decode.exit.i87.i.i, %.lr.ph.i189.i
  %i.zp = phi i32 [ %i.yl, %.lr.ph.i189.i ], [ %.pre130.i.i, %opj_mqc_raw_decode.exit.i87.i.i ] ; 4 uses
  %i.zq = phi i32 [ %i.ym, %.lr.ph.i189.i ], [ %i.zo, %opj_mqc_raw_decode.exit.i87.i.i ]
  %indvars.iv.next.i191.i = add nuw nsw i64 %indvars.iv.i190.i, 1 ; 2 uses
  %i.zr = sub i32 %i.zp, %.061.lcssa.i.i
  %i.zs = zext i32 %i.zr to i64
  %i.zt = icmp samesign ult i64 %indvars.iv.next.i191.i, %i.zs
  br i1 %i.zt, label %.lr.ph.i189.i, label %._crit_edge.i192.i, !llvm.loop !118

._crit_edge.i192.i:                               ; preds = %opj_t1_dec_refpass_step_raw.exit92.i.i, %.preheader.i187.i
  %i.zu = phi i32 [ %i.yj, %.preheader.i187.i ], [ %i.zp, %opj_t1_dec_refpass_step_raw.exit92.i.i ]
  %i.zv = phi i32 [ %.061.lcssa.i.i, %.preheader.i187.i ], [ %i.zp, %opj_t1_dec_refpass_step_raw.exit92.i.i ]
  %i.zw = add nuw i32 %.1115.i.i, 1               ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.2114.i.i, i64 4
  %i.zy = getelementptr inbounds nuw i8, ptr %.260113.i.i, i64 4
  %exitcond129.not.i.i = icmp eq i32 %i.zw, %i.ub
  br i1 %exitcond129.not.i.i, label %opj_t1_dec_sigpass_raw.exit.i, label %.preheader.i187.i, !llvm.loop !119

bb.cw:                                            ; preds = %bb.cd
  %i.zz = load i32, ptr %i.gp, align 8, !tbaa !107 ; 10 uses
  %i.aaa = icmp eq i32 %i.zz, 64
  %i.aab = load i32, ptr %i.gq, align 4, !tbaa !108 ; 6 uses
  %i.aac = icmp eq i32 %i.aab, 64
  %or.cond.i199.i = select i1 %i.aaa, i1 %i.aac, i1 false
  %i.aad = load ptr, ptr %i.gr, align 8, !tbaa !15 ; 4 uses
  %i.aae = load ptr, ptr %i.gs, align 8, !tbaa !16 ; 3 uses
  br i1 %or.cond.i199.i, label %bb.cx, label %._crit_edge.i200.i

bb.cx:                                            ; preds = %bb.cw
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 268
  %i.aag = load ptr, ptr %i.gt, align 8, !tbaa !120
  %i.aah = load i32, ptr %.0254, align 8, !tbaa !110
  %i.aai = load i32, ptr %i.gu, align 4, !tbaa !121
  %i.aaj = load i32, ptr %i.gv, align 8, !tbaa !109
  %i.aak = shl nuw nsw i32 1, %.1153277.i
  %i.aal = lshr exact i32 %i.aak, 1               ; 5 uses
  %i.aam = sub nsw i32 0, %i.aal                  ; 4 uses
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.gd, %bb.cx
  %.0315509.i.i.i = phi i32 [ 0, %bb.cx ], [ %i.alo, %bb.gd ] ; 2 uses
  %.0316508.i.i.i = phi ptr [ %i.aad, %bb.cx ], [ %i.alp, %bb.gd ]
  %.0318507.i.i.i = phi ptr [ %i.aaf, %bb.cx ], [ %i.alq, %bb.gd ]
  %.0321506.i.i.i = phi ptr [ %i.aag, %bb.cx ], [ %.6.i.i.i, %bb.gd ]
  %.0324505.i.i.i = phi i32 [ %i.aah, %bb.cx ], [ %.34.i.i.i, %bb.gd ]
  %.0331504.i.i.i = phi i32 [ %i.aai, %bb.cx ], [ %.22353.i.i.i, %bb.gd ]
  %.0354503.i.i.i = phi i32 [ %i.aaj, %bb.cx ], [ %.34388.i.i.i, %bb.gd ]
  br label %bb.cy

bb.cy:                                            ; preds = %bb.gc, %.preheader.i.i.i
  %.0502.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.all, %bb.gc ]
  %.1317501.i.i.i = phi ptr [ %.0316508.i.i.i, %.preheader.i.i.i ], [ %i.alm, %bb.gc ] ; 7 uses
  %.1319500.i.i.i = phi ptr [ %.0318507.i.i.i, %.preheader.i.i.i ], [ %i.aln, %bb.gc ] ; 4 uses
  %.1322499.i.i.i = phi ptr [ %.0321506.i.i.i, %.preheader.i.i.i ], [ %.6.i.i.i, %bb.gc ] ; 2 uses
  %.1325498.i.i.i = phi i32 [ %.0324505.i.i.i, %.preheader.i.i.i ], [ %.34.i.i.i, %bb.gc ] ; 5 uses
  %.1332497.i.i.i = phi i32 [ %.0331504.i.i.i, %.preheader.i.i.i ], [ %.22353.i.i.i, %bb.gc ] ; 3 uses
  %.1355496.i.i.i = phi i32 [ %.0354503.i.i.i, %.preheader.i.i.i ], [ %.34388.i.i.i, %bb.gc ] ; 5 uses
  %i.aan = load i32, ptr %.1319500.i.i.i, align 4, !tbaa !3 ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.aan, 0
  br i1 %.not.i.i.i, label %bb.gc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aao = and i32 %i.aan, 2097168
  %i.aap = icmp eq i32 %i.aao, 16
  br i1 %i.aap, label %bb.da, label %bb.dt

bb.da:                                            ; preds = %bb.cz
  %i.aaq = and i32 %i.aan, 495
  %.not.i.i.i.i = icmp eq i32 %i.aaq, 0
  %i.aar = select i1 %.not.i.i.i.i, i64 14, i64 15
  %i.aas = and i32 %i.aan, 1048576
  %.not4.i.i.i.i = icmp eq i32 %i.aas, 0
  %i.aat = select i1 %.not4.i.i.i.i, i64 %i.aar, i64 16
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.aat ; 4 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !122 ; 6 uses
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !124 ; 6 uses
  %i.aax = sub i32 %.1332497.i.i.i, %i.aaw        ; 5 uses
  %i.aay = lshr i32 %.1325498.i.i.i, 16
  %i.aaz = icmp ult i32 %i.aay, %i.aaw
  br i1 %i.aaz, label %bb.db, label %bb.dj

bb.db:                                            ; preds = %bb.da
  %i.aba = icmp ult i32 %i.aax, %i.aaw            ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !126 ; 2 uses
  %.sink.i.i.i = select i1 %i.aba, i64 8, i64 16
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aav, i64 %.sink.i.i.i
  %storemerge440.i.i.i = load ptr, ptr %i.abd, align 8, !tbaa !122
  store ptr %storemerge440.i.i.i, ptr %i.aau, align 8, !tbaa !122
  br label %bb.dc

bb.dc:                                            ; preds = %bb.di, %bb.db
  %.2356.i.i.i = phi i32 [ %.1355496.i.i.i, %bb.db ], [ %i.abv, %bb.di ] ; 2 uses
  %.3334.i.i.i = phi i32 [ %i.aaw, %bb.db ], [ %i.abt, %bb.di ]
  %.2326.i.i.i = phi i32 [ %.1325498.i.i.i, %bb.db ], [ %i.abu, %bb.di ] ; 4 uses
  %i.abe = icmp eq i32 %.2356.i.i.i, 0
  br i1 %i.abe, label %bb.dd, label %bb.di

bb.dd:                                            ; preds = %bb.dc
  %i.abf = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 1 ; 3 uses
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !48 ; 2 uses
  %i.abi = zext i8 %i.abh to i32                  ; 2 uses
  %i.abj = load i8, ptr %i.abf, align 1, !tbaa !48
  %i.abk = icmp eq i8 %i.abj, -1
  br i1 %i.abk, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.abl = icmp ugt i8 %i.abh, -113
  br i1 %i.abl, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.abm = add i32 %.2326.i.i.i, 65280
  %i.abn = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.abo = add i32 %i.abn, 1
  store i32 %i.abo, ptr %i.gy, align 4, !tbaa !127
  br label %bb.di

bb.dg:                                            ; preds = %bb.de
  store ptr %i.abg, ptr %i.gx, align 8, !tbaa !111
  %i.abp = shl nuw nsw i32 %i.abi, 9
  %i.abq = add i32 %i.abp, %.2326.i.i.i
  br label %bb.di

bb.dh:                                            ; preds = %bb.dd
  store ptr %i.abg, ptr %i.gx, align 8, !tbaa !111
  %i.abr = shl nuw nsw i32 %i.abi, 8
  %i.abs = add i32 %i.abr, %.2326.i.i.i
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dc
  %.4358.i.i.i = phi i32 [ %.2356.i.i.i, %bb.dc ], [ 8, %bb.df ], [ 7, %bb.dg ], [ 8, %bb.dh ]
  %.4328.i.i.i = phi i32 [ %.2326.i.i.i, %bb.dc ], [ %i.abm, %bb.df ], [ %i.abq, %bb.dg ], [ %i.abs, %bb.dh ]
  %i.abt = shl i32 %.3334.i.i.i, 1                ; 3 uses
  %i.abu = shl i32 %.4328.i.i.i, 1                ; 2 uses
  %i.abv = add i32 %.4358.i.i.i, -1               ; 2 uses
  %i.abw = icmp ult i32 %i.abt, 32768
  br i1 %i.abw, label %bb.dc, label %.loopexit471.i.loopexit.i.i, !llvm.loop !128

bb.dj:                                            ; preds = %bb.da
  %i.abx = shl nuw i32 %i.aaw, 16
  %i.aby = sub i32 %.1325498.i.i.i, %i.abx        ; 2 uses
  %i.abz = and i32 %i.aax, 32768
  %i.aca = icmp eq i32 %i.abz, 0
  br i1 %i.aca, label %bb.dk, label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  %i.acb = icmp ult i32 %i.aax, %i.aaw            ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !126 ; 2 uses
  %.sink588.i.i.i = select i1 %i.acb, i64 16, i64 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aav, i64 %.sink588.i.i.i
  %storemerge.i.i.i = load ptr, ptr %i.ace, align 8, !tbaa !122
  store ptr %storemerge.i.i.i, ptr %i.aau, align 8, !tbaa !122
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dr, %bb.dk
  %.5359.i.i.i = phi i32 [ %.1355496.i.i.i, %bb.dk ], [ %i.acw, %bb.dr ] ; 2 uses
  %.4335.i.i.i = phi i32 [ %i.aax, %bb.dk ], [ %i.acu, %bb.dr ]
  %.5329.i.i.i = phi i32 [ %i.aby, %bb.dk ], [ %i.acv, %bb.dr ] ; 4 uses
  %i.acf = icmp eq i32 %.5359.i.i.i, 0
  br i1 %i.acf, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  %i.acg = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 1 ; 3 uses
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !48 ; 2 uses
  %i.acj = zext i8 %i.aci to i32                  ; 2 uses
  %i.ack = load i8, ptr %i.acg, align 1, !tbaa !48
  %i.acl = icmp eq i8 %i.ack, -1
  br i1 %i.acl, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.acm = icmp ugt i8 %i.aci, -113
  br i1 %i.acm, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.acn = add i32 %.5329.i.i.i, 65280
  %i.aco = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.acp = add i32 %i.aco, 1
  store i32 %i.acp, ptr %i.gy, align 4, !tbaa !127
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dn
  store ptr %i.ach, ptr %i.gx, align 8, !tbaa !111
  %i.acq = shl nuw nsw i32 %i.acj, 9
  %i.acr = add i32 %i.acq, %.5329.i.i.i
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  store ptr %i.ach, ptr %i.gx, align 8, !tbaa !111
  %i.acs = shl nuw nsw i32 %i.acj, 8
  %i.act = add i32 %i.acs, %.5329.i.i.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl
  %.7361.i.i.i = phi i32 [ %.5359.i.i.i, %bb.dl ], [ 8, %bb.do ], [ 7, %bb.dp ], [ 8, %bb.dq ]
  %.7.i.i.i = phi i32 [ %.5329.i.i.i, %bb.dl ], [ %i.acn, %bb.do ], [ %i.acr, %bb.dp ], [ %i.act, %bb.dq ]
  %i.acu = shl i32 %.4335.i.i.i, 1                ; 3 uses
  %i.acv = shl i32 %.7.i.i.i, 1                   ; 2 uses
  %i.acw = add i32 %.7361.i.i.i, -1               ; 2 uses
  %i.acx = icmp ult i32 %i.acu, 32768
  br i1 %i.acx, label %bb.dl, label %.loopexit471.i.loopexit74.i.i, !llvm.loop !129

bb.ds:                                            ; preds = %bb.dj
  %i.acy = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !126
  br label %.loopexit471.i.i.i

.loopexit471.i.loopexit.i.i:                      ; preds = %bb.di
  %.not439.i.i.i = icmp eq i32 %i.abc, 0
  %i.ada = zext i1 %.not439.i.i.i to i32
  %.0389.i.i.i = select i1 %i.aba, i32 %i.abc, i32 %i.ada
  br label %.loopexit471.i.i.i

.loopexit471.i.loopexit74.i.i:                    ; preds = %bb.dr
  %.not438.i.i.i = icmp eq i32 %i.acd, 0
  %i.adb = zext i1 %.not438.i.i.i to i32
  %.1390.i.i.i = select i1 %i.acb, i32 %i.adb, i32 %i.acd
  br label %.loopexit471.i.i.i

.loopexit471.i.i.i:                               ; preds = %.loopexit471.i.loopexit74.i.i, %.loopexit471.i.loopexit.i.i, %bb.ds
end_hunk_0
begin_hunk_1_@opj_t1_clbl_decode_processor:bb.a
bb.io:                                            ; preds = %bb.in
  %i.auo = and i32 %.2420.us.i.i.i, 253440
  %.not.i484.us.i.i.i = icmp eq i32 %i.auo, 0
  %i.aup = select i1 %.not.i484.us.i.i.i, i64 14, i64 15
  %i.auq = and i32 %.2420.us.i.i.i, 536870912
  %.not4.i485.us.i.i.i = icmp eq i32 %i.auq, 0
  %i.aur = select i1 %.not4.i485.us.i.i.i, i64 %i.aup, i64 16
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.aur ; 4 uses
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !122 ; 6 uses
  %i.auu = load i32, ptr %i.aut, align 8, !tbaa !124 ; 6 uses
  %i.auv = sub i32 %.16364.us.i.i.i, %i.auu       ; 5 uses
  %i.auw = lshr i32 %.25.us.i.i.i, 16
  %i.aux = icmp ult i32 %i.auw, %i.auu
  br i1 %i.aux, label %bb.iz, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.auy = shl nuw i32 %i.auu, 16
  %i.auz = sub i32 %.25.us.i.i.i, %i.auy          ; 2 uses
  %i.ava = and i32 %i.auv, 32768
  %i.avb = icmp eq i32 %i.ava, 0
  br i1 %i.avb, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aut, i64 4
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !126
  br label %.loopexit489.us.i.i.i

bb.ir:                                            ; preds = %bb.ip
  %i.ave = icmp ult i32 %i.auv, %i.auu            ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.aut, i64 4
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !126 ; 2 uses
  %.sink680.i.i.i = select i1 %i.ave, i64 16, i64 8
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sink680.i.i.i
  %storemerge474.us.i.i.i = load ptr, ptr %i.avh, align 8, !tbaa !122
  store ptr %storemerge474.us.i.i.i, ptr %i.aus, align 8, !tbaa !122
  br label %bb.is

bb.is:                                            ; preds = %bb.iy, %bb.ir
  %.29400.us.i.i.i = phi i32 [ %.25396.us.i.i.i, %bb.ir ], [ %i.avz, %bb.iy ] ; 2 uses
  %.19367.us.i.i.i = phi i32 [ %i.auv, %bb.ir ], [ %i.avx, %bb.iy ]
  %.29.us.i.i.i = phi i32 [ %i.auz, %bb.ir ], [ %i.avy, %bb.iy ] ; 4 uses
  %i.avi = icmp eq i32 %.29400.us.i.i.i, 0
  br i1 %i.avi, label %bb.it, label %bb.iy

bb.it:                                            ; preds = %bb.is
  %i.avj = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 1 ; 3 uses
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !48 ; 2 uses
  %i.avm = zext i8 %i.avl to i32                  ; 2 uses
  %i.avn = load i8, ptr %i.avj, align 1, !tbaa !48
  %i.avo = icmp eq i8 %i.avn, -1
  br i1 %i.avo, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  store ptr %i.avk, ptr %i.gx, align 8, !tbaa !111
  %i.avp = shl nuw nsw i32 %i.avm, 8
  %i.avq = add i32 %i.avp, %.29.us.i.i.i
  br label %bb.iy

bb.iv:                                            ; preds = %bb.it
  %i.avr = icmp ugt i8 %i.avl, -113
  br i1 %i.avr, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  store ptr %i.avk, ptr %i.gx, align 8, !tbaa !111
  %i.avs = shl nuw nsw i32 %i.avm, 9
  %i.avt = add i32 %i.avs, %.29.us.i.i.i
  br label %bb.iy

bb.ix:                                            ; preds = %bb.iv
  %i.avu = add i32 %.29.us.i.i.i, 65280
  %i.avv = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.avw = add i32 %i.avv, 1
  store i32 %i.avw, ptr %i.gy, align 4, !tbaa !127
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iu, %bb.is
  %.31402.us.i.i.i = phi i32 [ %.29400.us.i.i.i, %bb.is ], [ 8, %bb.ix ], [ 7, %bb.iw ], [ 8, %bb.iu ]
  %.31.us.i.i.i = phi i32 [ %.29.us.i.i.i, %bb.is ], [ %i.avu, %bb.ix ], [ %i.avt, %bb.iw ], [ %i.avq, %bb.iu ]
  %i.avx = shl i32 %.19367.us.i.i.i, 1            ; 3 uses
  %i.avy = shl i32 %.31.us.i.i.i, 1               ; 2 uses
  %i.avz = add i32 %.31402.us.i.i.i, -1           ; 2 uses
  %i.awa = icmp ult i32 %i.avx, 32768
  br i1 %i.awa, label %bb.is, label %.loopexit489.us.i.loopexit75.i.i, !llvm.loop !144

bb.iz:                                            ; preds = %bb.io
  %i.awb = icmp ult i32 %i.auv, %i.auu            ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.aut, i64 4
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !126 ; 2 uses
  %.sink681.i.i.i = select i1 %i.awb, i64 8, i64 16
  %i.awe = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sink681.i.i.i
  %storemerge477.us.i.i.i = load ptr, ptr %i.awe, align 8, !tbaa !122
  store ptr %storemerge477.us.i.i.i, ptr %i.aus, align 8, !tbaa !122
  br label %bb.ja

bb.ja:                                            ; preds = %bb.jg, %bb.iz
  %.26397.us.i.i.i = phi i32 [ %.25396.us.i.i.i, %bb.iz ], [ %i.aww, %bb.jg ] ; 2 uses
  %.18366.us.i.i.i = phi i32 [ %i.auu, %bb.iz ], [ %i.awu, %bb.jg ]
  %.26.us.i.i.i = phi i32 [ %.25.us.i.i.i, %bb.iz ], [ %i.awv, %bb.jg ] ; 4 uses
  %i.awf = icmp eq i32 %.26397.us.i.i.i, 0
  br i1 %i.awf, label %bb.jb, label %bb.jg

bb.jb:                                            ; preds = %bb.ja
  %i.awg = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 1 ; 3 uses
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !48 ; 2 uses
  %i.awj = zext i8 %i.awi to i32                  ; 2 uses
  %i.awk = load i8, ptr %i.awg, align 1, !tbaa !48
  %i.awl = icmp eq i8 %i.awk, -1
  br i1 %i.awl, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  store ptr %i.awh, ptr %i.gx, align 8, !tbaa !111
  %i.awm = shl nuw nsw i32 %i.awj, 8
  %i.awn = add i32 %i.awm, %.26.us.i.i.i
  br label %bb.jg

bb.jd:                                            ; preds = %bb.jb
  %i.awo = icmp ugt i8 %i.awi, -113
  br i1 %i.awo, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  store ptr %i.awh, ptr %i.gx, align 8, !tbaa !111
  %i.awp = shl nuw nsw i32 %i.awj, 9
  %i.awq = add i32 %i.awp, %.26.us.i.i.i
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
  %i.awr = add i32 %.26.us.i.i.i, 65280
  %i.aws = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.awt = add i32 %i.aws, 1
  store i32 %i.awt, ptr %i.gy, align 4, !tbaa !127
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je, %bb.jc, %bb.ja
  %.28399.us.i.i.i = phi i32 [ %.26397.us.i.i.i, %bb.ja ], [ 8, %bb.jf ], [ 7, %bb.je ], [ 8, %bb.jc ]
  %.28.us.i.i.i = phi i32 [ %.26.us.i.i.i, %bb.ja ], [ %i.awr, %bb.jf ], [ %i.awq, %bb.je ], [ %i.awn, %bb.jc ]
  %i.awu = shl i32 %.18366.us.i.i.i, 1            ; 3 uses
  %i.awv = shl i32 %.28.us.i.i.i, 1               ; 2 uses
  %i.aww = add i32 %.28399.us.i.i.i, -1           ; 2 uses
  %i.awx = icmp ult i32 %i.awu, 32768
  br i1 %i.awx, label %bb.ja, label %.loopexit489.us.i.loopexit.i.i, !llvm.loop !145

.loopexit489.us.i.loopexit.i.i:                   ; preds = %bb.jg
  %.not476.us.i.i.i = icmp eq i32 %i.awd, 0
  %i.awy = zext i1 %.not476.us.i.i.i to i32
  %.9415.us.i.i.i = select i1 %i.awb, i32 %i.awd, i32 %i.awy
  br label %.loopexit489.us.i.i.i

.loopexit489.us.i.loopexit75.i.i:                 ; preds = %bb.iy
  %.not475.us.i.i.i = icmp eq i32 %i.avg, 0
  %i.awz = zext i1 %.not475.us.i.i.i to i32
  %.10416.us.i.i.i = select i1 %i.ave, i32 %i.awz, i32 %i.avg
  br label %.loopexit489.us.i.i.i

.loopexit489.us.i.i.i:                            ; preds = %.loopexit489.us.i.loopexit75.i.i, %.loopexit489.us.i.loopexit.i.i, %bb.iq
  %.11417.us.i.i.i = phi i32 [ %i.avd, %bb.iq ], [ %.9415.us.i.i.i, %.loopexit489.us.i.loopexit.i.i ], [ %.10416.us.i.i.i, %.loopexit489.us.i.loopexit75.i.i ]
  %.32403.us.i.i.i = phi i32 [ %.25396.us.i.i.i, %bb.iq ], [ %i.aww, %.loopexit489.us.i.loopexit.i.i ], [ %i.avz, %.loopexit489.us.i.loopexit75.i.i ]
  %.20368.us.i.i.i = phi i32 [ %i.auv, %bb.iq ], [ %i.awu, %.loopexit489.us.i.loopexit.i.i ], [ %i.avx, %.loopexit489.us.i.loopexit75.i.i ]
  %.32.us.i.i.i = phi i32 [ %i.auz, %bb.iq ], [ %i.awv, %.loopexit489.us.i.loopexit.i.i ], [ %i.avy, %.loopexit489.us.i.loopexit75.i.i ]
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %.1334528.us.i.i.i, i64 %i.amg ; 2 uses
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !3 ; 2 uses
  %.lobit478.us.i.i.i = lshr i32 %i.axb, 31
  %.not479.us.i.i.i = icmp eq i32 %.11417.us.i.i.i, %.lobit478.us.i.i.i
  %i.axc = select i1 %.not479.us.i.i.i, i32 %i.amb, i32 %i.ama
  %i.axd = add nsw i32 %i.axc, %i.axb
  store i32 %i.axd, ptr %i.axa, align 4, !tbaa !3
  %i.axe = or i32 %.2420.us.i.i.i, 536870912
  br label %bb.jh

bb.jh:                                            ; preds = %.loopexit489.us.i.i.i, %bb.in
  %.3421.us.i.i.i = phi i32 [ %i.axe, %.loopexit489.us.i.i.i ], [ %.2420.us.i.i.i, %bb.in ]
  %.33404.us.i.i.i = phi i32 [ %.32403.us.i.i.i, %.loopexit489.us.i.i.i ], [ %.25396.us.i.i.i, %bb.in ]
  %.21369.us.i.i.i = phi i32 [ %.20368.us.i.i.i, %.loopexit489.us.i.i.i ], [ %.16364.us.i.i.i, %bb.in ]
  %.33.us.i.i.i = phi i32 [ %.32.us.i.i.i, %.loopexit489.us.i.i.i ], [ %.25.us.i.i.i, %bb.in ]
  %.5.us.i.i.i = phi ptr [ %i.aus, %.loopexit489.us.i.i.i ], [ %.4.us.i.i.i, %bb.in ]
  store i32 %.3421.us.i.i.i, ptr %.1336527.us.i.i.i, align 4, !tbaa !3
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.ge
  %.34405.us.i.i.i = phi i32 [ %.33404.us.i.i.i, %bb.jh ], [ %.1372523.us.i.i.i, %bb.ge ] ; 3 uses
  %.22370.us.i.i.i = phi i32 [ %.21369.us.i.i.i, %bb.jh ], [ %.1349524.us.i.i.i, %bb.ge ] ; 3 uses
  %.34.us.i.i.i = phi i32 [ %.33.us.i.i.i, %bb.jh ], [ %.1342525.us.i.i.i, %bb.ge ] ; 3 uses
  %.6.us.i.i.i = phi ptr [ %.5.us.i.i.i, %bb.jh ], [ %.1339526.us.i.i.i, %bb.ge ] ; 3 uses
  %i.axf = add nuw i32 %.0529.us.i.i.i, 1         ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.1334528.us.i.i.i, i64 4 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %.1336527.us.i.i.i, i64 4
  %exitcond.not.i6.i.i = icmp eq i32 %i.axf, %i.zz
  br i1 %exitcond.not.i6.i.i, label %._crit_edge.us.i.i.i, label %bb.ge, !llvm.loop !146

._crit_edge.us.i.i.i:                             ; preds = %bb.ji
  %i.axi = add nuw i32 %.0332541.us.i.i.i, 4      ; 3 uses
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.axg, i64 %i.amg ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.1336527.us.i.i.i, i64 12 ; 2 uses
  %i.axl = load i32, ptr %i.gq, align 4, !tbaa !108 ; 2 uses
  %i.axm = and i32 %i.axl, -4
  %i.axn = icmp ult i32 %i.axi, %i.axm
  br i1 %i.axn, label %.preheader497.us.i.i.i, label %._crit_edge542.i.i.i, !llvm.loop !147

.preheader497.lr.ph.split.i.i.i:                  ; preds = %.preheader497.lr.ph.i.i.i
  %i.axo = and i32 %i.aab, -4
  %i.axp = add i32 %i.aab, -4
  %2 = lshr i32 %i.axp, 2
  %i.axq = zext nneg i32 %2 to i64                ; 2 uses
  %3 = shl nuw nsw i64 %i.axq, 2
  %i.axr = add nuw nsw i64 %3, 4
  %i.axs = mul nuw nsw i64 %i.axr, %i.amg
  %scevgep.i.i.i = getelementptr i8, ptr %i.aad, i64 %i.axs
  %i.axt = shl nuw nsw i64 %i.axq, 3
  %i.axu = getelementptr i8, ptr %i.aae, i64 %i.axt
  %scevgep601.i.i.i = getelementptr i8, ptr %i.axu, i64 20
  br label %._crit_edge542.i.i.i

._crit_edge542.i.i.i:                             ; preds = %._crit_edge.us.i.i.i, %.preheader497.lr.ph.split.i.i.i, %._crit_edge.i200.i
  %.0371.lcssa.i.i.i = phi i32 [ %i.aly, %._crit_edge.i200.i ], [ %i.aly, %.preheader497.lr.ph.split.i.i.i ], [ %.34405.us.i.i.i, %._crit_edge.us.i.i.i ]
  %.0348.lcssa.i.i.i = phi i32 [ %i.alx, %._crit_edge.i200.i ], [ %i.alx, %.preheader497.lr.ph.split.i.i.i ], [ %.22370.us.i.i.i, %._crit_edge.us.i.i.i ]
  %.0341.lcssa.i.i.i = phi i32 [ %i.alw, %._crit_edge.i200.i ], [ %i.alw, %.preheader497.lr.ph.split.i.i.i ], [ %.34.us.i.i.i, %._crit_edge.us.i.i.i ]
  %.0338.lcssa.i.i.i = phi ptr [ %i.alv, %._crit_edge.i200.i ], [ %i.alv, %.preheader497.lr.ph.split.i.i.i ], [ %.6.us.i.i.i, %._crit_edge.us.i.i.i ]
  %.0335.lcssa.i.i.i = phi ptr [ %i.alu, %._crit_edge.i200.i ], [ %scevgep601.i.i.i, %.preheader497.lr.ph.split.i.i.i ], [ %i.axk, %._crit_edge.us.i.i.i ]
  %.0333.lcssa.i.i.i = phi ptr [ %i.aad, %._crit_edge.i200.i ], [ %scevgep.i.i.i, %.preheader497.lr.ph.split.i.i.i ], [ %i.axj, %._crit_edge.us.i.i.i ]
  %.0332.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i200.i ], [ %i.axo, %.preheader497.lr.ph.split.i.i.i ], [ %i.axi, %._crit_edge.us.i.i.i ] ; 4 uses
  %.lcssa521.i.i.i = phi i32 [ %i.aab, %._crit_edge.i200.i ], [ %i.aab, %.preheader497.lr.ph.split.i.i.i ], [ %i.axl, %._crit_edge.us.i.i.i ] ; 3 uses
  store ptr %.0338.lcssa.i.i.i, ptr %i.gt, align 8, !tbaa !120
  store i32 %.0341.lcssa.i.i.i, ptr %.0254, align 8, !tbaa !110
  store i32 %.0348.lcssa.i.i.i, ptr %i.gu, align 4, !tbaa !121
  store i32 %.0371.lcssa.i.i.i, ptr %i.gv, align 8, !tbaa !109
  %i.axv = icmp ult i32 %.0332.lcssa.i.i.i, %.lcssa521.i.i.i
  %i.axw = icmp ne i32 %i.zz, 0
  %or.cond.i.i.i = and i1 %i.axw, %i.axv
  br i1 %or.cond.i.i.i, label %.preheader.lr.ph.i.i.i, label %opj_t1_dec_sigpass_raw.exit.i

.preheader.lr.ph.i.i.i:                           ; preds = %._crit_edge542.i.i.i
  %i.axx = sub nsw i32 0, %i.ama
  br label %.preheader.i8.i.i

.preheader.i8.i.i:                                ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i
  %i.axy = phi i32 [ %.lcssa521.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bbv, %._crit_edge.i.i.i ] ; 2 uses
  %i.axz = phi i32 [ %.lcssa521.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bbw, %._crit_edge.i.i.i ]
  %.1561.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %i.bbx, %._crit_edge.i.i.i ]
  %.2560.i.i.i = phi ptr [ %.0333.lcssa.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bby, %._crit_edge.i.i.i ] ; 2 uses
  %.2337559.i.i.i = phi ptr [ %.0335.lcssa.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bbz, %._crit_edge.i.i.i ] ; 4 uses
  %.not563.i.i.i = icmp eq i32 %i.axz, %.0332.lcssa.i.i.i
  br i1 %.not563.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i8.i.i
  %.pre.i.i.i = load i32, ptr %.2337559.i.i.i, align 4, !tbaa !3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %opj_t1_dec_refpass_step_mqc.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.aya = phi i32 [ %i.axy, %.lr.ph.preheader.i.i.i ], [ %i.bbq, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ]
  %i.ayb = phi i32 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.bbr, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ] ; 2 uses
  %i.ayc = trunc nuw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.ayd = mul i32 %i.zz, %i.ayc
  %i.aye = zext i32 %i.ayd to i64
  %i.ayf = getelementptr inbounds nuw [4 x i8], ptr %.2560.i.i.i, i64 %i.aye ; 2 uses
  %i.ayg = mul i32 %i.ayc, 3                      ; 4 uses
  %i.ayh = shl i32 2097168, %i.ayg
  %i.ayi = and i32 %i.ayh, %i.ayb
  %i.ayj = shl i32 16, %i.ayg
  %i.ayk = icmp eq i32 %i.ayi, %i.ayj
  br i1 %i.ayk, label %bb.jj, label %opj_t1_dec_refpass_step_mqc.exit.i.i.i

bb.jj:                                            ; preds = %.lr.ph.i.i.i
  %i.ayl = lshr i32 %i.ayb, %i.ayg                ; 2 uses
  %i.aym = and i32 %i.ayl, 495
  %.not.i.i.i.i.i = icmp eq i32 %i.aym, 0
  %i.ayn = select i1 %.not.i.i.i.i.i, i64 14, i64 15
  %i.ayo = and i32 %i.ayl, 1048576
  %.not4.i.i.i.i.i = icmp eq i32 %i.ayo, 0
  %i.ayp = select i1 %.not4.i.i.i.i.i, i64 %i.ayn, i64 16
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ayp ; 4 uses
  store ptr %i.ayq, ptr %i.gt, align 8, !tbaa !120
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !122 ; 6 uses
  %i.ays = load i32, ptr %i.ayr, align 8, !tbaa !124 ; 7 uses
  %i.ayt = load i32, ptr %i.gu, align 4, !tbaa !121
  %i.ayu = sub i32 %i.ayt, %i.ays                 ; 5 uses
  store i32 %i.ayu, ptr %i.gu, align 4, !tbaa !121
  %i.ayv = load i32, ptr %.0254, align 8, !tbaa !110 ; 3 uses
  %i.ayw = lshr i32 %i.ayv, 16
  %i.ayx = icmp ult i32 %i.ayw, %i.ays
  br i1 %i.ayx, label %bb.jk, label %bb.js

bb.jk:                                            ; preds = %bb.jj
  %i.ayy = icmp ult i32 %i.ayu, %i.ays            ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayr, i64 4
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !126 ; 2 uses
  %.sink.i.i.i.i = select i1 %i.ayy, i64 8, i64 16
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayr, i64 %.sink.i.i.i.i
  store i32 %i.ays, ptr %i.gu, align 4, !tbaa !121
  %storemerge88.i.i.i.i = load ptr, ptr %i.azb, align 8, !tbaa !122
  store ptr %storemerge88.i.i.i.i, ptr %i.ayq, align 8, !tbaa !122
  %.promoted92.i.i.i.i = load i32, ptr %i.gv, align 8, !tbaa !109
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jr, %bb.jk
  %i.azc = phi i32 [ %i.azw, %bb.jr ], [ %i.ays, %bb.jk ]
  %i.azd = phi i32 [ %i.azx, %bb.jr ], [ %i.ayv, %bb.jk ] ; 4 uses
  %i.aze = phi i32 [ %i.azy, %bb.jr ], [ %.promoted92.i.i.i.i, %bb.jk ] ; 2 uses
  %i.azf = icmp eq i32 %i.aze, 0
  br i1 %i.azf, label %bb.jm, label %bb.jr

bb.jm:                                            ; preds = %bb.jl
  %i.azg = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 1 ; 3 uses
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !48 ; 2 uses
  %i.azj = zext i8 %i.azi to i32                  ; 2 uses
  %i.azk = load i8, ptr %i.azg, align 1, !tbaa !48
  %i.azl = icmp eq i8 %i.azk, -1
  br i1 %i.azl, label %bb.jn, label %bb.jq

bb.jn:                                            ; preds = %bb.jm
  %i.azm = icmp ugt i8 %i.azi, -113
  br i1 %i.azm, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.azn = add i32 %i.azd, 65280
  %i.azo = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.azp = add i32 %i.azo, 1
  store i32 %i.azp, ptr %i.gy, align 4, !tbaa !127
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jn
  store ptr %i.azh, ptr %i.gx, align 8, !tbaa !111
  %i.azq = shl nuw nsw i32 %i.azj, 9
  %i.azr = add i32 %i.azq, %i.azd
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jm
  store ptr %i.azh, ptr %i.gx, align 8, !tbaa !111
  %i.azs = shl nuw nsw i32 %i.azj, 8
  %i.azt = add i32 %i.azs, %i.azd
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jl
  %i.azu = phi i32 [ %i.azt, %bb.jq ], [ %i.azr, %bb.jp ], [ %i.azn, %bb.jo ], [ %i.azd, %bb.jl ]
  %i.azv = phi i32 [ 8, %bb.jq ], [ 7, %bb.jp ], [ 8, %bb.jo ], [ %i.aze, %bb.jl ]
  %i.azw = shl i32 %i.azc, 1                      ; 3 uses
  store i32 %i.azw, ptr %i.gu, align 4, !tbaa !121
  %i.azx = shl i32 %i.azu, 1                      ; 2 uses
  store i32 %i.azx, ptr %.0254, align 8, !tbaa !110
  %i.azy = add i32 %i.azv, -1                     ; 2 uses
  store i32 %i.azy, ptr %i.gv, align 8, !tbaa !109
  %i.azz = icmp ult i32 %i.azw, 32768
  br i1 %i.azz, label %bb.jl, label %.loopexit.i.loopexit.i.i.i, !llvm.loop !148

bb.js:                                            ; preds = %bb.jj
  %i.baa = shl nuw i32 %i.ays, 16
  %i.bab = sub i32 %i.ayv, %i.baa                 ; 2 uses
  store i32 %i.bab, ptr %.0254, align 8, !tbaa !110
  %i.bac = and i32 %i.ayu, 32768
  %i.bad = icmp eq i32 %i.bac, 0
  br i1 %i.bad, label %bb.jt, label %bb.kb

bb.jt:                                            ; preds = %bb.js
  %i.bae = icmp ult i32 %i.ayu, %i.ays            ; 2 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %i.ayr, i64 4
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !126 ; 2 uses
  %.sink103.i.i.i.i = select i1 %i.bae, i64 16, i64 8
  %i.bah = getelementptr inbounds nuw i8, ptr %i.ayr, i64 %.sink103.i.i.i.i
  %storemerge.i.i.i.i = load ptr, ptr %i.bah, align 8, !tbaa !122
  store ptr %storemerge.i.i.i.i, ptr %i.ayq, align 8, !tbaa !122
  %.promoted.i.i.i.i = load i32, ptr %i.gv, align 8, !tbaa !109
  br label %bb.ju

bb.ju:                                            ; preds = %bb.ka, %bb.jt
  %i.bai = phi i32 [ %i.bbc, %bb.ka ], [ %i.ayu, %bb.jt ]
  %i.baj = phi i32 [ %i.bbd, %bb.ka ], [ %i.bab, %bb.jt ] ; 4 uses
  %i.bak = phi i32 [ %i.bbe, %bb.ka ], [ %.promoted.i.i.i.i, %bb.jt ] ; 2 uses
  %i.bal = icmp eq i32 %i.bak, 0
  br i1 %i.bal, label %bb.jv, label %bb.ka

bb.jv:                                            ; preds = %bb.ju
  %i.bam = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bam, i64 1 ; 3 uses
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !48 ; 2 uses
  %i.bap = zext i8 %i.bao to i32                  ; 2 uses
  %i.baq = load i8, ptr %i.bam, align 1, !tbaa !48
  %i.bar = icmp eq i8 %i.baq, -1
  br i1 %i.bar, label %bb.jw, label %bb.jz

bb.jw:                                            ; preds = %bb.jv
  %i.bas = icmp ugt i8 %i.bao, -113
  br i1 %i.bas, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.bat = add i32 %i.baj, 65280
  %i.bau = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.bav = add i32 %i.bau, 1
  store i32 %i.bav, ptr %i.gy, align 4, !tbaa !127
  br label %bb.ka

bb.jy:                                            ; preds = %bb.jw
  store ptr %i.ban, ptr %i.gx, align 8, !tbaa !111
  %i.baw = shl nuw nsw i32 %i.bap, 9
  %i.bax = add i32 %i.baw, %i.baj
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jv
  store ptr %i.ban, ptr %i.gx, align 8, !tbaa !111
  %i.bay = shl nuw nsw i32 %i.bap, 8
  %i.baz = add i32 %i.bay, %i.baj
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.ju
  %i.bba = phi i32 [ %i.baz, %bb.jz ], [ %i.bax, %bb.jy ], [ %i.bat, %bb.jx ], [ %i.baj, %bb.ju ]
  %i.bbb = phi i32 [ 8, %bb.jz ], [ 7, %bb.jy ], [ 8, %bb.jx ], [ %i.bak, %bb.ju ]
  %i.bbc = shl i32 %i.bai, 1                      ; 3 uses
  store i32 %i.bbc, ptr %i.gu, align 4, !tbaa !121
  %i.bbd = shl i32 %i.bba, 1                      ; 2 uses
end_hunk_1
begin_hunk_2_@opj_t1_dec_sigpass_mqc:bb.a
  %i.awo = load i32, ptr %i.z, align 4, !tbaa !127
  %i.awp = add i32 %i.awo, 1
  store i32 %i.awp, ptr %i.z, align 4, !tbaa !127
  br label %bb.le

bb.lc:                                            ; preds = %bb.la
  store ptr %i.awh, ptr %i.y, align 8, !tbaa !111
  %i.awq = shl nuw nsw i32 %i.awj, 9
  %i.awr = add i32 %i.awq, %.57.i54
  br label %bb.le

bb.ld:                                            ; preds = %bb.kz
  store ptr %i.awh, ptr %i.y, align 8, !tbaa !111
  %i.aws = shl nuw nsw i32 %i.awj, 8
  %i.awt = add i32 %i.aws, %.57.i54
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc, %bb.lb, %bb.ky
  %.59741.i = phi i32 [ %.57739.i, %bb.ky ], [ 8, %bb.lb ], [ 7, %bb.lc ], [ 8, %bb.ld ]
  %.59.i55 = phi i32 [ %.57.i54, %bb.ky ], [ %i.awn, %bb.lb ], [ %i.awr, %bb.lc ], [ %i.awt, %bb.ld ]
  %i.awu = shl i32 %.37676.i, 1                   ; 3 uses
  %i.awv = shl i32 %.59.i55, 1                    ; 2 uses
  %i.aww = add i32 %.59741.i, -1                  ; 2 uses
  %i.awx = icmp ult i32 %i.awu, 32768
  br i1 %i.awx, label %bb.ky, label %.loopexit.i43.loopexit, !llvm.loop !352

bb.lf:                                            ; preds = %bb.kw
  %i.awy = shl nuw i32 %i.avx, 16
  %i.awz = sub i32 %.56.i41, %i.awy               ; 2 uses
  %i.axa = and i32 %i.avy, 32768
  %i.axb = icmp eq i32 %i.axa, 0
  br i1 %i.axb, label %bb.lg, label %bb.lo

bb.lg:                                            ; preds = %bb.lf
  %i.axc = icmp ult i32 %i.avy, %i.avx            ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !126 ; 2 uses
  %.sink1153.i = select i1 %i.axc, i64 16, i64 8
  %i.axf = getelementptr inbounds nuw i8, ptr %i.avw, i64 %.sink1153.i
  %storemerge884.i = load ptr, ptr %i.axf, align 8, !tbaa !122
  store ptr %storemerge884.i, ptr %i.avv, align 8, !tbaa !122
  br label %bb.lh

bb.lh:                                            ; preds = %bb.ln, %bb.lg
  %.60742.i = phi i32 [ %.56738.i, %bb.lg ], [ %i.axx, %bb.ln ] ; 2 uses
  %.38677.i = phi i32 [ %i.avy, %bb.lg ], [ %i.axv, %bb.ln ]
  %.60.i52 = phi i32 [ %i.awz, %bb.lg ], [ %i.axw, %bb.ln ] ; 4 uses
  %i.axg = icmp eq i32 %.60742.i, 0
  br i1 %i.axg, label %bb.li, label %bb.ln

bb.li:                                            ; preds = %bb.lh
  %i.axh = load ptr, ptr %i.y, align 8, !tbaa !111 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 1 ; 3 uses
  %i.axj = load i8, ptr %i.axi, align 1, !tbaa !48 ; 2 uses
  %i.axk = zext i8 %i.axj to i32                  ; 2 uses
  %i.axl = load i8, ptr %i.axh, align 1, !tbaa !48
  %i.axm = icmp eq i8 %i.axl, -1
  br i1 %i.axm, label %bb.lj, label %bb.lm

bb.lj:                                            ; preds = %bb.li
  %i.axn = icmp ugt i8 %i.axj, -113
  br i1 %i.axn, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.axo = add i32 %.60.i52, 65280
  %i.axp = load i32, ptr %i.z, align 4, !tbaa !127
  %i.axq = add i32 %i.axp, 1
  store i32 %i.axq, ptr %i.z, align 4, !tbaa !127
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj
  store ptr %i.axi, ptr %i.y, align 8, !tbaa !111
  %i.axr = shl nuw nsw i32 %i.axk, 9
  %i.axs = add i32 %i.axr, %.60.i52
  br label %bb.ln

bb.lm:                                            ; preds = %bb.li
  store ptr %i.axi, ptr %i.y, align 8, !tbaa !111
  %i.axt = shl nuw nsw i32 %i.axk, 8
  %i.axu = add i32 %i.axt, %.60.i52
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll, %bb.lk, %bb.lh
  %.62744.i = phi i32 [ %.60742.i, %bb.lh ], [ 8, %bb.lk ], [ 7, %bb.ll ], [ 8, %bb.lm ]
  %.62.i53 = phi i32 [ %.60.i52, %bb.lh ], [ %i.axo, %bb.lk ], [ %i.axs, %bb.ll ], [ %i.axu, %bb.lm ]
  %i.axv = shl i32 %.38677.i, 1                   ; 3 uses
  %i.axw = shl i32 %.62.i53, 1                    ; 2 uses
  %i.axx = add i32 %.62744.i, -1                  ; 2 uses
  %i.axy = icmp ult i32 %i.axv, 32768
  br i1 %i.axy, label %bb.lh, label %.loopexit.i43.loopexit463, !llvm.loop !353

bb.lo:                                            ; preds = %bb.lf
  %i.axz = getelementptr inbounds nuw i8, ptr %i.avw, i64 4
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !126
  br label %.loopexit.i43

.loopexit.i43.loopexit:                           ; preds = %bb.le
  %.not886.i = icmp eq i32 %i.awd, 0
  %i.ayb = zext i1 %.not886.i to i32
  %.21770.i = select i1 %i.awb, i32 %i.awd, i32 %i.ayb
  br label %.loopexit.i43

.loopexit.i43.loopexit463:                        ; preds = %bb.ln
  %.not885.i = icmp eq i32 %i.axe, 0
  %i.ayc = zext i1 %.not885.i to i32
  %.22771.i = select i1 %i.axc, i32 %i.ayc, i32 %i.axe
  br label %.loopexit.i43

.loopexit.i43:                                    ; preds = %.loopexit.i43.loopexit463, %.loopexit.i43.loopexit, %bb.lo
  %.23772.i = phi i32 [ %i.aya, %bb.lo ], [ %.21770.i, %.loopexit.i43.loopexit ], [ %.22771.i, %.loopexit.i43.loopexit463 ] ; 2 uses
  %.63745.i = phi i32 [ %.56738.i, %bb.lo ], [ %i.aww, %.loopexit.i43.loopexit ], [ %i.axx, %.loopexit.i43.loopexit463 ]
  %.39678.i = phi i32 [ %i.avy, %bb.lo ], [ %i.awu, %.loopexit.i43.loopexit ], [ %i.axv, %.loopexit.i43.loopexit463 ]
  %.63.i44 = phi i32 [ %i.awz, %bb.lo ], [ %i.awv, %.loopexit.i43.loopexit ], [ %i.axw, %.loopexit.i43.loopexit463 ]
  %i.ayd = xor i32 %.23772.i, %i.avt              ; 2 uses
  %.not888.i = icmp eq i32 %.23772.i, %i.avt
  %i.aye = select i1 %.not888.i, i32 %i.v, i32 %i.aa
  %i.ayf = getelementptr inbounds nuw i8, ptr %.1621971.i, i64 768
  store i32 %i.aye, ptr %i.ayf, align 4, !tbaa !3
  %i.ayg = load i32, ptr %i.ava, align 4, !tbaa !3
  %i.ayh = or i32 %i.ayg, 16384
  store i32 %i.ayh, ptr %i.ava, align 4, !tbaa !3
  %i.ayi = shl i32 %i.ayd, 28
  %i.ayj = or i32 %.5778.i, %i.ayi
  %i.ayk = or disjoint i32 %i.ayj, 8192
  %i.ayl = load i32, ptr %i.avc, align 4, !tbaa !3
  %i.aym = or i32 %i.ayl, 4096
  store i32 %i.aym, ptr %i.avc, align 4, !tbaa !3
  %i.ayn = getelementptr inbounds nuw i8, ptr %.1623970.i, i64 264 ; 2 uses
  %i.ayo = shl i32 %i.ayd, 18
  %i.ayp = or disjoint i32 %i.ayo, 2
  %i.ayq = load i32, ptr %i.ayn, align 4, !tbaa !3
  %i.ayr = or i32 %i.ayq, %i.ayp
  store i32 %i.ayr, ptr %i.ayn, align 4, !tbaa !3
  %i.ays = getelementptr inbounds nuw i8, ptr %.1623970.i, i64 260 ; 2 uses
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !3
  %i.ayu = or i32 %i.ayt, 4
  store i32 %i.ayu, ptr %i.ays, align 4, !tbaa !3
  %i.ayv = getelementptr inbounds nuw i8, ptr %.1623970.i, i64 268 ; 2 uses
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !3
  %i.ayx = or i32 %i.ayw, 1
  store i32 %i.ayx, ptr %i.ayv, align 4, !tbaa !3
  br label %bb.lp

bb.lp:                                            ; preds = %.loopexit.i43, %.loopexit905.i
  %.6779.i = phi i32 [ %i.ayk, %.loopexit.i43 ], [ %.5778.i, %.loopexit905.i ]
  %.64746.i = phi i32 [ %.63745.i, %.loopexit.i43 ], [ %.56738.i, %.loopexit905.i ]
  %.40679.i = phi i32 [ %.39678.i, %.loopexit.i43 ], [ %.35674.i, %.loopexit905.i ]
  %.64.i45 = phi i32 [ %.63.i44, %.loopexit.i43 ], [ %.56.i41, %.loopexit905.i ]
  %.8.i46 = phi ptr [ %i.avv, %.loopexit.i43 ], [ %i.ass, %.loopexit905.i ]
  %i.ayy = or i32 %.6779.i, 1073741824
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.kc
  %.7780.i = phi i32 [ %i.ayy, %bb.lp ], [ %.5778.i, %bb.kc ]
  %.65747.i = phi i32 [ %.64746.i, %bb.lp ], [ %.49731.i, %bb.kc ]
  %.41680.i = phi i32 [ %.40679.i, %bb.lp ], [ %.31670.i, %bb.kc ]
  %.65.i47 = phi i32 [ %.64.i45, %bb.lp ], [ %.49.i37, %bb.kc ]
  %.9.i48 = phi ptr [ %.8.i46, %bb.lp ], [ %.7.i38, %bb.kc ]
  store i32 %.7780.i, ptr %.1623970.i, align 4, !tbaa !3
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.fl
  %.66748.i = phi i32 [ %.65747.i, %bb.lq ], [ %.1683966.i, %bb.fl ] ; 3 uses
  %.42681.i = phi i32 [ %.41680.i, %bb.lq ], [ %.1640967.i, %bb.fl ] ; 3 uses
  %.66.i49 = phi i32 [ %.65.i47, %bb.lq ], [ %.1629968.i, %bb.fl ] ; 3 uses
  %.10.i50 = phi ptr [ %.9.i48, %bb.lq ], [ %.1626969.i, %bb.fl ] ; 3 uses
  %i.ayz = add nuw nsw i32 %.0972.i, 1            ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %.1621971.i, i64 4
  %i.azb = getelementptr inbounds nuw i8, ptr %.1623970.i, i64 4
  %exitcond.not.i51 = icmp eq i32 %i.ayz, 64
  br i1 %exitcond.not.i51, label %bb.ls, label %bb.fl, !llvm.loop !354

bb.ls:                                            ; preds = %bb.lr
  %i.azc = add nuw nsw i32 %.0619979.i, 4
  %i.azd = getelementptr inbounds nuw i8, ptr %.1621971.i, i64 772
  %i.aze = getelementptr inbounds nuw i8, ptr %.1623970.i, i64 12
  %i.azf = icmp samesign ult i32 %.0619979.i, 60
  br i1 %i.azf, label %.preheader.i12, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit.sink.split, !llvm.loop !355

bb.lt:                                            ; preds = %bb.b, %bb.a
  %i.azg = and i32 %2, 8
  %.not = icmp eq i32 %i.azg, 0
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !15 ; 6 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !16 ; 3 uses
  %i.azl = add i32 %i.b, 3
  %i.azm = zext i32 %i.azl to i64
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.azk, i64 %i.azm ; 4 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !120 ; 6 uses
  %i.azq = load i32, ptr %0, align 8, !tbaa !110  ; 6 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !121 ; 6 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.azu = load i32, ptr %i.azt, align 8, !tbaa !109 ; 6 uses
  %i.azv = shl nuw nsw i32 1, %1                  ; 2 uses
  %i.azw = lshr exact i32 %i.azv, 1
  %i.azx = or i32 %i.azw, %i.azv                  ; 12 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !108 ; 9 uses
  %.not.i115 = icmp ult i32 %i.azz, 4             ; 2 uses
  br i1 %.not, label %bb.sc, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  br i1 %.not.i115, label %._crit_edge1003.i, label %.preheader934.lr.ph.i

.preheader934.lr.ph.i:                            ; preds = %bb.lu
  %.not1023.i = icmp eq i32 %i.b, 0
  %i.baa = getelementptr i8, ptr %0, i64 200      ; 4 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 48 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 32 uses
  %i.bae = sub nsw i32 0, %i.azx                  ; 4 uses
  %i.baf = zext i32 %i.b to i64
  %i.bag = shl i32 %i.b, 1
  %i.bah = zext i32 %i.bag to i64
  %i.bai = mul i32 %i.b, 3
  %i.baj = zext i32 %i.bai to i64                 ; 3 uses
  br i1 %.not1023.i, label %.preheader934.lr.ph.split.i, label %.preheader934.us.i

.preheader934.us.i:                               ; preds = %.preheader934.lr.ph.i, %._crit_edge.us.i
  %.06291002.us.i = phi i32 [ %i.bzt, %._crit_edge.us.i ], [ 0, %.preheader934.lr.ph.i ]
  %.06301001.us.i = phi ptr [ %i.bzu, %._crit_edge.us.i ], [ %i.azi, %.preheader934.lr.ph.i ]
  %.06321000.us.i = phi ptr [ %i.bzv, %._crit_edge.us.i ], [ %i.azn, %.preheader934.lr.ph.i ]
  %.0635999.us.i = phi ptr [ %.10.us.i, %._crit_edge.us.i ], [ %i.azp, %.preheader934.lr.ph.i ]
  %.0638998.us.i = phi i32 [ %.66.us.i, %._crit_edge.us.i ], [ %i.azq, %.preheader934.lr.ph.i ]
  %.0649997.us.i = phi i32 [ %.42691.us.i, %._crit_edge.us.i ], [ %i.azs, %.preheader934.lr.ph.i ]
  %.0692996.us.i = phi i32 [ %.66758.us.i, %._crit_edge.us.i ], [ %i.azu, %.preheader934.lr.ph.i ]
  br label %bb.lv

bb.lv:                                            ; preds = %bb.sb, %.preheader934.us.i
  %.0990.us.i = phi i32 [ 0, %.preheader934.us.i ], [ %i.bzq, %bb.sb ]
  %.1631989.us.i = phi ptr [ %.06301001.us.i, %.preheader934.us.i ], [ %i.bzr, %bb.sb ] ; 5 uses
  %.1633988.us.i = phi ptr [ %.06321000.us.i, %.preheader934.us.i ], [ %i.bzs, %bb.sb ] ; 13 uses
  %.1636987.us.i = phi ptr [ %.0635999.us.i, %.preheader934.us.i ], [ %.10.us.i, %bb.sb ] ; 2 uses
  %.1639986.us.i = phi i32 [ %.0638998.us.i, %.preheader934.us.i ], [ %.66.us.i, %bb.sb ] ; 5 uses
  %.1650985.us.i = phi i32 [ %.0649997.us.i, %.preheader934.us.i ], [ %.42691.us.i, %bb.sb ] ; 3 uses
  %.1693984.us.i = phi i32 [ %.0692996.us.i, %.preheader934.us.i ], [ %.66758.us.i, %bb.sb ] ; 5 uses
  %i.bak = load i32, ptr %.1633988.us.i, align 4, !tbaa !3 ; 9 uses
  %.not.us.i = icmp eq i32 %i.bak, 0
  br i1 %.not.us.i, label %bb.sb, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bal = and i32 %i.bak, 2097168
  %i.bam = icmp ne i32 %i.bal, 0
  %i.ban = and i32 %i.bak, 495                    ; 2 uses
  %.not859.us.i = icmp eq i32 %i.ban, 0
  %or.cond.us.i = or i1 %i.bam, %.not859.us.i
  br i1 %or.cond.us.i, label %bb.nk, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %.val907.us.i = load ptr, ptr %i.baa, align 8, !tbaa !88
  %i.bao = zext nneg i32 %i.ban to i64
  %i.bap = getelementptr inbounds nuw i8, ptr %.val907.us.i, i64 %i.bao
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !48
  %i.bar = zext i8 %i.baq to i64
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.bab, i64 %i.bar ; 4 uses
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !122 ; 6 uses
  %i.bau = load i32, ptr %i.bat, align 8, !tbaa !124 ; 6 uses
  %i.bav = sub i32 %.1650985.us.i, %i.bau         ; 5 uses
  %i.baw = lshr i32 %.1639986.us.i, 16
  %i.bax = icmp ult i32 %i.baw, %i.bau
  br i1 %i.bax, label %bb.mi, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.bay = shl nuw i32 %i.bau, 16
  %i.baz = sub i32 %.1639986.us.i, %i.bay         ; 2 uses
  %i.bba = and i32 %i.bav, 32768
  %i.bbb = icmp eq i32 %i.bba, 0
  br i1 %i.bbb, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !126
  br label %.loopexit932.us.i

bb.ma:                                            ; preds = %bb.ly
  %i.bbe = icmp ult i32 %i.bav, %i.bau            ; 2 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !126 ; 2 uses
  %.sink.i114 = select i1 %i.bbe, i64 16, i64 8
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bat, i64 %.sink.i114
  %storemerge.us.i = load ptr, ptr %i.bbh, align 8, !tbaa !122
  store ptr %storemerge.us.i, ptr %i.bas, align 8, !tbaa !122
  br label %bb.mb

bb.mb:                                            ; preds = %bb.mh, %bb.ma
  %.5697.us.i = phi i32 [ %.1693984.us.i, %bb.ma ], [ %i.bbz, %bb.mh ] ; 2 uses
  %.4653.us.i = phi i32 [ %i.bav, %bb.ma ], [ %i.bbx, %bb.mh ]
  %.5643.us.i = phi i32 [ %i.baz, %bb.ma ], [ %i.bby, %bb.mh ] ; 4 uses
  %i.bbi = icmp eq i32 %.5697.us.i, 0
  br i1 %i.bbi, label %bb.mc, label %bb.mh

bb.mc:                                            ; preds = %bb.mb
  %i.bbj = load ptr, ptr %i.bac, align 8, !tbaa !111 ; 2 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1 ; 3 uses
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !48 ; 2 uses
  %i.bbm = zext i8 %i.bbl to i32                  ; 2 uses
  %i.bbn = load i8, ptr %i.bbj, align 1, !tbaa !48
  %i.bbo = icmp eq i8 %i.bbn, -1
  br i1 %i.bbo, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  store ptr %i.bbk, ptr %i.bac, align 8, !tbaa !111
  %i.bbp = shl nuw nsw i32 %i.bbm, 8
  %i.bbq = add i32 %i.bbp, %.5643.us.i
  br label %bb.mh

bb.me:                                            ; preds = %bb.mc
  %i.bbr = icmp ugt i8 %i.bbl, -113
  br i1 %i.bbr, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  store ptr %i.bbk, ptr %i.bac, align 8, !tbaa !111
  %i.bbs = shl nuw nsw i32 %i.bbm, 9
  %i.bbt = add i32 %i.bbs, %.5643.us.i
  br label %bb.mh

bb.mg:                                            ; preds = %bb.me
  %i.bbu = add i32 %.5643.us.i, 65280
  %i.bbv = load i32, ptr %i.bad, align 4, !tbaa !127
  %i.bbw = add i32 %i.bbv, 1
  store i32 %i.bbw, ptr %i.bad, align 4, !tbaa !127
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf, %bb.md, %bb.mb
  %.7699.us.i = phi i32 [ %.5697.us.i, %bb.mb ], [ 8, %bb.mg ], [ 7, %bb.mf ], [ 8, %bb.md ]
  %.7645.us.i = phi i32 [ %.5643.us.i, %bb.mb ], [ %i.bbu, %bb.mg ], [ %i.bbt, %bb.mf ], [ %i.bbq, %bb.md ]
  %i.bbx = shl i32 %.4653.us.i, 1                 ; 3 uses
  %i.bby = shl i32 %.7645.us.i, 1                 ; 2 uses
  %i.bbz = add i32 %.7699.us.i, -1                ; 2 uses
  %i.bca = icmp ult i32 %i.bbx, 32768
  br i1 %i.bca, label %bb.mb, label %.loopexit932.us.i.loopexit495, !llvm.loop !356

bb.mi:                                            ; preds = %bb.lx
  %i.bcb = icmp ult i32 %i.bav, %i.bau            ; 2 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !126 ; 2 uses
  %.sink1209.i = select i1 %i.bcb, i64 8, i64 16
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bat, i64 %.sink1209.i
  %storemerge862.us.i = load ptr, ptr %i.bce, align 8, !tbaa !122
  store ptr %storemerge862.us.i, ptr %i.bas, align 8, !tbaa !122
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mp, %bb.mi
  %.2694.us.i = phi i32 [ %.1693984.us.i, %bb.mi ], [ %i.bcw, %bb.mp ] ; 2 uses
  %.3652.us.i = phi i32 [ %i.bau, %bb.mi ], [ %i.bcu, %bb.mp ]
  %.2640.us.i = phi i32 [ %.1639986.us.i, %bb.mi ], [ %i.bcv, %bb.mp ] ; 4 uses
  %i.bcf = icmp eq i32 %.2694.us.i, 0
  br i1 %i.bcf, label %bb.mk, label %bb.mp

bb.mk:                                            ; preds = %bb.mj
  %i.bcg = load ptr, ptr %i.bac, align 8, !tbaa !111 ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 1 ; 3 uses
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !48 ; 2 uses
  %i.bcj = zext i8 %i.bci to i32                  ; 2 uses
  %i.bck = load i8, ptr %i.bcg, align 1, !tbaa !48
  %i.bcl = icmp eq i8 %i.bck, -1
  br i1 %i.bcl, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  store ptr %i.bch, ptr %i.bac, align 8, !tbaa !111
  %i.bcm = shl nuw nsw i32 %i.bcj, 8
  %i.bcn = add i32 %i.bcm, %.2640.us.i
  br label %bb.mp

bb.mm:                                            ; preds = %bb.mk
  %i.bco = icmp ugt i8 %i.bci, -113
  br i1 %i.bco, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  store ptr %i.bch, ptr %i.bac, align 8, !tbaa !111
  %i.bcp = shl nuw nsw i32 %i.bcj, 9
  %i.bcq = add i32 %i.bcp, %.2640.us.i
  br label %bb.mp

bb.mo:                                            ; preds = %bb.mm
  %i.bcr = add i32 %.2640.us.i, 65280
  %i.bcs = load i32, ptr %i.bad, align 4, !tbaa !127
  %i.bct = add i32 %i.bcs, 1
  store i32 %i.bct, ptr %i.bad, align 4, !tbaa !127
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %bb.mn, %bb.ml, %bb.mj
  %.4696.us.i = phi i32 [ %.2694.us.i, %bb.mj ], [ 8, %bb.mo ], [ 7, %bb.mn ], [ 8, %bb.ml ]
  %.4642.us.i = phi i32 [ %.2640.us.i, %bb.mj ], [ %i.bcr, %bb.mo ], [ %i.bcq, %bb.mn ], [ %i.bcn, %bb.ml ]
  %i.bcu = shl i32 %.3652.us.i, 1                 ; 3 uses
  %i.bcv = shl i32 %.4642.us.i, 1                 ; 2 uses
  %i.bcw = add i32 %.4696.us.i, -1                ; 2 uses
  %i.bcx = icmp ult i32 %i.bcu, 32768
  br i1 %i.bcx, label %bb.mj, label %.loopexit932.us.i.loopexit, !llvm.loop !357

.loopexit932.us.i.loopexit:                       ; preds = %bb.mp
  %.not861.us.i = icmp eq i32 %i.bcd, 0
  %i.bcy = zext i1 %.not861.us.i to i32
  %.0759.us.i = select i1 %i.bcb, i32 %i.bcd, i32 %i.bcy
  br label %.loopexit932.us.i

.loopexit932.us.i.loopexit495:                    ; preds = %bb.mh
  %.not860.us.i = icmp eq i32 %i.bbg, 0
end_hunk_2
begin_hunk_3_@opj_t1_dec_sigpass_mqc:bb.a
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %.sink1222.i
  %storemerge897.us.i = load ptr, ptr %i.bwy, align 8, !tbaa !122
  store ptr %storemerge897.us.i, ptr %i.bwj, align 8, !tbaa !122
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rq, %bb.rj
  %.60752.us.i = phi i32 [ %.56748.us.i, %bb.rj ], [ %i.bxq, %bb.rq ] ; 2 uses
  %.38687.us.i = phi i32 [ %i.bwm, %bb.rj ], [ %i.bxo, %bb.rq ]
  %.60.us.i = phi i32 [ %i.bwq, %bb.rj ], [ %i.bxp, %bb.rq ] ; 4 uses
  %i.bwz = icmp eq i32 %.60752.us.i, 0
  br i1 %i.bwz, label %bb.rl, label %bb.rq

bb.rl:                                            ; preds = %bb.rk
  %i.bxa = load ptr, ptr %i.bac, align 8, !tbaa !111 ; 2 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bxa, i64 1 ; 3 uses
  %i.bxc = load i8, ptr %i.bxb, align 1, !tbaa !48 ; 2 uses
  %i.bxd = zext i8 %i.bxc to i32                  ; 2 uses
  %i.bxe = load i8, ptr %i.bxa, align 1, !tbaa !48
  %i.bxf = icmp eq i8 %i.bxe, -1
  br i1 %i.bxf, label %bb.rn, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  store ptr %i.bxb, ptr %i.bac, align 8, !tbaa !111
  %i.bxg = shl nuw nsw i32 %i.bxd, 8
  %i.bxh = add i32 %i.bxg, %.60.us.i
  br label %bb.rq

bb.rn:                                            ; preds = %bb.rl
  %i.bxi = icmp ugt i8 %i.bxc, -113
  br i1 %i.bxi, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  store ptr %i.bxb, ptr %i.bac, align 8, !tbaa !111
  %i.bxj = shl nuw nsw i32 %i.bxd, 9
  %i.bxk = add i32 %i.bxj, %.60.us.i
  br label %bb.rq

bb.rp:                                            ; preds = %bb.rn
  %i.bxl = add i32 %.60.us.i, 65280
  %i.bxm = load i32, ptr %i.bad, align 4, !tbaa !127
  %i.bxn = add i32 %i.bxm, 1
  store i32 %i.bxn, ptr %i.bad, align 4, !tbaa !127
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro, %bb.rm, %bb.rk
  %.62754.us.i = phi i32 [ %.60752.us.i, %bb.rk ], [ 8, %bb.rp ], [ 7, %bb.ro ], [ 8, %bb.rm ]
  %.62.us.i = phi i32 [ %.60.us.i, %bb.rk ], [ %i.bxl, %bb.rp ], [ %i.bxk, %bb.ro ], [ %i.bxh, %bb.rm ]
  %i.bxo = shl i32 %.38687.us.i, 1                ; 3 uses
  %i.bxp = shl i32 %.62.us.i, 1                   ; 2 uses
  %i.bxq = add i32 %.62754.us.i, -1               ; 2 uses
  %i.bxr = icmp ult i32 %i.bxo, 32768
  br i1 %i.bxr, label %bb.rk, label %.loopexit918.us.i.loopexit488, !llvm.loop !370

bb.rr:                                            ; preds = %bb.rg
  %i.bxs = icmp ult i32 %i.bwm, %i.bwl            ; 2 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bwk, i64 4
  %i.bxu = load i32, ptr %i.bxt, align 4, !tbaa !126 ; 2 uses
  %.sink1223.i = select i1 %i.bxs, i64 8, i64 16
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %.sink1223.i
  %storemerge900.us.i = load ptr, ptr %i.bxv, align 8, !tbaa !122
  store ptr %storemerge900.us.i, ptr %i.bwj, align 8, !tbaa !122
  br label %bb.rs

bb.rs:                                            ; preds = %bb.ry, %bb.rr
  %.57749.us.i = phi i32 [ %.56748.us.i, %bb.rr ], [ %i.byn, %bb.ry ] ; 2 uses
  %.37686.us.i = phi i32 [ %i.bwl, %bb.rr ], [ %i.byl, %bb.ry ]
  %.57.us.i = phi i32 [ %.56.us.i, %bb.rr ], [ %i.bym, %bb.ry ] ; 4 uses
  %i.bxw = icmp eq i32 %.57749.us.i, 0
  br i1 %i.bxw, label %bb.rt, label %bb.ry

bb.rt:                                            ; preds = %bb.rs
  %i.bxx = load ptr, ptr %i.bac, align 8, !tbaa !111 ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 1 ; 3 uses
  %i.bxz = load i8, ptr %i.bxy, align 1, !tbaa !48 ; 2 uses
  %i.bya = zext i8 %i.bxz to i32                  ; 2 uses
  %i.byb = load i8, ptr %i.bxx, align 1, !tbaa !48
  %i.byc = icmp eq i8 %i.byb, -1
  br i1 %i.byc, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  store ptr %i.bxy, ptr %i.bac, align 8, !tbaa !111
  %i.byd = shl nuw nsw i32 %i.bya, 8
  %i.bye = add i32 %i.byd, %.57.us.i
  br label %bb.ry

bb.rv:                                            ; preds = %bb.rt
  %i.byf = icmp ugt i8 %i.bxz, -113
  br i1 %i.byf, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  store ptr %i.bxy, ptr %i.bac, align 8, !tbaa !111
  %i.byg = shl nuw nsw i32 %i.bya, 9
  %i.byh = add i32 %i.byg, %.57.us.i
  br label %bb.ry

bb.rx:                                            ; preds = %bb.rv
  %i.byi = add i32 %.57.us.i, 65280
  %i.byj = load i32, ptr %i.bad, align 4, !tbaa !127
  %i.byk = add i32 %i.byj, 1
  store i32 %i.byk, ptr %i.bad, align 4, !tbaa !127
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw, %bb.ru, %bb.rs
  %.59751.us.i = phi i32 [ %.57749.us.i, %bb.rs ], [ 8, %bb.rx ], [ 7, %bb.rw ], [ 8, %bb.ru ]
  %.59.us.i = phi i32 [ %.57.us.i, %bb.rs ], [ %i.byi, %bb.rx ], [ %i.byh, %bb.rw ], [ %i.bye, %bb.ru ]
  %i.byl = shl i32 %.37686.us.i, 1                ; 3 uses
  %i.bym = shl i32 %.59.us.i, 1                   ; 2 uses
  %i.byn = add i32 %.59751.us.i, -1               ; 2 uses
  %i.byo = icmp ult i32 %i.byl, 32768
  br i1 %i.byo, label %bb.rs, label %.loopexit918.us.i.loopexit, !llvm.loop !371

.loopexit918.us.i.loopexit:                       ; preds = %bb.ry
  %.not899.us.i = icmp eq i32 %i.bxu, 0
  %i.byp = zext i1 %.not899.us.i to i32
  %.21780.us.i = select i1 %i.bxs, i32 %i.bxu, i32 %i.byp
  br label %.loopexit918.us.i

.loopexit918.us.i.loopexit488:                    ; preds = %bb.rq
  %.not898.us.i = icmp eq i32 %i.bwx, 0
  %i.byq = zext i1 %.not898.us.i to i32
  %.22781.us.i = select i1 %i.bwv, i32 %i.byq, i32 %i.bwx
  br label %.loopexit918.us.i

.loopexit918.us.i:                                ; preds = %.loopexit918.us.i.loopexit488, %.loopexit918.us.i.loopexit, %bb.ri
  %.23782.us.i = phi i32 [ %i.bwu, %bb.ri ], [ %.21780.us.i, %.loopexit918.us.i.loopexit ], [ %.22781.us.i, %.loopexit918.us.i.loopexit488 ] ; 2 uses
  %.63755.us.i = phi i32 [ %.56748.us.i, %bb.ri ], [ %i.byn, %.loopexit918.us.i.loopexit ], [ %i.bxq, %.loopexit918.us.i.loopexit488 ]
  %.39688.us.i = phi i32 [ %i.bwm, %bb.ri ], [ %i.byl, %.loopexit918.us.i.loopexit ], [ %i.bxo, %.loopexit918.us.i.loopexit488 ]
  %.63.us.i = phi i32 [ %i.bwq, %bb.ri ], [ %i.bym, %.loopexit918.us.i.loopexit ], [ %i.bxp, %.loopexit918.us.i.loopexit488 ]
  %i.byr = xor i32 %.23782.us.i, %i.bwh           ; 2 uses
  %.not901.us.i = icmp eq i32 %.23782.us.i, %i.bwh
  %i.bys = select i1 %.not901.us.i, i32 %i.azx, i32 %i.bae
  %i.byt = getelementptr inbounds nuw [4 x i8], ptr %.1631989.us.i, i64 %i.baj
  store i32 %i.bys, ptr %i.byt, align 4, !tbaa !3
  %i.byu = load i32, ptr %i.bvo, align 4, !tbaa !3
  %i.byv = or i32 %i.byu, 16384
  store i32 %i.byv, ptr %i.bvo, align 4, !tbaa !3
  %i.byw = shl i32 %i.byr, 28
  %i.byx = or i32 %.5788.us.i, %i.byw
  %i.byy = or disjoint i32 %i.byx, 8192
  %i.byz = load i32, ptr %i.bvq, align 4, !tbaa !3
  %i.bza = or i32 %i.byz, 4096
  store i32 %i.bza, ptr %i.bvq, align 4, !tbaa !3
  %i.bzb = load i32, ptr %i.a, align 8, !tbaa !107
  %i.bzc = add i32 %i.bzb, 2
  %i.bzd = zext i32 %i.bzc to i64
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %.1633988.us.i, i64 %i.bzd ; 4 uses
  %i.bzf = shl i32 %i.byr, 18
  %i.bzg = or disjoint i32 %i.bzf, 2
  %i.bzh = load i32, ptr %i.bze, align 4, !tbaa !3
  %i.bzi = or i32 %i.bzh, %i.bzg
  store i32 %i.bzi, ptr %i.bze, align 4, !tbaa !3
  %i.bzj = getelementptr inbounds i8, ptr %i.bze, i64 -4 ; 2 uses
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !3
  %i.bzl = or i32 %i.bzk, 4
  store i32 %i.bzl, ptr %i.bzj, align 4, !tbaa !3
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bze, i64 4 ; 2 uses
  %i.bzn = load i32, ptr %i.bzm, align 4, !tbaa !3
  %i.bzo = or i32 %i.bzn, 1
  store i32 %i.bzo, ptr %i.bzm, align 4, !tbaa !3
  br label %bb.rz

bb.rz:                                            ; preds = %.loopexit918.us.i, %.loopexit920.us.i
  %.6789.us.i = phi i32 [ %i.byy, %.loopexit918.us.i ], [ %.5788.us.i, %.loopexit920.us.i ]
  %.64756.us.i = phi i32 [ %.63755.us.i, %.loopexit918.us.i ], [ %.56748.us.i, %.loopexit920.us.i ]
  %.40689.us.i = phi i32 [ %.39688.us.i, %.loopexit918.us.i ], [ %.35684.us.i, %.loopexit920.us.i ]
  %.64.us.i = phi i32 [ %.63.us.i, %.loopexit918.us.i ], [ %.56.us.i, %.loopexit920.us.i ]
  %.8.us.i = phi ptr [ %i.bwj, %.loopexit918.us.i ], [ %i.btg, %.loopexit920.us.i ]
  %i.bzp = or i32 %.6789.us.i, 1073741824
  br label %bb.sa

bb.sa:                                            ; preds = %bb.rz, %bb.qm
  %.7790.us.i = phi i32 [ %i.bzp, %bb.rz ], [ %.5788.us.i, %bb.qm ]
  %.65757.us.i = phi i32 [ %.64756.us.i, %bb.rz ], [ %.49741.us.i, %bb.qm ]
  %.41690.us.i = phi i32 [ %.40689.us.i, %bb.rz ], [ %.31680.us.i, %bb.qm ]
  %.65.us.i = phi i32 [ %.64.us.i, %bb.rz ], [ %.49.us.i, %bb.qm ]
  %.9.us.i = phi ptr [ %.8.us.i, %bb.rz ], [ %.7.us.i, %bb.qm ]
  store i32 %.7790.us.i, ptr %.1633988.us.i, align 4, !tbaa !3
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.lv
  %.66758.us.i = phi i32 [ %.65757.us.i, %bb.sa ], [ %.1693984.us.i, %bb.lv ] ; 3 uses
  %.42691.us.i = phi i32 [ %.41690.us.i, %bb.sa ], [ %.1650985.us.i, %bb.lv ] ; 3 uses
  %.66.us.i = phi i32 [ %.65.us.i, %bb.sa ], [ %.1639986.us.i, %bb.lv ] ; 3 uses
  %.10.us.i = phi ptr [ %.9.us.i, %bb.sa ], [ %.1636987.us.i, %bb.lv ] ; 3 uses
  %i.bzq = add nuw i32 %.0990.us.i, 1             ; 2 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %.1631989.us.i, i64 4 ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %.1633988.us.i, i64 4
  %exitcond.not.i110 = icmp eq i32 %i.bzq, %i.b
  br i1 %exitcond.not.i110, label %._crit_edge.us.i, label %bb.lv, !llvm.loop !372

._crit_edge.us.i:                                 ; preds = %bb.sb
  %i.bzt = add nuw i32 %.06291002.us.i, 4         ; 3 uses
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %i.bzr, i64 %i.baj ; 2 uses
  %i.bzv = getelementptr inbounds nuw i8, ptr %.1633988.us.i, i64 12 ; 2 uses
  %i.bzw = load i32, ptr %i.azy, align 4, !tbaa !108 ; 2 uses
  %i.bzx = and i32 %i.bzw, -4
  %i.bzy = icmp ult i32 %i.bzt, %i.bzx
  br i1 %i.bzy, label %.preheader934.us.i, label %._crit_edge1003.i, !llvm.loop !373

.preheader934.lr.ph.split.i:                      ; preds = %.preheader934.lr.ph.i
  %i.bzz = and i32 %i.azz, -4
  %i.caa = add i32 %i.azz, -4
  %3 = lshr i32 %i.caa, 2
  %i.cab = zext nneg i32 %3 to i64                ; 2 uses
  %4 = shl nuw nsw i64 %i.cab, 2
  %i.cac = add nuw nsw i64 %4, 4
  %i.cad = mul nuw nsw i64 %i.cac, %i.baj
  %scevgep.i = getelementptr i8, ptr %i.azi, i64 %i.cad
  %i.cae = shl nuw nsw i64 %i.cab, 3
  %i.caf = getelementptr i8, ptr %i.azk, i64 %i.cae
  %scevgep1089.i = getelementptr i8, ptr %i.caf, i64 20
  br label %._crit_edge1003.i

._crit_edge1003.i:                                ; preds = %._crit_edge.us.i, %.preheader934.lr.ph.split.i, %bb.lu
  %.0692.lcssa.i = phi i32 [ %i.azu, %bb.lu ], [ %i.azu, %.preheader934.lr.ph.split.i ], [ %.66758.us.i, %._crit_edge.us.i ]
  %.0649.lcssa.i = phi i32 [ %i.azs, %bb.lu ], [ %i.azs, %.preheader934.lr.ph.split.i ], [ %.42691.us.i, %._crit_edge.us.i ]
  %.0638.lcssa.i = phi i32 [ %i.azq, %bb.lu ], [ %i.azq, %.preheader934.lr.ph.split.i ], [ %.66.us.i, %._crit_edge.us.i ]
  %.0635.lcssa.i = phi ptr [ %i.azp, %bb.lu ], [ %i.azp, %.preheader934.lr.ph.split.i ], [ %.10.us.i, %._crit_edge.us.i ]
  %.0632.lcssa.i = phi ptr [ %i.azn, %bb.lu ], [ %scevgep1089.i, %.preheader934.lr.ph.split.i ], [ %i.bzv, %._crit_edge.us.i ]
  %.0630.lcssa.i = phi ptr [ %i.azi, %bb.lu ], [ %scevgep.i, %.preheader934.lr.ph.split.i ], [ %i.bzu, %._crit_edge.us.i ]
  %.0629.lcssa.i = phi i32 [ 0, %bb.lu ], [ %i.bzz, %.preheader934.lr.ph.split.i ], [ %i.bzt, %._crit_edge.us.i ] ; 4 uses
  %.lcssa982.i = phi i32 [ %i.azz, %bb.lu ], [ %i.azz, %.preheader934.lr.ph.split.i ], [ %i.bzw, %._crit_edge.us.i ] ; 2 uses
  store ptr %.0635.lcssa.i, ptr %i.azo, align 8, !tbaa !120
  store i32 %.0638.lcssa.i, ptr %0, align 8, !tbaa !110
  store i32 %.0649.lcssa.i, ptr %i.azr, align 4, !tbaa !121
  store i32 %.0692.lcssa.i, ptr %i.azt, align 8, !tbaa !109
  %i.cag = icmp ult i32 %.0629.lcssa.i, %.lcssa982.i
  %i.cah = icmp ne i32 %i.b, 0
  %or.cond.i111 = and i1 %i.cah, %i.cag
  br i1 %or.cond.i111, label %.preheader.i113, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

.preheader.i113:                                  ; preds = %._crit_edge1003.i, %._crit_edge.i
  %i.cai = phi i32 [ %i.cat, %._crit_edge.i ], [ %.lcssa982.i, %._crit_edge1003.i ]
  %.11022.i = phi i32 [ %i.cau, %._crit_edge.i ], [ 0, %._crit_edge1003.i ]
  %.21021.i = phi ptr [ %i.cav, %._crit_edge.i ], [ %.0630.lcssa.i, %._crit_edge1003.i ] ; 2 uses
  %.26341020.i = phi ptr [ %i.caw, %._crit_edge.i ], [ %.0632.lcssa.i, %._crit_edge1003.i ] ; 2 uses
  %.not1024.i = icmp eq i32 %i.cai, %.0629.lcssa.i
  br i1 %.not1024.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i113, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i113 ] ; 2 uses
  %i.caj = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.cak = mul i32 %i.b, %i.caj
  %i.cal = zext i32 %i.cak to i64
  %i.cam = getelementptr inbounds nuw [4 x i8], ptr %.21021.i, i64 %i.cal
  %i.can = load i32, ptr %i.a, align 8, !tbaa !107
  %i.cao = add i32 %i.can, 2
  tail call fastcc void @opj_t1_dec_sigpass_step_mqc(ptr noundef nonnull %0, ptr noundef %.26341020.i, ptr noundef %i.cam, i32 noundef %i.azx, i32 noundef %i.caj, i32 noundef %i.cao, i32 noundef 1)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cap = load i32, ptr %i.azy, align 4, !tbaa !108 ; 2 uses
  %i.caq = sub i32 %i.cap, %.0629.lcssa.i
  %i.car = zext i32 %i.caq to i64
  %i.cas = icmp samesign ult i64 %indvars.iv.next.i, %i.car
  br i1 %i.cas, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !374

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i113
  %i.cat = phi i32 [ %.0629.lcssa.i, %.preheader.i113 ], [ %i.cap, %.lr.ph.i ]
  %i.cau = add nuw i32 %.11022.i, 1               ; 2 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %.21021.i, i64 4
  %i.caw = getelementptr inbounds nuw i8, ptr %.26341020.i, i64 4
  %exitcond1091.not.i = icmp eq i32 %i.cau, %i.b
  br i1 %exitcond1091.not.i, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit, label %.preheader.i113, !llvm.loop !375

bb.sc:                                            ; preds = %bb.lt
  br i1 %.not.i115, label %._crit_edge1009.i, label %.preheader940.lr.ph.i

.preheader940.lr.ph.i:                            ; preds = %bb.sc
  %.not1029.i = icmp eq i32 %i.b, 0
  %i.cax = getelementptr i8, ptr %0, i64 200      ; 4 uses
  %i.cay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.caz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 48 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 32 uses
  %i.cbb = sub nsw i32 0, %i.azx                  ; 4 uses
  %i.cbc = zext i32 %i.b to i64
  %i.cbd = shl i32 %i.b, 1
  %i.cbe = zext i32 %i.cbd to i64
  %i.cbf = mul i32 %i.b, 3
  %i.cbg = zext i32 %i.cbf to i64                 ; 3 uses
  br i1 %.not1029.i, label %.preheader940.lr.ph.split.i, label %.preheader940.us.i

.preheader940.us.i:                               ; preds = %.preheader940.lr.ph.i, %._crit_edge.us.i162
  %.06351008.us.i = phi i32 [ %i.dbf, %._crit_edge.us.i162 ], [ 0, %.preheader940.lr.ph.i ]
  %.06361007.us.i = phi ptr [ %i.dbg, %._crit_edge.us.i162 ], [ %i.azi, %.preheader940.lr.ph.i ]
  %.06381006.us.i = phi ptr [ %i.dbh, %._crit_edge.us.i162 ], [ %i.azn, %.preheader940.lr.ph.i ]
  %.06411005.us.i = phi ptr [ %.10.us.i160, %._crit_edge.us.i162 ], [ %i.azp, %.preheader940.lr.ph.i ]
  %.06441004.us.i = phi i32 [ %.66.us.i159, %._crit_edge.us.i162 ], [ %i.azq, %.preheader940.lr.ph.i ]
  %.06551003.us.i = phi i32 [ %.42697.us.i, %._crit_edge.us.i162 ], [ %i.azs, %.preheader940.lr.ph.i ]
  %.06981002.us.i = phi i32 [ %.66764.us.i, %._crit_edge.us.i162 ], [ %i.azu, %.preheader940.lr.ph.i ]
  br label %bb.sd

bb.sd:                                            ; preds = %bb.yj, %.preheader940.us.i
  %.0996.us.i = phi i32 [ 0, %.preheader940.us.i ], [ %i.dbc, %bb.yj ]
  %.1637995.us.i = phi ptr [ %.06361007.us.i, %.preheader940.us.i ], [ %i.dbd, %bb.yj ] ; 5 uses
  %.1639994.us.i = phi ptr [ %.06381006.us.i, %.preheader940.us.i ], [ %i.dbe, %bb.yj ] ; 14 uses
  %.1642993.us.i = phi ptr [ %.06411005.us.i, %.preheader940.us.i ], [ %.10.us.i160, %bb.yj ] ; 2 uses
  %.1645992.us.i = phi i32 [ %.06441004.us.i, %.preheader940.us.i ], [ %.66.us.i159, %bb.yj ] ; 5 uses
  %.1656991.us.i = phi i32 [ %.06551003.us.i, %.preheader940.us.i ], [ %.42697.us.i, %bb.yj ] ; 3 uses
  %.1699990.us.i = phi i32 [ %.06981002.us.i, %.preheader940.us.i ], [ %.66764.us.i, %bb.yj ] ; 5 uses
  %i.cbh = load i32, ptr %.1639994.us.i, align 4, !tbaa !3 ; 9 uses
  %.not.us.i116 = icmp eq i32 %i.cbh, 0
  br i1 %.not.us.i116, label %bb.yj, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.cbi = and i32 %i.cbh, 2097168
  %i.cbj = icmp ne i32 %i.cbi, 0
  %i.cbk = and i32 %i.cbh, 495                    ; 2 uses
  %.not865.us.i117 = icmp eq i32 %i.cbk, 0
  %or.cond.us.i118 = or i1 %i.cbj, %.not865.us.i117
  br i1 %or.cond.us.i118, label %bb.ts, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %.val913.us.i = load ptr, ptr %i.cax, align 8, !tbaa !88
  %i.cbl = zext nneg i32 %i.cbk to i64
  %i.cbm = getelementptr inbounds nuw i8, ptr %.val913.us.i, i64 %i.cbl
  %i.cbn = load i8, ptr %i.cbm, align 1, !tbaa !48
  %i.cbo = zext i8 %i.cbn to i64
  %i.cbp = getelementptr inbounds nuw [8 x i8], ptr %i.cay, i64 %i.cbo ; 4 uses
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !122 ; 6 uses
  %i.cbr = load i32, ptr %i.cbq, align 8, !tbaa !124 ; 6 uses
  %i.cbs = sub i32 %.1656991.us.i, %i.cbr         ; 5 uses
  %i.cbt = lshr i32 %.1645992.us.i, 16
  %i.cbu = icmp ult i32 %i.cbt, %i.cbr
  br i1 %i.cbu, label %bb.sq, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.cbv = shl nuw i32 %i.cbr, 16
  %i.cbw = sub i32 %.1645992.us.i, %i.cbv         ; 2 uses
  %i.cbx = and i32 %i.cbs, 32768
  %i.cby = icmp eq i32 %i.cbx, 0
  br i1 %i.cby, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbq, i64 4
  %i.cca = load i32, ptr %i.cbz, align 4, !tbaa !126
  br label %.loopexit938.us.i

bb.si:                                            ; preds = %bb.sg
  %i.ccb = icmp ult i32 %i.cbs, %i.cbr            ; 2 uses
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cbq, i64 4
  %i.ccd = load i32, ptr %i.ccc, align 4, !tbaa !126 ; 2 uses
  %.sink.i223 = select i1 %i.ccb, i64 16, i64 8
  %i.cce = getelementptr inbounds nuw i8, ptr %i.cbq, i64 %.sink.i223
  %storemerge.us.i224 = load ptr, ptr %i.cce, align 8, !tbaa !122
  store ptr %storemerge.us.i224, ptr %i.cbp, align 8, !tbaa !122
  br label %bb.sj

bb.sj:                                            ; preds = %bb.sp, %bb.si
  %.5703.us.i = phi i32 [ %.1699990.us.i, %bb.si ], [ %i.ccw, %bb.sp ] ; 2 uses
  %.4659.us.i = phi i32 [ %i.cbs, %bb.si ], [ %i.ccu, %bb.sp ]
  %.5649.us.i = phi i32 [ %i.cbw, %bb.si ], [ %i.ccv, %bb.sp ] ; 4 uses
  %i.ccf = icmp eq i32 %.5703.us.i, 0
  br i1 %i.ccf, label %bb.sk, label %bb.sp

bb.sk:                                            ; preds = %bb.sj
  %i.ccg = load ptr, ptr %i.caz, align 8, !tbaa !111 ; 2 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 1 ; 3 uses
  %i.cci = load i8, ptr %i.cch, align 1, !tbaa !48 ; 2 uses
  %i.ccj = zext i8 %i.cci to i32                  ; 2 uses
  %i.cck = load i8, ptr %i.ccg, align 1, !tbaa !48
  %i.ccl = icmp eq i8 %i.cck, -1
  br i1 %i.ccl, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  store ptr %i.cch, ptr %i.caz, align 8, !tbaa !111
  %i.ccm = shl nuw nsw i32 %i.ccj, 8
  %i.ccn = add i32 %i.ccm, %.5649.us.i
  br label %bb.sp

bb.sm:                                            ; preds = %bb.sk
  %i.cco = icmp ugt i8 %i.cci, -113
  br i1 %i.cco, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  store ptr %i.cch, ptr %i.caz, align 8, !tbaa !111
  %i.ccp = shl nuw nsw i32 %i.ccj, 9
  %i.ccq = add i32 %i.ccp, %.5649.us.i
  br label %bb.sp

bb.so:                                            ; preds = %bb.sm
  %i.ccr = add i32 %.5649.us.i, 65280
  %i.ccs = load i32, ptr %i.cba, align 4, !tbaa !127
  %i.cct = add i32 %i.ccs, 1
  store i32 %i.cct, ptr %i.cba, align 4, !tbaa !127
  br label %bb.sp

bb.sp:                                            ; preds = %bb.so, %bb.sn, %bb.sl, %bb.sj
  %.7705.us.i = phi i32 [ %.5703.us.i, %bb.sj ], [ 8, %bb.so ], [ 7, %bb.sn ], [ 8, %bb.sl ]
  %.7651.us.i = phi i32 [ %.5649.us.i, %bb.sj ], [ %i.ccr, %bb.so ], [ %i.ccq, %bb.sn ], [ %i.ccn, %bb.sl ]
  %i.ccu = shl i32 %.4659.us.i, 1                 ; 3 uses
  %i.ccv = shl i32 %.7651.us.i, 1                 ; 2 uses
  %i.ccw = add i32 %.7705.us.i, -1                ; 2 uses
  %i.ccx = icmp ult i32 %i.ccu, 32768
  br i1 %i.ccx, label %bb.sj, label %.loopexit938.us.i.loopexit486, !llvm.loop !376

bb.sq:                                            ; preds = %bb.sf
  %i.ccy = icmp ult i32 %i.cbs, %i.cbr            ; 2 uses
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.cbq, i64 4
  %i.cda = load i32, ptr %i.ccz, align 4, !tbaa !126 ; 2 uses
  %.sink1215.i225 = select i1 %i.ccy, i64 8, i64 16
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.cbq, i64 %.sink1215.i225
  %storemerge868.us.i = load ptr, ptr %i.cdb, align 8, !tbaa !122
  store ptr %storemerge868.us.i, ptr %i.cbp, align 8, !tbaa !122
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sx, %bb.sq
  %.2700.us.i = phi i32 [ %.1699990.us.i, %bb.sq ], [ %i.cdt, %bb.sx ] ; 2 uses
  %.3658.us.i = phi i32 [ %i.cbr, %bb.sq ], [ %i.cdr, %bb.sx ]
  %.2646.us.i = phi i32 [ %.1645992.us.i, %bb.sq ], [ %i.cds, %bb.sx ] ; 4 uses
  %i.cdc = icmp eq i32 %.2700.us.i, 0
  br i1 %i.cdc, label %bb.ss, label %bb.sx
end_hunk_3
begin_hunk_4_@opj_t1_dec_sigpass_mqc:bb.a
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cxw, i64 %.sink1228.i
  %storemerge903.us.i = load ptr, ptr %i.cyk, align 8, !tbaa !122
  store ptr %storemerge903.us.i, ptr %i.cxv, align 8, !tbaa !122
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xy, %bb.xr
  %.60758.us.i = phi i32 [ %.56754.us.i, %bb.xr ], [ %i.czc, %bb.xy ] ; 2 uses
  %.38693.us.i = phi i32 [ %i.cxy, %bb.xr ], [ %i.cza, %bb.xy ]
  %.60.us.i172 = phi i32 [ %i.cyc, %bb.xr ], [ %i.czb, %bb.xy ] ; 4 uses
  %i.cyl = icmp eq i32 %.60758.us.i, 0
  br i1 %i.cyl, label %bb.xt, label %bb.xy

bb.xt:                                            ; preds = %bb.xs
  %i.cym = load ptr, ptr %i.caz, align 8, !tbaa !111 ; 2 uses
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 1 ; 3 uses
  %i.cyo = load i8, ptr %i.cyn, align 1, !tbaa !48 ; 2 uses
  %i.cyp = zext i8 %i.cyo to i32                  ; 2 uses
  %i.cyq = load i8, ptr %i.cym, align 1, !tbaa !48
  %i.cyr = icmp eq i8 %i.cyq, -1
  br i1 %i.cyr, label %bb.xv, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  store ptr %i.cyn, ptr %i.caz, align 8, !tbaa !111
  %i.cys = shl nuw nsw i32 %i.cyp, 8
  %i.cyt = add i32 %i.cys, %.60.us.i172
  br label %bb.xy

bb.xv:                                            ; preds = %bb.xt
  %i.cyu = icmp ugt i8 %i.cyo, -113
  br i1 %i.cyu, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  store ptr %i.cyn, ptr %i.caz, align 8, !tbaa !111
  %i.cyv = shl nuw nsw i32 %i.cyp, 9
  %i.cyw = add i32 %i.cyv, %.60.us.i172
  br label %bb.xy

bb.xx:                                            ; preds = %bb.xv
  %i.cyx = add i32 %.60.us.i172, 65280
  %i.cyy = load i32, ptr %i.cba, align 4, !tbaa !127
  %i.cyz = add i32 %i.cyy, 1
  store i32 %i.cyz, ptr %i.cba, align 4, !tbaa !127
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xw, %bb.xu, %bb.xs
  %.62760.us.i = phi i32 [ %.60758.us.i, %bb.xs ], [ 8, %bb.xx ], [ 7, %bb.xw ], [ 8, %bb.xu ]
  %.62.us.i173 = phi i32 [ %.60.us.i172, %bb.xs ], [ %i.cyx, %bb.xx ], [ %i.cyw, %bb.xw ], [ %i.cyt, %bb.xu ]
  %i.cza = shl i32 %.38693.us.i, 1                ; 3 uses
  %i.czb = shl i32 %.62.us.i173, 1                ; 2 uses
  %i.czc = add i32 %.62760.us.i, -1               ; 2 uses
  %i.czd = icmp ult i32 %i.cza, 32768
  br i1 %i.czd, label %bb.xs, label %.loopexit924.us.i153.loopexit479, !llvm.loop !390

bb.xz:                                            ; preds = %bb.xo
  %i.cze = icmp ult i32 %i.cxy, %i.cxx            ; 2 uses
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cxw, i64 4
  %i.czg = load i32, ptr %i.czf, align 4, !tbaa !126 ; 2 uses
  %.sink1229.i = select i1 %i.cze, i64 8, i64 16
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cxw, i64 %.sink1229.i
  %storemerge906.us.i = load ptr, ptr %i.czh, align 8, !tbaa !122
  store ptr %storemerge906.us.i, ptr %i.cxv, align 8, !tbaa !122
  br label %bb.ya

bb.ya:                                            ; preds = %bb.yg, %bb.xz
  %.57755.us.i = phi i32 [ %.56754.us.i, %bb.xz ], [ %i.czz, %bb.yg ] ; 2 uses
  %.37692.us.i = phi i32 [ %i.cxx, %bb.xz ], [ %i.czx, %bb.yg ]
  %.57.us.i174 = phi i32 [ %.56.us.i152, %bb.xz ], [ %i.czy, %bb.yg ] ; 4 uses
  %i.czi = icmp eq i32 %.57755.us.i, 0
  br i1 %i.czi, label %bb.yb, label %bb.yg

bb.yb:                                            ; preds = %bb.ya
  %i.czj = load ptr, ptr %i.caz, align 8, !tbaa !111 ; 2 uses
  %i.czk = getelementptr inbounds nuw i8, ptr %i.czj, i64 1 ; 3 uses
  %i.czl = load i8, ptr %i.czk, align 1, !tbaa !48 ; 2 uses
  %i.czm = zext i8 %i.czl to i32                  ; 2 uses
  %i.czn = load i8, ptr %i.czj, align 1, !tbaa !48
  %i.czo = icmp eq i8 %i.czn, -1
  br i1 %i.czo, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  store ptr %i.czk, ptr %i.caz, align 8, !tbaa !111
  %i.czp = shl nuw nsw i32 %i.czm, 8
  %i.czq = add i32 %i.czp, %.57.us.i174
  br label %bb.yg

bb.yd:                                            ; preds = %bb.yb
  %i.czr = icmp ugt i8 %i.czl, -113
  br i1 %i.czr, label %bb.yf, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  store ptr %i.czk, ptr %i.caz, align 8, !tbaa !111
  %i.czs = shl nuw nsw i32 %i.czm, 9
  %i.czt = add i32 %i.czs, %.57.us.i174
  br label %bb.yg

bb.yf:                                            ; preds = %bb.yd
  %i.czu = add i32 %.57.us.i174, 65280
  %i.czv = load i32, ptr %i.cba, align 4, !tbaa !127
  %i.czw = add i32 %i.czv, 1
  store i32 %i.czw, ptr %i.cba, align 4, !tbaa !127
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye, %bb.yc, %bb.ya
  %.59757.us.i = phi i32 [ %.57755.us.i, %bb.ya ], [ 8, %bb.yf ], [ 7, %bb.ye ], [ 8, %bb.yc ]
  %.59.us.i175 = phi i32 [ %.57.us.i174, %bb.ya ], [ %i.czu, %bb.yf ], [ %i.czt, %bb.ye ], [ %i.czq, %bb.yc ]
  %i.czx = shl i32 %.37692.us.i, 1                ; 3 uses
  %i.czy = shl i32 %.59.us.i175, 1                ; 2 uses
  %i.czz = add i32 %.59757.us.i, -1               ; 2 uses
  %i.daa = icmp ult i32 %i.czx, 32768
  br i1 %i.daa, label %bb.ya, label %.loopexit924.us.i153.loopexit, !llvm.loop !391

.loopexit924.us.i153.loopexit:                    ; preds = %bb.yg
  %.not905.us.i = icmp eq i32 %i.czg, 0
  %i.dab = zext i1 %.not905.us.i to i32
  %.21786.us.i = select i1 %i.cze, i32 %i.czg, i32 %i.dab
  br label %.loopexit924.us.i153

.loopexit924.us.i153.loopexit479:                 ; preds = %bb.xy
  %.not904.us.i = icmp eq i32 %i.cyj, 0
  %i.dac = zext i1 %.not904.us.i to i32
  %.22787.us.i = select i1 %i.cyh, i32 %i.dac, i32 %i.cyj
  br label %.loopexit924.us.i153

.loopexit924.us.i153:                             ; preds = %.loopexit924.us.i153.loopexit479, %.loopexit924.us.i153.loopexit, %bb.xq
  %.23788.us.i = phi i32 [ %i.cyg, %bb.xq ], [ %.21786.us.i, %.loopexit924.us.i153.loopexit ], [ %.22787.us.i, %.loopexit924.us.i153.loopexit479 ] ; 2 uses
  %.63761.us.i = phi i32 [ %.56754.us.i, %bb.xq ], [ %i.czz, %.loopexit924.us.i153.loopexit ], [ %i.czc, %.loopexit924.us.i153.loopexit479 ]
  %.39694.us.i = phi i32 [ %i.cxy, %bb.xq ], [ %i.czx, %.loopexit924.us.i153.loopexit ], [ %i.cza, %.loopexit924.us.i153.loopexit479 ]
  %.63.us.i154 = phi i32 [ %i.cyc, %bb.xq ], [ %i.czy, %.loopexit924.us.i153.loopexit ], [ %i.czb, %.loopexit924.us.i153.loopexit479 ]
  %i.dad = xor i32 %.23788.us.i, %i.cxt           ; 2 uses
  %.not907.us.i = icmp eq i32 %.23788.us.i, %i.cxt
  %i.dae = select i1 %.not907.us.i, i32 %i.azx, i32 %i.cbb
  %i.daf = getelementptr inbounds nuw [4 x i8], ptr %.1637995.us.i, i64 %i.cbg
  store i32 %i.dae, ptr %i.daf, align 4, !tbaa !3
  %i.dag = load i32, ptr %i.cxa, align 4, !tbaa !3
  %i.dah = or i32 %i.dag, 16384
  store i32 %i.dah, ptr %i.cxa, align 4, !tbaa !3
  %i.dai = shl i32 %i.dad, 28
  %i.daj = or i32 %.5794.us.i, %i.dai
  %i.dak = or disjoint i32 %i.daj, 8192
  %i.dal = load i32, ptr %i.cxc, align 4, !tbaa !3
  %i.dam = or i32 %i.dal, 4096
  store i32 %i.dam, ptr %i.cxc, align 4, !tbaa !3
  %i.dan = load i32, ptr %i.a, align 8, !tbaa !107
  %i.dao = add i32 %i.dan, 2
  %i.dap = zext i32 %i.dao to i64
  %i.daq = getelementptr inbounds nuw [4 x i8], ptr %.1639994.us.i, i64 %i.dap ; 4 uses
  %i.dar = shl i32 %i.dad, 18
  %i.das = or disjoint i32 %i.dar, 2
  %i.dat = load i32, ptr %i.daq, align 4, !tbaa !3
  %i.dau = or i32 %i.dat, %i.das
  store i32 %i.dau, ptr %i.daq, align 4, !tbaa !3
  %i.dav = getelementptr inbounds i8, ptr %i.daq, i64 -4 ; 2 uses
  %i.daw = load i32, ptr %i.dav, align 4, !tbaa !3
  %i.dax = or i32 %i.daw, 4
  store i32 %i.dax, ptr %i.dav, align 4, !tbaa !3
  %i.day = getelementptr inbounds nuw i8, ptr %i.daq, i64 4 ; 2 uses
  %i.daz = load i32, ptr %i.day, align 4, !tbaa !3
  %i.dba = or i32 %i.daz, 1
  store i32 %i.dba, ptr %i.day, align 4, !tbaa !3
  br label %bb.yh

bb.yh:                                            ; preds = %.loopexit924.us.i153, %.loopexit926.us.i151
  %.6795.us.i = phi i32 [ %i.dak, %.loopexit924.us.i153 ], [ %.5794.us.i, %.loopexit926.us.i151 ]
  %.64762.us.i = phi i32 [ %.63761.us.i, %.loopexit924.us.i153 ], [ %.56754.us.i, %.loopexit926.us.i151 ]
  %.40695.us.i = phi i32 [ %.39694.us.i, %.loopexit924.us.i153 ], [ %.35690.us.i, %.loopexit926.us.i151 ]
  %.64.us.i155 = phi i32 [ %.63.us.i154, %.loopexit924.us.i153 ], [ %.56.us.i152, %.loopexit926.us.i151 ]
  %.8.us.i156 = phi ptr [ %i.cxv, %.loopexit924.us.i153 ], [ %i.cus, %.loopexit926.us.i151 ]
  %i.dbb = or i32 %.6795.us.i, 1073741824
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.wu
  %.7796.us.i = phi i32 [ %i.dbb, %bb.yh ], [ %.5794.us.i, %bb.wu ]
  %.65763.us.i = phi i32 [ %.64762.us.i, %bb.yh ], [ %.49747.us.i, %bb.wu ]
  %.41696.us.i = phi i32 [ %.40695.us.i, %bb.yh ], [ %.31686.us.i, %bb.wu ]
  %.65.us.i157 = phi i32 [ %.64.us.i155, %bb.yh ], [ %.49.us.i148, %bb.wu ]
  %.9.us.i158 = phi ptr [ %.8.us.i156, %bb.yh ], [ %.7.us.i149, %bb.wu ]
  store i32 %.7796.us.i, ptr %.1639994.us.i, align 4, !tbaa !3
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.sd
  %.66764.us.i = phi i32 [ %.65763.us.i, %bb.yi ], [ %.1699990.us.i, %bb.sd ] ; 3 uses
  %.42697.us.i = phi i32 [ %.41696.us.i, %bb.yi ], [ %.1656991.us.i, %bb.sd ] ; 3 uses
  %.66.us.i159 = phi i32 [ %.65.us.i157, %bb.yi ], [ %.1645992.us.i, %bb.sd ] ; 3 uses
  %.10.us.i160 = phi ptr [ %.9.us.i158, %bb.yi ], [ %.1642993.us.i, %bb.sd ] ; 3 uses
  %i.dbc = add nuw i32 %.0996.us.i, 1             ; 2 uses
  %i.dbd = getelementptr inbounds nuw i8, ptr %.1637995.us.i, i64 4 ; 2 uses
  %i.dbe = getelementptr inbounds nuw i8, ptr %.1639994.us.i, i64 4
  %exitcond.not.i161 = icmp eq i32 %i.dbc, %i.b
  br i1 %exitcond.not.i161, label %._crit_edge.us.i162, label %bb.sd, !llvm.loop !392

._crit_edge.us.i162:                              ; preds = %bb.yj
  %i.dbf = add nuw i32 %.06351008.us.i, 4         ; 3 uses
  %i.dbg = getelementptr inbounds nuw [4 x i8], ptr %i.dbd, i64 %i.cbg ; 2 uses
  %i.dbh = getelementptr inbounds nuw i8, ptr %.1639994.us.i, i64 12 ; 2 uses
  %i.dbi = load i32, ptr %i.azy, align 4, !tbaa !108 ; 2 uses
  %i.dbj = and i32 %i.dbi, -4
  %i.dbk = icmp ult i32 %i.dbf, %i.dbj
  br i1 %i.dbk, label %.preheader940.us.i, label %._crit_edge1009.i, !llvm.loop !393

.preheader940.lr.ph.split.i:                      ; preds = %.preheader940.lr.ph.i
  %i.dbl = and i32 %i.azz, -4
  %i.dbm = add i32 %i.azz, -4
  %5 = lshr i32 %i.dbm, 2
  %i.dbn = zext nneg i32 %5 to i64                ; 2 uses
  %6 = shl nuw nsw i64 %i.dbn, 2
  %i.dbo = add nuw nsw i64 %6, 4
  %i.dbp = mul nuw nsw i64 %i.dbo, %i.cbg
  %scevgep.i226 = getelementptr i8, ptr %i.azi, i64 %i.dbp
  %i.dbq = shl nuw nsw i64 %i.dbn, 3
  %i.dbr = getelementptr i8, ptr %i.azk, i64 %i.dbq
  %scevgep1095.i = getelementptr i8, ptr %i.dbr, i64 20
  br label %._crit_edge1009.i

._crit_edge1009.i:                                ; preds = %._crit_edge.us.i162, %.preheader940.lr.ph.split.i, %bb.sc
  %.0698.lcssa.i = phi i32 [ %i.azu, %bb.sc ], [ %i.azu, %.preheader940.lr.ph.split.i ], [ %.66764.us.i, %._crit_edge.us.i162 ]
  %.0655.lcssa.i = phi i32 [ %i.azs, %bb.sc ], [ %i.azs, %.preheader940.lr.ph.split.i ], [ %.42697.us.i, %._crit_edge.us.i162 ]
  %.0644.lcssa.i = phi i32 [ %i.azq, %bb.sc ], [ %i.azq, %.preheader940.lr.ph.split.i ], [ %.66.us.i159, %._crit_edge.us.i162 ]
  %.0641.lcssa.i = phi ptr [ %i.azp, %bb.sc ], [ %i.azp, %.preheader940.lr.ph.split.i ], [ %.10.us.i160, %._crit_edge.us.i162 ]
  %.0638.lcssa.i163 = phi ptr [ %i.azn, %bb.sc ], [ %scevgep1095.i, %.preheader940.lr.ph.split.i ], [ %i.dbh, %._crit_edge.us.i162 ]
  %.0636.lcssa.i = phi ptr [ %i.azi, %bb.sc ], [ %scevgep.i226, %.preheader940.lr.ph.split.i ], [ %i.dbg, %._crit_edge.us.i162 ]
  %.0635.lcssa.i164 = phi i32 [ 0, %bb.sc ], [ %i.dbl, %.preheader940.lr.ph.split.i ], [ %i.dbf, %._crit_edge.us.i162 ] ; 4 uses
  %.lcssa988.i = phi i32 [ %i.azz, %bb.sc ], [ %i.azz, %.preheader940.lr.ph.split.i ], [ %i.dbi, %._crit_edge.us.i162 ] ; 2 uses
  store ptr %.0641.lcssa.i, ptr %i.azo, align 8, !tbaa !120
  store i32 %.0644.lcssa.i, ptr %0, align 8, !tbaa !110
  store i32 %.0655.lcssa.i, ptr %i.azr, align 4, !tbaa !121
  store i32 %.0698.lcssa.i, ptr %i.azt, align 8, !tbaa !109
  %i.dbs = icmp ult i32 %.0635.lcssa.i164, %.lcssa988.i
  %i.dbt = icmp ne i32 %i.b, 0
  %or.cond.i165 = and i1 %i.dbt, %i.dbs
  br i1 %or.cond.i165, label %.preheader.i167, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

.preheader.i167:                                  ; preds = %._crit_edge1009.i, %._crit_edge.i171
  %i.dbu = phi i32 [ %i.dcf, %._crit_edge.i171 ], [ %.lcssa988.i, %._crit_edge1009.i ]
  %.11028.i = phi i32 [ %i.dcg, %._crit_edge.i171 ], [ 0, %._crit_edge1009.i ]
  %.21027.i = phi ptr [ %i.dch, %._crit_edge.i171 ], [ %.0636.lcssa.i, %._crit_edge1009.i ] ; 2 uses
  %.26401026.i = phi ptr [ %i.dci, %._crit_edge.i171 ], [ %.0638.lcssa.i163, %._crit_edge1009.i ] ; 2 uses
  %.not1030.i = icmp eq i32 %i.dbu, %.0635.lcssa.i164
  br i1 %.not1030.i, label %._crit_edge.i171, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.preheader.i167, %.lr.ph.i168
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i170, %.lr.ph.i168 ], [ 0, %.preheader.i167 ] ; 2 uses
  %i.dbv = trunc nuw i64 %indvars.iv.i169 to i32  ; 2 uses
  %i.dbw = mul i32 %i.b, %i.dbv
  %i.dbx = zext i32 %i.dbw to i64
  %i.dby = getelementptr inbounds nuw [4 x i8], ptr %.21027.i, i64 %i.dbx
  %i.dbz = load i32, ptr %i.a, align 8, !tbaa !107
  %i.dca = add i32 %i.dbz, 2
  tail call fastcc void @opj_t1_dec_sigpass_step_mqc(ptr noundef nonnull %0, ptr noundef %.26401026.i, ptr noundef %i.dby, i32 noundef %i.azx, i32 noundef %i.dbv, i32 noundef %i.dca, i32 noundef 0)
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %i.dcb = load i32, ptr %i.azy, align 4, !tbaa !108 ; 2 uses
  %i.dcc = sub i32 %i.dcb, %.0635.lcssa.i164
  %i.dcd = zext i32 %i.dcc to i64
  %i.dce = icmp samesign ult i64 %indvars.iv.next.i170, %i.dcd
  br i1 %i.dce, label %.lr.ph.i168, label %._crit_edge.i171, !llvm.loop !394

._crit_edge.i171:                                 ; preds = %.lr.ph.i168, %.preheader.i167
  %i.dcf = phi i32 [ %.0635.lcssa.i164, %.preheader.i167 ], [ %i.dcb, %.lr.ph.i168 ]
  %i.dcg = add nuw i32 %.11028.i, 1               ; 2 uses
  %i.dch = getelementptr inbounds nuw i8, ptr %.21027.i, i64 4
  %i.dci = getelementptr inbounds nuw i8, ptr %.26401026.i, i64 4
  %exitcond1097.not.i = icmp eq i32 %i.dcg, %i.b
  br i1 %exitcond1097.not.i, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit, label %.preheader.i167, !llvm.loop !395

opj_t1_dec_sigpass_mqc_generic_vsc.exit.sink.split: ; preds = %bb.fk, %bb.ls
  %.10.i.lcssa.lcssa.sink = phi ptr [ %.10.i50, %bb.ls ], [ %.10.i, %bb.fk ]
  %.66.i.lcssa.lcssa.sink = phi i32 [ %.66.i49, %bb.ls ], [ %.66.i, %bb.fk ]
  %.42676.i.lcssa.lcssa.sink = phi i32 [ %.42681.i, %bb.ls ], [ %.42676.i, %bb.fk ]
  %.66743.i.lcssa.lcssa.sink = phi i32 [ %.66748.i, %bb.ls ], [ %.66743.i, %bb.fk ]
  store ptr %.10.i.lcssa.lcssa.sink, ptr %i.m, align 8, !tbaa !120
  store i32 %.66.i.lcssa.lcssa.sink, ptr %0, align 8, !tbaa !110
  store i32 %.42676.i.lcssa.lcssa.sink, ptr %i.p, align 4, !tbaa !121
  store i32 %.66743.i.lcssa.lcssa.sink, ptr %i.r, align 8, !tbaa !109
  br label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

opj_t1_dec_sigpass_mqc_generic_vsc.exit:          ; preds = %._crit_edge.i, %._crit_edge.i171, %opj_t1_dec_sigpass_mqc_generic_vsc.exit.sink.split, %._crit_edge1009.i, %._crit_edge1003.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_t1_dec_clnpass(ptr noundef nonnull %0, i32 noundef range(i32 1, 31) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107  ; 18 uses
  %i.c = icmp eq i32 %i.b, 64
  br i1 %i.c, label %bb.b, label %bb.zp

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.e = load i32, ptr %i.d, align 4, !tbaa !108
  %i.f = icmp eq i32 %i.e, 64
  br i1 %i.f, label %bb.c, label %bb.zp

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %2, 8
  %.not13 = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 268 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120  ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !110    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !121  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !109  ; 2 uses
  %i.t = shl nuw nsw i32 1, %1                    ; 2 uses
  %i.u = lshr exact i32 %i.t, 1
  %i.v = or i32 %i.u, %i.t                        ; 17 uses
  %i.w = getelementptr i8, ptr %0, i64 200        ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 30 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 216 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 144 uses
  %i.aa = sub nsw i32 0, %i.v                     ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 12 uses
  br i1 %.not13, label %.preheader.i14, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.mi
  %.012782061.i = phi i32 [ %i.bbe, %bb.mi ], [ 0, %bb.c ] ; 2 uses
  %.012792060.i = phi ptr [ %i.bbf, %bb.mi ], [ %i.i, %bb.c ]
  %.012822059.i = phi ptr [ %i.bbg, %bb.mi ], [ %i.l, %bb.c ]
  %.012852058.i = phi ptr [ %.8.i, %bb.mi ], [ %i.n, %bb.c ]
  %.012882057.i = phi i32 [ %.142.i, %bb.mi ], [ %i.o, %bb.c ]
  %.012972056.i = phi i32 [ %.881385.i, %bb.mi ], [ %i.q, %bb.c ]
  %.013862055.i = phi i32 [ %.1421528.i, %bb.mi ], [ %i.s, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %.thread1900.i, %.preheader.i
  %.012752054.i = phi i32 [ 0, %.preheader.i ], [ %i.bbb, %.thread1900.i ]
  %.112802053.i = phi ptr [ %.012792060.i, %.preheader.i ], [ %i.bbc, %.thread1900.i ] ; 10 uses
  %.112832052.i = phi ptr [ %.012822059.i, %.preheader.i ], [ %i.bbd, %.thread1900.i ] ; 23 uses
  %.112862051.i = phi ptr [ %.012852058.i, %.preheader.i ], [ %.8.i, %.thread1900.i ]
  %.112892050.i = phi i32 [ %.012882057.i, %.preheader.i ], [ %.142.i, %.thread1900.i ] ; 7 uses
  %.112982049.i = phi i32 [ %.012972056.i, %.preheader.i ], [ %.881385.i, %.thread1900.i ] ; 3 uses
  %.113872048.i = phi i32 [ %.013862055.i, %.preheader.i ], [ %.1421528.i, %.thread1900.i ] ; 7 uses
  %i.ad = load i32, ptr %.112832052.i, align 4, !tbaa !3 ; 9 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.gh

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !122 ; 6 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !124 ; 6 uses
  %i.ah = sub i32 %.112982049.i, %i.ag            ; 5 uses
  %i.ai = lshr i32 %.112892050.i, 16
  %i.aj = icmp ult i32 %i.ai, %i.ag
  br i1 %i.aj, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp ult i32 %i.ah, %i.ag               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !126 ; 2 uses
  %.sink.i = select i1 %i.ak, i64 8, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink.i
  %storemerge1793.i = load ptr, ptr %i.an, align 8, !tbaa !122
  store ptr %storemerge1793.i, ptr %i.ab, align 8, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.f
  %.21388.i = phi i32 [ %.113872048.i, %bb.f ], [ %i.bf, %bb.m ] ; 2 uses
  %.31300.i = phi i32 [ %i.ag, %bb.f ], [ %i.bd, %bb.m ]
  %.21290.i = phi i32 [ %.112892050.i, %bb.f ], [ %i.be, %bb.m ] ; 4 uses
  %i.ao = icmp eq i32 %.21388.i, 0
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !111 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !48  ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !48
  %i.au = icmp eq i8 %i.at, -1
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = icmp ugt i8 %i.ar, -113
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = add i32 %.21290.i, 65280
  %i.ax = load i32, ptr %i.z, align 4, !tbaa !127
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.z, align 4, !tbaa !127
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !111
  %i.az = shl nuw nsw i32 %i.as, 9
  %i.ba = add i32 %i.az, %.21290.i
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !111
  %i.bb = shl nuw nsw i32 %i.as, 8
  %i.bc = add i32 %i.bb, %.21290.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.g
  %.41390.i = phi i32 [ %.21388.i, %bb.g ], [ 8, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ]
  %.41292.i = phi i32 [ %.21290.i, %bb.g ], [ %i.aw, %bb.j ], [ %i.ba, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = shl i32 %.31300.i, 1                    ; 3 uses
  %i.be = shl i32 %.41292.i, 1                    ; 2 uses
  %i.bf = add i32 %.41390.i, -1                   ; 2 uses
  %i.bg = icmp ult i32 %i.bd, 32768
  br i1 %i.bg, label %bb.g, label %.loopexit1923.i.loopexit, !llvm.loop !396

bb.n:                                             ; preds = %bb.e
  %i.bh = shl nuw i32 %i.ag, 16
  %i.bi = sub i32 %.112892050.i, %i.bh            ; 2 uses
end_hunk_4
begin_hunk_5_@opj_t1_dec_clnpass:bb.a

bb.za:                                            ; preds = %bb.yy
  store ptr %i.dai, ptr %i.y, align 8, !tbaa !111
  %i.dar = shl nuw nsw i32 %i.dak, 9
  %i.das = add i32 %i.dar, %.134.i44
  br label %bb.zc

bb.zb:                                            ; preds = %bb.yx
  store ptr %i.dai, ptr %i.y, align 8, !tbaa !111
  %i.dat = shl nuw nsw i32 %i.dak, 8
  %i.dau = add i32 %i.dat, %.134.i44
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za, %bb.yz, %bb.yw
  %.1361532.i = phi i32 [ %.1341530.i, %bb.yw ], [ 8, %bb.yz ], [ 7, %bb.za ], [ 8, %bb.zb ]
  %.136.i45 = phi i32 [ %.134.i44, %bb.yw ], [ %i.dao, %bb.yz ], [ %i.das, %bb.za ], [ %i.dau, %bb.zb ]
  %i.dav = shl i32 %.841391.i, 1                  ; 3 uses
  %i.daw = shl i32 %.136.i45, 1                   ; 2 uses
  %i.dax = add i32 %.1361532.i, -1                ; 2 uses
  %i.day = icmp ult i32 %i.dav, 32768
  br i1 %i.day, label %bb.yw, label %.loopexit1935.i33.loopexit, !llvm.loop !468

bb.zd:                                            ; preds = %bb.yu
  %i.daz = shl nuw i32 %i.czy, 16
  %i.dba = sub i32 %.133.i32, %i.daz              ; 2 uses
  %i.dbb = and i32 %i.czz, 32768
  %i.dbc = icmp eq i32 %i.dbb, 0
  br i1 %i.dbc, label %bb.ze, label %bb.zm

bb.ze:                                            ; preds = %bb.zd
  %i.dbd = icmp ult i32 %i.czz, %i.czy            ; 2 uses
  %i.dbe = getelementptr inbounds nuw i8, ptr %i.czx, i64 4
  %i.dbf = load i32, ptr %i.dbe, align 4, !tbaa !126 ; 2 uses
  %.sink2469.i = select i1 %i.dbd, i64 16, i64 8
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.czx, i64 %.sink2469.i
  %storemerge1795.i39 = load ptr, ptr %i.dbg, align 8, !tbaa !122
  store ptr %storemerge1795.i39, ptr %i.czw, align 8, !tbaa !122
  br label %bb.zf

bb.zf:                                            ; preds = %bb.zl, %bb.ze
  %.1371533.i = phi i32 [ %.1331529.i, %bb.ze ], [ %i.dby, %bb.zl ] ; 2 uses
  %.851392.i = phi i32 [ %i.czz, %bb.ze ], [ %i.dbw, %bb.zl ]
  %.137.i40 = phi i32 [ %i.dba, %bb.ze ], [ %i.dbx, %bb.zl ] ; 4 uses
  %i.dbh = icmp eq i32 %.1371533.i, 0
  br i1 %i.dbh, label %bb.zg, label %bb.zl

bb.zg:                                            ; preds = %bb.zf
  %i.dbi = load ptr, ptr %i.y, align 8, !tbaa !111 ; 2 uses
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbi, i64 1 ; 3 uses
  %i.dbk = load i8, ptr %i.dbj, align 1, !tbaa !48 ; 2 uses
  %i.dbl = zext i8 %i.dbk to i32                  ; 2 uses
  %i.dbm = load i8, ptr %i.dbi, align 1, !tbaa !48
  %i.dbn = icmp eq i8 %i.dbm, -1
  br i1 %i.dbn, label %bb.zh, label %bb.zk

bb.zh:                                            ; preds = %bb.zg
  %i.dbo = icmp ugt i8 %i.dbk, -113
  br i1 %i.dbo, label %bb.zi, label %bb.zj

bb.zi:                                            ; preds = %bb.zh
  %i.dbp = add i32 %.137.i40, 65280
  %i.dbq = load i32, ptr %i.z, align 4, !tbaa !127
  %i.dbr = add i32 %i.dbq, 1
  store i32 %i.dbr, ptr %i.z, align 4, !tbaa !127
  br label %bb.zl

bb.zj:                                            ; preds = %bb.zh
  store ptr %i.dbj, ptr %i.y, align 8, !tbaa !111
  %i.dbs = shl nuw nsw i32 %i.dbl, 9
  %i.dbt = add i32 %i.dbs, %.137.i40
  br label %bb.zl

bb.zk:                                            ; preds = %bb.zg
  store ptr %i.dbj, ptr %i.y, align 8, !tbaa !111
  %i.dbu = shl nuw nsw i32 %i.dbl, 8
  %i.dbv = add i32 %i.dbu, %.137.i40
  br label %bb.zl

bb.zl:                                            ; preds = %bb.zk, %bb.zj, %bb.zi, %bb.zf
  %.1391535.i = phi i32 [ %.1371533.i, %bb.zf ], [ 8, %bb.zi ], [ 7, %bb.zj ], [ 8, %bb.zk ]
  %.139.i41 = phi i32 [ %.137.i40, %bb.zf ], [ %i.dbp, %bb.zi ], [ %i.dbt, %bb.zj ], [ %i.dbv, %bb.zk ]
  %i.dbw = shl i32 %.851392.i, 1                  ; 3 uses
  %i.dbx = shl i32 %.139.i41, 1                   ; 2 uses
  %i.dby = add i32 %.1391535.i, -1                ; 2 uses
  %i.dbz = icmp ult i32 %i.dbw, 32768
  br i1 %i.dbz, label %bb.zf, label %.loopexit1935.i33.loopexit938, !llvm.loop !469

bb.zm:                                            ; preds = %bb.zd
  %i.dca = getelementptr inbounds nuw i8, ptr %i.czx, i64 4
  %i.dcb = load i32, ptr %i.dca, align 4, !tbaa !126
  br label %.loopexit1935.i33

.loopexit1935.i33.loopexit:                       ; preds = %bb.zc
  %.not1797.i42 = icmp eq i32 %i.dae, 0
  %i.dcc = zext i1 %.not1797.i42 to i32
  %.481587.i = select i1 %i.dac, i32 %i.dae, i32 %i.dcc
  br label %.loopexit1935.i33

.loopexit1935.i33.loopexit938:                    ; preds = %bb.zl
  %.not1796.i38 = icmp eq i32 %i.dbf, 0
  %i.dcd = zext i1 %.not1796.i38 to i32
  %.491588.i = select i1 %i.dbd, i32 %i.dcd, i32 %i.dbf
  br label %.loopexit1935.i33

.loopexit1935.i33:                                ; preds = %.loopexit1935.i33.loopexit938, %.loopexit1935.i33.loopexit, %bb.zm
  %.501589.i = phi i32 [ %i.dcb, %bb.zm ], [ %.481587.i, %.loopexit1935.i33.loopexit ], [ %.491588.i, %.loopexit1935.i33.loopexit938 ] ; 2 uses
  %.1401536.i = phi i32 [ %.1331529.i, %bb.zm ], [ %i.dax, %.loopexit1935.i33.loopexit ], [ %i.dby, %.loopexit1935.i33.loopexit938 ]
  %.861393.i = phi i32 [ %i.czz, %bb.zm ], [ %i.dav, %.loopexit1935.i33.loopexit ], [ %i.dbw, %.loopexit1935.i33.loopexit938 ]
  %.140.i34 = phi i32 [ %i.dba, %bb.zm ], [ %i.daw, %.loopexit1935.i33.loopexit ], [ %i.dbx, %.loopexit1935.i33.loopexit938 ]
  %i.dce = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.czs
  %i.dcf = load i8, ptr %i.dce, align 1, !tbaa !48
  %i.dcg = zext i8 %i.dcf to i32                  ; 2 uses
  %i.dch = xor i32 %.501589.i, %i.dcg             ; 2 uses
  %.not1799.i = icmp eq i32 %.501589.i, %i.dcg
  %i.dci = select i1 %.not1799.i, i32 %i.v, i32 %i.aa
  %i.dcj = getelementptr inbounds nuw i8, ptr %.112902063.i, i64 768
  store i32 %i.dci, ptr %i.dcj, align 4, !tbaa !3
  %i.dck = load i32, ptr %i.cze, align 4, !tbaa !3
  %i.dcl = or i32 %i.dck, 16384
  store i32 %i.dcl, ptr %i.cze, align 4, !tbaa !3
  %i.dcm = shl i32 %i.dch, 28
  %i.dcn = or i32 %i.dcm, %.91599.i
  %i.dco = load i32, ptr %i.czg, align 4, !tbaa !3
  %i.dcp = or i32 %i.dco, 4096
  store i32 %i.dcp, ptr %i.czg, align 4, !tbaa !3
  br label %.sink.split.i35

.sink.split.i35:                                  ; preds = %.loopexit1935.i33, %.loopexit.i105
  %.sink2484.i = phi i32 [ %i.cdr, %.loopexit.i105 ], [ %i.dch, %.loopexit1935.i33 ]
  %.101600.ph.in.i = phi i32 [ %i.cdx, %.loopexit.i105 ], [ %i.dcn, %.loopexit1935.i33 ]
  %.1411537.ph.i = phi i32 [ %.791475.i, %.loopexit.i105 ], [ %.1401536.i, %.loopexit1935.i33 ]
  %.871394.ph.i = phi i32 [ %.491356.i, %.loopexit.i105 ], [ %.861393.i, %.loopexit1935.i33 ]
  %.141.ph.i36 = phi i32 [ %.79.i106, %.loopexit.i105 ], [ %.140.i34, %.loopexit1935.i33 ]
  %.7.ph.i37 = phi ptr [ %i.cbg, %.loopexit.i105 ], [ %i.czw, %.loopexit1935.i33 ]
  %.101600.ph.i = or i32 %.101600.ph.in.i, 8192
  %i.dcq = getelementptr inbounds nuw i8, ptr %.112932062.i, i64 264 ; 2 uses
  %i.dcr = shl i32 %.sink2484.i, 18
  %i.dcs = or disjoint i32 %i.dcr, 2
  %i.dct = load i32, ptr %i.dcq, align 4, !tbaa !3
  %i.dcu = or i32 %i.dct, %i.dcs
  store i32 %i.dcu, ptr %i.dcq, align 4, !tbaa !3
  %i.dcv = getelementptr inbounds nuw i8, ptr %.112932062.i, i64 260 ; 2 uses
  %i.dcw = load i32, ptr %i.dcv, align 4, !tbaa !3
  %i.dcx = or i32 %i.dcw, 4
  store i32 %i.dcx, ptr %i.dcv, align 4, !tbaa !3
  %i.dcy = getelementptr inbounds nuw i8, ptr %.112932062.i, i64 268 ; 2 uses
  %i.dcz = load i32, ptr %i.dcy, align 4, !tbaa !3
  %i.dda = or i32 %i.dcz, 1
  store i32 %i.dda, ptr %i.dcy, align 4, !tbaa !3
  br label %bb.zn

bb.zn:                                            ; preds = %.sink.split.i35, %.loopexit1937.i31, %bb.ya, %.loopexit1917.i117, %.loopexit1929.i102
  %.101600.i = phi i32 [ %.91599.i, %.loopexit1937.i31 ], [ %.91599.i, %bb.ya ], [ 0, %.loopexit1929.i102 ], [ %.41594.ph.i, %.loopexit1917.i117 ], [ %.101600.ph.i, %.sink.split.i35 ]
  %.1411537.i = phi i32 [ %.1331529.i, %.loopexit1937.i31 ], [ %.1261522.i, %bb.ya ], [ %.221418.i, %.loopexit1929.i102 ], [ %.711467.i, %.loopexit1917.i117 ], [ %.1411537.ph.i, %.sink.split.i35 ]
  %.871394.i = phi i32 [ %.821389.i, %.loopexit1937.i31 ], [ %.781385.i, %bb.ya ], [ %.131320.i, %.loopexit1929.i102 ], [ %.441351.i, %.loopexit1917.i117 ], [ %.871394.ph.i, %.sink.split.i35 ]
  %.141.i25 = phi i32 [ %.133.i32, %.loopexit1937.i31 ], [ %.126.i22, %bb.ya ], [ %.22.i103, %.loopexit1929.i102 ], [ %.71.i118, %.loopexit1917.i117 ], [ %.141.ph.i36, %.sink.split.i35 ]
  %.7.i26 = phi ptr [ %i.cww, %.loopexit1937.i31 ], [ %.6.i23, %bb.ya ], [ %i.ac, %.loopexit1929.i102 ], [ %i.byf, %.loopexit1917.i117 ], [ %.7.ph.i37, %.sink.split.i35 ]
  %i.ddb = and i32 %.101600.i, -1226833921
  store i32 %i.ddb, ptr %.112932062.i, align 4, !tbaa !3
  br label %.thread1910.i

.thread1910.i:                                    ; preds = %bb.zn, %.loopexit1933.i98
  %.1421538.i = phi i32 [ %.1411537.i, %bb.zn ], [ %.81404.i, %.loopexit1933.i98 ] ; 3 uses
  %.881395.i = phi i32 [ %.871394.i, %bb.zn ], [ %.51312.i, %.loopexit1933.i98 ] ; 3 uses
  %.142.i27 = phi i32 [ %.141.i25, %bb.zn ], [ %.81306.i, %.loopexit1933.i98 ] ; 3 uses
  %.8.i28 = phi ptr [ %.7.i26, %bb.zn ], [ %i.ab, %.loopexit1933.i98 ] ; 3 uses
  %i.ddc = add nuw nsw i32 %.012852064.i, 1       ; 2 uses
  %i.ddd = getelementptr inbounds nuw i8, ptr %.112902063.i, i64 4
  %i.dde = getelementptr inbounds nuw i8, ptr %.112932062.i, i64 4
  %exitcond.not.i29 = icmp eq i32 %i.ddc, 64
  br i1 %exitcond.not.i29, label %bb.zo, label %bb.mj, !llvm.loop !470

bb.zo:                                            ; preds = %.thread1910.i
  %i.ddf = add nuw nsw i32 %.012882071.i, 4
  %i.ddg = getelementptr inbounds nuw i8, ptr %.112902063.i, i64 772
  %i.ddh = getelementptr inbounds nuw i8, ptr %.112932062.i, i64 12
  %i.ddi = icmp samesign ult i32 %.012882071.i, 60
  br i1 %i.ddi, label %.preheader.i14, label %opj_t1_dec_clnpass_generic_vsc.exit.sink.split, !llvm.loop !471

bb.zp:                                            ; preds = %bb.b, %bb.a
  %i.ddj = and i32 %2, 8
  %.not = icmp eq i32 %i.ddj, 0
  %i.ddk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ddl = load ptr, ptr %i.ddk, align 8, !tbaa !15 ; 6 uses
  %i.ddm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ddn = load ptr, ptr %i.ddm, align 8, !tbaa !16 ; 3 uses
  %i.ddo = add i32 %i.b, 3
  %i.ddp = zext i32 %i.ddo to i64
  %i.ddq = getelementptr inbounds nuw [4 x i8], ptr %i.ddn, i64 %i.ddp ; 4 uses
  %i.ddr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.dds = load ptr, ptr %i.ddr, align 8, !tbaa !120 ; 6 uses
  %i.ddt = load i32, ptr %0, align 8, !tbaa !110  ; 6 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ddv = load i32, ptr %i.ddu, align 4, !tbaa !121 ; 6 uses
  %i.ddw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ddx = load i32, ptr %i.ddw, align 8, !tbaa !109 ; 6 uses
  %i.ddy = shl nuw nsw i32 1, %1                  ; 2 uses
  %i.ddz = lshr exact i32 %i.ddy, 1
  %i.dea = or i32 %i.ddz, %i.ddy                  ; 20 uses
  %i.deb = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 7 uses
  %i.dec = load i32, ptr %i.deb, align 4, !tbaa !108 ; 9 uses
  %.not.i203 = icmp ult i32 %i.dec, 4             ; 2 uses
  br i1 %.not, label %bb.amw, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  br i1 %.not.i203, label %._crit_edge2094.i, label %.preheader1965.lr.ph.i

.preheader1965.lr.ph.i:                           ; preds = %bb.zq
  %.not2114.i = icmp eq i32 %i.b, 0
  %i.ded = getelementptr i8, ptr %0, i64 200      ; 7 uses
  %i.dee = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.def = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 108 uses
  %i.deg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 72 uses
  %i.deh = sub nsw i32 0, %i.dea                  ; 8 uses
  %i.dei = zext i32 %i.b to i64                   ; 2 uses
  %i.dej = shl i32 %i.b, 1
  %i.dek = zext i32 %i.dej to i64                 ; 2 uses
  %i.del = mul i32 %i.b, 3
  %i.dem = zext i32 %i.del to i64                 ; 4 uses
  %i.den = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  br i1 %.not2114.i, label %.preheader1965.lr.ph.split.i, label %.preheader1965.us.i

.preheader1965.us.i:                              ; preds = %.preheader1965.lr.ph.i, %._crit_edge.us.i
  %.012972093.us.i = phi i32 [ %i.fft, %._crit_edge.us.i ], [ 0, %.preheader1965.lr.ph.i ]
  %.012982092.us.i = phi ptr [ %i.ffu, %._crit_edge.us.i ], [ %i.ddl, %.preheader1965.lr.ph.i ]
  %.013012091.us.i = phi ptr [ %i.ffv, %._crit_edge.us.i ], [ %i.ddq, %.preheader1965.lr.ph.i ]
  %.013042090.us.i = phi ptr [ %.8.us.i, %._crit_edge.us.i ], [ %i.dds, %.preheader1965.lr.ph.i ]
  %.013072089.us.i = phi i32 [ %.142.us.i, %._crit_edge.us.i ], [ %i.ddt, %.preheader1965.lr.ph.i ]
  %.013162088.us.i = phi i32 [ %.881404.us.i, %._crit_edge.us.i ], [ %i.ddv, %.preheader1965.lr.ph.i ]
  %.014052087.us.i = phi i32 [ %.1421547.us.i, %._crit_edge.us.i ], [ %i.ddx, %.preheader1965.lr.ph.i ]
  br label %bb.zr

bb.zr:                                            ; preds = %.thread1922.us.i, %.preheader1965.us.i
  %.012942081.us.i = phi i32 [ 0, %.preheader1965.us.i ], [ %i.ffq, %.thread1922.us.i ]
  %.112992080.us.i = phi ptr [ %.012982092.us.i, %.preheader1965.us.i ], [ %i.ffr, %.thread1922.us.i ] ; 9 uses
  %.113022079.us.i = phi ptr [ %.013012091.us.i, %.preheader1965.us.i ], [ %i.ffs, %.thread1922.us.i ] ; 21 uses
  %.113052078.us.i = phi ptr [ %.013042090.us.i, %.preheader1965.us.i ], [ %.8.us.i, %.thread1922.us.i ]
  %.113082077.us.i = phi i32 [ %.013072089.us.i, %.preheader1965.us.i ], [ %.142.us.i, %.thread1922.us.i ] ; 7 uses
  %.113172076.us.i = phi i32 [ %.013162088.us.i, %.preheader1965.us.i ], [ %.881404.us.i, %.thread1922.us.i ] ; 3 uses
  %.114062075.us.i = phi i32 [ %.014052087.us.i, %.preheader1965.us.i ], [ %.1421547.us.i, %.thread1922.us.i ] ; 7 uses
  %i.dep = load i32, ptr %.113022079.us.i, align 4, !tbaa !3 ; 9 uses
  %i.deq = icmp eq i32 %i.dep, 0
  br i1 %i.deq, label %bb.afs, label %bb.zs

bb.zs:                                            ; preds = %bb.zr
  %i.der = and i32 %i.dep, 2097168
  %.not.us.i = icmp eq i32 %i.der, 0
  br i1 %.not.us.i, label %bb.zt, label %bb.abf

bb.zt:                                            ; preds = %bb.zs
  %.val1871.us.i = load ptr, ptr %i.ded, align 8, !tbaa !88
  %i.des = and i32 %i.dep, 495
  %i.det = zext nneg i32 %i.des to i64
  %i.deu = getelementptr inbounds nuw i8, ptr %.val1871.us.i, i64 %i.det
  %i.dev = load i8, ptr %i.deu, align 1, !tbaa !48
  %i.dew = zext i8 %i.dev to i64
  %i.dex = getelementptr inbounds nuw [8 x i8], ptr %i.dee, i64 %i.dew ; 4 uses
  %i.dey = load ptr, ptr %i.dex, align 8, !tbaa !122 ; 6 uses
  %i.dez = load i32, ptr %i.dey, align 8, !tbaa !124 ; 6 uses
  %i.dfa = sub i32 %.113172076.us.i, %i.dez       ; 5 uses
  %i.dfb = lshr i32 %.113082077.us.i, 16
  %i.dfc = icmp ult i32 %i.dfb, %i.dez
  br i1 %i.dfc, label %bb.aae, label %bb.zu

bb.zu:                                            ; preds = %bb.zt
  %i.dfd = shl nuw i32 %i.dez, 16
  %i.dfe = sub i32 %.113082077.us.i, %i.dfd       ; 2 uses
  %i.dff = and i32 %i.dfa, 32768
  %i.dfg = icmp eq i32 %i.dff, 0
  br i1 %i.dfg, label %bb.zw, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.dey, i64 4
  %i.dfi = load i32, ptr %i.dfh, align 4, !tbaa !126
  br label %.loopexit1963.us.i

bb.zw:                                            ; preds = %bb.zu
  %i.dfj = icmp ult i32 %i.dfa, %i.dez            ; 2 uses
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.dey, i64 4
  %i.dfl = load i32, ptr %i.dfk, align 4, !tbaa !126 ; 2 uses
  %.sink.i202 = select i1 %i.dfj, i64 16, i64 8
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dey, i64 %.sink.i202
  %storemerge.us.i = load ptr, ptr %i.dfm, align 8, !tbaa !122
  store ptr %storemerge.us.i, ptr %i.dex, align 8, !tbaa !122
  br label %bb.zx

bb.zx:                                            ; preds = %bb.aad, %bb.zw
  %.851490.us.i = phi i32 [ %.114062075.us.i, %bb.zw ], [ %i.dge, %bb.aad ] ; 2 uses
  %.541370.us.i = phi i32 [ %i.dfa, %bb.zw ], [ %i.dgc, %bb.aad ]
  %.85.us.i = phi i32 [ %i.dfe, %bb.zw ], [ %i.dgd, %bb.aad ] ; 4 uses
  %i.dfn = icmp eq i32 %.851490.us.i, 0
  br i1 %i.dfn, label %bb.zy, label %bb.aad

bb.zy:                                            ; preds = %bb.zx
  %i.dfo = load ptr, ptr %i.def, align 8, !tbaa !111 ; 2 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 1 ; 3 uses
  %i.dfq = load i8, ptr %i.dfp, align 1, !tbaa !48 ; 2 uses
  %i.dfr = zext i8 %i.dfq to i32                  ; 2 uses
  %i.dfs = load i8, ptr %i.dfo, align 1, !tbaa !48
  %i.dft = icmp eq i8 %i.dfs, -1
  br i1 %i.dft, label %bb.aaa, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  store ptr %i.dfp, ptr %i.def, align 8, !tbaa !111
  %i.dfu = shl nuw nsw i32 %i.dfr, 8
  %i.dfv = add i32 %i.dfu, %.85.us.i
  br label %bb.aad

bb.aaa:                                           ; preds = %bb.zy
  %i.dfw = icmp ugt i8 %i.dfq, -113
  br i1 %i.dfw, label %bb.aac, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  store ptr %i.dfp, ptr %i.def, align 8, !tbaa !111
  %i.dfx = shl nuw nsw i32 %i.dfr, 9
  %i.dfy = add i32 %i.dfx, %.85.us.i
  br label %bb.aad

bb.aac:                                           ; preds = %bb.aaa
  %i.dfz = add i32 %.85.us.i, 65280
  %i.dga = load i32, ptr %i.deg, align 4, !tbaa !127
  %i.dgb = add i32 %i.dga, 1
  store i32 %i.dgb, ptr %i.deg, align 4, !tbaa !127
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aac, %bb.aab, %bb.zz, %bb.zx
  %.871492.us.i = phi i32 [ %.851490.us.i, %bb.zx ], [ 8, %bb.aac ], [ 7, %bb.aab ], [ 8, %bb.zz ]
  %.87.us.i = phi i32 [ %.85.us.i, %bb.zx ], [ %i.dfz, %bb.aac ], [ %i.dfy, %bb.aab ], [ %i.dfv, %bb.zz ]
  %i.dgc = shl i32 %.541370.us.i, 1               ; 3 uses
  %i.dgd = shl i32 %.87.us.i, 1                   ; 2 uses
  %i.dge = add i32 %.871492.us.i, -1              ; 2 uses
  %i.dgf = icmp ult i32 %i.dgc, 32768
  br i1 %i.dgf, label %bb.zx, label %.loopexit1963.us.i.loopexit1000, !llvm.loop !472

bb.aae:                                           ; preds = %bb.zt
  %i.dgg = icmp ult i32 %i.dfa, %i.dez            ; 2 uses
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dey, i64 4
  %i.dgi = load i32, ptr %i.dgh, align 4, !tbaa !126 ; 2 uses
  %.sink2501.i = select i1 %i.dgg, i64 8, i64 16
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.dey, i64 %.sink2501.i
  %storemerge1772.us.i = load ptr, ptr %i.dgj, align 8, !tbaa !122
  store ptr %storemerge1772.us.i, ptr %i.dex, align 8, !tbaa !122
  br label %bb.aaf

bb.aaf:                                           ; preds = %bb.aal, %bb.aae
  %.821487.us.i = phi i32 [ %.114062075.us.i, %bb.aae ], [ %i.dhb, %bb.aal ] ; 2 uses
  %.531369.us.i = phi i32 [ %i.dez, %bb.aae ], [ %i.dgz, %bb.aal ]
  %.82.us.i = phi i32 [ %.113082077.us.i, %bb.aae ], [ %i.dha, %bb.aal ] ; 4 uses
  %i.dgk = icmp eq i32 %.821487.us.i, 0
  br i1 %i.dgk, label %bb.aag, label %bb.aal

bb.aag:                                           ; preds = %bb.aaf
  %i.dgl = load ptr, ptr %i.def, align 8, !tbaa !111 ; 2 uses
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.dgl, i64 1 ; 3 uses
  %i.dgn = load i8, ptr %i.dgm, align 1, !tbaa !48 ; 2 uses
  %i.dgo = zext i8 %i.dgn to i32                  ; 2 uses
  %i.dgp = load i8, ptr %i.dgl, align 1, !tbaa !48
  %i.dgq = icmp eq i8 %i.dgp, -1
  br i1 %i.dgq, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  store ptr %i.dgm, ptr %i.def, align 8, !tbaa !111
  %i.dgr = shl nuw nsw i32 %i.dgo, 8
  %i.dgs = add i32 %i.dgr, %.82.us.i
  br label %bb.aal

bb.aai:                                           ; preds = %bb.aag
  %i.dgt = icmp ugt i8 %i.dgn, -113
  br i1 %i.dgt, label %bb.aak, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  store ptr %i.dgm, ptr %i.def, align 8, !tbaa !111
  %i.dgu = shl nuw nsw i32 %i.dgo, 9
  %i.dgv = add i32 %i.dgu, %.82.us.i
  br label %bb.aal

bb.aak:                                           ; preds = %bb.aai
  %i.dgw = add i32 %.82.us.i, 65280
  %i.dgx = load i32, ptr %i.deg, align 4, !tbaa !127
  %i.dgy = add i32 %i.dgx, 1
  store i32 %i.dgy, ptr %i.deg, align 4, !tbaa !127
  br label %bb.aal

bb.aal:                                           ; preds = %bb.aak, %bb.aaj, %bb.aah, %bb.aaf
  %.841489.us.i = phi i32 [ %.821487.us.i, %bb.aaf ], [ 8, %bb.aak ], [ 7, %bb.aaj ], [ 8, %bb.aah ]
  %.84.us.i = phi i32 [ %.82.us.i, %bb.aaf ], [ %i.dgw, %bb.aak ], [ %i.dgv, %bb.aaj ], [ %i.dgs, %bb.aah ]
  %i.dgz = shl i32 %.531369.us.i, 1               ; 3 uses
  %i.dha = shl i32 %.84.us.i, 1                   ; 2 uses
  %i.dhb = add i32 %.841489.us.i, -1              ; 2 uses
  %i.dhc = icmp ult i32 %i.dgz, 32768
  br i1 %i.dhc, label %bb.aaf, label %.loopexit1963.us.i.loopexit, !llvm.loop !473

.loopexit1963.us.i.loopexit:                      ; preds = %bb.aal
  %.not1771.us.i = icmp eq i32 %i.dgi, 0
  %i.dhd = zext i1 %.not1771.us.i to i32
  %.271575.us.i = select i1 %i.dgg, i32 %i.dgi, i32 %i.dhd
  br label %.loopexit1963.us.i

.loopexit1963.us.i.loopexit1000:                  ; preds = %bb.aad
  %.not1770.us.i = icmp eq i32 %i.dfl, 0
end_hunk_5
begin_hunk_6_@opj_t1_dec_clnpass:bb.a

bb.amg:                                           ; preds = %bb.amm, %bb.amf
  %.761481.us.i = phi i32 [ %.721477.us.i, %bb.amf ], [ %i.fdo, %bb.amm ] ; 2 uses
  %.481364.us.i = phi i32 [ %i.fck, %bb.amf ], [ %i.fdm, %bb.amm ]
  %.76.us.i = phi i32 [ %i.fco, %bb.amf ], [ %i.fdn, %bb.amm ] ; 4 uses
  %i.fcx = icmp eq i32 %.761481.us.i, 0
  br i1 %i.fcx, label %bb.amh, label %bb.amm

bb.amh:                                           ; preds = %bb.amg
  %i.fcy = load ptr, ptr %i.def, align 8, !tbaa !111 ; 2 uses
  %i.fcz = getelementptr inbounds nuw i8, ptr %i.fcy, i64 1 ; 3 uses
  %i.fda = load i8, ptr %i.fcz, align 1, !tbaa !48 ; 2 uses
  %i.fdb = zext i8 %i.fda to i32                  ; 2 uses
  %i.fdc = load i8, ptr %i.fcy, align 1, !tbaa !48
  %i.fdd = icmp eq i8 %i.fdc, -1
  br i1 %i.fdd, label %bb.amj, label %bb.ami

bb.ami:                                           ; preds = %bb.amh
  store ptr %i.fcz, ptr %i.def, align 8, !tbaa !111
  %i.fde = shl nuw nsw i32 %i.fdb, 8
  %i.fdf = add i32 %i.fde, %.76.us.i
  br label %bb.amm

bb.amj:                                           ; preds = %bb.amh
  %i.fdg = icmp ugt i8 %i.fda, -113
  br i1 %i.fdg, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  store ptr %i.fcz, ptr %i.def, align 8, !tbaa !111
  %i.fdh = shl nuw nsw i32 %i.fdb, 9
  %i.fdi = add i32 %i.fdh, %.76.us.i
  br label %bb.amm

bb.aml:                                           ; preds = %bb.amj
  %i.fdj = add i32 %.76.us.i, 65280
  %i.fdk = load i32, ptr %i.deg, align 4, !tbaa !127
  %i.fdl = add i32 %i.fdk, 1
  store i32 %i.fdl, ptr %i.deg, align 4, !tbaa !127
  br label %bb.amm

bb.amm:                                           ; preds = %bb.aml, %bb.amk, %bb.ami, %bb.amg
  %.781483.us.i = phi i32 [ %.761481.us.i, %bb.amg ], [ 8, %bb.aml ], [ 7, %bb.amk ], [ 8, %bb.ami ]
  %.78.us.i = phi i32 [ %.76.us.i, %bb.amg ], [ %i.fdj, %bb.aml ], [ %i.fdi, %bb.amk ], [ %i.fdf, %bb.ami ]
  %i.fdm = shl i32 %.481364.us.i, 1               ; 3 uses
  %i.fdn = shl i32 %.78.us.i, 1                   ; 2 uses
  %i.fdo = add i32 %.781483.us.i, -1              ; 2 uses
  %i.fdp = icmp ult i32 %i.fdm, 32768
  br i1 %i.fdp, label %bb.amg, label %.loopexit1929.us.i.loopexit983, !llvm.loop !506

bb.amn:                                           ; preds = %.loopexit1943.us._crit_edge2255.i
  %i.fdq = icmp ult i32 %i.fck, %i.fcj            ; 2 uses
  %i.fdr = getelementptr inbounds nuw i8, ptr %i.fci, i64 4
  %i.fds = load i32, ptr %i.fdr, align 4, !tbaa !126 ; 2 uses
  %.sink2535.i = select i1 %i.fdq, i64 8, i64 16
  %i.fdt = getelementptr inbounds nuw i8, ptr %i.fci, i64 %.sink2535.i
  %storemerge1861.us.i = load ptr, ptr %i.fdt, align 8, !tbaa !122
  store ptr %storemerge1861.us.i, ptr %i.fch, align 8, !tbaa !122
  br label %bb.amo

bb.amo:                                           ; preds = %bb.amu, %bb.amn
  %.731478.us.i = phi i32 [ %.721477.us.i, %bb.amn ], [ %i.fel, %bb.amu ] ; 2 uses
  %.471363.us.i = phi i32 [ %i.fcj, %bb.amn ], [ %i.fej, %bb.amu ]
  %.73.us.i = phi i32 [ %.72.us.i, %bb.amn ], [ %i.fek, %bb.amu ] ; 4 uses
  %i.fdu = icmp eq i32 %.731478.us.i, 0
  br i1 %i.fdu, label %bb.amp, label %bb.amu

bb.amp:                                           ; preds = %bb.amo
  %i.fdv = load ptr, ptr %i.def, align 8, !tbaa !111 ; 2 uses
  %i.fdw = getelementptr inbounds nuw i8, ptr %i.fdv, i64 1 ; 3 uses
  %i.fdx = load i8, ptr %i.fdw, align 1, !tbaa !48 ; 2 uses
  %i.fdy = zext i8 %i.fdx to i32                  ; 2 uses
  %i.fdz = load i8, ptr %i.fdv, align 1, !tbaa !48
  %i.fea = icmp eq i8 %i.fdz, -1
  br i1 %i.fea, label %bb.amr, label %bb.amq

bb.amq:                                           ; preds = %bb.amp
  store ptr %i.fdw, ptr %i.def, align 8, !tbaa !111
  %i.feb = shl nuw nsw i32 %i.fdy, 8
  %i.fec = add i32 %i.feb, %.73.us.i
  br label %bb.amu

bb.amr:                                           ; preds = %bb.amp
  %i.fed = icmp ugt i8 %i.fdx, -113
  br i1 %i.fed, label %bb.amt, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  store ptr %i.fdw, ptr %i.def, align 8, !tbaa !111
  %i.fee = shl nuw nsw i32 %i.fdy, 9
  %i.fef = add i32 %i.fee, %.73.us.i
  br label %bb.amu

bb.amt:                                           ; preds = %bb.amr
  %i.feg = add i32 %.73.us.i, 65280
  %i.feh = load i32, ptr %i.deg, align 4, !tbaa !127
  %i.fei = add i32 %i.feh, 1
  store i32 %i.fei, ptr %i.deg, align 4, !tbaa !127
  br label %bb.amu

bb.amu:                                           ; preds = %bb.amt, %bb.ams, %bb.amq, %bb.amo
  %.751480.us.i = phi i32 [ %.731478.us.i, %bb.amo ], [ 8, %bb.amt ], [ 7, %bb.ams ], [ 8, %bb.amq ]
  %.75.us.i = phi i32 [ %.73.us.i, %bb.amo ], [ %i.feg, %bb.amt ], [ %i.fef, %bb.ams ], [ %i.fec, %bb.amq ]
  %i.fej = shl i32 %.471363.us.i, 1               ; 3 uses
  %i.fek = shl i32 %.75.us.i, 1                   ; 2 uses
  %i.fel = add i32 %.751480.us.i, -1              ; 2 uses
  %i.fem = icmp ult i32 %i.fej, 32768
  br i1 %i.fem, label %bb.amo, label %.loopexit1929.us.i.loopexit, !llvm.loop !507

.loopexit1929.us.i.loopexit:                      ; preds = %bb.amu
  %.not1860.us.i = icmp eq i32 %i.fds, 0
  %i.fen = zext i1 %.not1860.us.i to i32
  %.241572.us.i = select i1 %i.fdq, i32 %i.fds, i32 %i.fen
  br label %.loopexit1929.us.i

.loopexit1929.us.i.loopexit983:                   ; preds = %bb.amm
  %.not1859.us.i = icmp eq i32 %i.fcv, 0
  %i.feo = zext i1 %.not1859.us.i to i32
  %.251573.us.i = select i1 %i.fct, i32 %i.feo, i32 %i.fcv
  br label %.loopexit1929.us.i

.loopexit1929.us.i:                               ; preds = %.loopexit1929.us.i.loopexit983, %.loopexit1929.us.i.loopexit, %bb.ame
  %.261574.us.i = phi i32 [ %i.fcs, %bb.ame ], [ %.241572.us.i, %.loopexit1929.us.i.loopexit ], [ %.251573.us.i, %.loopexit1929.us.i.loopexit983 ] ; 2 uses
  %.791484.us.i = phi i32 [ %.721477.us.i, %bb.ame ], [ %i.fel, %.loopexit1929.us.i.loopexit ], [ %i.fdo, %.loopexit1929.us.i.loopexit983 ]
  %.491365.us.i = phi i32 [ %i.fck, %bb.ame ], [ %i.fej, %.loopexit1929.us.i.loopexit ], [ %i.fdm, %.loopexit1929.us.i.loopexit983 ]
  %.79.us.i = phi i32 [ %i.fco, %bb.ame ], [ %i.fek, %.loopexit1929.us.i.loopexit ], [ %i.fdn, %.loopexit1929.us.i.loopexit983 ]
  %i.fep = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.fcd
  %i.feq = load i8, ptr %i.fep, align 1, !tbaa !48
  %i.fer = zext i8 %i.feq to i32                  ; 2 uses
  %i.fes = xor i32 %.261574.us.i, %i.fer          ; 2 uses
  %.not1862.us.i = icmp eq i32 %.261574.us.i, %i.fer
  %i.fet = select i1 %.not1862.us.i, i32 %i.dea, i32 %i.deh
  %i.feu = getelementptr inbounds nuw [4 x i8], ptr %.112992080.us.i, i64 %i.dem
  store i32 %i.fet, ptr %i.feu, align 4, !tbaa !3
  %i.fev = load i32, ptr %i.fbo, align 4, !tbaa !3
  %i.few = or i32 %i.fev, 16384
  store i32 %i.few, ptr %i.fbo, align 4, !tbaa !3
  %i.fex = shl i32 %i.fes, 28
  %i.fey = or i32 %i.fex, %.416031917.us.i
  %i.fez = load i32, ptr %i.fbq, align 4, !tbaa !3
  %i.ffa = or i32 %i.fez, 4096
  store i32 %i.ffa, ptr %i.fbq, align 4, !tbaa !3
  br label %.sink.split.i201

.sink.split.i201:                                 ; preds = %.loopexit1929.us.i, %.loopexit1949.us.i
  %.sink2552.i = phi i32 [ %i.fes, %.loopexit1929.us.i ], [ %i.ecn, %.loopexit1949.us.i ]
  %.101609.us.ph.in.i = phi i32 [ %i.fey, %.loopexit1929.us.i ], [ %i.ect, %.loopexit1949.us.i ]
  %.1411546.us.ph.i = phi i32 [ %.791484.us.i, %.loopexit1929.us.i ], [ %.1401545.us.i, %.loopexit1949.us.i ]
  %.871403.us.ph.i = phi i32 [ %.491365.us.i, %.loopexit1929.us.i ], [ %.861402.us.i, %.loopexit1949.us.i ]
  %.141.us.ph.i = phi i32 [ %.79.us.i, %.loopexit1929.us.i ], [ %.140.us.i, %.loopexit1949.us.i ]
  %.7.us.ph.i = phi ptr [ %i.fch, %.loopexit1929.us.i ], [ %i.eac, %.loopexit1949.us.i ]
  %.101609.us.ph.i = or i32 %.101609.us.ph.in.i, 8192
  %i.ffb = load i32, ptr %i.a, align 8, !tbaa !107
  %i.ffc = add i32 %i.ffb, 2
  %i.ffd = zext i32 %i.ffc to i64
  %i.ffe = getelementptr inbounds nuw [4 x i8], ptr %.113022079.us.i, i64 %i.ffd ; 4 uses
  %i.fff = shl i32 %.sink2552.i, 18
  %i.ffg = or disjoint i32 %i.fff, 2
  %i.ffh = load i32, ptr %i.ffe, align 4, !tbaa !3
  %i.ffi = or i32 %i.ffh, %i.ffg
  store i32 %i.ffi, ptr %i.ffe, align 4, !tbaa !3
  %i.ffj = getelementptr inbounds i8, ptr %i.ffe, i64 -4 ; 2 uses
  %i.ffk = load i32, ptr %i.ffj, align 4, !tbaa !3
  %i.ffl = or i32 %i.ffk, 4
  store i32 %i.ffl, ptr %i.ffj, align 4, !tbaa !3
  %i.ffm = getelementptr inbounds nuw i8, ptr %i.ffe, i64 4 ; 2 uses
  %i.ffn = load i32, ptr %i.ffm, align 4, !tbaa !3
  %i.ffo = or i32 %i.ffn, 1
  store i32 %i.ffo, ptr %i.ffm, align 4, !tbaa !3
  br label %bb.amv

bb.amv:                                           ; preds = %.sink.split.i201, %.loopexit1931.us.i, %.loopexit1943.us.i, %.loopexit1951.us.i, %bb.aef
  %.101609.us.i = phi i32 [ %.91608.us.i, %.loopexit1951.us.i ], [ %.91608.us.i, %bb.aef ], [ 0, %.loopexit1943.us.i ], [ %.41603.ph.us.i, %.loopexit1931.us.i ], [ %.101609.us.ph.i, %.sink.split.i201 ]
  %.1411546.us.i = phi i32 [ %.1331538.us.i, %.loopexit1951.us.i ], [ %.1261531.us.i, %bb.aef ], [ %.221427.us.i, %.loopexit1943.us.i ], [ %.711476.us.i, %.loopexit1931.us.i ], [ %.1411546.us.ph.i, %.sink.split.i201 ]
  %.871403.us.i = phi i32 [ %.821398.us.i, %.loopexit1951.us.i ], [ %.781394.us.i, %bb.aef ], [ %.131329.us.i, %.loopexit1943.us.i ], [ %.441360.us.i, %.loopexit1931.us.i ], [ %.871403.us.ph.i, %.sink.split.i201 ]
  %.141.us.i = phi i32 [ %.133.us.i, %.loopexit1951.us.i ], [ %.126.us.i, %bb.aef ], [ %.22.us.i, %.loopexit1943.us.i ], [ %.71.us.i, %.loopexit1931.us.i ], [ %.141.us.ph.i, %.sink.split.i201 ]
  %.7.us.i = phi ptr [ %i.dxc, %.loopexit1951.us.i ], [ %.6.us.i, %bb.aef ], [ %i.deo, %.loopexit1943.us.i ], [ %i.ezg, %.loopexit1931.us.i ], [ %.7.us.ph.i, %.sink.split.i201 ]
  %i.ffp = and i32 %.101609.us.i, -1226833921
  store i32 %i.ffp, ptr %.113022079.us.i, align 4, !tbaa !3
  br label %.thread1922.us.i

.thread1922.us.i:                                 ; preds = %bb.amv, %.loopexit1947.us.i
  %.1421547.us.i = phi i32 [ %.1411546.us.i, %bb.amv ], [ %.81413.us.i, %.loopexit1947.us.i ] ; 3 uses
  %.881404.us.i = phi i32 [ %.871403.us.i, %bb.amv ], [ %.51321.us.i, %.loopexit1947.us.i ] ; 3 uses
  %.142.us.i = phi i32 [ %.141.us.i, %bb.amv ], [ %.81315.us.i, %.loopexit1947.us.i ] ; 3 uses
  %.8.us.i = phi ptr [ %.7.us.i, %bb.amv ], [ %i.den, %.loopexit1947.us.i ] ; 3 uses
  %i.ffq = add nuw i32 %.012942081.us.i, 1        ; 2 uses
  %i.ffr = getelementptr inbounds nuw i8, ptr %.112992080.us.i, i64 4 ; 2 uses
  %i.ffs = getelementptr inbounds nuw i8, ptr %.113022079.us.i, i64 4
  %exitcond.not.i198 = icmp eq i32 %i.ffq, %i.b
  br i1 %exitcond.not.i198, label %._crit_edge.us.i, label %bb.zr, !llvm.loop !508

._crit_edge.us.i:                                 ; preds = %.thread1922.us.i
  %i.fft = add nuw i32 %.012972093.us.i, 4        ; 3 uses
  %i.ffu = getelementptr inbounds nuw [4 x i8], ptr %i.ffr, i64 %i.dem ; 2 uses
  %i.ffv = getelementptr inbounds nuw i8, ptr %.113022079.us.i, i64 12 ; 2 uses
  %i.ffw = load i32, ptr %i.deb, align 4, !tbaa !108 ; 2 uses
  %i.ffx = and i32 %i.ffw, -4
  %i.ffy = icmp ult i32 %i.fft, %i.ffx
  br i1 %i.ffy, label %.preheader1965.us.i, label %._crit_edge2094.i, !llvm.loop !509

.preheader1965.lr.ph.split.i:                     ; preds = %.preheader1965.lr.ph.i
  %i.ffz = and i32 %i.dec, -4
  %i.fga = add i32 %i.dec, -4
  %3 = lshr i32 %i.fga, 2
  %i.fgb = zext nneg i32 %3 to i64                ; 2 uses
  %4 = shl nuw nsw i64 %i.fgb, 2
  %i.fgc = add nuw nsw i64 %4, 4
  %i.fgd = mul nuw nsw i64 %i.fgc, %i.dem
  %scevgep.i = getelementptr i8, ptr %i.ddl, i64 %i.fgd
  %i.fge = shl nuw nsw i64 %i.fgb, 3
  %i.fgf = getelementptr i8, ptr %i.ddn, i64 %i.fge
  %scevgep2250.i = getelementptr i8, ptr %i.fgf, i64 20
  br label %._crit_edge2094.i

._crit_edge2094.i:                                ; preds = %._crit_edge.us.i, %.preheader1965.lr.ph.split.i, %bb.zq
  %.01405.lcssa.i = phi i32 [ %i.ddx, %bb.zq ], [ %i.ddx, %.preheader1965.lr.ph.split.i ], [ %.1421547.us.i, %._crit_edge.us.i ]
  %.01316.lcssa.i = phi i32 [ %i.ddv, %bb.zq ], [ %i.ddv, %.preheader1965.lr.ph.split.i ], [ %.881404.us.i, %._crit_edge.us.i ]
  %.01307.lcssa.i = phi i32 [ %i.ddt, %bb.zq ], [ %i.ddt, %.preheader1965.lr.ph.split.i ], [ %.142.us.i, %._crit_edge.us.i ]
  %.01304.lcssa.i = phi ptr [ %i.dds, %bb.zq ], [ %i.dds, %.preheader1965.lr.ph.split.i ], [ %.8.us.i, %._crit_edge.us.i ]
  %.01301.lcssa.i = phi ptr [ %i.ddq, %bb.zq ], [ %scevgep2250.i, %.preheader1965.lr.ph.split.i ], [ %i.ffv, %._crit_edge.us.i ]
  %.01298.lcssa.i = phi ptr [ %i.ddl, %bb.zq ], [ %scevgep.i, %.preheader1965.lr.ph.split.i ], [ %i.ffu, %._crit_edge.us.i ]
  %.01297.lcssa.i = phi i32 [ 0, %bb.zq ], [ %i.ffz, %.preheader1965.lr.ph.split.i ], [ %i.fft, %._crit_edge.us.i ] ; 3 uses
  %.lcssa2073.i = phi i32 [ %i.dec, %bb.zq ], [ %i.dec, %.preheader1965.lr.ph.split.i ], [ %i.ffw, %._crit_edge.us.i ]
  store ptr %.01304.lcssa.i, ptr %i.ddr, align 8, !tbaa !120
  store i32 %.01307.lcssa.i, ptr %0, align 8, !tbaa !110
  store i32 %.01316.lcssa.i, ptr %i.ddu, align 4, !tbaa !121
  store i32 %.01405.lcssa.i, ptr %i.ddw, align 8, !tbaa !109
  %i.fgg = icmp ult i32 %.01297.lcssa.i, %.lcssa2073.i
  %i.fgh = icmp ne i32 %i.b, 0
  %or.cond.i = and i1 %i.fgh, %i.fgg
  br i1 %or.cond.i, label %.preheader.i200, label %opj_t1_dec_clnpass_generic_vsc.exit

.preheader.i200:                                  ; preds = %._crit_edge2094.i, %._crit_edge.i
  %.112952113.i = phi i32 [ %i.fgt, %._crit_edge.i ], [ 0, %._crit_edge2094.i ]
  %.213002112.i = phi ptr [ %i.fgv, %._crit_edge.i ], [ %.01298.lcssa.i, %._crit_edge2094.i ] ; 2 uses
  %.213032111.i = phi ptr [ %i.fgu, %._crit_edge.i ], [ %.01301.lcssa.i, %._crit_edge2094.i ] ; 4 uses
  %i.fgi = load i32, ptr %i.deb, align 4, !tbaa !108
  %.not2115.i = icmp eq i32 %i.fgi, %.01297.lcssa.i
  br i1 %.not2115.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i200, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i200 ] ; 2 uses
  %i.fgj = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.fgk = mul i32 %i.b, %i.fgj
  %i.fgl = zext i32 %i.fgk to i64
  %i.fgm = getelementptr inbounds nuw [4 x i8], ptr %.213002112.i, i64 %i.fgl
  tail call fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr noundef %.213032111.i, ptr noundef %i.fgm, i32 noundef %i.dea, i32 noundef %i.fgj, i32 noundef 1)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fgn = load i32, ptr %i.deb, align 4, !tbaa !108
  %i.fgo = sub i32 %i.fgn, %.01297.lcssa.i
  %i.fgp = zext i32 %i.fgo to i64
  %i.fgq = icmp samesign ult i64 %indvars.iv.next.i, %i.fgp
  br i1 %i.fgq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !510

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i200
  %i.fgr = load i32, ptr %.213032111.i, align 4, !tbaa !3
  %i.fgs = and i32 %i.fgr, -1226833921
  store i32 %i.fgs, ptr %.213032111.i, align 4, !tbaa !3
  %i.fgt = add nuw i32 %.112952113.i, 1           ; 2 uses
  %i.fgu = getelementptr inbounds nuw i8, ptr %.213032111.i, i64 4
  %i.fgv = getelementptr inbounds nuw i8, ptr %.213002112.i, i64 4
  %exitcond2252.not.i = icmp eq i32 %i.fgt, %i.b
  br i1 %exitcond2252.not.i, label %opj_t1_dec_clnpass_generic_vsc.exit, label %.preheader.i200, !llvm.loop !511

bb.amw:                                           ; preds = %bb.zp
  br i1 %.not.i203, label %._crit_edge2106.i, label %.preheader1977.lr.ph.i

.preheader1977.lr.ph.i:                           ; preds = %bb.amw
  %.not2126.i = icmp eq i32 %i.b, 0
  %i.fgw = getelementptr i8, ptr %0, i64 200      ; 7 uses
  %i.fgx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.fgy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 108 uses
  %i.fgz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 72 uses
  %i.fha = sub nsw i32 0, %i.dea                  ; 8 uses
  %i.fhb = zext i32 %i.b to i64                   ; 2 uses
  %i.fhc = shl i32 %i.b, 1
  %i.fhd = zext i32 %i.fhc to i64                 ; 2 uses
  %i.fhe = mul i32 %i.b, 3
  %i.fhf = zext i32 %i.fhe to i64                 ; 4 uses
  %i.fhg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fhh = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  br i1 %.not2126.i, label %.preheader1977.lr.ph.split.i, label %.preheader1977.us.i

.preheader1977.us.i:                              ; preds = %.preheader1977.lr.ph.i, %._crit_edge.us.i217
  %.013092105.us.i = phi i32 [ %i.hjq, %._crit_edge.us.i217 ], [ 0, %.preheader1977.lr.ph.i ]
  %.013102104.us.i = phi ptr [ %i.hjr, %._crit_edge.us.i217 ], [ %i.ddl, %.preheader1977.lr.ph.i ]
  %.013132103.us.i = phi ptr [ %i.hjs, %._crit_edge.us.i217 ], [ %i.ddq, %.preheader1977.lr.ph.i ]
  %.013162102.us.i = phi ptr [ %.8.us.i215, %._crit_edge.us.i217 ], [ %i.dds, %.preheader1977.lr.ph.i ]
  %.013192101.us.i = phi i32 [ %.142.us.i214, %._crit_edge.us.i217 ], [ %i.ddt, %.preheader1977.lr.ph.i ]
  %.013282100.us.i = phi i32 [ %.881416.us.i, %._crit_edge.us.i217 ], [ %i.ddv, %.preheader1977.lr.ph.i ]
  %.014172099.us.i = phi i32 [ %.1421559.us.i, %._crit_edge.us.i217 ], [ %i.ddx, %.preheader1977.lr.ph.i ]
  br label %bb.amx

bb.amx:                                           ; preds = %.thread1934.us.i, %.preheader1977.us.i
  %.013062093.us.i = phi i32 [ 0, %.preheader1977.us.i ], [ %i.hjn, %.thread1934.us.i ]
  %.113112092.us.i = phi ptr [ %.013102104.us.i, %.preheader1977.us.i ], [ %i.hjo, %.thread1934.us.i ] ; 9 uses
  %.113142091.us.i = phi ptr [ %.013132103.us.i, %.preheader1977.us.i ], [ %i.hjp, %.thread1934.us.i ] ; 23 uses
  %.113172090.us.i = phi ptr [ %.013162102.us.i, %.preheader1977.us.i ], [ %.8.us.i215, %.thread1934.us.i ]
  %.113202089.us.i = phi i32 [ %.013192101.us.i, %.preheader1977.us.i ], [ %.142.us.i214, %.thread1934.us.i ] ; 7 uses
  %.113292088.us.i = phi i32 [ %.013282100.us.i, %.preheader1977.us.i ], [ %.881416.us.i, %.thread1934.us.i ] ; 3 uses
  %.114182087.us.i = phi i32 [ %.014172099.us.i, %.preheader1977.us.i ], [ %.1421559.us.i, %.thread1934.us.i ] ; 7 uses
  %i.fhi = load i32, ptr %.113142091.us.i, align 4, !tbaa !3 ; 9 uses
  %i.fhj = icmp eq i32 %i.fhi, 0
  br i1 %i.fhj, label %bb.asy, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  %i.fhk = and i32 %i.fhi, 2097168
  %.not.us.i204 = icmp eq i32 %i.fhk, 0
  br i1 %.not.us.i204, label %bb.amz, label %bb.aol

bb.amz:                                           ; preds = %bb.amy
  %.val1883.us.i = load ptr, ptr %i.fgw, align 8, !tbaa !88
  %i.fhl = and i32 %i.fhi, 495
  %i.fhm = zext nneg i32 %i.fhl to i64
  %i.fhn = getelementptr inbounds nuw i8, ptr %.val1883.us.i, i64 %i.fhm
  %i.fho = load i8, ptr %i.fhn, align 1, !tbaa !48
  %i.fhp = zext i8 %i.fho to i64
  %i.fhq = getelementptr inbounds nuw [8 x i8], ptr %i.fgx, i64 %i.fhp ; 4 uses
  %i.fhr = load ptr, ptr %i.fhq, align 8, !tbaa !122 ; 6 uses
  %i.fhs = load i32, ptr %i.fhr, align 8, !tbaa !124 ; 6 uses
  %i.fht = sub i32 %.113292088.us.i, %i.fhs       ; 5 uses
  %i.fhu = lshr i32 %.113202089.us.i, 16
  %i.fhv = icmp ult i32 %i.fhu, %i.fhs
  br i1 %i.fhv, label %bb.ank, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %i.fhw = shl nuw i32 %i.fhs, 16
  %i.fhx = sub i32 %.113202089.us.i, %i.fhw       ; 2 uses
  %i.fhy = and i32 %i.fht, 32768
  %i.fhz = icmp eq i32 %i.fhy, 0
  br i1 %i.fhz, label %bb.anc, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.fia = getelementptr inbounds nuw i8, ptr %i.fhr, i64 4
  %i.fib = load i32, ptr %i.fia, align 4, !tbaa !126
  br label %.loopexit1975.us.i

bb.anc:                                           ; preds = %bb.ana
  %i.fic = icmp ult i32 %i.fht, %i.fhs            ; 2 uses
  %i.fid = getelementptr inbounds nuw i8, ptr %i.fhr, i64 4
  %i.fie = load i32, ptr %i.fid, align 4, !tbaa !126 ; 2 uses
  %.sink.i293 = select i1 %i.fic, i64 16, i64 8
  %i.fif = getelementptr inbounds nuw i8, ptr %i.fhr, i64 %.sink.i293
  %storemerge.us.i294 = load ptr, ptr %i.fif, align 8, !tbaa !122
  store ptr %storemerge.us.i294, ptr %i.fhq, align 8, !tbaa !122
  br label %bb.and

bb.and:                                           ; preds = %bb.anj, %bb.anc
  %.851502.us.i = phi i32 [ %.114182087.us.i, %bb.anc ], [ %i.fix, %bb.anj ] ; 2 uses
  %.541382.us.i = phi i32 [ %i.fht, %bb.anc ], [ %i.fiv, %bb.anj ]
  %.85.us.i295 = phi i32 [ %i.fhx, %bb.anc ], [ %i.fiw, %bb.anj ] ; 4 uses
  %i.fig = icmp eq i32 %.851502.us.i, 0
  br i1 %i.fig, label %bb.ane, label %bb.anj

bb.ane:                                           ; preds = %bb.and
  %i.fih = load ptr, ptr %i.fgy, align 8, !tbaa !111 ; 2 uses
  %i.fii = getelementptr inbounds nuw i8, ptr %i.fih, i64 1 ; 3 uses
  %i.fij = load i8, ptr %i.fii, align 1, !tbaa !48 ; 2 uses
  %i.fik = zext i8 %i.fij to i32                  ; 2 uses
  %i.fil = load i8, ptr %i.fih, align 1, !tbaa !48
  %i.fim = icmp eq i8 %i.fil, -1
  br i1 %i.fim, label %bb.ang, label %bb.anf

bb.anf:                                           ; preds = %bb.ane
  store ptr %i.fii, ptr %i.fgy, align 8, !tbaa !111
  %i.fin = shl nuw nsw i32 %i.fik, 8
  %i.fio = add i32 %i.fin, %.85.us.i295
  br label %bb.anj

bb.ang:                                           ; preds = %bb.ane
  %i.fip = icmp ugt i8 %i.fij, -113
  br i1 %i.fip, label %bb.ani, label %bb.anh

bb.anh:                                           ; preds = %bb.ang
  store ptr %i.fii, ptr %i.fgy, align 8, !tbaa !111
  %i.fiq = shl nuw nsw i32 %i.fik, 9
  %i.fir = add i32 %i.fiq, %.85.us.i295
  br label %bb.anj

bb.ani:                                           ; preds = %bb.ang
  %i.fis = add i32 %.85.us.i295, 65280
  %i.fit = load i32, ptr %i.fgz, align 4, !tbaa !127
  %i.fiu = add i32 %i.fit, 1
  store i32 %i.fiu, ptr %i.fgz, align 4, !tbaa !127
  br label %bb.anj

bb.anj:                                           ; preds = %bb.ani, %bb.anh, %bb.anf, %bb.and
  %.871504.us.i = phi i32 [ %.851502.us.i, %bb.and ], [ 8, %bb.ani ], [ 7, %bb.anh ], [ 8, %bb.anf ]
  %.87.us.i296 = phi i32 [ %.85.us.i295, %bb.and ], [ %i.fis, %bb.ani ], [ %i.fir, %bb.anh ], [ %i.fio, %bb.anf ]
  %i.fiv = shl i32 %.541382.us.i, 1               ; 3 uses
  %i.fiw = shl i32 %.87.us.i296, 1                ; 2 uses
  %i.fix = add i32 %.871504.us.i, -1              ; 2 uses
  %i.fiy = icmp ult i32 %i.fiv, 32768
  br i1 %i.fiy, label %bb.and, label %.loopexit1975.us.i.loopexit981, !llvm.loop !512

bb.ank:                                           ; preds = %bb.amz
  %i.fiz = icmp ult i32 %i.fht, %i.fhs            ; 2 uses
  %i.fja = getelementptr inbounds nuw i8, ptr %i.fhr, i64 4
  %i.fjb = load i32, ptr %i.fja, align 4, !tbaa !126 ; 2 uses
  %.sink2513.i297 = select i1 %i.fiz, i64 8, i64 16
  %i.fjc = getelementptr inbounds nuw i8, ptr %i.fhr, i64 %.sink2513.i297
  %storemerge1784.us.i = load ptr, ptr %i.fjc, align 8, !tbaa !122
  store ptr %storemerge1784.us.i, ptr %i.fhq, align 8, !tbaa !122
  br label %bb.anl

bb.anl:                                           ; preds = %bb.anr, %bb.ank
  %.821499.us.i = phi i32 [ %.114182087.us.i, %bb.ank ], [ %i.fju, %bb.anr ] ; 2 uses
  %.531381.us.i = phi i32 [ %i.fhs, %bb.ank ], [ %i.fjs, %bb.anr ]
  %.82.us.i298 = phi i32 [ %.113202089.us.i, %bb.ank ], [ %i.fjt, %bb.anr ] ; 4 uses
  %i.fjd = icmp eq i32 %.821499.us.i, 0
  br i1 %i.fjd, label %bb.anm, label %bb.anr
end_hunk_6
begin_hunk_7_@opj_t1_dec_clnpass:bb.a

bb.azm:                                           ; preds = %bb.azs, %bb.azl
  %.761493.us.i = phi i32 [ %.721489.us.i, %bb.azl ], [ %i.hhl, %bb.azs ] ; 2 uses
  %.481376.us.i = phi i32 [ %i.hgh, %bb.azl ], [ %i.hhj, %bb.azs ]
  %.76.us.i312 = phi i32 [ %i.hgl, %bb.azl ], [ %i.hhk, %bb.azs ] ; 4 uses
  %i.hgu = icmp eq i32 %.761493.us.i, 0
  br i1 %i.hgu, label %bb.azn, label %bb.azs

bb.azn:                                           ; preds = %bb.azm
  %i.hgv = load ptr, ptr %i.fgy, align 8, !tbaa !111 ; 2 uses
  %i.hgw = getelementptr inbounds nuw i8, ptr %i.hgv, i64 1 ; 3 uses
  %i.hgx = load i8, ptr %i.hgw, align 1, !tbaa !48 ; 2 uses
  %i.hgy = zext i8 %i.hgx to i32                  ; 2 uses
  %i.hgz = load i8, ptr %i.hgv, align 1, !tbaa !48
  %i.hha = icmp eq i8 %i.hgz, -1
  br i1 %i.hha, label %bb.azp, label %bb.azo

bb.azo:                                           ; preds = %bb.azn
  store ptr %i.hgw, ptr %i.fgy, align 8, !tbaa !111
  %i.hhb = shl nuw nsw i32 %i.hgy, 8
  %i.hhc = add i32 %i.hhb, %.76.us.i312
  br label %bb.azs

bb.azp:                                           ; preds = %bb.azn
  %i.hhd = icmp ugt i8 %i.hgx, -113
  br i1 %i.hhd, label %bb.azr, label %bb.azq

bb.azq:                                           ; preds = %bb.azp
  store ptr %i.hgw, ptr %i.fgy, align 8, !tbaa !111
  %i.hhe = shl nuw nsw i32 %i.hgy, 9
  %i.hhf = add i32 %i.hhe, %.76.us.i312
  br label %bb.azs

bb.azr:                                           ; preds = %bb.azp
  %i.hhg = add i32 %.76.us.i312, 65280
  %i.hhh = load i32, ptr %i.fgz, align 4, !tbaa !127
  %i.hhi = add i32 %i.hhh, 1
  store i32 %i.hhi, ptr %i.fgz, align 4, !tbaa !127
  br label %bb.azs

bb.azs:                                           ; preds = %bb.azr, %bb.azq, %bb.azo, %bb.azm
  %.781495.us.i = phi i32 [ %.761493.us.i, %bb.azm ], [ 8, %bb.azr ], [ 7, %bb.azq ], [ 8, %bb.azo ]
  %.78.us.i313 = phi i32 [ %.76.us.i312, %bb.azm ], [ %i.hhg, %bb.azr ], [ %i.hhf, %bb.azq ], [ %i.hhc, %bb.azo ]
  %i.hhj = shl i32 %.481376.us.i, 1               ; 3 uses
  %i.hhk = shl i32 %.78.us.i313, 1                ; 2 uses
  %i.hhl = add i32 %.781495.us.i, -1              ; 2 uses
  %i.hhm = icmp ult i32 %i.hhj, 32768
  br i1 %i.hhm, label %bb.azm, label %.loopexit1941.us.i310.loopexit964, !llvm.loop !546

bb.azt:                                           ; preds = %.loopexit1955.us._crit_edge2267.i
  %i.hhn = icmp ult i32 %i.hgh, %i.hgg            ; 2 uses
  %i.hho = getelementptr inbounds nuw i8, ptr %i.hgf, i64 4
  %i.hhp = load i32, ptr %i.hho, align 4, !tbaa !126 ; 2 uses
  %.sink2547.i = select i1 %i.hhn, i64 8, i64 16
  %i.hhq = getelementptr inbounds nuw i8, ptr %i.hgf, i64 %.sink2547.i
  %storemerge1873.us.i = load ptr, ptr %i.hhq, align 8, !tbaa !122
  store ptr %storemerge1873.us.i, ptr %i.hge, align 8, !tbaa !122
  br label %bb.azu

bb.azu:                                           ; preds = %bb.baa, %bb.azt
  %.731490.us.i = phi i32 [ %.721489.us.i, %bb.azt ], [ %i.hii, %bb.baa ] ; 2 uses
  %.471375.us.i = phi i32 [ %i.hgg, %bb.azt ], [ %i.hig, %bb.baa ]
  %.73.us.i314 = phi i32 [ %.72.us.i306, %bb.azt ], [ %i.hih, %bb.baa ] ; 4 uses
  %i.hhr = icmp eq i32 %.731490.us.i, 0
  br i1 %i.hhr, label %bb.azv, label %bb.baa

bb.azv:                                           ; preds = %bb.azu
  %i.hhs = load ptr, ptr %i.fgy, align 8, !tbaa !111 ; 2 uses
  %i.hht = getelementptr inbounds nuw i8, ptr %i.hhs, i64 1 ; 3 uses
  %i.hhu = load i8, ptr %i.hht, align 1, !tbaa !48 ; 2 uses
  %i.hhv = zext i8 %i.hhu to i32                  ; 2 uses
  %i.hhw = load i8, ptr %i.hhs, align 1, !tbaa !48
  %i.hhx = icmp eq i8 %i.hhw, -1
  br i1 %i.hhx, label %bb.azx, label %bb.azw

bb.azw:                                           ; preds = %bb.azv
  store ptr %i.hht, ptr %i.fgy, align 8, !tbaa !111
  %i.hhy = shl nuw nsw i32 %i.hhv, 8
  %i.hhz = add i32 %i.hhy, %.73.us.i314
  br label %bb.baa

bb.azx:                                           ; preds = %bb.azv
  %i.hia = icmp ugt i8 %i.hhu, -113
  br i1 %i.hia, label %bb.azz, label %bb.azy

bb.azy:                                           ; preds = %bb.azx
  store ptr %i.hht, ptr %i.fgy, align 8, !tbaa !111
  %i.hib = shl nuw nsw i32 %i.hhv, 9
  %i.hic = add i32 %i.hib, %.73.us.i314
  br label %bb.baa

bb.azz:                                           ; preds = %bb.azx
  %i.hid = add i32 %.73.us.i314, 65280
  %i.hie = load i32, ptr %i.fgz, align 4, !tbaa !127
  %i.hif = add i32 %i.hie, 1
  store i32 %i.hif, ptr %i.fgz, align 4, !tbaa !127
  br label %bb.baa

bb.baa:                                           ; preds = %bb.azz, %bb.azy, %bb.azw, %bb.azu
  %.751492.us.i = phi i32 [ %.731490.us.i, %bb.azu ], [ 8, %bb.azz ], [ 7, %bb.azy ], [ 8, %bb.azw ]
  %.75.us.i315 = phi i32 [ %.73.us.i314, %bb.azu ], [ %i.hid, %bb.azz ], [ %i.hic, %bb.azy ], [ %i.hhz, %bb.azw ]
  %i.hig = shl i32 %.471375.us.i, 1               ; 3 uses
  %i.hih = shl i32 %.75.us.i315, 1                ; 2 uses
  %i.hii = add i32 %.751492.us.i, -1              ; 2 uses
  %i.hij = icmp ult i32 %i.hig, 32768
  br i1 %i.hij, label %bb.azu, label %.loopexit1941.us.i310.loopexit, !llvm.loop !547

.loopexit1941.us.i310.loopexit:                   ; preds = %bb.baa
  %.not1872.us.i = icmp eq i32 %i.hhp, 0
  %i.hik = zext i1 %.not1872.us.i to i32
  %.241584.us.i = select i1 %i.hhn, i32 %i.hhp, i32 %i.hik
  br label %.loopexit1941.us.i310

.loopexit1941.us.i310.loopexit964:                ; preds = %bb.azs
  %.not1871.us.i = icmp eq i32 %i.hgs, 0
  %i.hil = zext i1 %.not1871.us.i to i32
  %.251585.us.i = select i1 %i.hgq, i32 %i.hil, i32 %i.hgs
  br label %.loopexit1941.us.i310

.loopexit1941.us.i310:                            ; preds = %.loopexit1941.us.i310.loopexit964, %.loopexit1941.us.i310.loopexit, %bb.azk
  %.261586.us.i = phi i32 [ %i.hgp, %bb.azk ], [ %.241584.us.i, %.loopexit1941.us.i310.loopexit ], [ %.251585.us.i, %.loopexit1941.us.i310.loopexit964 ] ; 2 uses
  %.791496.us.i = phi i32 [ %.721489.us.i, %bb.azk ], [ %i.hii, %.loopexit1941.us.i310.loopexit ], [ %i.hhl, %.loopexit1941.us.i310.loopexit964 ]
  %.491377.us.i = phi i32 [ %i.hgh, %bb.azk ], [ %i.hig, %.loopexit1941.us.i310.loopexit ], [ %i.hhj, %.loopexit1941.us.i310.loopexit964 ]
  %.79.us.i311 = phi i32 [ %i.hgl, %bb.azk ], [ %i.hih, %.loopexit1941.us.i310.loopexit ], [ %i.hhk, %.loopexit1941.us.i310.loopexit964 ]
  %i.him = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.hga
  %i.hin = load i8, ptr %i.him, align 1, !tbaa !48
  %i.hio = zext i8 %i.hin to i32                  ; 2 uses
  %i.hip = xor i32 %.261586.us.i, %i.hio          ; 2 uses
  %.not1874.us.i = icmp eq i32 %.261586.us.i, %i.hio
  %i.hiq = select i1 %.not1874.us.i, i32 %i.dea, i32 %i.fha
  %i.hir = getelementptr inbounds nuw [4 x i8], ptr %.113112092.us.i, i64 %i.fhf
  store i32 %i.hiq, ptr %i.hir, align 4, !tbaa !3
  %i.his = load i32, ptr %i.hfl, align 4, !tbaa !3
  %i.hit = or i32 %i.his, 16384
  store i32 %i.hit, ptr %i.hfl, align 4, !tbaa !3
  %i.hiu = shl i32 %i.hip, 28
  %i.hiv = or i32 %i.hiu, %.416151929.us.i
  %i.hiw = load i32, ptr %i.hfn, align 4, !tbaa !3
  %i.hix = or i32 %i.hiw, 4096
  store i32 %i.hix, ptr %i.hfn, align 4, !tbaa !3
  br label %.sink.split.i233

.sink.split.i233:                                 ; preds = %.loopexit1941.us.i310, %.loopexit1961.us.i230
  %.sink2564.i = phi i32 [ %i.hip, %.loopexit1941.us.i310 ], [ %i.gfv, %.loopexit1961.us.i230 ]
  %.101621.us.ph.in.i = phi i32 [ %i.hiv, %.loopexit1941.us.i310 ], [ %i.ggb, %.loopexit1961.us.i230 ]
  %.1411558.us.ph.i = phi i32 [ %.791496.us.i, %.loopexit1941.us.i310 ], [ %.1401557.us.i, %.loopexit1961.us.i230 ]
  %.871415.us.ph.i = phi i32 [ %.491377.us.i, %.loopexit1941.us.i310 ], [ %.861414.us.i, %.loopexit1961.us.i230 ]
  %.141.us.ph.i234 = phi i32 [ %.79.us.i311, %.loopexit1941.us.i310 ], [ %.140.us.i231, %.loopexit1961.us.i230 ]
  %.7.us.ph.i235 = phi ptr [ %i.hge, %.loopexit1941.us.i310 ], [ %i.gdk, %.loopexit1961.us.i230 ]
  %.101621.us.ph.i = or i32 %.101621.us.ph.in.i, 8192
  %i.hiy = load i32, ptr %i.a, align 8, !tbaa !107
  %i.hiz = add i32 %i.hiy, 2
  %i.hja = zext i32 %i.hiz to i64
  %i.hjb = getelementptr inbounds nuw [4 x i8], ptr %.113142091.us.i, i64 %i.hja ; 4 uses
  %i.hjc = shl i32 %.sink2564.i, 18
  %i.hjd = or disjoint i32 %i.hjc, 2
  %i.hje = load i32, ptr %i.hjb, align 4, !tbaa !3
  %i.hjf = or i32 %i.hje, %i.hjd
  store i32 %i.hjf, ptr %i.hjb, align 4, !tbaa !3
  %i.hjg = getelementptr inbounds i8, ptr %i.hjb, i64 -4 ; 2 uses
  %i.hjh = load i32, ptr %i.hjg, align 4, !tbaa !3
  %i.hji = or i32 %i.hjh, 4
  store i32 %i.hji, ptr %i.hjg, align 4, !tbaa !3
  %i.hjj = getelementptr inbounds nuw i8, ptr %i.hjb, i64 4 ; 2 uses
  %i.hjk = load i32, ptr %i.hjj, align 4, !tbaa !3
  %i.hjl = or i32 %i.hjk, 1
  store i32 %i.hjl, ptr %i.hjj, align 4, !tbaa !3
  br label %bb.bab

bb.bab:                                           ; preds = %.sink.split.i233, %.loopexit1943.us.i323, %.loopexit1955.us.i304, %.loopexit1963.us.i227, %bb.arl
  %.101621.us.i = phi i32 [ %.91620.us.i, %.loopexit1963.us.i227 ], [ %.91620.us.i, %bb.arl ], [ 0, %.loopexit1955.us.i304 ], [ %.41615.ph.us.i, %.loopexit1943.us.i323 ], [ %.101621.us.ph.i, %.sink.split.i233 ]
  %.1411558.us.i = phi i32 [ %.1331550.us.i, %.loopexit1963.us.i227 ], [ %.1261543.us.i, %bb.arl ], [ %.221439.us.i, %.loopexit1955.us.i304 ], [ %.711488.us.i, %.loopexit1943.us.i323 ], [ %.1411558.us.ph.i, %.sink.split.i233 ]
  %.871415.us.i = phi i32 [ %.821410.us.i, %.loopexit1963.us.i227 ], [ %.781406.us.i, %bb.arl ], [ %.131341.us.i, %.loopexit1955.us.i304 ], [ %.441372.us.i, %.loopexit1943.us.i323 ], [ %.871415.us.ph.i, %.sink.split.i233 ]
  %.141.us.i212 = phi i32 [ %.133.us.i228, %.loopexit1963.us.i227 ], [ %.126.us.i209, %bb.arl ], [ %.22.us.i305, %.loopexit1955.us.i304 ], [ %.71.us.i324, %.loopexit1943.us.i323 ], [ %.141.us.ph.i234, %.sink.split.i233 ]
  %.7.us.i213 = phi ptr [ %i.gak, %.loopexit1963.us.i227 ], [ %.6.us.i210, %bb.arl ], [ %i.fhh, %.loopexit1955.us.i304 ], [ %i.hdd, %.loopexit1943.us.i323 ], [ %.7.us.ph.i235, %.sink.split.i233 ]
  %i.hjm = and i32 %.101621.us.i, -1226833921
  store i32 %i.hjm, ptr %.113142091.us.i, align 4, !tbaa !3
  br label %.thread1934.us.i

.thread1934.us.i:                                 ; preds = %bb.bab, %.loopexit1959.us.i300
  %.1421559.us.i = phi i32 [ %.1411558.us.i, %bb.bab ], [ %.81425.us.i, %.loopexit1959.us.i300 ] ; 3 uses
  %.881416.us.i = phi i32 [ %.871415.us.i, %bb.bab ], [ %.51333.us.i, %.loopexit1959.us.i300 ] ; 3 uses
  %.142.us.i214 = phi i32 [ %.141.us.i212, %bb.bab ], [ %.81327.us.i, %.loopexit1959.us.i300 ] ; 3 uses
  %.8.us.i215 = phi ptr [ %.7.us.i213, %bb.bab ], [ %i.fhg, %.loopexit1959.us.i300 ] ; 3 uses
  %i.hjn = add nuw i32 %.013062093.us.i, 1        ; 2 uses
  %i.hjo = getelementptr inbounds nuw i8, ptr %.113112092.us.i, i64 4 ; 2 uses
  %i.hjp = getelementptr inbounds nuw i8, ptr %.113142091.us.i, i64 4
  %exitcond.not.i216 = icmp eq i32 %i.hjn, %i.b
  br i1 %exitcond.not.i216, label %._crit_edge.us.i217, label %bb.amx, !llvm.loop !548

._crit_edge.us.i217:                              ; preds = %.thread1934.us.i
  %i.hjq = add nuw i32 %.013092105.us.i, 4        ; 3 uses
  %i.hjr = getelementptr inbounds nuw [4 x i8], ptr %i.hjo, i64 %i.fhf ; 2 uses
  %i.hjs = getelementptr inbounds nuw i8, ptr %.113142091.us.i, i64 12 ; 2 uses
  %i.hjt = load i32, ptr %i.deb, align 4, !tbaa !108 ; 2 uses
  %i.hju = and i32 %i.hjt, -4
  %i.hjv = icmp ult i32 %i.hjq, %i.hju
  br i1 %i.hjv, label %.preheader1977.us.i, label %._crit_edge2106.i, !llvm.loop !549

.preheader1977.lr.ph.split.i:                     ; preds = %.preheader1977.lr.ph.i
  %i.hjw = and i32 %i.dec, -4
  %i.hjx = add i32 %i.dec, -4
  %5 = lshr i32 %i.hjx, 2
  %i.hjy = zext nneg i32 %5 to i64                ; 2 uses
  %6 = shl nuw nsw i64 %i.hjy, 2
  %i.hjz = add nuw nsw i64 %6, 4
  %i.hka = mul nuw nsw i64 %i.hjz, %i.fhf
  %scevgep.i390 = getelementptr i8, ptr %i.ddl, i64 %i.hka
  %i.hkb = shl nuw nsw i64 %i.hjy, 3
  %i.hkc = getelementptr i8, ptr %i.ddn, i64 %i.hkb
  %scevgep2262.i = getelementptr i8, ptr %i.hkc, i64 20
  br label %._crit_edge2106.i

._crit_edge2106.i:                                ; preds = %._crit_edge.us.i217, %.preheader1977.lr.ph.split.i, %bb.amw
  %.01417.lcssa.i = phi i32 [ %i.ddx, %bb.amw ], [ %i.ddx, %.preheader1977.lr.ph.split.i ], [ %.1421559.us.i, %._crit_edge.us.i217 ]
  %.01328.lcssa.i = phi i32 [ %i.ddv, %bb.amw ], [ %i.ddv, %.preheader1977.lr.ph.split.i ], [ %.881416.us.i, %._crit_edge.us.i217 ]
  %.01319.lcssa.i = phi i32 [ %i.ddt, %bb.amw ], [ %i.ddt, %.preheader1977.lr.ph.split.i ], [ %.142.us.i214, %._crit_edge.us.i217 ]
  %.01316.lcssa.i218 = phi ptr [ %i.dds, %bb.amw ], [ %i.dds, %.preheader1977.lr.ph.split.i ], [ %.8.us.i215, %._crit_edge.us.i217 ]
  %.01313.lcssa.i = phi ptr [ %i.ddq, %bb.amw ], [ %scevgep2262.i, %.preheader1977.lr.ph.split.i ], [ %i.hjs, %._crit_edge.us.i217 ]
  %.01310.lcssa.i = phi ptr [ %i.ddl, %bb.amw ], [ %scevgep.i390, %.preheader1977.lr.ph.split.i ], [ %i.hjr, %._crit_edge.us.i217 ]
  %.01309.lcssa.i = phi i32 [ 0, %bb.amw ], [ %i.hjw, %.preheader1977.lr.ph.split.i ], [ %i.hjq, %._crit_edge.us.i217 ] ; 3 uses
  %.lcssa2085.i = phi i32 [ %i.dec, %bb.amw ], [ %i.dec, %.preheader1977.lr.ph.split.i ], [ %i.hjt, %._crit_edge.us.i217 ]
  store ptr %.01316.lcssa.i218, ptr %i.ddr, align 8, !tbaa !120
  store i32 %.01319.lcssa.i, ptr %0, align 8, !tbaa !110
  store i32 %.01328.lcssa.i, ptr %i.ddu, align 4, !tbaa !121
  store i32 %.01417.lcssa.i, ptr %i.ddw, align 8, !tbaa !109
  %i.hkd = icmp ult i32 %.01309.lcssa.i, %.lcssa2085.i
  %i.hke = icmp ne i32 %i.b, 0
  %or.cond.i219 = and i1 %i.hke, %i.hkd
  br i1 %or.cond.i219, label %.preheader.i221, label %opj_t1_dec_clnpass_generic_vsc.exit

.preheader.i221:                                  ; preds = %._crit_edge2106.i, %._crit_edge.i225
  %.113072125.i = phi i32 [ %i.hkq, %._crit_edge.i225 ], [ 0, %._crit_edge2106.i ]
  %.213122124.i = phi ptr [ %i.hks, %._crit_edge.i225 ], [ %.01310.lcssa.i, %._crit_edge2106.i ] ; 2 uses
  %.213152123.i = phi ptr [ %i.hkr, %._crit_edge.i225 ], [ %.01313.lcssa.i, %._crit_edge2106.i ] ; 4 uses
  %i.hkf = load i32, ptr %i.deb, align 4, !tbaa !108
  %.not2127.i = icmp eq i32 %i.hkf, %.01309.lcssa.i
  br i1 %.not2127.i, label %._crit_edge.i225, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.preheader.i221, %.lr.ph.i222
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i224, %.lr.ph.i222 ], [ 0, %.preheader.i221 ] ; 2 uses
  %i.hkg = trunc nuw i64 %indvars.iv.i223 to i32  ; 2 uses
  %i.hkh = mul i32 %i.b, %i.hkg
  %i.hki = zext i32 %i.hkh to i64
  %i.hkj = getelementptr inbounds nuw [4 x i8], ptr %.213122124.i, i64 %i.hki
  tail call fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr noundef %.213152123.i, ptr noundef %i.hkj, i32 noundef %i.dea, i32 noundef %i.hkg, i32 noundef 0)
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %i.hkk = load i32, ptr %i.deb, align 4, !tbaa !108
  %i.hkl = sub i32 %i.hkk, %.01309.lcssa.i
  %i.hkm = zext i32 %i.hkl to i64
  %i.hkn = icmp samesign ult i64 %indvars.iv.next.i224, %i.hkm
  br i1 %i.hkn, label %.lr.ph.i222, label %._crit_edge.i225, !llvm.loop !550

._crit_edge.i225:                                 ; preds = %.lr.ph.i222, %.preheader.i221
  %i.hko = load i32, ptr %.213152123.i, align 4, !tbaa !3
  %i.hkp = and i32 %i.hko, -1226833921
  store i32 %i.hkp, ptr %.213152123.i, align 4, !tbaa !3
  %i.hkq = add nuw i32 %.113072125.i, 1           ; 2 uses
  %i.hkr = getelementptr inbounds nuw i8, ptr %.213152123.i, i64 4
  %i.hks = getelementptr inbounds nuw i8, ptr %.213122124.i, i64 4
  %exitcond2264.not.i = icmp eq i32 %i.hkq, %i.b
  br i1 %exitcond2264.not.i, label %opj_t1_dec_clnpass_generic_vsc.exit, label %.preheader.i221, !llvm.loop !551

opj_t1_dec_clnpass_generic_vsc.exit.sink.split:   ; preds = %bb.mi, %bb.zo
  %.8.i.lcssa.lcssa.sink = phi ptr [ %.8.i28, %bb.zo ], [ %.8.i, %bb.mi ]
  %.142.i.lcssa.lcssa.sink = phi i32 [ %.142.i27, %bb.zo ], [ %.142.i, %bb.mi ]
  %.881385.i.lcssa.lcssa.sink = phi i32 [ %.881395.i, %bb.zo ], [ %.881385.i, %bb.mi ]
  %.1421528.i.lcssa.lcssa.sink = phi i32 [ %.1421538.i, %bb.zo ], [ %.1421528.i, %bb.mi ]
  store ptr %.8.i.lcssa.lcssa.sink, ptr %i.m, align 8, !tbaa !120
  store i32 %.142.i.lcssa.lcssa.sink, ptr %0, align 8, !tbaa !110
  store i32 %.881385.i.lcssa.lcssa.sink, ptr %i.p, align 4, !tbaa !121
  store i32 %.1421528.i.lcssa.lcssa.sink, ptr %i.r, align 8, !tbaa !109
  br label %opj_t1_dec_clnpass_generic_vsc.exit

opj_t1_dec_clnpass_generic_vsc.exit:              ; preds = %._crit_edge.i, %._crit_edge.i225, %opj_t1_dec_clnpass_generic_vsc.exit.sink.split, %._crit_edge2106.i, %._crit_edge2094.i
  %i.hkt = and i32 %2, 32
  %.not.i391 = icmp eq i32 %i.hkt, 0
  br i1 %.not.i391, label %opj_t1_dec_clnpass_check_segsym.exit, label %bb.bac

bb.bac:                                           ; preds = %opj_t1_dec_clnpass_generic_vsc.exit
  %i.hku = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 10 uses
  %i.hkv = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.hku, ptr %i.hkv, align 8, !tbaa !120
  %i.hkw = load ptr, ptr %i.hku, align 8, !tbaa !122 ; 4 uses
  %i.hkx = load i32, ptr %i.hkw, align 8, !tbaa !124 ; 7 uses
  %i.hky = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 17 uses
  %i.hkz = load i32, ptr %i.hky, align 4, !tbaa !121
  %i.hla = sub i32 %i.hkz, %i.hkx                 ; 6 uses
  store i32 %i.hla, ptr %i.hky, align 4, !tbaa !121
  %i.hlb = load i32, ptr %0, align 8, !tbaa !110  ; 3 uses
  %i.hlc = lshr i32 %i.hlb, 16
  %i.hld = icmp ult i32 %i.hlc, %i.hkx
  br i1 %i.hld, label %bb.bad, label %bb.bal

bb.bad:                                           ; preds = %bb.bac
  %i.hle = icmp ult i32 %i.hla, %i.hkx
  %..i = select i1 %i.hle, i64 8, i64 16
  %i.hlf = getelementptr inbounds nuw i8, ptr %i.hkw, i64 %..i
  store i32 %i.hkx, ptr %i.hky, align 4, !tbaa !121
  %storemerge295.i = load ptr, ptr %i.hlf, align 8, !tbaa !122 ; 2 uses
  store ptr %storemerge295.i, ptr %i.hku, align 8, !tbaa !122
  %i.hlg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted308.i = load i32, ptr %i.hlg, align 8, !tbaa !109
  %i.hlh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.hli = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.bae

bb.bae:                                           ; preds = %bb.bak, %bb.bad
  %i.hlj = phi i32 [ %i.hmd, %bb.bak ], [ %i.hkx, %bb.bad ]
  %i.hlk = phi i32 [ %i.hme, %bb.bak ], [ %i.hlb, %bb.bad ] ; 4 uses
  %i.hll = phi i32 [ %i.hmf, %bb.bak ], [ %.promoted308.i, %bb.bad ] ; 2 uses
  %i.hlm = icmp eq i32 %i.hll, 0
  br i1 %i.hlm, label %bb.baf, label %bb.bak

bb.baf:                                           ; preds = %bb.bae
  %i.hln = load ptr, ptr %i.hlh, align 8, !tbaa !111 ; 2 uses
  %i.hlo = getelementptr inbounds nuw i8, ptr %i.hln, i64 1 ; 3 uses
  %i.hlp = load i8, ptr %i.hlo, align 1, !tbaa !48 ; 2 uses
  %i.hlq = zext i8 %i.hlp to i32                  ; 2 uses
  %i.hlr = load i8, ptr %i.hln, align 1, !tbaa !48
  %i.hls = icmp eq i8 %i.hlr, -1
  br i1 %i.hls, label %bb.bag, label %bb.baj

bb.bag:                                           ; preds = %bb.baf
  %i.hlt = icmp ugt i8 %i.hlp, -113
  br i1 %i.hlt, label %bb.bah, label %bb.bai

bb.bah:                                           ; preds = %bb.bag
  %i.hlu = add i32 %i.hlk, 65280
  %i.hlv = load i32, ptr %i.hli, align 4, !tbaa !127
  %i.hlw = add i32 %i.hlv, 1
  store i32 %i.hlw, ptr %i.hli, align 4, !tbaa !127
  br label %bb.bak

bb.bai:                                           ; preds = %bb.bag
  store ptr %i.hlo, ptr %i.hlh, align 8, !tbaa !111
  %i.hlx = shl nuw nsw i32 %i.hlq, 9
  %i.hly = add i32 %i.hlx, %i.hlk
  br label %bb.bak

bb.baj:                                           ; preds = %bb.baf
  store ptr %i.hlo, ptr %i.hlh, align 8, !tbaa !111
  %i.hlz = shl nuw nsw i32 %i.hlq, 8
  %i.hma = add i32 %i.hlz, %i.hlk
  br label %bb.bak

bb.bak:                                           ; preds = %bb.baj, %bb.bai, %bb.bah, %bb.bae
  %i.hmb = phi i32 [ %i.hma, %bb.baj ], [ %i.hly, %bb.bai ], [ %i.hlu, %bb.bah ], [ %i.hlk, %bb.bae ]
  %i.hmc = phi i32 [ 8, %bb.baj ], [ 7, %bb.bai ], [ 8, %bb.bah ], [ %i.hll, %bb.bae ]
  %i.hmd = shl i32 %i.hlj, 1                      ; 4 uses
  store i32 %i.hmd, ptr %i.hky, align 4, !tbaa !121
  %i.hme = shl i32 %i.hmb, 1                      ; 3 uses
  store i32 %i.hme, ptr %0, align 8, !tbaa !110
  %i.hmf = add i32 %i.hmc, -1                     ; 2 uses
  store i32 %i.hmf, ptr %i.hlg, align 8, !tbaa !109
  %i.hmg = icmp ult i32 %i.hmd, 32768
  br i1 %i.hmg, label %bb.bae, label %.loopexit304.i, !llvm.loop !552

bb.bal:                                           ; preds = %bb.bac
  %i.hmh = shl nuw i32 %i.hkx, 16
  %i.hmi = sub i32 %i.hlb, %i.hmh                 ; 3 uses
  store i32 %i.hmi, ptr %0, align 8, !tbaa !110
  %i.hmj = and i32 %i.hla, 32768
  %i.hmk = icmp eq i32 %i.hmj, 0
  br i1 %i.hmk, label %bb.bam, label %.loopexit304.i

bb.bam:                                           ; preds = %bb.bal
  %i.hml = icmp ult i32 %i.hla, %i.hkx
  %storemerge.in.v.i = select i1 %i.hml, i64 16, i64 8
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr %i.hkw, i64 %storemerge.in.v.i
  %storemerge.i393 = load ptr, ptr %storemerge.in.i, align 8, !tbaa !122 ; 2 uses
  store ptr %storemerge.i393, ptr %i.hku, align 8, !tbaa !122
  %i.hmm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i = load i32, ptr %i.hmm, align 8, !tbaa !109
  %i.hmn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.hmo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.ban

bb.ban:                                           ; preds = %bb.bat, %bb.bam
  %i.hmp = phi i32 [ %i.hnj, %bb.bat ], [ %i.hla, %bb.bam ]
  %i.hmq = phi i32 [ %i.hnk, %bb.bat ], [ %i.hmi, %bb.bam ] ; 4 uses
  %i.hmr = phi i32 [ %i.hnl, %bb.bat ], [ %.promoted.i, %bb.bam ] ; 2 uses
  %i.hms = icmp eq i32 %i.hmr, 0
  br i1 %i.hms, label %bb.bao, label %bb.bat

bb.bao:                                           ; preds = %bb.ban
  %i.hmt = load ptr, ptr %i.hmn, align 8, !tbaa !111 ; 2 uses
  %i.hmu = getelementptr inbounds nuw i8, ptr %i.hmt, i64 1 ; 3 uses
  %i.hmv = load i8, ptr %i.hmu, align 1, !tbaa !48 ; 2 uses
  %i.hmw = zext i8 %i.hmv to i32                  ; 2 uses
  %i.hmx = load i8, ptr %i.hmt, align 1, !tbaa !48
  %i.hmy = icmp eq i8 %i.hmx, -1
  br i1 %i.hmy, label %bb.bap, label %bb.bas

bb.bap:                                           ; preds = %bb.bao
  %i.hmz = icmp ugt i8 %i.hmv, -113
  br i1 %i.hmz, label %bb.baq, label %bb.bar

bb.baq:                                           ; preds = %bb.bap
  %i.hna = add i32 %i.hmq, 65280
  %i.hnb = load i32, ptr %i.hmo, align 4, !tbaa !127
  %i.hnc = add i32 %i.hnb, 1
  store i32 %i.hnc, ptr %i.hmo, align 4, !tbaa !127
  br label %bb.bat

bb.bar:                                           ; preds = %bb.bap
  store ptr %i.hmu, ptr %i.hmn, align 8, !tbaa !111
  %i.hnd = shl nuw nsw i32 %i.hmw, 9
  %i.hne = add i32 %i.hnd, %i.hmq
  br label %bb.bat
end_hunk_7
