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
  %i.aab = load i32, ptr %i.gq, align 4, !tbaa !108 ; 5 uses
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
  %i.axo = and i32 %i.aab, -4                     ; 2 uses
  %i.axp = zext i32 %i.axo to i64                 ; 2 uses
  %i.axq = mul nuw nsw i64 %i.axp, %i.amg
  %scevgep.i.i.i = getelementptr i8, ptr %i.aad, i64 %i.axq
  %i.axr = shl nuw nsw i64 %i.axp, 1
  %i.axs = getelementptr i8, ptr %i.aae, i64 %i.axr
  %scevgep601.i.i.i = getelementptr i8, ptr %i.axs, i64 12
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
  %i.axt = icmp ult i32 %.0332.lcssa.i.i.i, %.lcssa521.i.i.i
  %i.axu = icmp ne i32 %i.zz, 0
  %or.cond.i.i.i = and i1 %i.axu, %i.axt
  br i1 %or.cond.i.i.i, label %.preheader.lr.ph.i.i.i, label %opj_t1_dec_sigpass_raw.exit.i

.preheader.lr.ph.i.i.i:                           ; preds = %._crit_edge542.i.i.i
  %i.axv = sub nsw i32 0, %i.ama
  br label %.preheader.i8.i.i

.preheader.i8.i.i:                                ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i
  %i.axw = phi i32 [ %.lcssa521.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bbt, %._crit_edge.i.i.i ] ; 2 uses
  %i.axx = phi i32 [ %.lcssa521.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bbu, %._crit_edge.i.i.i ]
  %.1561.i.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i.i ], [ %i.bbv, %._crit_edge.i.i.i ]
  %.2560.i.i.i = phi ptr [ %.0333.lcssa.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bbw, %._crit_edge.i.i.i ] ; 2 uses
  %.2337559.i.i.i = phi ptr [ %.0335.lcssa.i.i.i, %.preheader.lr.ph.i.i.i ], [ %i.bbx, %._crit_edge.i.i.i ] ; 4 uses
  %.not563.i.i.i = icmp eq i32 %i.axx, %.0332.lcssa.i.i.i
  br i1 %.not563.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i8.i.i
  %.pre.i.i.i = load i32, ptr %.2337559.i.i.i, align 4, !tbaa !3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %opj_t1_dec_refpass_step_mqc.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.axy = phi i32 [ %i.axw, %.lr.ph.preheader.i.i.i ], [ %i.bbo, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ]
  %i.axz = phi i32 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.bbp, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %opj_t1_dec_refpass_step_mqc.exit.i.i.i ] ; 2 uses
  %i.aya = trunc nuw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.ayb = mul i32 %i.zz, %i.aya
  %i.ayc = zext i32 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.2560.i.i.i, i64 %i.ayc ; 2 uses
  %i.aye = mul i32 %i.aya, 3                      ; 4 uses
  %i.ayf = shl i32 2097168, %i.aye
  %i.ayg = and i32 %i.ayf, %i.axz
  %i.ayh = shl i32 16, %i.aye
  %i.ayi = icmp eq i32 %i.ayg, %i.ayh
  br i1 %i.ayi, label %bb.jj, label %opj_t1_dec_refpass_step_mqc.exit.i.i.i

bb.jj:                                            ; preds = %.lr.ph.i.i.i
  %i.ayj = lshr i32 %i.axz, %i.aye                ; 2 uses
  %i.ayk = and i32 %i.ayj, 495
  %.not.i.i.i.i.i = icmp eq i32 %i.ayk, 0
  %i.ayl = select i1 %.not.i.i.i.i.i, i64 14, i64 15
  %i.aym = and i32 %i.ayj, 1048576
  %.not4.i.i.i.i.i = icmp eq i32 %i.aym, 0
  %i.ayn = select i1 %.not4.i.i.i.i.i, i64 %i.ayl, i64 16
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ayn ; 4 uses
  store ptr %i.ayo, ptr %i.gt, align 8, !tbaa !120
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !122 ; 6 uses
  %i.ayq = load i32, ptr %i.ayp, align 8, !tbaa !124 ; 7 uses
  %i.ayr = load i32, ptr %i.gu, align 4, !tbaa !121
  %i.ays = sub i32 %i.ayr, %i.ayq                 ; 5 uses
  store i32 %i.ays, ptr %i.gu, align 4, !tbaa !121
  %i.ayt = load i32, ptr %.0254, align 8, !tbaa !110 ; 3 uses
  %i.ayu = lshr i32 %i.ayt, 16
  %i.ayv = icmp ult i32 %i.ayu, %i.ayq
  br i1 %i.ayv, label %bb.jk, label %bb.js

bb.jk:                                            ; preds = %bb.jj
  %i.ayw = icmp ult i32 %i.ays, %i.ayq            ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayp, i64 4
  %i.ayy = load i32, ptr %i.ayx, align 4, !tbaa !126 ; 2 uses
  %.sink.i.i.i.i = select i1 %i.ayw, i64 8, i64 16
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %.sink.i.i.i.i
  store i32 %i.ayq, ptr %i.gu, align 4, !tbaa !121
  %storemerge88.i.i.i.i = load ptr, ptr %i.ayz, align 8, !tbaa !122
  store ptr %storemerge88.i.i.i.i, ptr %i.ayo, align 8, !tbaa !122
  %.promoted92.i.i.i.i = load i32, ptr %i.gv, align 8, !tbaa !109
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jr, %bb.jk
  %i.aza = phi i32 [ %i.azu, %bb.jr ], [ %i.ayq, %bb.jk ]
  %i.azb = phi i32 [ %i.azv, %bb.jr ], [ %i.ayt, %bb.jk ] ; 4 uses
  %i.azc = phi i32 [ %i.azw, %bb.jr ], [ %.promoted92.i.i.i.i, %bb.jk ] ; 2 uses
  %i.azd = icmp eq i32 %i.azc, 0
  br i1 %i.azd, label %bb.jm, label %bb.jr

bb.jm:                                            ; preds = %bb.jl
  %i.aze = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 1 ; 3 uses
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !48 ; 2 uses
  %i.azh = zext i8 %i.azg to i32                  ; 2 uses
  %i.azi = load i8, ptr %i.aze, align 1, !tbaa !48
  %i.azj = icmp eq i8 %i.azi, -1
  br i1 %i.azj, label %bb.jn, label %bb.jq

bb.jn:                                            ; preds = %bb.jm
  %i.azk = icmp ugt i8 %i.azg, -113
  br i1 %i.azk, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.azl = add i32 %i.azb, 65280
  %i.azm = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.azn = add i32 %i.azm, 1
  store i32 %i.azn, ptr %i.gy, align 4, !tbaa !127
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jn
  store ptr %i.azf, ptr %i.gx, align 8, !tbaa !111
  %i.azo = shl nuw nsw i32 %i.azh, 9
  %i.azp = add i32 %i.azo, %i.azb
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jm
  store ptr %i.azf, ptr %i.gx, align 8, !tbaa !111
  %i.azq = shl nuw nsw i32 %i.azh, 8
  %i.azr = add i32 %i.azq, %i.azb
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jl
  %i.azs = phi i32 [ %i.azr, %bb.jq ], [ %i.azp, %bb.jp ], [ %i.azl, %bb.jo ], [ %i.azb, %bb.jl ]
  %i.azt = phi i32 [ 8, %bb.jq ], [ 7, %bb.jp ], [ 8, %bb.jo ], [ %i.azc, %bb.jl ]
  %i.azu = shl i32 %i.aza, 1                      ; 3 uses
  store i32 %i.azu, ptr %i.gu, align 4, !tbaa !121
  %i.azv = shl i32 %i.azs, 1                      ; 2 uses
  store i32 %i.azv, ptr %.0254, align 8, !tbaa !110
  %i.azw = add i32 %i.azt, -1                     ; 2 uses
  store i32 %i.azw, ptr %i.gv, align 8, !tbaa !109
  %i.azx = icmp ult i32 %i.azu, 32768
  br i1 %i.azx, label %bb.jl, label %.loopexit.i.loopexit.i.i.i, !llvm.loop !148

bb.js:                                            ; preds = %bb.jj
  %i.azy = shl nuw i32 %i.ayq, 16
  %i.azz = sub i32 %i.ayt, %i.azy                 ; 2 uses
  store i32 %i.azz, ptr %.0254, align 8, !tbaa !110
  %i.baa = and i32 %i.ays, 32768
  %i.bab = icmp eq i32 %i.baa, 0
  br i1 %i.bab, label %bb.jt, label %bb.kb

bb.jt:                                            ; preds = %bb.js
  %i.bac = icmp ult i32 %i.ays, %i.ayq            ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.ayp, i64 4
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !126 ; 2 uses
  %.sink103.i.i.i.i = select i1 %i.bac, i64 16, i64 8
  %i.baf = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %.sink103.i.i.i.i
  %storemerge.i.i.i.i = load ptr, ptr %i.baf, align 8, !tbaa !122
  store ptr %storemerge.i.i.i.i, ptr %i.ayo, align 8, !tbaa !122
  %.promoted.i.i.i.i = load i32, ptr %i.gv, align 8, !tbaa !109
  br label %bb.ju

bb.ju:                                            ; preds = %bb.ka, %bb.jt
  %i.bag = phi i32 [ %i.bba, %bb.ka ], [ %i.ays, %bb.jt ]
  %i.bah = phi i32 [ %i.bbb, %bb.ka ], [ %i.azz, %bb.jt ] ; 4 uses
  %i.bai = phi i32 [ %i.bbc, %bb.ka ], [ %.promoted.i.i.i.i, %bb.jt ] ; 2 uses
  %i.baj = icmp eq i32 %i.bai, 0
  br i1 %i.baj, label %bb.jv, label %bb.ka

bb.jv:                                            ; preds = %bb.ju
  %i.bak = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 1 ; 3 uses
  %i.bam = load i8, ptr %i.bal, align 1, !tbaa !48 ; 2 uses
  %i.ban = zext i8 %i.bam to i32                  ; 2 uses
  %i.bao = load i8, ptr %i.bak, align 1, !tbaa !48
  %i.bap = icmp eq i8 %i.bao, -1
  br i1 %i.bap, label %bb.jw, label %bb.jz

bb.jw:                                            ; preds = %bb.jv
  %i.baq = icmp ugt i8 %i.bam, -113
  br i1 %i.baq, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.bar = add i32 %i.bah, 65280
  %i.bas = load i32, ptr %i.gy, align 4, !tbaa !127
  %i.bat = add i32 %i.bas, 1
  store i32 %i.bat, ptr %i.gy, align 4, !tbaa !127
  br label %bb.ka

bb.jy:                                            ; preds = %bb.jw
  store ptr %i.bal, ptr %i.gx, align 8, !tbaa !111
  %i.bau = shl nuw nsw i32 %i.ban, 9
  %i.bav = add i32 %i.bau, %i.bah
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jv
  store ptr %i.bal, ptr %i.gx, align 8, !tbaa !111
  %i.baw = shl nuw nsw i32 %i.ban, 8
  %i.bax = add i32 %i.baw, %i.bah
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.ju
  %i.bay = phi i32 [ %i.bax, %bb.jz ], [ %i.bav, %bb.jy ], [ %i.bar, %bb.jx ], [ %i.bah, %bb.ju ]
  %i.baz = phi i32 [ 8, %bb.jz ], [ 7, %bb.jy ], [ 8, %bb.jx ], [ %i.bai, %bb.ju ]
  %i.bba = shl i32 %i.bag, 1                      ; 3 uses
  store i32 %i.bba, ptr %i.gu, align 4, !tbaa !121
  %i.bbb = shl i32 %i.bay, 1                      ; 2 uses
  store i32 %i.bbb, ptr %.0254, align 8, !tbaa !110
end_hunk_1
begin_hunk_2_@opj_t1_cblk_encode_processor:bb.a
  %i.kl = extractelement <4 x i32> %i.jr, i64 2
  %i.km = or disjoint i32 %i.kl, -2147483648
  store i32 %i.km, ptr %next.gep785, align 4
  br label %pred.store.continue799

pred.store.continue799:                           ; preds = %pred.store.if798, %pred.store.continue797
  %i.kn = extractelement <4 x i1> %i.jn, i64 3
  br i1 %i.kn, label %pred.store.if800, label %pred.store.continue801

pred.store.if800:                                 ; preds = %pred.store.continue799
  %i.ko = extractelement <4 x i32> %i.jr, i64 3
  %i.kp = or disjoint i32 %i.ko, -2147483648
  store i32 %i.kp, ptr %next.gep786, align 4
  br label %pred.store.continue801

pred.store.continue801:                           ; preds = %pred.store.if800, %pred.store.continue799
  %minmaxop = select <4 x i1> %i.jm, <4 x i32> %i.jq, <4 x i32> %wide.load
  %predphi = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %minmaxop, <4 x i32> %vec.phi) ; 2 uses
  %minmaxop804 = select <4 x i1> %i.jn, <4 x i32> %i.jr, <4 x i32> %wide.load787
  %predphi802 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %minmaxop804, <4 x i32> %vec.phi779) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kq = icmp eq i64 %index.next, %n.vec
  br i1 %i.kq, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %pred.store.continue801
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %predphi, <4 x i32> %predphi802)
  %i.kr = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.iz
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader899

.lr.ph.i.preheader899:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.1138389.i.ph = phi ptr [ %.0137393.i, %.lr.ph.i.preheader ], [ %i.jb, %middle.block ]
  %.1140388.i.ph = phi i32 [ %.0139392.i, %.lr.ph.i.preheader ], [ %i.kr, %middle.block ]
  %.0143387.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.jc, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader899, %bb.s
  %.1138389.i = phi ptr [ %i.la, %bb.s ], [ %.1138389.i.ph, %.lr.ph.i.preheader899 ] ; 3 uses
  %.1140388.i = phi i32 [ %.2141.i, %bb.s ], [ %.1140388.i.ph, %.lr.ph.i.preheader899 ] ; 2 uses
  %.0143387.i = phi i32 [ %i.kz, %bb.s ], [ %.0143387.i.ph, %.lr.ph.i.preheader899 ]
  %i.ks = load i32, ptr %.1138389.i, align 4, !tbaa !3 ; 3 uses
  %i.kt = icmp slt i32 %i.ks, 0
  br i1 %i.kt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.ku = tail call i32 @llvm.umax.i32(i32 %i.ks, i32 -2147483647)
  %i.kv = sub nsw i32 0, %i.ku                    ; 2 uses
  %i.kw = tail call range(i32 0, -2147483648) i32 @llvm.umax.i32(i32 range(i32 0, -2147483648) %.1140388.i, i32 range(i32 0, -2147483648) %i.kv)
  %i.kx = or disjoint i32 %i.kv, -2147483648
  store i32 %i.kx, ptr %.1138389.i, align 4
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.ky = tail call range(i32 0, -2147483648) i32 @llvm.umax.i32(i32 range(i32 0, -2147483648) %.1140388.i, i32 range(i32 0, -2147483648) %i.ks)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2141.i = phi i32 [ %i.kw, %bb.q ], [ %i.ky, %bb.r ] ; 2 uses
  %i.kz = add nuw i32 %.0143387.i, 1              ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.1138389.i, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.kz, %i.ix
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !234

._crit_edge.loopexit.i:                           ; preds = %bb.s, %middle.block
  %.2141.i.lcssa = phi i32 [ %i.kr, %middle.block ], [ %.2141.i, %bb.s ]
  %.lcssa772 = phi ptr [ %i.jb, %middle.block ], [ %i.la, %bb.s ]
  %.pre.i = load i32, ptr %i.bq, align 4, !tbaa !108
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph395.split.i
  %i.lb = phi i32 [ %i.iy, %.lr.ph395.split.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1140.lcssa.i = phi i32 [ %.0139392.i, %.lr.ph395.split.i ], [ %.2141.i.lcssa, %._crit_edge.loopexit.i ] ; 3 uses
  %.1138.lcssa.i = phi ptr [ %.0137393.i, %.lr.ph395.split.i ], [ %.lcssa772, %._crit_edge.loopexit.i ]
  %i.lc = add nuw i32 %.0142391.i, 1              ; 2 uses
  %i.ld = icmp ult i32 %i.lc, %i.lb
  br i1 %i.ld, label %.lr.ph395.splitthread-pre-split.i, label %._crit_edge396.i, !llvm.loop !235

._crit_edge396.i:                                 ; preds = %._crit_edge.i
  switch i32 %.1140.lcssa.i, label %.lr.ph.i.i [
    i32 0, label %.thread.i
    i32 1, label %.thread288.i
  ]

.thread.i:                                        ; preds = %._crit_edge396.i, %.lr.ph395.i, %.loopexit
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.le, align 8, !tbaa !237
  br label %.loopexit.sink.split.i

.thread288.i:                                     ; preds = %._crit_edge396.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 -5, ptr %i.lf, align 8, !tbaa !237
  br label %bb.u

.lr.ph.i.i:                                       ; preds = %._crit_edge396.i, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.lh, %.lr.ph.i.i ], [ 0, %._crit_edge396.i ] ; 2 uses
  %.045.i.i = phi i32 [ %i.lg, %.lr.ph.i.i ], [ %.1140.lcssa.i, %._crit_edge396.i ] ; 2 uses
  %i.lg = lshr i32 %.045.i.i, 1
  %i.lh = add nuw nsw i32 %.06.i.i, 1
  %i.li = icmp samesign ugt i32 %.045.i.i, 3
  br i1 %i.li, label %.lr.ph.i.i, label %bb.t, !llvm.loop !238

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.lj = add nsw i32 %.06.i.i, -4                ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 %i.lj, ptr %i.lk, align 8, !tbaa !237
  %i.ll = icmp eq i32 %i.lj, 0
  br i1 %i.ll, label %.loopexit.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread288.i
  %i.lm = phi ptr [ %i.lf, %.thread288.i ], [ %i.lk, %bb.t ] ; 2 uses
  %i.ln = phi i32 [ -5, %.thread288.i ], [ %i.lj, %bb.t ]
  %.fr423.i = freeze i32 %i.ln
  %i.lo = add i32 %.fr423.i, -1                   ; 2 uses
  tail call void @opj_mqc_resetstates(ptr noundef nonnull %.0) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0, i32 noundef 18, i32 noundef 0, i32 noundef 46) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0, i32 noundef 17, i32 noundef 0, i32 noundef 3) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #12
  %i.lp = load ptr, ptr %i.b, align 8, !tbaa !239
  tail call void @opj_mqc_init_enc(ptr noundef nonnull %.0, ptr noundef %i.lp) #12
  %i.lq = icmp sgt i32 %i.lo, -1
  br i1 %i.lq, label %.lr.ph409.i, label %.loopexit.sink.split.i

.lr.ph409.i:                                      ; preds = %bb.u
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ls = trunc i32 %i.ik to i1
  %i.lt = getelementptr inbounds nuw i8, ptr %.0, i64 192 ; 6 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 50 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0, i64 224 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0, i64 176 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0, i64 184 ; 11 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 21 uses
  %i.ma = and i32 %i.ik, 8                        ; 2 uses
  %i.mb = icmp ne i32 %i.ma, 0                    ; 3 uses
  %i.mc = and i32 %i.ik, 32
  %.not153.i = icmp eq i32 %i.mc, 0
  %i.md = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 48 uses
  %or.cond.not.i.i.i = icmp eq i32 %i.ma, 0
  %.not.i267.i = icmp ne ptr %i.in, null
  %i.me = icmp ult i32 %i.ia, %i.ip
  %or.cond.i268.i = and i1 %.not.i267.i, %i.me
  %i.mf = zext i32 %i.ia to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.mf
  %i.mh = icmp eq i32 %i.if, 1
  %i.mi = icmp eq i32 %i.hz, 0
  %i.mj = icmp eq i32 %i.hz, 3
  %i.mk = select i1 %i.mj, i32 4, i32 2
  %i.ml = select i1 %i.mi, i32 1, i32 %i.mk
  %i.mm = uitofp nneg i32 %i.ml to double
  %i.mn = fdiv double %i.ii, %i.mm
  %i.mo = and i32 %i.ik, 4
  %.not.i270.i = icmp ne i32 %i.mo, 0
  %i.mp = and i32 %i.ik, 1
  %.not15.i.i = icmp eq i32 %i.mp, 0
  %i.mq = and i32 %i.ik, 16                       ; 3 uses
  %.not155.i = icmp eq i32 %i.mq, 0
  %i.mr = and i32 %i.ik, 2
  %.not156.i = icmp eq i32 %i.mr, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.nu, %.lr.ph409.i
  %.0128407.i = phi double [ 0.000000e+00, %.lr.ph409.i ], [ %i.cgz, %bb.nu ]
  %.0131406.i = phi i32 [ 0, %.lr.ph409.i ], [ %i.chv, %bb.nu ] ; 4 uses
  %.0133405.i = phi i32 [ %i.lo, %.lr.ph409.i ], [ %spec.select157.i, %bb.nu ] ; 26 uses
  %.0135403.i = phi i32 [ 2, %.lr.ph409.i ], [ %spec.select.i, %bb.nu ] ; 5 uses
  %i.ms = load ptr, ptr %i.lr, align 8, !tbaa !240 ; 2 uses
  %i.mt = zext i32 %.0131406.i to i64
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %i.mt ; 4 uses
  %i.mv = load i32, ptr %i.lm, align 8, !tbaa !237
  %i.mw = add nsw i32 %i.mv, -4
  %i.mx = icmp slt i32 %.0133405.i, %i.mw
  %i.my = icmp ult i32 %.0135403.i, 2
  %or.cond.i = and i1 %i.my, %i.mx
  %i.mz = and i1 %or.cond.i, %i.ls                ; 18 uses
  %.not151.i = icmp eq i32 %.0131406.i, 0
  br i1 %.not151.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.na = add i32 %.0131406.i, -1
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 20
  %i.ne = load i8, ptr %i.nd, align 4
  %i.nf = and i8 %i.ne, 1
  %.not152.i = icmp eq i8 %i.nf, 0
  br i1 %.not152.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.mz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @opj_mqc_bypass_init_enc(ptr noundef nonnull %.0) #12
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @opj_mqc_restart_init_enc(ptr noundef nonnull %.0) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %i.ng = shl nuw i32 64, %.0133405.i             ; 10 uses
  %i.nh = load i32, ptr %i.bq, align 4, !tbaa !108 ; 9 uses
  %.not1184.i.i = icmp ult i32 %i.nh, 4           ; 3 uses
  switch i32 %.0135403.i, label %default.unreachable.i [
    i32 0, label %bb.ab
    i32 1, label %bb.gd
    i32 2, label %bb.jl
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ni = load ptr, ptr %i.lw, align 8, !tbaa !16 ; 2 uses
  %i.nj = load i32, ptr %i.bo, align 8, !tbaa !107 ; 2 uses
  %i.nk = add i32 %i.nj, 3
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nl ; 2 uses
  %i.nn = load ptr, ptr %i.lt, align 8, !tbaa !120 ; 3 uses
  %i.no = load i32, ptr %.0, align 8, !tbaa !110  ; 3 uses
  %i.np = load i32, ptr %i.lu, align 4, !tbaa !121 ; 3 uses
  %i.nq = load i32, ptr %i.lv, align 8, !tbaa !109 ; 3 uses
  %i.nr = load ptr, ptr %i.iu, align 8, !tbaa !15 ; 3 uses
  br i1 %.not1184.i.i, label %._crit_edge1142.i.i, label %.lr.ph1141.i.i

.lr.ph1141.i.i:                                   ; preds = %bb.ab
  %i.ns = and i32 %i.ng, 2147483584               ; 4 uses
  %.not.i.i.i = icmp eq i32 %.0133405.i, 0        ; 4 uses
  %.not1185.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not1185.i.i, label %.lr.ph1141.split.us.i.i, label %.lr.ph1141.split.i.i

.lr.ph1141.split.us.i.i:                          ; preds = %.lr.ph1141.i.i
  %i.nt = and i32 %i.nh, -4                       ; 2 uses
  %i.nu = zext i32 %i.nt to i64
  %i.nv = shl nuw nsw i64 %i.nu, 1
  %i.nw = getelementptr i8, ptr %i.ni, i64 %i.nv
  %scevgep.i.i = getelementptr i8, ptr %i.nw, i64 12
  br label %._crit_edge1142.i.i

.lr.ph1141.split.i.i:                             ; preds = %.lr.ph1141.i.i, %._crit_edge.i.i
  %.1286.i = phi i32 [ %.11.i, %._crit_edge.i.i ], [ 0, %.lr.ph1141.i.i ] ; 2 uses
  %i.nx = phi i32 [ %i.ami, %._crit_edge.i.i ], [ %i.nh, %.lr.ph1141.i.i ]
  %.07461139.i.i = phi i32 [ %i.amj, %._crit_edge.i.i ], [ 0, %.lr.ph1141.i.i ]
  %.07471138.i.i = phi ptr [ %i.amk, %._crit_edge.i.i ], [ %i.nm, %.lr.ph1141.i.i ] ; 2 uses
  %.07491137.i.i = phi ptr [ %.1750.lcssa.i.i, %._crit_edge.i.i ], [ %i.nn, %.lr.ph1141.i.i ] ; 2 uses
  %.07521136.i.i = phi i32 [ %.1753.lcssa.i.i, %._crit_edge.i.i ], [ %i.no, %.lr.ph1141.i.i ] ; 2 uses
  %.07691135.i.i = phi i32 [ %.1770.lcssa.i.i, %._crit_edge.i.i ], [ %i.np, %.lr.ph1141.i.i ] ; 2 uses
  %.08411134.i.i = phi i32 [ %.1842.lcssa.i.i, %._crit_edge.i.i ], [ %i.nq, %.lr.ph1141.i.i ] ; 2 uses
  %.09231133.i.i = phi ptr [ %.1924.lcssa.i.i, %._crit_edge.i.i ], [ %i.nr, %.lr.ph1141.i.i ] ; 2 uses
  %i.ny = load i32, ptr %i.bo, align 8, !tbaa !107 ; 2 uses
  %.not1186.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not1186.i.i, label %._crit_edge.i.i, label %.lr.ph.i158.i

.lr.ph.i158.i:                                    ; preds = %.lr.ph1141.split.i.i, %bb.es
  %.2287.i = phi i32 [ %.10.i, %bb.es ], [ %.1286.i, %.lr.ph1141.split.i.i ] ; 4 uses
  %.01127.i.i = phi i32 [ %i.amf, %bb.es ], [ 0, %.lr.ph1141.split.i.i ]
  %.17481125.i.i = phi ptr [ %i.amg, %bb.es ], [ %.07471138.i.i, %.lr.ph1141.split.i.i ] ; 28 uses
  %.17501124.i.i = phi ptr [ %.10.i.i, %bb.es ], [ %.07491137.i.i, %.lr.ph1141.split.i.i ] ; 2 uses
  %.17531123.i.i = phi i32 [ %.70.i.i, %bb.es ], [ %.07521136.i.i, %.lr.ph1141.split.i.i ] ; 6 uses
  %.17701122.i.i = phi i32 [ %.54823.i.i, %bb.es ], [ %.07691135.i.i, %.lr.ph1141.split.i.i ] ; 5 uses
  %.18421121.i.i = phi i32 [ %.62903.i.i, %bb.es ], [ %.08411134.i.i, %.lr.ph1141.split.i.i ] ; 7 uses
  %.19241120.i.i = phi ptr [ %i.amh, %bb.es ], [ %.09231133.i.i, %.lr.ph1141.split.i.i ] ; 6 uses
  %i.nz = load i32, ptr %.17481125.i.i, align 4, !tbaa !3 ; 4 uses
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %bb.es, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i158.i
  %i.ob = and i32 %i.nz, 2097168
  %i.oc = icmp ne i32 %i.ob, 0
  %i.od = and i32 %i.nz, 495                      ; 2 uses
  %.not1022.i.i = icmp eq i32 %i.od, 0
  %or.cond.i.i = or i1 %i.oc, %.not1022.i.i
  br i1 %or.cond.i.i, label %bb.bg, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1049.i.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %.val1049.i.i, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !48
  %i.oh = load i32, ptr %.19241120.i.i, align 4, !tbaa !3
  %i.oi = and i32 %i.oh, %i.ns
  %.not1023.i.i = icmp ne i32 %i.oi, 0            ; 2 uses
  %i.oj = zext i1 %.not1023.i.i to i32            ; 2 uses
  %i.ok = zext i8 %i.og to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ok ; 4 uses
  br i1 %i.mz, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.om = icmp eq i32 %.18421121.i.i, -559038737
  %i.on = add i32 %.18421121.i.i, -1
  %i.oo = select i1 %i.om, i32 7, i32 %i.on       ; 3 uses
  %i.op = shl nuw i32 %i.oj, %i.oo
  %i.oq = add i32 %i.op, %.17531123.i.i           ; 2 uses
  %i.or = icmp eq i32 %i.oo, 0
  br i1 %i.or, label %bb.af, label %.loopexit1097.i.i

bb.af:                                            ; preds = %bb.ae
  %i.os = trunc i32 %i.oq to i8
  %i.ot = load ptr, ptr %i.md, align 8, !tbaa !111
  store i8 %i.os, ptr %i.ot, align 1, !tbaa !48
  %i.ou = load ptr, ptr %i.md, align 8, !tbaa !111 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !48
  %i.ow = icmp eq i8 %i.ov, -1
  %spec.store.select.i.i = select i1 %i.ow, i32 7, i32 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store ptr %i.ox, ptr %i.md, align 8, !tbaa !111
  br label %.loopexit1097.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.oy = load ptr, ptr %i.ol, align 8, !tbaa !122 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !126
  %i.pb = icmp eq i32 %i.pa, %i.oj
  %i.pc = load i32, ptr %i.oy, align 8, !tbaa !124 ; 8 uses
  %i.pd = sub i32 %.17701122.i.i, %i.pc           ; 6 uses
  br i1 %i.pb, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.pe = and i32 %i.pd, 32768
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.pg = icmp ult i32 %i.pd, %i.pc
  %.2771.i.i = tail call i32 @llvm.umax.i32(i32 %i.pd, i32 %i.pc)
  %i.ph = select i1 %i.pg, i32 0, i32 %i.pc
  %.2754.i.i = add i32 %i.ph, %.17531123.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !241
  store ptr %i.pj, ptr %i.ol, align 8, !tbaa !122
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.3844.i.i = phi i32 [ %.18421121.i.i, %bb.ai ], [ %.4845.i.i, %bb.al ]
  %.3772.i.i = phi i32 [ %.2771.i.i, %bb.ai ], [ %i.pk, %bb.al ] ; 2 uses
  %.3755.i.i = phi i32 [ %.2754.i.i, %bb.ai ], [ %.4756.i.i, %bb.al ]
  %i.pk = shl i32 %.3772.i.i, 1                   ; 2 uses
  %i.pl = shl i32 %.3755.i.i, 1                   ; 2 uses
  %i.pm = add i32 %.3844.i.i, -1                  ; 2 uses
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.pl, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.po = load i32, ptr %.0, align 8, !tbaa !110
  %i.pp = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.4845.i.i = phi i32 [ %i.pp, %bb.ak ], [ %i.pm, %bb.aj ] ; 2 uses
  %.4756.i.i = phi i32 [ %i.po, %bb.ak ], [ %i.pl, %bb.aj ] ; 2 uses
  %i.pq = and i32 %.3772.i.i, 16384
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.aj, label %.loopexit1097.i.i, !llvm.loop !242

bb.am:                                            ; preds = %bb.ah
  %i.ps = add i32 %i.pc, %.17531123.i.i
  br label %.loopexit1097.i.i

bb.an:                                            ; preds = %bb.ag
  %i.pt = icmp ult i32 %i.pd, %i.pc
  %.4773.i.i = tail call i32 @llvm.umin.i32(i32 %i.pd, i32 %i.pc)
  %i.pu = select i1 %i.pt, i32 %i.pc, i32 0
  %.5757.i.i = add i32 %i.pu, %.17531123.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !243
  store ptr %i.pw, ptr %i.ol, align 8, !tbaa !122
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %.5846.i.i = phi i32 [ %.18421121.i.i, %bb.an ], [ %.6847.i.i, %bb.aq ]
  %.5774.i.i = phi i32 [ %.4773.i.i, %bb.an ], [ %i.px, %bb.aq ] ; 2 uses
  %.6758.i.i = phi i32 [ %.5757.i.i, %bb.an ], [ %.7759.i.i, %bb.aq ]
  %i.px = shl i32 %.5774.i.i, 1                   ; 2 uses
  %i.py = shl i32 %.6758.i.i, 1                   ; 2 uses
  %i.pz = add i32 %.5846.i.i, -1                  ; 2 uses
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.py, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.qb = load i32, ptr %.0, align 8, !tbaa !110
  %i.qc = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.6847.i.i = phi i32 [ %i.qc, %bb.ap ], [ %i.pz, %bb.ao ] ; 2 uses
  %.7759.i.i = phi i32 [ %i.qb, %bb.ap ], [ %i.py, %bb.ao ] ; 2 uses
  %i.qd = and i32 %.5774.i.i, 16384
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.ao, label %.loopexit1097.i.i, !llvm.loop !244

.loopexit1097.i.i:                                ; preds = %bb.aq, %bb.al, %bb.am, %bb.af, %bb.ae
  %.7848.i.i = phi i32 [ %spec.store.select.i.i, %bb.af ], [ %i.oo, %bb.ae ], [ %.4845.i.i, %bb.al ], [ %.18421121.i.i, %bb.am ], [ %.6847.i.i, %bb.aq ] ; 6 uses
  %.6775.i.i = phi i32 [ %.17701122.i.i, %bb.af ], [ %.17701122.i.i, %bb.ae ], [ %i.pk, %bb.al ], [ %i.pd, %bb.am ], [ %i.px, %bb.aq ] ; 4 uses
  %.8760.i.i = phi i32 [ 0, %bb.af ], [ %i.oq, %bb.ae ], [ %.4756.i.i, %bb.al ], [ %i.ps, %bb.am ], [ %.7759.i.i, %bb.aq ] ; 5 uses
  %.pre1226.i.i = load i32, ptr %.17481125.i.i, align 4, !tbaa !3 ; 4 uses
  br i1 %.not1023.i.i, label %bb.ar, label %opj_t1_update_flags.exit.i.i

bb.ar:                                            ; preds = %.loopexit1097.i.i
  %i.qf = getelementptr inbounds i8, ptr %.17481125.i.i, i64 -4 ; 3 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !3
  %i.qh = getelementptr inbounds nuw i8, ptr %.17481125.i.i, i64 4 ; 3 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3
  %.pn.in.i.i.i = lshr i32 %.pre1226.i.i, 14
  %i.qj = and i32 %.pre1226.i.i, 170
  %i.qk = lshr i32 %i.qg, 19
  %i.ql = and i32 %i.qk, 1
  %i.qm = lshr i32 %i.qi, 17
  %i.qn = and i32 %i.qm, 4
  %.pn.i.i.i = and i32 %.pn.in.i.i.i, 16
  %i.qo = lshr i32 %.pre1226.i.i, 16
  %i.qp = and i32 %i.qo, 64
  %i.qq = or disjoint i32 %i.qp, %i.qj
  %i.qr = or disjoint i32 %i.qq, %.pn.i.i.i
  %.0.i.i.i = or disjoint i32 %i.qr, %i.ql
  %i.qs = or disjoint i32 %.0.i.i.i, %i.qn
  %i.qt = zext nneg i32 %i.qs to i64              ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !48
  %i.qw = load i32, ptr %.19241120.i.i, align 4, !tbaa !3 ; 4 uses
  %i.qx = lshr i32 %i.qw, 31                      ; 3 uses
  %i.qy = and i32 %i.qw, 2147483647
  %i.qz = lshr i32 %i.qy, %.0133405.i
  %i.ra = and i32 %i.qz, 127
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.rb
  %i.rd = and i32 %i.qw, 127
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.re
  %.0.in.i.i.i = select i1 %.not.i.i.i, ptr %i.rf, ptr %i.rc
  %.0.i1050.i.i = load i16, ptr %.0.in.i.i.i, align 2, !tbaa !245
  %i.rg = sext i16 %.0.i1050.i.i to i32
  %i.rh = add nsw i32 %.2287.i, %i.rg             ; 2 uses
  %i.ri = zext i8 %i.qv to i64
end_hunk_2
begin_hunk_3_@opj_t1_dec_sigpass_mqc:bb.a
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
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !108 ; 7 uses
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
end_hunk_3
begin_hunk_4_@opj_t1_dec_sigpass_mqc:bb.a
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
  %i.bzz = and i32 %i.azz, -4                     ; 2 uses
  %i.caa = zext i32 %i.bzz to i64                 ; 2 uses
  %i.cab = mul nuw nsw i64 %i.caa, %i.baj
  %scevgep.i = getelementptr i8, ptr %i.azi, i64 %i.cab
  %i.cac = shl nuw nsw i64 %i.caa, 1
  %i.cad = getelementptr i8, ptr %i.azk, i64 %i.cac
  %scevgep1089.i = getelementptr i8, ptr %i.cad, i64 12
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
  %i.cae = icmp ult i32 %.0629.lcssa.i, %.lcssa982.i
  %i.caf = icmp ne i32 %i.b, 0
  %or.cond.i111 = and i1 %i.caf, %i.cae
  br i1 %or.cond.i111, label %.preheader.i113, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

.preheader.i113:                                  ; preds = %._crit_edge1003.i, %._crit_edge.i
  %i.cag = phi i32 [ %i.car, %._crit_edge.i ], [ %.lcssa982.i, %._crit_edge1003.i ]
  %.11022.i = phi i32 [ %i.cas, %._crit_edge.i ], [ 0, %._crit_edge1003.i ]
  %.21021.i = phi ptr [ %i.cat, %._crit_edge.i ], [ %.0630.lcssa.i, %._crit_edge1003.i ] ; 2 uses
  %.26341020.i = phi ptr [ %i.cau, %._crit_edge.i ], [ %.0632.lcssa.i, %._crit_edge1003.i ] ; 2 uses
  %.not1024.i = icmp eq i32 %i.cag, %.0629.lcssa.i
  br i1 %.not1024.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i113, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i113 ] ; 2 uses
  %i.cah = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.cai = mul i32 %i.b, %i.cah
  %i.caj = zext i32 %i.cai to i64
  %i.cak = getelementptr inbounds nuw [4 x i8], ptr %.21021.i, i64 %i.caj
  %i.cal = load i32, ptr %i.a, align 8, !tbaa !107
  %i.cam = add i32 %i.cal, 2
  tail call fastcc void @opj_t1_dec_sigpass_step_mqc(ptr noundef nonnull %0, ptr noundef %.26341020.i, ptr noundef %i.cak, i32 noundef %i.azx, i32 noundef %i.cah, i32 noundef %i.cam, i32 noundef 1)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.can = load i32, ptr %i.azy, align 4, !tbaa !108 ; 2 uses
  %i.cao = sub i32 %i.can, %.0629.lcssa.i
  %i.cap = zext i32 %i.cao to i64
  %i.caq = icmp samesign ult i64 %indvars.iv.next.i, %i.cap
  br i1 %i.caq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !374

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i113
  %i.car = phi i32 [ %.0629.lcssa.i, %.preheader.i113 ], [ %i.can, %.lr.ph.i ]
  %i.cas = add nuw i32 %.11022.i, 1               ; 2 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %.21021.i, i64 4
  %i.cau = getelementptr inbounds nuw i8, ptr %.26341020.i, i64 4
  %exitcond1091.not.i = icmp eq i32 %i.cas, %i.b
  br i1 %exitcond1091.not.i, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit, label %.preheader.i113, !llvm.loop !375

bb.sc:                                            ; preds = %bb.lt
  br i1 %.not.i115, label %._crit_edge1009.i, label %.preheader940.lr.ph.i

.preheader940.lr.ph.i:                            ; preds = %bb.sc
  %.not1029.i = icmp eq i32 %i.b, 0
  %i.cav = getelementptr i8, ptr %0, i64 200      ; 4 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 48 uses
  %i.cay = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 32 uses
  %i.caz = sub nsw i32 0, %i.azx                  ; 4 uses
  %i.cba = zext i32 %i.b to i64
  %i.cbb = shl i32 %i.b, 1
  %i.cbc = zext i32 %i.cbb to i64
  %i.cbd = mul i32 %i.b, 3
  %i.cbe = zext i32 %i.cbd to i64                 ; 3 uses
  br i1 %.not1029.i, label %.preheader940.lr.ph.split.i, label %.preheader940.us.i

.preheader940.us.i:                               ; preds = %.preheader940.lr.ph.i, %._crit_edge.us.i162
  %.06351008.us.i = phi i32 [ %i.dbd, %._crit_edge.us.i162 ], [ 0, %.preheader940.lr.ph.i ]
  %.06361007.us.i = phi ptr [ %i.dbe, %._crit_edge.us.i162 ], [ %i.azi, %.preheader940.lr.ph.i ]
  %.06381006.us.i = phi ptr [ %i.dbf, %._crit_edge.us.i162 ], [ %i.azn, %.preheader940.lr.ph.i ]
  %.06411005.us.i = phi ptr [ %.10.us.i160, %._crit_edge.us.i162 ], [ %i.azp, %.preheader940.lr.ph.i ]
  %.06441004.us.i = phi i32 [ %.66.us.i159, %._crit_edge.us.i162 ], [ %i.azq, %.preheader940.lr.ph.i ]
  %.06551003.us.i = phi i32 [ %.42697.us.i, %._crit_edge.us.i162 ], [ %i.azs, %.preheader940.lr.ph.i ]
  %.06981002.us.i = phi i32 [ %.66764.us.i, %._crit_edge.us.i162 ], [ %i.azu, %.preheader940.lr.ph.i ]
  br label %bb.sd

bb.sd:                                            ; preds = %bb.yj, %.preheader940.us.i
  %.0996.us.i = phi i32 [ 0, %.preheader940.us.i ], [ %i.dba, %bb.yj ]
  %.1637995.us.i = phi ptr [ %.06361007.us.i, %.preheader940.us.i ], [ %i.dbb, %bb.yj ] ; 5 uses
  %.1639994.us.i = phi ptr [ %.06381006.us.i, %.preheader940.us.i ], [ %i.dbc, %bb.yj ] ; 14 uses
  %.1642993.us.i = phi ptr [ %.06411005.us.i, %.preheader940.us.i ], [ %.10.us.i160, %bb.yj ] ; 2 uses
  %.1645992.us.i = phi i32 [ %.06441004.us.i, %.preheader940.us.i ], [ %.66.us.i159, %bb.yj ] ; 5 uses
  %.1656991.us.i = phi i32 [ %.06551003.us.i, %.preheader940.us.i ], [ %.42697.us.i, %bb.yj ] ; 3 uses
  %.1699990.us.i = phi i32 [ %.06981002.us.i, %.preheader940.us.i ], [ %.66764.us.i, %bb.yj ] ; 5 uses
  %i.cbf = load i32, ptr %.1639994.us.i, align 4, !tbaa !3 ; 9 uses
  %.not.us.i116 = icmp eq i32 %i.cbf, 0
  br i1 %.not.us.i116, label %bb.yj, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.cbg = and i32 %i.cbf, 2097168
  %i.cbh = icmp ne i32 %i.cbg, 0
  %i.cbi = and i32 %i.cbf, 495                    ; 2 uses
  %.not865.us.i117 = icmp eq i32 %i.cbi, 0
  %or.cond.us.i118 = or i1 %i.cbh, %.not865.us.i117
  br i1 %or.cond.us.i118, label %bb.ts, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %.val913.us.i = load ptr, ptr %i.cav, align 8, !tbaa !88
  %i.cbj = zext nneg i32 %i.cbi to i64
  %i.cbk = getelementptr inbounds nuw i8, ptr %.val913.us.i, i64 %i.cbj
  %i.cbl = load i8, ptr %i.cbk, align 1, !tbaa !48
  %i.cbm = zext i8 %i.cbl to i64
  %i.cbn = getelementptr inbounds nuw [8 x i8], ptr %i.caw, i64 %i.cbm ; 4 uses
  %i.cbo = load ptr, ptr %i.cbn, align 8, !tbaa !122 ; 6 uses
  %i.cbp = load i32, ptr %i.cbo, align 8, !tbaa !124 ; 6 uses
  %i.cbq = sub i32 %.1656991.us.i, %i.cbp         ; 5 uses
  %i.cbr = lshr i32 %.1645992.us.i, 16
  %i.cbs = icmp ult i32 %i.cbr, %i.cbp
  br i1 %i.cbs, label %bb.sq, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.cbt = shl nuw i32 %i.cbp, 16
  %i.cbu = sub i32 %.1645992.us.i, %i.cbt         ; 2 uses
  %i.cbv = and i32 %i.cbq, 32768
  %i.cbw = icmp eq i32 %i.cbv, 0
  br i1 %i.cbw, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbo, i64 4
  %i.cby = load i32, ptr %i.cbx, align 4, !tbaa !126
  br label %.loopexit938.us.i

bb.si:                                            ; preds = %bb.sg
  %i.cbz = icmp ult i32 %i.cbq, %i.cbp            ; 2 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbo, i64 4
  %i.ccb = load i32, ptr %i.cca, align 4, !tbaa !126 ; 2 uses
  %.sink.i223 = select i1 %i.cbz, i64 16, i64 8
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cbo, i64 %.sink.i223
  %storemerge.us.i224 = load ptr, ptr %i.ccc, align 8, !tbaa !122
  store ptr %storemerge.us.i224, ptr %i.cbn, align 8, !tbaa !122
  br label %bb.sj

bb.sj:                                            ; preds = %bb.sp, %bb.si
  %.5703.us.i = phi i32 [ %.1699990.us.i, %bb.si ], [ %i.ccu, %bb.sp ] ; 2 uses
  %.4659.us.i = phi i32 [ %i.cbq, %bb.si ], [ %i.ccs, %bb.sp ]
  %.5649.us.i = phi i32 [ %i.cbu, %bb.si ], [ %i.cct, %bb.sp ] ; 4 uses
  %i.ccd = icmp eq i32 %.5703.us.i, 0
  br i1 %i.ccd, label %bb.sk, label %bb.sp

bb.sk:                                            ; preds = %bb.sj
  %i.cce = load ptr, ptr %i.cax, align 8, !tbaa !111 ; 2 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cce, i64 1 ; 3 uses
  %i.ccg = load i8, ptr %i.ccf, align 1, !tbaa !48 ; 2 uses
  %i.cch = zext i8 %i.ccg to i32                  ; 2 uses
  %i.cci = load i8, ptr %i.cce, align 1, !tbaa !48
  %i.ccj = icmp eq i8 %i.cci, -1
  br i1 %i.ccj, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  store ptr %i.ccf, ptr %i.cax, align 8, !tbaa !111
  %i.cck = shl nuw nsw i32 %i.cch, 8
  %i.ccl = add i32 %i.cck, %.5649.us.i
  br label %bb.sp

bb.sm:                                            ; preds = %bb.sk
  %i.ccm = icmp ugt i8 %i.ccg, -113
  br i1 %i.ccm, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  store ptr %i.ccf, ptr %i.cax, align 8, !tbaa !111
  %i.ccn = shl nuw nsw i32 %i.cch, 9
  %i.cco = add i32 %i.ccn, %.5649.us.i
  br label %bb.sp

bb.so:                                            ; preds = %bb.sm
  %i.ccp = add i32 %.5649.us.i, 65280
  %i.ccq = load i32, ptr %i.cay, align 4, !tbaa !127
  %i.ccr = add i32 %i.ccq, 1
  store i32 %i.ccr, ptr %i.cay, align 4, !tbaa !127
  br label %bb.sp

bb.sp:                                            ; preds = %bb.so, %bb.sn, %bb.sl, %bb.sj
  %.7705.us.i = phi i32 [ %.5703.us.i, %bb.sj ], [ 8, %bb.so ], [ 7, %bb.sn ], [ 8, %bb.sl ]
  %.7651.us.i = phi i32 [ %.5649.us.i, %bb.sj ], [ %i.ccp, %bb.so ], [ %i.cco, %bb.sn ], [ %i.ccl, %bb.sl ]
  %i.ccs = shl i32 %.4659.us.i, 1                 ; 3 uses
  %i.cct = shl i32 %.7651.us.i, 1                 ; 2 uses
  %i.ccu = add i32 %.7705.us.i, -1                ; 2 uses
  %i.ccv = icmp ult i32 %i.ccs, 32768
  br i1 %i.ccv, label %bb.sj, label %.loopexit938.us.i.loopexit486, !llvm.loop !376

bb.sq:                                            ; preds = %bb.sf
  %i.ccw = icmp ult i32 %i.cbq, %i.cbp            ; 2 uses
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.cbo, i64 4
  %i.ccy = load i32, ptr %i.ccx, align 4, !tbaa !126 ; 2 uses
  %.sink1215.i225 = select i1 %i.ccw, i64 8, i64 16
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.cbo, i64 %.sink1215.i225
  %storemerge868.us.i = load ptr, ptr %i.ccz, align 8, !tbaa !122
  store ptr %storemerge868.us.i, ptr %i.cbn, align 8, !tbaa !122
  br label %bb.sr

bb.sr:                                            ; preds = %bb.sx, %bb.sq
  %.2700.us.i = phi i32 [ %.1699990.us.i, %bb.sq ], [ %i.cdr, %bb.sx ] ; 2 uses
  %.3658.us.i = phi i32 [ %i.cbp, %bb.sq ], [ %i.cdp, %bb.sx ]
  %.2646.us.i = phi i32 [ %.1645992.us.i, %bb.sq ], [ %i.cdq, %bb.sx ] ; 4 uses
  %i.cda = icmp eq i32 %.2700.us.i, 0
  br i1 %i.cda, label %bb.ss, label %bb.sx

end_hunk_4
begin_hunk_5_@opj_t1_dec_sigpass_mqc:bb.a
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cxu, i64 %.sink1228.i
  %storemerge903.us.i = load ptr, ptr %i.cyi, align 8, !tbaa !122
  store ptr %storemerge903.us.i, ptr %i.cxt, align 8, !tbaa !122
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xy, %bb.xr
  %.60758.us.i = phi i32 [ %.56754.us.i, %bb.xr ], [ %i.cza, %bb.xy ] ; 2 uses
  %.38693.us.i = phi i32 [ %i.cxw, %bb.xr ], [ %i.cyy, %bb.xy ]
  %.60.us.i172 = phi i32 [ %i.cya, %bb.xr ], [ %i.cyz, %bb.xy ] ; 4 uses
  %i.cyj = icmp eq i32 %.60758.us.i, 0
  br i1 %i.cyj, label %bb.xt, label %bb.xy

bb.xt:                                            ; preds = %bb.xs
  %i.cyk = load ptr, ptr %i.cax, align 8, !tbaa !111 ; 2 uses
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 1 ; 3 uses
  %i.cym = load i8, ptr %i.cyl, align 1, !tbaa !48 ; 2 uses
  %i.cyn = zext i8 %i.cym to i32                  ; 2 uses
  %i.cyo = load i8, ptr %i.cyk, align 1, !tbaa !48
  %i.cyp = icmp eq i8 %i.cyo, -1
  br i1 %i.cyp, label %bb.xv, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  store ptr %i.cyl, ptr %i.cax, align 8, !tbaa !111
  %i.cyq = shl nuw nsw i32 %i.cyn, 8
  %i.cyr = add i32 %i.cyq, %.60.us.i172
  br label %bb.xy

bb.xv:                                            ; preds = %bb.xt
  %i.cys = icmp ugt i8 %i.cym, -113
  br i1 %i.cys, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  store ptr %i.cyl, ptr %i.cax, align 8, !tbaa !111
  %i.cyt = shl nuw nsw i32 %i.cyn, 9
  %i.cyu = add i32 %i.cyt, %.60.us.i172
  br label %bb.xy

bb.xx:                                            ; preds = %bb.xv
  %i.cyv = add i32 %.60.us.i172, 65280
  %i.cyw = load i32, ptr %i.cay, align 4, !tbaa !127
  %i.cyx = add i32 %i.cyw, 1
  store i32 %i.cyx, ptr %i.cay, align 4, !tbaa !127
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %bb.xw, %bb.xu, %bb.xs
  %.62760.us.i = phi i32 [ %.60758.us.i, %bb.xs ], [ 8, %bb.xx ], [ 7, %bb.xw ], [ 8, %bb.xu ]
  %.62.us.i173 = phi i32 [ %.60.us.i172, %bb.xs ], [ %i.cyv, %bb.xx ], [ %i.cyu, %bb.xw ], [ %i.cyr, %bb.xu ]
  %i.cyy = shl i32 %.38693.us.i, 1                ; 3 uses
  %i.cyz = shl i32 %.62.us.i173, 1                ; 2 uses
  %i.cza = add i32 %.62760.us.i, -1               ; 2 uses
  %i.czb = icmp ult i32 %i.cyy, 32768
  br i1 %i.czb, label %bb.xs, label %.loopexit924.us.i153.loopexit479, !llvm.loop !390

bb.xz:                                            ; preds = %bb.xo
  %i.czc = icmp ult i32 %i.cxw, %i.cxv            ; 2 uses
  %i.czd = getelementptr inbounds nuw i8, ptr %i.cxu, i64 4
  %i.cze = load i32, ptr %i.czd, align 4, !tbaa !126 ; 2 uses
  %.sink1229.i = select i1 %i.czc, i64 8, i64 16
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cxu, i64 %.sink1229.i
  %storemerge906.us.i = load ptr, ptr %i.czf, align 8, !tbaa !122
  store ptr %storemerge906.us.i, ptr %i.cxt, align 8, !tbaa !122
  br label %bb.ya

bb.ya:                                            ; preds = %bb.yg, %bb.xz
  %.57755.us.i = phi i32 [ %.56754.us.i, %bb.xz ], [ %i.czx, %bb.yg ] ; 2 uses
  %.37692.us.i = phi i32 [ %i.cxv, %bb.xz ], [ %i.czv, %bb.yg ]
  %.57.us.i174 = phi i32 [ %.56.us.i152, %bb.xz ], [ %i.czw, %bb.yg ] ; 4 uses
  %i.czg = icmp eq i32 %.57755.us.i, 0
  br i1 %i.czg, label %bb.yb, label %bb.yg

bb.yb:                                            ; preds = %bb.ya
  %i.czh = load ptr, ptr %i.cax, align 8, !tbaa !111 ; 2 uses
  %i.czi = getelementptr inbounds nuw i8, ptr %i.czh, i64 1 ; 3 uses
  %i.czj = load i8, ptr %i.czi, align 1, !tbaa !48 ; 2 uses
  %i.czk = zext i8 %i.czj to i32                  ; 2 uses
  %i.czl = load i8, ptr %i.czh, align 1, !tbaa !48
  %i.czm = icmp eq i8 %i.czl, -1
  br i1 %i.czm, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  store ptr %i.czi, ptr %i.cax, align 8, !tbaa !111
  %i.czn = shl nuw nsw i32 %i.czk, 8
  %i.czo = add i32 %i.czn, %.57.us.i174
  br label %bb.yg

bb.yd:                                            ; preds = %bb.yb
  %i.czp = icmp ugt i8 %i.czj, -113
  br i1 %i.czp, label %bb.yf, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  store ptr %i.czi, ptr %i.cax, align 8, !tbaa !111
  %i.czq = shl nuw nsw i32 %i.czk, 9
  %i.czr = add i32 %i.czq, %.57.us.i174
  br label %bb.yg

bb.yf:                                            ; preds = %bb.yd
  %i.czs = add i32 %.57.us.i174, 65280
  %i.czt = load i32, ptr %i.cay, align 4, !tbaa !127
  %i.czu = add i32 %i.czt, 1
  store i32 %i.czu, ptr %i.cay, align 4, !tbaa !127
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye, %bb.yc, %bb.ya
  %.59757.us.i = phi i32 [ %.57755.us.i, %bb.ya ], [ 8, %bb.yf ], [ 7, %bb.ye ], [ 8, %bb.yc ]
  %.59.us.i175 = phi i32 [ %.57.us.i174, %bb.ya ], [ %i.czs, %bb.yf ], [ %i.czr, %bb.ye ], [ %i.czo, %bb.yc ]
  %i.czv = shl i32 %.37692.us.i, 1                ; 3 uses
  %i.czw = shl i32 %.59.us.i175, 1                ; 2 uses
  %i.czx = add i32 %.59757.us.i, -1               ; 2 uses
  %i.czy = icmp ult i32 %i.czv, 32768
  br i1 %i.czy, label %bb.ya, label %.loopexit924.us.i153.loopexit, !llvm.loop !391

.loopexit924.us.i153.loopexit:                    ; preds = %bb.yg
  %.not905.us.i = icmp eq i32 %i.cze, 0
  %i.czz = zext i1 %.not905.us.i to i32
  %.21786.us.i = select i1 %i.czc, i32 %i.cze, i32 %i.czz
  br label %.loopexit924.us.i153

.loopexit924.us.i153.loopexit479:                 ; preds = %bb.xy
  %.not904.us.i = icmp eq i32 %i.cyh, 0
  %i.daa = zext i1 %.not904.us.i to i32
  %.22787.us.i = select i1 %i.cyf, i32 %i.daa, i32 %i.cyh
  br label %.loopexit924.us.i153

.loopexit924.us.i153:                             ; preds = %.loopexit924.us.i153.loopexit479, %.loopexit924.us.i153.loopexit, %bb.xq
  %.23788.us.i = phi i32 [ %i.cye, %bb.xq ], [ %.21786.us.i, %.loopexit924.us.i153.loopexit ], [ %.22787.us.i, %.loopexit924.us.i153.loopexit479 ] ; 2 uses
  %.63761.us.i = phi i32 [ %.56754.us.i, %bb.xq ], [ %i.czx, %.loopexit924.us.i153.loopexit ], [ %i.cza, %.loopexit924.us.i153.loopexit479 ]
  %.39694.us.i = phi i32 [ %i.cxw, %bb.xq ], [ %i.czv, %.loopexit924.us.i153.loopexit ], [ %i.cyy, %.loopexit924.us.i153.loopexit479 ]
  %.63.us.i154 = phi i32 [ %i.cya, %bb.xq ], [ %i.czw, %.loopexit924.us.i153.loopexit ], [ %i.cyz, %.loopexit924.us.i153.loopexit479 ]
  %i.dab = xor i32 %.23788.us.i, %i.cxr           ; 2 uses
  %.not907.us.i = icmp eq i32 %.23788.us.i, %i.cxr
  %i.dac = select i1 %.not907.us.i, i32 %i.azx, i32 %i.caz
  %i.dad = getelementptr inbounds nuw [4 x i8], ptr %.1637995.us.i, i64 %i.cbe
  store i32 %i.dac, ptr %i.dad, align 4, !tbaa !3
  %i.dae = load i32, ptr %i.cwy, align 4, !tbaa !3
  %i.daf = or i32 %i.dae, 16384
  store i32 %i.daf, ptr %i.cwy, align 4, !tbaa !3
  %i.dag = shl i32 %i.dab, 28
  %i.dah = or i32 %.5794.us.i, %i.dag
  %i.dai = or disjoint i32 %i.dah, 8192
  %i.daj = load i32, ptr %i.cxa, align 4, !tbaa !3
  %i.dak = or i32 %i.daj, 4096
  store i32 %i.dak, ptr %i.cxa, align 4, !tbaa !3
  %i.dal = load i32, ptr %i.a, align 8, !tbaa !107
  %i.dam = add i32 %i.dal, 2
  %i.dan = zext i32 %i.dam to i64
  %i.dao = getelementptr inbounds nuw [4 x i8], ptr %.1639994.us.i, i64 %i.dan ; 4 uses
  %i.dap = shl i32 %i.dab, 18
  %i.daq = or disjoint i32 %i.dap, 2
  %i.dar = load i32, ptr %i.dao, align 4, !tbaa !3
  %i.das = or i32 %i.dar, %i.daq
  store i32 %i.das, ptr %i.dao, align 4, !tbaa !3
  %i.dat = getelementptr inbounds i8, ptr %i.dao, i64 -4 ; 2 uses
  %i.dau = load i32, ptr %i.dat, align 4, !tbaa !3
  %i.dav = or i32 %i.dau, 4
  store i32 %i.dav, ptr %i.dat, align 4, !tbaa !3
  %i.daw = getelementptr inbounds nuw i8, ptr %i.dao, i64 4 ; 2 uses
  %i.dax = load i32, ptr %i.daw, align 4, !tbaa !3
  %i.day = or i32 %i.dax, 1
  store i32 %i.day, ptr %i.daw, align 4, !tbaa !3
  br label %bb.yh

bb.yh:                                            ; preds = %.loopexit924.us.i153, %.loopexit926.us.i151
  %.6795.us.i = phi i32 [ %i.dai, %.loopexit924.us.i153 ], [ %.5794.us.i, %.loopexit926.us.i151 ]
  %.64762.us.i = phi i32 [ %.63761.us.i, %.loopexit924.us.i153 ], [ %.56754.us.i, %.loopexit926.us.i151 ]
  %.40695.us.i = phi i32 [ %.39694.us.i, %.loopexit924.us.i153 ], [ %.35690.us.i, %.loopexit926.us.i151 ]
  %.64.us.i155 = phi i32 [ %.63.us.i154, %.loopexit924.us.i153 ], [ %.56.us.i152, %.loopexit926.us.i151 ]
  %.8.us.i156 = phi ptr [ %i.cxt, %.loopexit924.us.i153 ], [ %i.cuq, %.loopexit926.us.i151 ]
  %i.daz = or i32 %.6795.us.i, 1073741824
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.wu
  %.7796.us.i = phi i32 [ %i.daz, %bb.yh ], [ %.5794.us.i, %bb.wu ]
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
  %i.dba = add nuw i32 %.0996.us.i, 1             ; 2 uses
  %i.dbb = getelementptr inbounds nuw i8, ptr %.1637995.us.i, i64 4 ; 2 uses
  %i.dbc = getelementptr inbounds nuw i8, ptr %.1639994.us.i, i64 4
  %exitcond.not.i161 = icmp eq i32 %i.dba, %i.b
  br i1 %exitcond.not.i161, label %._crit_edge.us.i162, label %bb.sd, !llvm.loop !392

._crit_edge.us.i162:                              ; preds = %bb.yj
  %i.dbd = add nuw i32 %.06351008.us.i, 4         ; 3 uses
  %i.dbe = getelementptr inbounds nuw [4 x i8], ptr %i.dbb, i64 %i.cbe ; 2 uses
  %i.dbf = getelementptr inbounds nuw i8, ptr %.1639994.us.i, i64 12 ; 2 uses
  %i.dbg = load i32, ptr %i.azy, align 4, !tbaa !108 ; 2 uses
  %i.dbh = and i32 %i.dbg, -4
  %i.dbi = icmp ult i32 %i.dbd, %i.dbh
  br i1 %i.dbi, label %.preheader940.us.i, label %._crit_edge1009.i, !llvm.loop !393

.preheader940.lr.ph.split.i:                      ; preds = %.preheader940.lr.ph.i
  %i.dbj = and i32 %i.azz, -4                     ; 2 uses
  %i.dbk = zext i32 %i.dbj to i64                 ; 2 uses
  %i.dbl = mul nuw nsw i64 %i.dbk, %i.cbe
  %scevgep.i226 = getelementptr i8, ptr %i.azi, i64 %i.dbl
  %i.dbm = shl nuw nsw i64 %i.dbk, 1
  %i.dbn = getelementptr i8, ptr %i.azk, i64 %i.dbm
  %scevgep1095.i = getelementptr i8, ptr %i.dbn, i64 12
  br label %._crit_edge1009.i

._crit_edge1009.i:                                ; preds = %._crit_edge.us.i162, %.preheader940.lr.ph.split.i, %bb.sc
  %.0698.lcssa.i = phi i32 [ %i.azu, %bb.sc ], [ %i.azu, %.preheader940.lr.ph.split.i ], [ %.66764.us.i, %._crit_edge.us.i162 ]
  %.0655.lcssa.i = phi i32 [ %i.azs, %bb.sc ], [ %i.azs, %.preheader940.lr.ph.split.i ], [ %.42697.us.i, %._crit_edge.us.i162 ]
  %.0644.lcssa.i = phi i32 [ %i.azq, %bb.sc ], [ %i.azq, %.preheader940.lr.ph.split.i ], [ %.66.us.i159, %._crit_edge.us.i162 ]
  %.0641.lcssa.i = phi ptr [ %i.azp, %bb.sc ], [ %i.azp, %.preheader940.lr.ph.split.i ], [ %.10.us.i160, %._crit_edge.us.i162 ]
  %.0638.lcssa.i163 = phi ptr [ %i.azn, %bb.sc ], [ %scevgep1095.i, %.preheader940.lr.ph.split.i ], [ %i.dbf, %._crit_edge.us.i162 ]
  %.0636.lcssa.i = phi ptr [ %i.azi, %bb.sc ], [ %scevgep.i226, %.preheader940.lr.ph.split.i ], [ %i.dbe, %._crit_edge.us.i162 ]
  %.0635.lcssa.i164 = phi i32 [ 0, %bb.sc ], [ %i.dbj, %.preheader940.lr.ph.split.i ], [ %i.dbd, %._crit_edge.us.i162 ] ; 4 uses
  %.lcssa988.i = phi i32 [ %i.azz, %bb.sc ], [ %i.azz, %.preheader940.lr.ph.split.i ], [ %i.dbg, %._crit_edge.us.i162 ] ; 2 uses
  store ptr %.0641.lcssa.i, ptr %i.azo, align 8, !tbaa !120
  store i32 %.0644.lcssa.i, ptr %0, align 8, !tbaa !110
  store i32 %.0655.lcssa.i, ptr %i.azr, align 4, !tbaa !121
  store i32 %.0698.lcssa.i, ptr %i.azt, align 8, !tbaa !109
  %i.dbo = icmp ult i32 %.0635.lcssa.i164, %.lcssa988.i
  %i.dbp = icmp ne i32 %i.b, 0
  %or.cond.i165 = and i1 %i.dbp, %i.dbo
  br i1 %or.cond.i165, label %.preheader.i167, label %opj_t1_dec_sigpass_mqc_generic_vsc.exit

.preheader.i167:                                  ; preds = %._crit_edge1009.i, %._crit_edge.i171
  %i.dbq = phi i32 [ %i.dcb, %._crit_edge.i171 ], [ %.lcssa988.i, %._crit_edge1009.i ]
  %.11028.i = phi i32 [ %i.dcc, %._crit_edge.i171 ], [ 0, %._crit_edge1009.i ]
  %.21027.i = phi ptr [ %i.dcd, %._crit_edge.i171 ], [ %.0636.lcssa.i, %._crit_edge1009.i ] ; 2 uses
  %.26401026.i = phi ptr [ %i.dce, %._crit_edge.i171 ], [ %.0638.lcssa.i163, %._crit_edge1009.i ] ; 2 uses
  %.not1030.i = icmp eq i32 %i.dbq, %.0635.lcssa.i164
  br i1 %.not1030.i, label %._crit_edge.i171, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.preheader.i167, %.lr.ph.i168
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i170, %.lr.ph.i168 ], [ 0, %.preheader.i167 ] ; 2 uses
  %i.dbr = trunc nuw i64 %indvars.iv.i169 to i32  ; 2 uses
  %i.dbs = mul i32 %i.b, %i.dbr
  %i.dbt = zext i32 %i.dbs to i64
  %i.dbu = getelementptr inbounds nuw [4 x i8], ptr %.21027.i, i64 %i.dbt
  %i.dbv = load i32, ptr %i.a, align 8, !tbaa !107
  %i.dbw = add i32 %i.dbv, 2
  tail call fastcc void @opj_t1_dec_sigpass_step_mqc(ptr noundef nonnull %0, ptr noundef %.26401026.i, ptr noundef %i.dbu, i32 noundef %i.azx, i32 noundef %i.dbr, i32 noundef %i.dbw, i32 noundef 0)
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %i.dbx = load i32, ptr %i.azy, align 4, !tbaa !108 ; 2 uses
  %i.dby = sub i32 %i.dbx, %.0635.lcssa.i164
  %i.dbz = zext i32 %i.dby to i64
  %i.dca = icmp samesign ult i64 %indvars.iv.next.i170, %i.dbz
  br i1 %i.dca, label %.lr.ph.i168, label %._crit_edge.i171, !llvm.loop !394

._crit_edge.i171:                                 ; preds = %.lr.ph.i168, %.preheader.i167
  %i.dcb = phi i32 [ %.0635.lcssa.i164, %.preheader.i167 ], [ %i.dbx, %.lr.ph.i168 ]
  %i.dcc = add nuw i32 %.11028.i, 1               ; 2 uses
  %i.dcd = getelementptr inbounds nuw i8, ptr %.21027.i, i64 4
  %i.dce = getelementptr inbounds nuw i8, ptr %.26401026.i, i64 4
  %exitcond1097.not.i = icmp eq i32 %i.dcc, %i.b
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
  %i.bj = and i32 %i.ah, 32768
end_hunk_5
begin_hunk_6_@opj_t1_dec_clnpass:bb.a

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
  %i.dec = load i32, ptr %i.deb, align 4, !tbaa !108 ; 7 uses
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
end_hunk_6
begin_hunk_7_@opj_t1_dec_clnpass:bb.a

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
  %i.ffz = and i32 %i.dec, -4                     ; 2 uses
  %i.fga = zext i32 %i.ffz to i64                 ; 2 uses
  %i.fgb = mul nuw nsw i64 %i.fga, %i.dem
  %scevgep.i = getelementptr i8, ptr %i.ddl, i64 %i.fgb
  %i.fgc = shl nuw nsw i64 %i.fga, 1
  %i.fgd = getelementptr i8, ptr %i.ddn, i64 %i.fgc
  %scevgep2250.i = getelementptr i8, ptr %i.fgd, i64 12
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
  %i.fge = icmp ult i32 %.01297.lcssa.i, %.lcssa2073.i
  %i.fgf = icmp ne i32 %i.b, 0
  %or.cond.i = and i1 %i.fgf, %i.fge
  br i1 %or.cond.i, label %.preheader.i200, label %opj_t1_dec_clnpass_generic_vsc.exit

.preheader.i200:                                  ; preds = %._crit_edge2094.i, %._crit_edge.i
  %.112952113.i = phi i32 [ %i.fgr, %._crit_edge.i ], [ 0, %._crit_edge2094.i ]
  %.213002112.i = phi ptr [ %i.fgt, %._crit_edge.i ], [ %.01298.lcssa.i, %._crit_edge2094.i ] ; 2 uses
  %.213032111.i = phi ptr [ %i.fgs, %._crit_edge.i ], [ %.01301.lcssa.i, %._crit_edge2094.i ] ; 4 uses
  %i.fgg = load i32, ptr %i.deb, align 4, !tbaa !108
  %.not2115.i = icmp eq i32 %i.fgg, %.01297.lcssa.i
  br i1 %.not2115.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i200, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i200 ] ; 2 uses
  %i.fgh = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.fgi = mul i32 %i.b, %i.fgh
  %i.fgj = zext i32 %i.fgi to i64
  %i.fgk = getelementptr inbounds nuw [4 x i8], ptr %.213002112.i, i64 %i.fgj
  tail call fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr noundef %.213032111.i, ptr noundef %i.fgk, i32 noundef %i.dea, i32 noundef %i.fgh, i32 noundef 1)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fgl = load i32, ptr %i.deb, align 4, !tbaa !108
  %i.fgm = sub i32 %i.fgl, %.01297.lcssa.i
  %i.fgn = zext i32 %i.fgm to i64
  %i.fgo = icmp samesign ult i64 %indvars.iv.next.i, %i.fgn
  br i1 %i.fgo, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !510

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i200
  %i.fgp = load i32, ptr %.213032111.i, align 4, !tbaa !3
  %i.fgq = and i32 %i.fgp, -1226833921
  store i32 %i.fgq, ptr %.213032111.i, align 4, !tbaa !3
  %i.fgr = add nuw i32 %.112952113.i, 1           ; 2 uses
  %i.fgs = getelementptr inbounds nuw i8, ptr %.213032111.i, i64 4
  %i.fgt = getelementptr inbounds nuw i8, ptr %.213002112.i, i64 4
  %exitcond2252.not.i = icmp eq i32 %i.fgr, %i.b
  br i1 %exitcond2252.not.i, label %opj_t1_dec_clnpass_generic_vsc.exit, label %.preheader.i200, !llvm.loop !511

bb.amw:                                           ; preds = %bb.zp
  br i1 %.not.i203, label %._crit_edge2106.i, label %.preheader1977.lr.ph.i

.preheader1977.lr.ph.i:                           ; preds = %bb.amw
  %.not2126.i = icmp eq i32 %i.b, 0
  %i.fgu = getelementptr i8, ptr %0, i64 200      ; 7 uses
  %i.fgv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.fgw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 108 uses
  %i.fgx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 72 uses
  %i.fgy = sub nsw i32 0, %i.dea                  ; 8 uses
  %i.fgz = zext i32 %i.b to i64                   ; 2 uses
  %i.fha = shl i32 %i.b, 1
  %i.fhb = zext i32 %i.fha to i64                 ; 2 uses
  %i.fhc = mul i32 %i.b, 3
  %i.fhd = zext i32 %i.fhc to i64                 ; 4 uses
  %i.fhe = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fhf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  br i1 %.not2126.i, label %.preheader1977.lr.ph.split.i, label %.preheader1977.us.i

.preheader1977.us.i:                              ; preds = %.preheader1977.lr.ph.i, %._crit_edge.us.i217
  %.013092105.us.i = phi i32 [ %i.hjo, %._crit_edge.us.i217 ], [ 0, %.preheader1977.lr.ph.i ]
  %.013102104.us.i = phi ptr [ %i.hjp, %._crit_edge.us.i217 ], [ %i.ddl, %.preheader1977.lr.ph.i ]
  %.013132103.us.i = phi ptr [ %i.hjq, %._crit_edge.us.i217 ], [ %i.ddq, %.preheader1977.lr.ph.i ]
  %.013162102.us.i = phi ptr [ %.8.us.i215, %._crit_edge.us.i217 ], [ %i.dds, %.preheader1977.lr.ph.i ]
  %.013192101.us.i = phi i32 [ %.142.us.i214, %._crit_edge.us.i217 ], [ %i.ddt, %.preheader1977.lr.ph.i ]
  %.013282100.us.i = phi i32 [ %.881416.us.i, %._crit_edge.us.i217 ], [ %i.ddv, %.preheader1977.lr.ph.i ]
  %.014172099.us.i = phi i32 [ %.1421559.us.i, %._crit_edge.us.i217 ], [ %i.ddx, %.preheader1977.lr.ph.i ]
  br label %bb.amx

bb.amx:                                           ; preds = %.thread1934.us.i, %.preheader1977.us.i
  %.013062093.us.i = phi i32 [ 0, %.preheader1977.us.i ], [ %i.hjl, %.thread1934.us.i ]
  %.113112092.us.i = phi ptr [ %.013102104.us.i, %.preheader1977.us.i ], [ %i.hjm, %.thread1934.us.i ] ; 9 uses
  %.113142091.us.i = phi ptr [ %.013132103.us.i, %.preheader1977.us.i ], [ %i.hjn, %.thread1934.us.i ] ; 23 uses
  %.113172090.us.i = phi ptr [ %.013162102.us.i, %.preheader1977.us.i ], [ %.8.us.i215, %.thread1934.us.i ]
  %.113202089.us.i = phi i32 [ %.013192101.us.i, %.preheader1977.us.i ], [ %.142.us.i214, %.thread1934.us.i ] ; 7 uses
  %.113292088.us.i = phi i32 [ %.013282100.us.i, %.preheader1977.us.i ], [ %.881416.us.i, %.thread1934.us.i ] ; 3 uses
  %.114182087.us.i = phi i32 [ %.014172099.us.i, %.preheader1977.us.i ], [ %.1421559.us.i, %.thread1934.us.i ] ; 7 uses
  %i.fhg = load i32, ptr %.113142091.us.i, align 4, !tbaa !3 ; 9 uses
  %i.fhh = icmp eq i32 %i.fhg, 0
  br i1 %i.fhh, label %bb.asy, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  %i.fhi = and i32 %i.fhg, 2097168
  %.not.us.i204 = icmp eq i32 %i.fhi, 0
  br i1 %.not.us.i204, label %bb.amz, label %bb.aol

bb.amz:                                           ; preds = %bb.amy
  %.val1883.us.i = load ptr, ptr %i.fgu, align 8, !tbaa !88
  %i.fhj = and i32 %i.fhg, 495
  %i.fhk = zext nneg i32 %i.fhj to i64
  %i.fhl = getelementptr inbounds nuw i8, ptr %.val1883.us.i, i64 %i.fhk
  %i.fhm = load i8, ptr %i.fhl, align 1, !tbaa !48
  %i.fhn = zext i8 %i.fhm to i64
  %i.fho = getelementptr inbounds nuw [8 x i8], ptr %i.fgv, i64 %i.fhn ; 4 uses
  %i.fhp = load ptr, ptr %i.fho, align 8, !tbaa !122 ; 6 uses
  %i.fhq = load i32, ptr %i.fhp, align 8, !tbaa !124 ; 6 uses
  %i.fhr = sub i32 %.113292088.us.i, %i.fhq       ; 5 uses
  %i.fhs = lshr i32 %.113202089.us.i, 16
  %i.fht = icmp ult i32 %i.fhs, %i.fhq
  br i1 %i.fht, label %bb.ank, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %i.fhu = shl nuw i32 %i.fhq, 16
  %i.fhv = sub i32 %.113202089.us.i, %i.fhu       ; 2 uses
  %i.fhw = and i32 %i.fhr, 32768
  %i.fhx = icmp eq i32 %i.fhw, 0
  br i1 %i.fhx, label %bb.anc, label %bb.anb

bb.anb:                                           ; preds = %bb.ana
  %i.fhy = getelementptr inbounds nuw i8, ptr %i.fhp, i64 4
  %i.fhz = load i32, ptr %i.fhy, align 4, !tbaa !126
  br label %.loopexit1975.us.i

bb.anc:                                           ; preds = %bb.ana
  %i.fia = icmp ult i32 %i.fhr, %i.fhq            ; 2 uses
  %i.fib = getelementptr inbounds nuw i8, ptr %i.fhp, i64 4
  %i.fic = load i32, ptr %i.fib, align 4, !tbaa !126 ; 2 uses
  %.sink.i293 = select i1 %i.fia, i64 16, i64 8
  %i.fid = getelementptr inbounds nuw i8, ptr %i.fhp, i64 %.sink.i293
  %storemerge.us.i294 = load ptr, ptr %i.fid, align 8, !tbaa !122
  store ptr %storemerge.us.i294, ptr %i.fho, align 8, !tbaa !122
  br label %bb.and

bb.and:                                           ; preds = %bb.anj, %bb.anc
  %.851502.us.i = phi i32 [ %.114182087.us.i, %bb.anc ], [ %i.fiv, %bb.anj ] ; 2 uses
  %.541382.us.i = phi i32 [ %i.fhr, %bb.anc ], [ %i.fit, %bb.anj ]
  %.85.us.i295 = phi i32 [ %i.fhv, %bb.anc ], [ %i.fiu, %bb.anj ] ; 4 uses
  %i.fie = icmp eq i32 %.851502.us.i, 0
  br i1 %i.fie, label %bb.ane, label %bb.anj

bb.ane:                                           ; preds = %bb.and
  %i.fif = load ptr, ptr %i.fgw, align 8, !tbaa !111 ; 2 uses
  %i.fig = getelementptr inbounds nuw i8, ptr %i.fif, i64 1 ; 3 uses
  %i.fih = load i8, ptr %i.fig, align 1, !tbaa !48 ; 2 uses
  %i.fii = zext i8 %i.fih to i32                  ; 2 uses
  %i.fij = load i8, ptr %i.fif, align 1, !tbaa !48
  %i.fik = icmp eq i8 %i.fij, -1
  br i1 %i.fik, label %bb.ang, label %bb.anf

bb.anf:                                           ; preds = %bb.ane
  store ptr %i.fig, ptr %i.fgw, align 8, !tbaa !111
  %i.fil = shl nuw nsw i32 %i.fii, 8
  %i.fim = add i32 %i.fil, %.85.us.i295
  br label %bb.anj

bb.ang:                                           ; preds = %bb.ane
  %i.fin = icmp ugt i8 %i.fih, -113
  br i1 %i.fin, label %bb.ani, label %bb.anh

bb.anh:                                           ; preds = %bb.ang
  store ptr %i.fig, ptr %i.fgw, align 8, !tbaa !111
  %i.fio = shl nuw nsw i32 %i.fii, 9
  %i.fip = add i32 %i.fio, %.85.us.i295
  br label %bb.anj

bb.ani:                                           ; preds = %bb.ang
  %i.fiq = add i32 %.85.us.i295, 65280
  %i.fir = load i32, ptr %i.fgx, align 4, !tbaa !127
  %i.fis = add i32 %i.fir, 1
  store i32 %i.fis, ptr %i.fgx, align 4, !tbaa !127
  br label %bb.anj

bb.anj:                                           ; preds = %bb.ani, %bb.anh, %bb.anf, %bb.and
  %.871504.us.i = phi i32 [ %.851502.us.i, %bb.and ], [ 8, %bb.ani ], [ 7, %bb.anh ], [ 8, %bb.anf ]
  %.87.us.i296 = phi i32 [ %.85.us.i295, %bb.and ], [ %i.fiq, %bb.ani ], [ %i.fip, %bb.anh ], [ %i.fim, %bb.anf ]
  %i.fit = shl i32 %.541382.us.i, 1               ; 3 uses
  %i.fiu = shl i32 %.87.us.i296, 1                ; 2 uses
  %i.fiv = add i32 %.871504.us.i, -1              ; 2 uses
  %i.fiw = icmp ult i32 %i.fit, 32768
  br i1 %i.fiw, label %bb.and, label %.loopexit1975.us.i.loopexit981, !llvm.loop !512

bb.ank:                                           ; preds = %bb.amz
  %i.fix = icmp ult i32 %i.fhr, %i.fhq            ; 2 uses
  %i.fiy = getelementptr inbounds nuw i8, ptr %i.fhp, i64 4
  %i.fiz = load i32, ptr %i.fiy, align 4, !tbaa !126 ; 2 uses
  %.sink2513.i297 = select i1 %i.fix, i64 8, i64 16
  %i.fja = getelementptr inbounds nuw i8, ptr %i.fhp, i64 %.sink2513.i297
  %storemerge1784.us.i = load ptr, ptr %i.fja, align 8, !tbaa !122
  store ptr %storemerge1784.us.i, ptr %i.fho, align 8, !tbaa !122
  br label %bb.anl

bb.anl:                                           ; preds = %bb.anr, %bb.ank
  %.821499.us.i = phi i32 [ %.114182087.us.i, %bb.ank ], [ %i.fjs, %bb.anr ] ; 2 uses
  %.531381.us.i = phi i32 [ %i.fhq, %bb.ank ], [ %i.fjq, %bb.anr ]
  %.82.us.i298 = phi i32 [ %.113202089.us.i, %bb.ank ], [ %i.fjr, %bb.anr ] ; 4 uses
  %i.fjb = icmp eq i32 %.821499.us.i, 0
  br i1 %i.fjb, label %bb.anm, label %bb.anr

end_hunk_7
begin_hunk_8_@opj_t1_dec_clnpass:bb.a

bb.azm:                                           ; preds = %bb.azs, %bb.azl
  %.761493.us.i = phi i32 [ %.721489.us.i, %bb.azl ], [ %i.hhj, %bb.azs ] ; 2 uses
  %.481376.us.i = phi i32 [ %i.hgf, %bb.azl ], [ %i.hhh, %bb.azs ]
  %.76.us.i312 = phi i32 [ %i.hgj, %bb.azl ], [ %i.hhi, %bb.azs ] ; 4 uses
  %i.hgs = icmp eq i32 %.761493.us.i, 0
  br i1 %i.hgs, label %bb.azn, label %bb.azs

bb.azn:                                           ; preds = %bb.azm
  %i.hgt = load ptr, ptr %i.fgw, align 8, !tbaa !111 ; 2 uses
  %i.hgu = getelementptr inbounds nuw i8, ptr %i.hgt, i64 1 ; 3 uses
  %i.hgv = load i8, ptr %i.hgu, align 1, !tbaa !48 ; 2 uses
  %i.hgw = zext i8 %i.hgv to i32                  ; 2 uses
  %i.hgx = load i8, ptr %i.hgt, align 1, !tbaa !48
  %i.hgy = icmp eq i8 %i.hgx, -1
  br i1 %i.hgy, label %bb.azp, label %bb.azo

bb.azo:                                           ; preds = %bb.azn
  store ptr %i.hgu, ptr %i.fgw, align 8, !tbaa !111
  %i.hgz = shl nuw nsw i32 %i.hgw, 8
  %i.hha = add i32 %i.hgz, %.76.us.i312
  br label %bb.azs

bb.azp:                                           ; preds = %bb.azn
  %i.hhb = icmp ugt i8 %i.hgv, -113
  br i1 %i.hhb, label %bb.azr, label %bb.azq

bb.azq:                                           ; preds = %bb.azp
  store ptr %i.hgu, ptr %i.fgw, align 8, !tbaa !111
  %i.hhc = shl nuw nsw i32 %i.hgw, 9
  %i.hhd = add i32 %i.hhc, %.76.us.i312
  br label %bb.azs

bb.azr:                                           ; preds = %bb.azp
  %i.hhe = add i32 %.76.us.i312, 65280
  %i.hhf = load i32, ptr %i.fgx, align 4, !tbaa !127
  %i.hhg = add i32 %i.hhf, 1
  store i32 %i.hhg, ptr %i.fgx, align 4, !tbaa !127
  br label %bb.azs

bb.azs:                                           ; preds = %bb.azr, %bb.azq, %bb.azo, %bb.azm
  %.781495.us.i = phi i32 [ %.761493.us.i, %bb.azm ], [ 8, %bb.azr ], [ 7, %bb.azq ], [ 8, %bb.azo ]
  %.78.us.i313 = phi i32 [ %.76.us.i312, %bb.azm ], [ %i.hhe, %bb.azr ], [ %i.hhd, %bb.azq ], [ %i.hha, %bb.azo ]
  %i.hhh = shl i32 %.481376.us.i, 1               ; 3 uses
  %i.hhi = shl i32 %.78.us.i313, 1                ; 2 uses
  %i.hhj = add i32 %.781495.us.i, -1              ; 2 uses
  %i.hhk = icmp ult i32 %i.hhh, 32768
  br i1 %i.hhk, label %bb.azm, label %.loopexit1941.us.i310.loopexit964, !llvm.loop !546

bb.azt:                                           ; preds = %.loopexit1955.us._crit_edge2267.i
  %i.hhl = icmp ult i32 %i.hgf, %i.hge            ; 2 uses
  %i.hhm = getelementptr inbounds nuw i8, ptr %i.hgd, i64 4
  %i.hhn = load i32, ptr %i.hhm, align 4, !tbaa !126 ; 2 uses
  %.sink2547.i = select i1 %i.hhl, i64 8, i64 16
  %i.hho = getelementptr inbounds nuw i8, ptr %i.hgd, i64 %.sink2547.i
  %storemerge1873.us.i = load ptr, ptr %i.hho, align 8, !tbaa !122
  store ptr %storemerge1873.us.i, ptr %i.hgc, align 8, !tbaa !122
  br label %bb.azu

bb.azu:                                           ; preds = %bb.baa, %bb.azt
  %.731490.us.i = phi i32 [ %.721489.us.i, %bb.azt ], [ %i.hig, %bb.baa ] ; 2 uses
  %.471375.us.i = phi i32 [ %i.hge, %bb.azt ], [ %i.hie, %bb.baa ]
  %.73.us.i314 = phi i32 [ %.72.us.i306, %bb.azt ], [ %i.hif, %bb.baa ] ; 4 uses
  %i.hhp = icmp eq i32 %.731490.us.i, 0
  br i1 %i.hhp, label %bb.azv, label %bb.baa

bb.azv:                                           ; preds = %bb.azu
  %i.hhq = load ptr, ptr %i.fgw, align 8, !tbaa !111 ; 2 uses
  %i.hhr = getelementptr inbounds nuw i8, ptr %i.hhq, i64 1 ; 3 uses
  %i.hhs = load i8, ptr %i.hhr, align 1, !tbaa !48 ; 2 uses
  %i.hht = zext i8 %i.hhs to i32                  ; 2 uses
  %i.hhu = load i8, ptr %i.hhq, align 1, !tbaa !48
  %i.hhv = icmp eq i8 %i.hhu, -1
  br i1 %i.hhv, label %bb.azx, label %bb.azw

bb.azw:                                           ; preds = %bb.azv
  store ptr %i.hhr, ptr %i.fgw, align 8, !tbaa !111
  %i.hhw = shl nuw nsw i32 %i.hht, 8
  %i.hhx = add i32 %i.hhw, %.73.us.i314
  br label %bb.baa

bb.azx:                                           ; preds = %bb.azv
  %i.hhy = icmp ugt i8 %i.hhs, -113
  br i1 %i.hhy, label %bb.azz, label %bb.azy

bb.azy:                                           ; preds = %bb.azx
  store ptr %i.hhr, ptr %i.fgw, align 8, !tbaa !111
  %i.hhz = shl nuw nsw i32 %i.hht, 9
  %i.hia = add i32 %i.hhz, %.73.us.i314
  br label %bb.baa

bb.azz:                                           ; preds = %bb.azx
  %i.hib = add i32 %.73.us.i314, 65280
  %i.hic = load i32, ptr %i.fgx, align 4, !tbaa !127
  %i.hid = add i32 %i.hic, 1
  store i32 %i.hid, ptr %i.fgx, align 4, !tbaa !127
  br label %bb.baa

bb.baa:                                           ; preds = %bb.azz, %bb.azy, %bb.azw, %bb.azu
  %.751492.us.i = phi i32 [ %.731490.us.i, %bb.azu ], [ 8, %bb.azz ], [ 7, %bb.azy ], [ 8, %bb.azw ]
  %.75.us.i315 = phi i32 [ %.73.us.i314, %bb.azu ], [ %i.hib, %bb.azz ], [ %i.hia, %bb.azy ], [ %i.hhx, %bb.azw ]
  %i.hie = shl i32 %.471375.us.i, 1               ; 3 uses
  %i.hif = shl i32 %.75.us.i315, 1                ; 2 uses
  %i.hig = add i32 %.751492.us.i, -1              ; 2 uses
  %i.hih = icmp ult i32 %i.hie, 32768
  br i1 %i.hih, label %bb.azu, label %.loopexit1941.us.i310.loopexit, !llvm.loop !547

.loopexit1941.us.i310.loopexit:                   ; preds = %bb.baa
  %.not1872.us.i = icmp eq i32 %i.hhn, 0
  %i.hii = zext i1 %.not1872.us.i to i32
  %.241584.us.i = select i1 %i.hhl, i32 %i.hhn, i32 %i.hii
  br label %.loopexit1941.us.i310

.loopexit1941.us.i310.loopexit964:                ; preds = %bb.azs
  %.not1871.us.i = icmp eq i32 %i.hgq, 0
  %i.hij = zext i1 %.not1871.us.i to i32
  %.251585.us.i = select i1 %i.hgo, i32 %i.hij, i32 %i.hgq
  br label %.loopexit1941.us.i310

.loopexit1941.us.i310:                            ; preds = %.loopexit1941.us.i310.loopexit964, %.loopexit1941.us.i310.loopexit, %bb.azk
  %.261586.us.i = phi i32 [ %i.hgn, %bb.azk ], [ %.241584.us.i, %.loopexit1941.us.i310.loopexit ], [ %.251585.us.i, %.loopexit1941.us.i310.loopexit964 ] ; 2 uses
  %.791496.us.i = phi i32 [ %.721489.us.i, %bb.azk ], [ %i.hig, %.loopexit1941.us.i310.loopexit ], [ %i.hhj, %.loopexit1941.us.i310.loopexit964 ]
  %.491377.us.i = phi i32 [ %i.hgf, %bb.azk ], [ %i.hie, %.loopexit1941.us.i310.loopexit ], [ %i.hhh, %.loopexit1941.us.i310.loopexit964 ]
  %.79.us.i311 = phi i32 [ %i.hgj, %bb.azk ], [ %i.hif, %.loopexit1941.us.i310.loopexit ], [ %i.hhi, %.loopexit1941.us.i310.loopexit964 ]
  %i.hik = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.hfy
  %i.hil = load i8, ptr %i.hik, align 1, !tbaa !48
  %i.him = zext i8 %i.hil to i32                  ; 2 uses
  %i.hin = xor i32 %.261586.us.i, %i.him          ; 2 uses
  %.not1874.us.i = icmp eq i32 %.261586.us.i, %i.him
  %i.hio = select i1 %.not1874.us.i, i32 %i.dea, i32 %i.fgy
  %i.hip = getelementptr inbounds nuw [4 x i8], ptr %.113112092.us.i, i64 %i.fhd
  store i32 %i.hio, ptr %i.hip, align 4, !tbaa !3
  %i.hiq = load i32, ptr %i.hfj, align 4, !tbaa !3
  %i.hir = or i32 %i.hiq, 16384
  store i32 %i.hir, ptr %i.hfj, align 4, !tbaa !3
  %i.his = shl i32 %i.hin, 28
  %i.hit = or i32 %i.his, %.416151929.us.i
  %i.hiu = load i32, ptr %i.hfl, align 4, !tbaa !3
  %i.hiv = or i32 %i.hiu, 4096
  store i32 %i.hiv, ptr %i.hfl, align 4, !tbaa !3
  br label %.sink.split.i233

.sink.split.i233:                                 ; preds = %.loopexit1941.us.i310, %.loopexit1961.us.i230
  %.sink2564.i = phi i32 [ %i.hin, %.loopexit1941.us.i310 ], [ %i.gft, %.loopexit1961.us.i230 ]
  %.101621.us.ph.in.i = phi i32 [ %i.hit, %.loopexit1941.us.i310 ], [ %i.gfz, %.loopexit1961.us.i230 ]
  %.1411558.us.ph.i = phi i32 [ %.791496.us.i, %.loopexit1941.us.i310 ], [ %.1401557.us.i, %.loopexit1961.us.i230 ]
  %.871415.us.ph.i = phi i32 [ %.491377.us.i, %.loopexit1941.us.i310 ], [ %.861414.us.i, %.loopexit1961.us.i230 ]
  %.141.us.ph.i234 = phi i32 [ %.79.us.i311, %.loopexit1941.us.i310 ], [ %.140.us.i231, %.loopexit1961.us.i230 ]
  %.7.us.ph.i235 = phi ptr [ %i.hgc, %.loopexit1941.us.i310 ], [ %i.gdi, %.loopexit1961.us.i230 ]
  %.101621.us.ph.i = or i32 %.101621.us.ph.in.i, 8192
  %i.hiw = load i32, ptr %i.a, align 8, !tbaa !107
  %i.hix = add i32 %i.hiw, 2
  %i.hiy = zext i32 %i.hix to i64
  %i.hiz = getelementptr inbounds nuw [4 x i8], ptr %.113142091.us.i, i64 %i.hiy ; 4 uses
  %i.hja = shl i32 %.sink2564.i, 18
  %i.hjb = or disjoint i32 %i.hja, 2
  %i.hjc = load i32, ptr %i.hiz, align 4, !tbaa !3
  %i.hjd = or i32 %i.hjc, %i.hjb
  store i32 %i.hjd, ptr %i.hiz, align 4, !tbaa !3
  %i.hje = getelementptr inbounds i8, ptr %i.hiz, i64 -4 ; 2 uses
  %i.hjf = load i32, ptr %i.hje, align 4, !tbaa !3
  %i.hjg = or i32 %i.hjf, 4
  store i32 %i.hjg, ptr %i.hje, align 4, !tbaa !3
  %i.hjh = getelementptr inbounds nuw i8, ptr %i.hiz, i64 4 ; 2 uses
  %i.hji = load i32, ptr %i.hjh, align 4, !tbaa !3
  %i.hjj = or i32 %i.hji, 1
  store i32 %i.hjj, ptr %i.hjh, align 4, !tbaa !3
  br label %bb.bab

bb.bab:                                           ; preds = %.sink.split.i233, %.loopexit1943.us.i323, %.loopexit1955.us.i304, %.loopexit1963.us.i227, %bb.arl
  %.101621.us.i = phi i32 [ %.91620.us.i, %.loopexit1963.us.i227 ], [ %.91620.us.i, %bb.arl ], [ 0, %.loopexit1955.us.i304 ], [ %.41615.ph.us.i, %.loopexit1943.us.i323 ], [ %.101621.us.ph.i, %.sink.split.i233 ]
  %.1411558.us.i = phi i32 [ %.1331550.us.i, %.loopexit1963.us.i227 ], [ %.1261543.us.i, %bb.arl ], [ %.221439.us.i, %.loopexit1955.us.i304 ], [ %.711488.us.i, %.loopexit1943.us.i323 ], [ %.1411558.us.ph.i, %.sink.split.i233 ]
  %.871415.us.i = phi i32 [ %.821410.us.i, %.loopexit1963.us.i227 ], [ %.781406.us.i, %bb.arl ], [ %.131341.us.i, %.loopexit1955.us.i304 ], [ %.441372.us.i, %.loopexit1943.us.i323 ], [ %.871415.us.ph.i, %.sink.split.i233 ]
  %.141.us.i212 = phi i32 [ %.133.us.i228, %.loopexit1963.us.i227 ], [ %.126.us.i209, %bb.arl ], [ %.22.us.i305, %.loopexit1955.us.i304 ], [ %.71.us.i324, %.loopexit1943.us.i323 ], [ %.141.us.ph.i234, %.sink.split.i233 ]
  %.7.us.i213 = phi ptr [ %i.gai, %.loopexit1963.us.i227 ], [ %.6.us.i210, %bb.arl ], [ %i.fhf, %.loopexit1955.us.i304 ], [ %i.hdb, %.loopexit1943.us.i323 ], [ %.7.us.ph.i235, %.sink.split.i233 ]
  %i.hjk = and i32 %.101621.us.i, -1226833921
  store i32 %i.hjk, ptr %.113142091.us.i, align 4, !tbaa !3
  br label %.thread1934.us.i

.thread1934.us.i:                                 ; preds = %bb.bab, %.loopexit1959.us.i300
  %.1421559.us.i = phi i32 [ %.1411558.us.i, %bb.bab ], [ %.81425.us.i, %.loopexit1959.us.i300 ] ; 3 uses
  %.881416.us.i = phi i32 [ %.871415.us.i, %bb.bab ], [ %.51333.us.i, %.loopexit1959.us.i300 ] ; 3 uses
  %.142.us.i214 = phi i32 [ %.141.us.i212, %bb.bab ], [ %.81327.us.i, %.loopexit1959.us.i300 ] ; 3 uses
  %.8.us.i215 = phi ptr [ %.7.us.i213, %bb.bab ], [ %i.fhe, %.loopexit1959.us.i300 ] ; 3 uses
  %i.hjl = add nuw i32 %.013062093.us.i, 1        ; 2 uses
  %i.hjm = getelementptr inbounds nuw i8, ptr %.113112092.us.i, i64 4 ; 2 uses
  %i.hjn = getelementptr inbounds nuw i8, ptr %.113142091.us.i, i64 4
  %exitcond.not.i216 = icmp eq i32 %i.hjl, %i.b
  br i1 %exitcond.not.i216, label %._crit_edge.us.i217, label %bb.amx, !llvm.loop !548

._crit_edge.us.i217:                              ; preds = %.thread1934.us.i
  %i.hjo = add nuw i32 %.013092105.us.i, 4        ; 3 uses
  %i.hjp = getelementptr inbounds nuw [4 x i8], ptr %i.hjm, i64 %i.fhd ; 2 uses
  %i.hjq = getelementptr inbounds nuw i8, ptr %.113142091.us.i, i64 12 ; 2 uses
  %i.hjr = load i32, ptr %i.deb, align 4, !tbaa !108 ; 2 uses
  %i.hjs = and i32 %i.hjr, -4
  %i.hjt = icmp ult i32 %i.hjo, %i.hjs
  br i1 %i.hjt, label %.preheader1977.us.i, label %._crit_edge2106.i, !llvm.loop !549

.preheader1977.lr.ph.split.i:                     ; preds = %.preheader1977.lr.ph.i
  %i.hju = and i32 %i.dec, -4                     ; 2 uses
  %i.hjv = zext i32 %i.hju to i64                 ; 2 uses
  %i.hjw = mul nuw nsw i64 %i.hjv, %i.fhd
  %scevgep.i390 = getelementptr i8, ptr %i.ddl, i64 %i.hjw
  %i.hjx = shl nuw nsw i64 %i.hjv, 1
  %i.hjy = getelementptr i8, ptr %i.ddn, i64 %i.hjx
  %scevgep2262.i = getelementptr i8, ptr %i.hjy, i64 12
  br label %._crit_edge2106.i

._crit_edge2106.i:                                ; preds = %._crit_edge.us.i217, %.preheader1977.lr.ph.split.i, %bb.amw
  %.01417.lcssa.i = phi i32 [ %i.ddx, %bb.amw ], [ %i.ddx, %.preheader1977.lr.ph.split.i ], [ %.1421559.us.i, %._crit_edge.us.i217 ]
  %.01328.lcssa.i = phi i32 [ %i.ddv, %bb.amw ], [ %i.ddv, %.preheader1977.lr.ph.split.i ], [ %.881416.us.i, %._crit_edge.us.i217 ]
  %.01319.lcssa.i = phi i32 [ %i.ddt, %bb.amw ], [ %i.ddt, %.preheader1977.lr.ph.split.i ], [ %.142.us.i214, %._crit_edge.us.i217 ]
  %.01316.lcssa.i218 = phi ptr [ %i.dds, %bb.amw ], [ %i.dds, %.preheader1977.lr.ph.split.i ], [ %.8.us.i215, %._crit_edge.us.i217 ]
  %.01313.lcssa.i = phi ptr [ %i.ddq, %bb.amw ], [ %scevgep2262.i, %.preheader1977.lr.ph.split.i ], [ %i.hjq, %._crit_edge.us.i217 ]
  %.01310.lcssa.i = phi ptr [ %i.ddl, %bb.amw ], [ %scevgep.i390, %.preheader1977.lr.ph.split.i ], [ %i.hjp, %._crit_edge.us.i217 ]
  %.01309.lcssa.i = phi i32 [ 0, %bb.amw ], [ %i.hju, %.preheader1977.lr.ph.split.i ], [ %i.hjo, %._crit_edge.us.i217 ] ; 3 uses
  %.lcssa2085.i = phi i32 [ %i.dec, %bb.amw ], [ %i.dec, %.preheader1977.lr.ph.split.i ], [ %i.hjr, %._crit_edge.us.i217 ]
  store ptr %.01316.lcssa.i218, ptr %i.ddr, align 8, !tbaa !120
  store i32 %.01319.lcssa.i, ptr %0, align 8, !tbaa !110
  store i32 %.01328.lcssa.i, ptr %i.ddu, align 4, !tbaa !121
  store i32 %.01417.lcssa.i, ptr %i.ddw, align 8, !tbaa !109
  %i.hjz = icmp ult i32 %.01309.lcssa.i, %.lcssa2085.i
  %i.hka = icmp ne i32 %i.b, 0
  %or.cond.i219 = and i1 %i.hka, %i.hjz
  br i1 %or.cond.i219, label %.preheader.i221, label %opj_t1_dec_clnpass_generic_vsc.exit

.preheader.i221:                                  ; preds = %._crit_edge2106.i, %._crit_edge.i225
  %.113072125.i = phi i32 [ %i.hkm, %._crit_edge.i225 ], [ 0, %._crit_edge2106.i ]
  %.213122124.i = phi ptr [ %i.hko, %._crit_edge.i225 ], [ %.01310.lcssa.i, %._crit_edge2106.i ] ; 2 uses
  %.213152123.i = phi ptr [ %i.hkn, %._crit_edge.i225 ], [ %.01313.lcssa.i, %._crit_edge2106.i ] ; 4 uses
  %i.hkb = load i32, ptr %i.deb, align 4, !tbaa !108
  %.not2127.i = icmp eq i32 %i.hkb, %.01309.lcssa.i
  br i1 %.not2127.i, label %._crit_edge.i225, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.preheader.i221, %.lr.ph.i222
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i224, %.lr.ph.i222 ], [ 0, %.preheader.i221 ] ; 2 uses
  %i.hkc = trunc nuw i64 %indvars.iv.i223 to i32  ; 2 uses
  %i.hkd = mul i32 %i.b, %i.hkc
  %i.hke = zext i32 %i.hkd to i64
  %i.hkf = getelementptr inbounds nuw [4 x i8], ptr %.213122124.i, i64 %i.hke
  tail call fastcc void @opj_t1_dec_clnpass_step(ptr noundef nonnull %0, ptr noundef %.213152123.i, ptr noundef %i.hkf, i32 noundef %i.dea, i32 noundef %i.hkc, i32 noundef 0)
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %i.hkg = load i32, ptr %i.deb, align 4, !tbaa !108
  %i.hkh = sub i32 %i.hkg, %.01309.lcssa.i
  %i.hki = zext i32 %i.hkh to i64
  %i.hkj = icmp samesign ult i64 %indvars.iv.next.i224, %i.hki
  br i1 %i.hkj, label %.lr.ph.i222, label %._crit_edge.i225, !llvm.loop !550

._crit_edge.i225:                                 ; preds = %.lr.ph.i222, %.preheader.i221
  %i.hkk = load i32, ptr %.213152123.i, align 4, !tbaa !3
  %i.hkl = and i32 %i.hkk, -1226833921
  store i32 %i.hkl, ptr %.213152123.i, align 4, !tbaa !3
  %i.hkm = add nuw i32 %.113072125.i, 1           ; 2 uses
  %i.hkn = getelementptr inbounds nuw i8, ptr %.213152123.i, i64 4
  %i.hko = getelementptr inbounds nuw i8, ptr %.213122124.i, i64 4
  %exitcond2264.not.i = icmp eq i32 %i.hkm, %i.b
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
  %i.hkp = and i32 %2, 32
  %.not.i391 = icmp eq i32 %i.hkp, 0
  br i1 %.not.i391, label %opj_t1_dec_clnpass_check_segsym.exit, label %bb.bac

bb.bac:                                           ; preds = %opj_t1_dec_clnpass_generic_vsc.exit
  %i.hkq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 10 uses
  %i.hkr = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.hkq, ptr %i.hkr, align 8, !tbaa !120
  %i.hks = load ptr, ptr %i.hkq, align 8, !tbaa !122 ; 4 uses
  %i.hkt = load i32, ptr %i.hks, align 8, !tbaa !124 ; 7 uses
  %i.hku = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 17 uses
  %i.hkv = load i32, ptr %i.hku, align 4, !tbaa !121
  %i.hkw = sub i32 %i.hkv, %i.hkt                 ; 6 uses
  store i32 %i.hkw, ptr %i.hku, align 4, !tbaa !121
  %i.hkx = load i32, ptr %0, align 8, !tbaa !110  ; 3 uses
  %i.hky = lshr i32 %i.hkx, 16
  %i.hkz = icmp ult i32 %i.hky, %i.hkt
  br i1 %i.hkz, label %bb.bad, label %bb.bal

bb.bad:                                           ; preds = %bb.bac
  %i.hla = icmp ult i32 %i.hkw, %i.hkt
  %..i = select i1 %i.hla, i64 8, i64 16
  %i.hlb = getelementptr inbounds nuw i8, ptr %i.hks, i64 %..i
  store i32 %i.hkt, ptr %i.hku, align 4, !tbaa !121
  %storemerge295.i = load ptr, ptr %i.hlb, align 8, !tbaa !122 ; 2 uses
  store ptr %storemerge295.i, ptr %i.hkq, align 8, !tbaa !122
  %i.hlc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted308.i = load i32, ptr %i.hlc, align 8, !tbaa !109
  %i.hld = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.hle = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.bae

bb.bae:                                           ; preds = %bb.bak, %bb.bad
  %i.hlf = phi i32 [ %i.hlz, %bb.bak ], [ %i.hkt, %bb.bad ]
  %i.hlg = phi i32 [ %i.hma, %bb.bak ], [ %i.hkx, %bb.bad ] ; 4 uses
  %i.hlh = phi i32 [ %i.hmb, %bb.bak ], [ %.promoted308.i, %bb.bad ] ; 2 uses
  %i.hli = icmp eq i32 %i.hlh, 0
  br i1 %i.hli, label %bb.baf, label %bb.bak

bb.baf:                                           ; preds = %bb.bae
  %i.hlj = load ptr, ptr %i.hld, align 8, !tbaa !111 ; 2 uses
  %i.hlk = getelementptr inbounds nuw i8, ptr %i.hlj, i64 1 ; 3 uses
  %i.hll = load i8, ptr %i.hlk, align 1, !tbaa !48 ; 2 uses
  %i.hlm = zext i8 %i.hll to i32                  ; 2 uses
  %i.hln = load i8, ptr %i.hlj, align 1, !tbaa !48
  %i.hlo = icmp eq i8 %i.hln, -1
  br i1 %i.hlo, label %bb.bag, label %bb.baj

bb.bag:                                           ; preds = %bb.baf
  %i.hlp = icmp ugt i8 %i.hll, -113
  br i1 %i.hlp, label %bb.bah, label %bb.bai

bb.bah:                                           ; preds = %bb.bag
  %i.hlq = add i32 %i.hlg, 65280
  %i.hlr = load i32, ptr %i.hle, align 4, !tbaa !127
  %i.hls = add i32 %i.hlr, 1
  store i32 %i.hls, ptr %i.hle, align 4, !tbaa !127
  br label %bb.bak

bb.bai:                                           ; preds = %bb.bag
  store ptr %i.hlk, ptr %i.hld, align 8, !tbaa !111
  %i.hlt = shl nuw nsw i32 %i.hlm, 9
  %i.hlu = add i32 %i.hlt, %i.hlg
  br label %bb.bak

bb.baj:                                           ; preds = %bb.baf
  store ptr %i.hlk, ptr %i.hld, align 8, !tbaa !111
  %i.hlv = shl nuw nsw i32 %i.hlm, 8
  %i.hlw = add i32 %i.hlv, %i.hlg
  br label %bb.bak

bb.bak:                                           ; preds = %bb.baj, %bb.bai, %bb.bah, %bb.bae
  %i.hlx = phi i32 [ %i.hlw, %bb.baj ], [ %i.hlu, %bb.bai ], [ %i.hlq, %bb.bah ], [ %i.hlg, %bb.bae ]
  %i.hly = phi i32 [ 8, %bb.baj ], [ 7, %bb.bai ], [ 8, %bb.bah ], [ %i.hlh, %bb.bae ]
  %i.hlz = shl i32 %i.hlf, 1                      ; 4 uses
  store i32 %i.hlz, ptr %i.hku, align 4, !tbaa !121
  %i.hma = shl i32 %i.hlx, 1                      ; 3 uses
  store i32 %i.hma, ptr %0, align 8, !tbaa !110
  %i.hmb = add i32 %i.hly, -1                     ; 2 uses
  store i32 %i.hmb, ptr %i.hlc, align 8, !tbaa !109
  %i.hmc = icmp ult i32 %i.hlz, 32768
  br i1 %i.hmc, label %bb.bae, label %.loopexit304.i, !llvm.loop !552

bb.bal:                                           ; preds = %bb.bac
  %i.hmd = shl nuw i32 %i.hkt, 16
  %i.hme = sub i32 %i.hkx, %i.hmd                 ; 3 uses
  store i32 %i.hme, ptr %0, align 8, !tbaa !110
  %i.hmf = and i32 %i.hkw, 32768
  %i.hmg = icmp eq i32 %i.hmf, 0
  br i1 %i.hmg, label %bb.bam, label %.loopexit304.i

bb.bam:                                           ; preds = %bb.bal
  %i.hmh = icmp ult i32 %i.hkw, %i.hkt
  %storemerge.in.v.i = select i1 %i.hmh, i64 16, i64 8
  %storemerge.in.i = getelementptr inbounds nuw i8, ptr %i.hks, i64 %storemerge.in.v.i
  %storemerge.i393 = load ptr, ptr %storemerge.in.i, align 8, !tbaa !122 ; 2 uses
  store ptr %storemerge.i393, ptr %i.hkq, align 8, !tbaa !122
  %i.hmi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i = load i32, ptr %i.hmi, align 8, !tbaa !109
  %i.hmj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.hmk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.ban

bb.ban:                                           ; preds = %bb.bat, %bb.bam
  %i.hml = phi i32 [ %i.hnf, %bb.bat ], [ %i.hkw, %bb.bam ]
  %i.hmm = phi i32 [ %i.hng, %bb.bat ], [ %i.hme, %bb.bam ] ; 4 uses
  %i.hmn = phi i32 [ %i.hnh, %bb.bat ], [ %.promoted.i, %bb.bam ] ; 2 uses
  %i.hmo = icmp eq i32 %i.hmn, 0
  br i1 %i.hmo, label %bb.bao, label %bb.bat

bb.bao:                                           ; preds = %bb.ban
  %i.hmp = load ptr, ptr %i.hmj, align 8, !tbaa !111 ; 2 uses
  %i.hmq = getelementptr inbounds nuw i8, ptr %i.hmp, i64 1 ; 3 uses
  %i.hmr = load i8, ptr %i.hmq, align 1, !tbaa !48 ; 2 uses
  %i.hms = zext i8 %i.hmr to i32                  ; 2 uses
  %i.hmt = load i8, ptr %i.hmp, align 1, !tbaa !48
  %i.hmu = icmp eq i8 %i.hmt, -1
  br i1 %i.hmu, label %bb.bap, label %bb.bas

bb.bap:                                           ; preds = %bb.bao
  %i.hmv = icmp ugt i8 %i.hmr, -113
  br i1 %i.hmv, label %bb.baq, label %bb.bar

bb.baq:                                           ; preds = %bb.bap
  %i.hmw = add i32 %i.hmm, 65280
  %i.hmx = load i32, ptr %i.hmk, align 4, !tbaa !127
  %i.hmy = add i32 %i.hmx, 1
  store i32 %i.hmy, ptr %i.hmk, align 4, !tbaa !127
  br label %bb.bat

bb.bar:                                           ; preds = %bb.bap
  store ptr %i.hmq, ptr %i.hmj, align 8, !tbaa !111
  %i.hmz = shl nuw nsw i32 %i.hms, 9
  %i.hna = add i32 %i.hmz, %i.hmm
  br label %bb.bat

end_hunk_8
