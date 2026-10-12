Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
bb.dc:                                            ; preds = %bb.cv, %bb.cu
  %i.xl = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !127, !range !128, !noundef !129
  %i.xm = trunc nuw i8 %i.xl to i1
  br i1 %i.xm, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.xn = load i32, ptr %i.w, align 4, !tbaa !10
  %i.xo = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.xp = load ptr, ptr %i.g, align 8, !tbaa !157
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.xn, ptr noundef %i.xo, i32 noundef %i.wj, ptr noundef null, ptr noundef %i.xp, ptr noundef %.0846)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.de:                                            ; preds = %bb.dd
  %i.xq = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.xr = load ptr, ptr %i.g, align 8, !tbaa !157
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.wj, ptr noundef %.0846, ptr noundef %i.xq, ptr noundef %i.xr)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.xs = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !127, !range !128, !noundef !129
  %i.xt = trunc nuw i8 %i.xs to i1
  %i.xu = load i32, ptr %i.l, align 4, !tbaa !10  ; 8 uses
  %i.xv = sext i32 %i.xu to i64                   ; 11 uses
  %i.xw = icmp sgt i32 %i.xu, 0                   ; 2 uses
  br i1 %i.xt, label %.preheader864, label %.preheader866

.preheader866:                                    ; preds = %bb.df
  br i1 %i.xw, label %.lr.ph916, label %._crit_edge924

.lr.ph916:                                        ; preds = %.preheader866
  %i.xx = load ptr, ptr %i.g, align 8, !tbaa !157 ; 3 uses
  %i.xy = load ptr, ptr %i.x, align 8, !tbaa !131 ; 3 uses
  %i.xz = icmp eq i32 %i.xu, 1
  br i1 %i.xz, label %.epil.preheader1632, label %.lr.ph916.new

.lr.ph916.new:                                    ; preds = %.lr.ph916
  %unroll_iter1637 = and i64 %i.xv, 2147483646
  br label %bb.dh

.preheader864:                                    ; preds = %bb.df
  br i1 %i.xw, label %.lr.ph918, label %._crit_edge924

.lr.ph918:                                        ; preds = %.preheader864
  %i.ya = load ptr, ptr %i.g, align 8, !tbaa !157 ; 3 uses
  %i.yb = load ptr, ptr %i.x, align 8, !tbaa !131 ; 3 uses
  %i.yc = load ptr, ptr %i.h, align 8, !tbaa !157 ; 3 uses
  %i.yd = icmp eq i32 %i.xu, 1
  br i1 %i.yd, label %.epil.preheader1639, label %.lr.ph918.new

.lr.ph918.new:                                    ; preds = %.lr.ph918
  %unroll_iter1644 = and i64 %i.xv, 2147483646
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph918.new
  %.6404917 = phi i64 [ 0, %.lr.ph918.new ], [ %i.zj, %bb.dg ] ; 4 uses
  %niter1645 = phi i64 [ 0, %.lr.ph918.new ], [ %niter1645.next.1, %bb.dg ]
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %.6404917
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !10
  %i.yg = sext i32 %i.yf to i64                   ; 2 uses
  %i.yh = getelementptr inbounds [12 x i8], ptr %i.ya, i64 %i.yg ; 2 uses
  %i.yi = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yg ; 2 uses
  %i.yj = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.6404917 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !146
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !146
  %i.yo = fsub float %i.yl, %i.yn
  %i.yp = load <2 x float>, ptr %i.yh, align 4, !tbaa !146
  %i.yq = load <2 x float>, ptr %i.yi, align 4, !tbaa !146
  %i.yr = fsub <2 x float> %i.yp, %i.yq
  store <2 x float> %i.yr, ptr %i.yj, align 4, !tbaa !146
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store float %i.yo, ptr %i.ys, align 4, !tbaa !146
  %i.yt = or disjoint i64 %.6404917, 1            ; 2 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !10
  %i.yw = sext i32 %i.yv to i64                   ; 2 uses
  %i.yx = getelementptr inbounds [12 x i8], ptr %i.ya, i64 %i.yw ; 2 uses
  %i.yy = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yw ; 2 uses
  %i.yz = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.yt ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.zb = load float, ptr %i.za, align 4, !tbaa !146
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !146
  %i.ze = fsub float %i.zb, %i.zd
  %i.zf = load <2 x float>, ptr %i.yx, align 4, !tbaa !146
  %i.zg = load <2 x float>, ptr %i.yy, align 4, !tbaa !146
  %i.zh = fsub <2 x float> %i.zf, %i.zg
  store <2 x float> %i.zh, ptr %i.yz, align 4, !tbaa !146
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  store float %i.ze, ptr %i.zi, align 4, !tbaa !146
  %i.zj = add nuw nsw i64 %.6404917, 2            ; 2 uses
  %niter1645.next.1 = add i64 %niter1645, 2       ; 2 uses
  %niter1645.ncmp.1 = icmp eq i64 %niter1645.next.1, %unroll_iter1644
  br i1 %niter1645.ncmp.1, label %.preheader863.preheader.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !49

bb.dh:                                            ; preds = %bb.dh, %.lr.ph916.new
  %.7405915 = phi i64 [ 0, %.lr.ph916.new ], [ %i.aap, %bb.dh ] ; 5 uses
  %niter1638 = phi i64 [ 0, %.lr.ph916.new ], [ %niter1638.next.1, %bb.dh ]
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.7405915
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !10
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [12 x i8], ptr %i.xx, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw [12 x i8], ptr %i.oy, i64 %.7405915 ; 2 uses
  %i.zp = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.7405915 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !146
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !146
  %i.zu = fsub float %i.zr, %i.zt
  %i.zv = load <2 x float>, ptr %i.zn, align 4, !tbaa !146
  %i.zw = load <2 x float>, ptr %i.zo, align 4, !tbaa !146
  %i.zx = fsub <2 x float> %i.zv, %i.zw
  store <2 x float> %i.zx, ptr %i.zp, align 4, !tbaa !146
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  store float %i.zu, ptr %i.zy, align 4, !tbaa !146
  %i.zz = or disjoint i64 %.7405915, 1            ; 3 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !10
  %i.aac = sext i32 %i.aab to i64
  %i.aad = getelementptr inbounds [12 x i8], ptr %i.xx, i64 %i.aac ; 2 uses
  %i.aae = getelementptr inbounds nuw [12 x i8], ptr %i.oy, i64 %i.zz ; 2 uses
  %i.aaf = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.zz ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !146
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !146
  %i.aak = fsub float %i.aah, %i.aaj
  %i.aal = load <2 x float>, ptr %i.aad, align 4, !tbaa !146
  %i.aam = load <2 x float>, ptr %i.aae, align 4, !tbaa !146
  %i.aan = fsub <2 x float> %i.aal, %i.aam
  store <2 x float> %i.aan, ptr %i.aaf, align 4, !tbaa !146
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store float %i.aak, ptr %i.aao, align 4, !tbaa !146
  %i.aap = add nuw nsw i64 %.7405915, 2           ; 2 uses
  %niter1638.next.1 = add i64 %niter1638, 2       ; 2 uses
  %niter1638.ncmp.1 = icmp eq i64 %niter1638.next.1, %unroll_iter1637
  br i1 %niter1638.ncmp.1, label %.preheader863.preheader.loopexit1595.unr-lcssa, label %bb.dh, !llvm.loop !50

.preheader863.preheader.loopexit.unr-lcssa:       ; preds = %bb.dg
  %i.aaq = and i32 %i.xu, 1
  %lcmp.mod1642.not = icmp eq i32 %i.aaq, 0
  br i1 %lcmp.mod1642.not, label %.preheader863.preheader, label %.epil.preheader1639

.epil.preheader1639:                              ; preds = %.preheader863.preheader.loopexit.unr-lcssa, %.lr.ph918
  %.6404917.epil.init = phi i64 [ 0, %.lr.ph918 ], [ %i.zj, %.preheader863.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1643 = trunc i32 %i.xu to i1
  call void @llvm.assume(i1 %lcmp.mod1643)
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %.6404917.epil.init
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !10
  %i.aat = sext i32 %i.aas to i64                 ; 2 uses
  %i.aau = getelementptr inbounds [12 x i8], ptr %i.ya, i64 %i.aat ; 2 uses
  %i.aav = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.aat ; 2 uses
  %i.aaw = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.6404917.epil.init ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !146
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !146
  %i.abb = fsub float %i.aay, %i.aba
  %i.abc = load <2 x float>, ptr %i.aau, align 4, !tbaa !146
  %i.abd = load <2 x float>, ptr %i.aav, align 4, !tbaa !146
  %i.abe = fsub <2 x float> %i.abc, %i.abd
  store <2 x float> %i.abe, ptr %i.aaw, align 4, !tbaa !146
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store float %i.abb, ptr %i.abf, align 4, !tbaa !146
  br label %.preheader863.preheader

.preheader863.preheader.loopexit1595.unr-lcssa:   ; preds = %bb.dh
  %i.abg = and i32 %i.xu, 1
  %lcmp.mod1635.not = icmp eq i32 %i.abg, 0
  br i1 %lcmp.mod1635.not, label %.preheader863.preheader, label %.epil.preheader1632

.epil.preheader1632:                              ; preds = %.preheader863.preheader.loopexit1595.unr-lcssa, %.lr.ph916
  %.7405915.epil.init = phi i64 [ 0, %.lr.ph916 ], [ %i.aap, %.preheader863.preheader.loopexit1595.unr-lcssa ] ; 3 uses
  %lcmp.mod1636 = trunc i32 %i.xu to i1
  call void @llvm.assume(i1 %lcmp.mod1636)
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.7405915.epil.init
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !10
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr inbounds [12 x i8], ptr %i.xx, i64 %i.abj ; 2 uses
  %i.abl = getelementptr inbounds nuw [12 x i8], ptr %i.oy, i64 %.7405915.epil.init ; 2 uses
  %i.abm = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.7405915.epil.init ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !146
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !146
  %i.abr = fsub float %i.abo, %i.abq
  %i.abs = load <2 x float>, ptr %i.abk, align 4, !tbaa !146
  %i.abt = load <2 x float>, ptr %i.abl, align 4, !tbaa !146
  %i.abu = fsub <2 x float> %i.abs, %i.abt
  store <2 x float> %i.abu, ptr %i.abm, align 4, !tbaa !146
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store float %i.abr, ptr %i.abv, align 4, !tbaa !146
  br label %.preheader863.preheader

.preheader863.preheader:                          ; preds = %.epil.preheader1632, %.preheader863.preheader.loopexit1595.unr-lcssa, %.epil.preheader1639, %.preheader863.preheader.loopexit.unr-lcssa
  br label %.preheader863

.preheader863:                                    ; preds = %.preheader863.preheader, %._crit_edge921.2
  %.0392923 = phi i64 [ %i.age, %._crit_edge921.2 ], [ 0, %.preheader863.preheader ] ; 31 uses
  %42 = add nuw i64 %.0392923, 1
  %i.abw = mul i64 %i.wu, %.0392923               ; 2 uses
  %scevgep1357 = getelementptr i8, ptr %i.ww, i64 %i.abw
  %scevgep1358 = getelementptr i8, ptr %i.wy, i64 %i.abw
  %i.abx = add nuw i64 %.0392923, 1
  %smax1359 = call i64 @llvm.smax.i64(i64 %i.abx, i64 %i.xv) ; 2 uses
  %i.aby = xor i64 %.0392923, -1
  %i.abz = add i64 %smax1359, %i.aby
  %i.aca = mul i64 %i.abz, 12                     ; 2 uses
  %scevgep1360 = getelementptr i8, ptr %scevgep1358, i64 %i.aca
  %i.acb = mul i64 %.0392923, 12
  %i.acc = getelementptr i8, ptr %i.ov, i64 %i.acb
  %scevgep1361 = getelementptr i8, ptr %i.acc, i64 12
  %scevgep1362 = getelementptr i8, ptr %scevgep1361, i64 %i.aca ; 2 uses
  %43 = add nuw i64 %.0392923, 1
  %i.acd = mul i64 %i.wu, %.0392923               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.wz, i64 %i.acd
  %scevgep1337 = getelementptr i8, ptr %i.xb, i64 %i.acd
  %i.ace = add nuw i64 %.0392923, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.ace, i64 %i.xv)
  %i.acf = xor i64 %.0392923, -1
  %i.acg = add i64 %smax, %i.acf
  %i.ach = mul i64 %i.acg, 12                     ; 2 uses
  %scevgep1338 = getelementptr i8, ptr %scevgep1337, i64 %i.ach
  %i.aci = mul i64 %.0392923, 12
  %i.acj = getelementptr i8, ptr %i.ov, i64 %i.aci
  %scevgep1339 = getelementptr i8, ptr %i.acj, i64 12
  %scevgep1340 = getelementptr i8, ptr %scevgep1339, i64 %i.ach
  %i.ack = mul nuw nsw i64 %.0392923, 3           ; 3 uses
  %i.acl = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.0392923 ; 6 uses
  %i.acm = mul nsw i64 %i.ack, %i.pb
  %i.acn = load float, ptr %i.acl, align 4, !tbaa !146 ; 4 uses
  %i.aco = getelementptr [4 x i8], ptr %i.pg, i64 %i.acm ; 2 uses
  %i.acp = sub i64 %smax1359, %.0392923           ; 3 uses
  %min.iters.check1396 = icmp ult i64 %i.acp, 8
  br i1 %min.iters.check1396, label %.preheader862.preheader, label %vector.memcheck1387

vector.memcheck1387:                              ; preds = %.preheader863
  %i.acq = mul i64 %i.wu, %.0392923               ; 2 uses
  %i.acr = getelementptr i8, ptr %i.pg, i64 %i.acq
  %scevgep1389 = getelementptr i8, ptr %i.acr, i64 12
  %i.acs = add nuw i64 %.0392923, 1
  %smax1390 = call i64 @llvm.smax.i64(i64 %i.acs, i64 %i.xv)
  %i.act = xor i64 %.0392923, -1
  %i.acu = add i64 %smax1390, %i.act
  %i.acv = mul i64 %i.acu, 12
  %scevgep1391 = getelementptr i8, ptr %scevgep1389, i64 %i.acv
  %scevgep1388 = getelementptr i8, ptr %i.pg, i64 %i.acq
  %bound01392 = icmp ult ptr %scevgep1388, %scevgep1362
  %bound11393 = icmp ult ptr %i.acl, %scevgep1391
  %found.conflict1394 = and i1 %bound01392, %bound11393
  br i1 %found.conflict1394, label %.preheader862.preheader, label %vector.ph1397

vector.ph1397:                                    ; preds = %vector.memcheck1387
  %n.vec1398 = and i64 %i.acp, -8                 ; 3 uses
  %i.acw = add i64 %.0392923, %n.vec1398
  %broadcast.splatinsert1399 = insertelement <8 x float> poison, float %i.acn, i64 0
  %i.acx = shufflevector <8 x float> %broadcast.splatinsert1399, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.body1401, %vector.ph1397
  %index1402 = phi i64 [ 0, %vector.ph1397 ], [ %index.next1412, %vector.body1401 ] ; 2 uses
  %i.acy = add nuw i64 %.0392923, %index1402      ; 2 uses
  %i.acz = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.acy
  %i.ada = mul nuw nsw i64 %i.acy, 12
  %i.adb = getelementptr i8, ptr %i.aco, i64 %i.ada ; 2 uses
  %wide.vec1403 = load <24 x float>, ptr %i.acz, align 4, !tbaa !146, !alias.scope !162
  %wide.vec1407 = load <24 x float>, ptr %i.adb, align 4, !tbaa !146, !alias.scope !163, !noalias !162
  %interleaved.vec1411 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1403, <24 x float> %i.acx, <24 x float> %wide.vec1407)
  store <24 x float> %interleaved.vec1411, ptr %i.adb, align 4, !tbaa !146, !alias.scope !163, !noalias !162
  %index.next1412 = add nuw i64 %index1402, 8     ; 2 uses
  %i.adc = icmp eq i64 %index.next1412, %n.vec1398
  br i1 %i.adc, label %middle.block1413, label %vector.body1401, !llvm.loop !54

middle.block1413:                                 ; preds = %vector.body1401
  %cmp.n1414 = icmp eq i64 %i.acp, %n.vec1398
  br i1 %cmp.n1414, label %._crit_edge921, label %.preheader862.preheader

.preheader862.preheader:                          ; preds = %vector.memcheck1387, %.preheader863, %middle.block1413
  %.8406920.ph = phi i64 [ %.0392923, %vector.memcheck1387 ], [ %.0392923, %.preheader863 ], [ %i.acw, %middle.block1413 ]
  br label %.preheader862

.preheader862:                                    ; preds = %.preheader862.preheader, %.preheader862
  %.8406920 = phi i64 [ %i.ads, %.preheader862 ], [ %.8406920.ph, %.preheader862.preheader ] ; 3 uses
  %i.add = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.8406920 ; 3 uses
  %.idx509 = mul nuw nsw i64 %.8406920, 12
  %i.ade = getelementptr i8, ptr %i.aco, i64 %.idx509 ; 4 uses
  %i.adf = load float, ptr %i.add, align 4, !tbaa !146
  %i.adg = load float, ptr %i.ade, align 4, !tbaa !146
  %i.adh = call float @llvm.fmuladd.f32(float %i.adf, float %i.acn, float %i.adg)
  store float %i.adh, ptr %i.ade, align 4, !tbaa !146
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !146
  %i.adk = getelementptr i8, ptr %i.ade, i64 4    ; 2 uses
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !146
  %i.adm = call float @llvm.fmuladd.f32(float %i.adj, float %i.acn, float %i.adl)
  store float %i.adm, ptr %i.adk, align 4, !tbaa !146
  %i.adn = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !146
  %i.adp = getelementptr i8, ptr %i.ade, i64 8    ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !146
  %i.adr = call float @llvm.fmuladd.f32(float %i.ado, float %i.acn, float %i.adq)
  store float %i.adr, ptr %i.adp, align 4, !tbaa !146
  %i.ads = add nuw nsw i64 %.8406920, 1           ; 2 uses
  %i.adt = icmp slt i64 %i.ads, %i.xv
  br i1 %i.adt, label %.preheader862, label %._crit_edge921, !llvm.loop !55

._crit_edge921:                                   ; preds = %.preheader862, %middle.block1413
  %i.adu = add nuw nsw i64 %i.ack, 1
  %i.adv = mul nsw i64 %i.adu, %i.pb
  %i.adw = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !146 ; 4 uses
  %i.ady = getelementptr [4 x i8], ptr %i.pg, i64 %i.adv ; 2 uses
  %i.adz = call i64 @llvm.smax.i64(i64 %42, i64 %i.xv)
  %i.aea = sub i64 %i.adz, %.0392923              ; 3 uses
  %min.iters.check1367 = icmp ult i64 %i.aea, 8
  br i1 %min.iters.check1367, label %.preheader862.1.preheader, label %vector.memcheck1356

vector.memcheck1356:                              ; preds = %._crit_edge921
  %bound01363 = icmp ult ptr %scevgep1357, %scevgep1362
  %bound11364 = icmp ult ptr %i.acl, %scevgep1360
  %found.conflict1365 = and i1 %bound01363, %bound11364
  br i1 %found.conflict1365, label %.preheader862.1.preheader, label %vector.ph1368

vector.ph1368:                                    ; preds = %vector.memcheck1356
  %n.vec1369 = and i64 %i.aea, -8                 ; 3 uses
  %i.aeb = add i64 %.0392923, %n.vec1369
  %broadcast.splatinsert1370 = insertelement <8 x float> poison, float %i.adx, i64 0
  %i.aec = shufflevector <8 x float> %broadcast.splatinsert1370, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1368
  %index1373 = phi i64 [ 0, %vector.ph1368 ], [ %index.next1383, %vector.body1372 ] ; 2 uses
  %i.aed = add nuw i64 %.0392923, %index1373      ; 2 uses
  %i.aee = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.aed
  %i.aef = mul nuw nsw i64 %i.aed, 12
  %i.aeg = getelementptr i8, ptr %i.ady, i64 %i.aef ; 2 uses
  %wide.vec1374 = load <24 x float>, ptr %i.aee, align 4, !tbaa !146, !alias.scope !164
  %wide.vec1378 = load <24 x float>, ptr %i.aeg, align 4, !tbaa !146, !alias.scope !165, !noalias !164
  %interleaved.vec1382 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1374, <24 x float> %i.aec, <24 x float> %wide.vec1378)
  store <24 x float> %interleaved.vec1382, ptr %i.aeg, align 4, !tbaa !146, !alias.scope !165, !noalias !164
  %index.next1383 = add nuw i64 %index1373, 8     ; 2 uses
  %i.aeh = icmp eq i64 %index.next1383, %n.vec1369
  br i1 %i.aeh, label %middle.block1384, label %vector.body1372, !llvm.loop !59

middle.block1384:                                 ; preds = %vector.body1372
  %cmp.n1385 = icmp eq i64 %i.aea, %n.vec1369
  br i1 %cmp.n1385, label %._crit_edge921.1, label %.preheader862.1.preheader

.preheader862.1.preheader:                        ; preds = %vector.memcheck1356, %._crit_edge921, %middle.block1384
  %.8406920.1.ph = phi i64 [ %.0392923, %vector.memcheck1356 ], [ %.0392923, %._crit_edge921 ], [ %i.aeb, %middle.block1384 ]
  br label %.preheader862.1

.preheader862.1:                                  ; preds = %.preheader862.1.preheader, %.preheader862.1
  %.8406920.1 = phi i64 [ %i.aex, %.preheader862.1 ], [ %.8406920.1.ph, %.preheader862.1.preheader ] ; 3 uses
  %i.aei = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.8406920.1 ; 3 uses
  %.idx509.1 = mul nuw nsw i64 %.8406920.1, 12
  %i.aej = getelementptr i8, ptr %i.ady, i64 %.idx509.1 ; 4 uses
  %i.aek = load float, ptr %i.aei, align 4, !tbaa !146
  %i.ael = load float, ptr %i.aej, align 4, !tbaa !146
  %i.aem = call float @llvm.fmuladd.f32(float %i.aek, float %i.adx, float %i.ael)
  store float %i.aem, ptr %i.aej, align 4, !tbaa !146
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aei, i64 4
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !146
  %i.aep = getelementptr i8, ptr %i.aej, i64 4    ; 2 uses
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !146
  %i.aer = call float @llvm.fmuladd.f32(float %i.aeo, float %i.adx, float %i.aeq)
  store float %i.aer, ptr %i.aep, align 4, !tbaa !146
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !146
  %i.aeu = getelementptr i8, ptr %i.aej, i64 8    ; 2 uses
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !146
  %i.aew = call float @llvm.fmuladd.f32(float %i.aet, float %i.adx, float %i.aev)
  store float %i.aew, ptr %i.aeu, align 4, !tbaa !146
  %i.aex = add nuw nsw i64 %.8406920.1, 1         ; 2 uses
  %i.aey = icmp slt i64 %i.aex, %i.xv
  br i1 %i.aey, label %.preheader862.1, label %._crit_edge921.1, !llvm.loop !60

._crit_edge921.1:                                 ; preds = %.preheader862.1, %middle.block1384
  %i.aez = add nuw nsw i64 %i.ack, 2
  %i.afa = mul nsw i64 %i.aez, %i.pb
  %i.afb = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !146 ; 4 uses
  %i.afd = getelementptr [4 x i8], ptr %i.pg, i64 %i.afa ; 2 uses
  %i.afe = call i64 @llvm.smax.i64(i64 %43, i64 %i.xv)
  %i.aff = sub i64 %i.afe, %.0392923              ; 3 uses
  %min.iters.check1341 = icmp ult i64 %i.aff, 8
  br i1 %min.iters.check1341, label %.preheader862.2.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge921.1
  %bound0 = icmp ult ptr %scevgep, %scevgep1340
  %bound1 = icmp ult ptr %i.acl, %scevgep1338
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader862.2.preheader, label %vector.ph1342

vector.ph1342:                                    ; preds = %vector.memcheck
  %n.vec1343 = and i64 %i.aff, -8                 ; 3 uses
  %i.afg = add i64 %.0392923, %n.vec1343
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.afc, i64 0
  %i.afh = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1342
  %index1345 = phi i64 [ 0, %vector.ph1342 ], [ %index.next1352, %vector.body1344 ] ; 2 uses
  %i.afi = add nuw i64 %.0392923, %index1345      ; 2 uses
  %i.afj = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.afi
  %i.afk = mul nuw nsw i64 %i.afi, 12
  %i.afl = getelementptr i8, ptr %i.afd, i64 %i.afk ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.afj, align 4, !tbaa !146, !alias.scope !166
  %wide.vec1348 = load <24 x float>, ptr %i.afl, align 4, !tbaa !146, !alias.scope !167, !noalias !166
  %interleaved.vec = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec, <24 x float> %i.afh, <24 x float> %wide.vec1348)
  store <24 x float> %interleaved.vec, ptr %i.afl, align 4, !tbaa !146, !alias.scope !167, !noalias !166
  %index.next1352 = add nuw i64 %index1345, 8     ; 2 uses
  %i.afm = icmp eq i64 %index.next1352, %n.vec1343
  br i1 %i.afm, label %middle.block1353, label %vector.body1344, !llvm.loop !64

middle.block1353:                                 ; preds = %vector.body1344
  %cmp.n1354 = icmp eq i64 %i.aff, %n.vec1343
  br i1 %cmp.n1354, label %._crit_edge921.2, label %.preheader862.2.preheader

.preheader862.2.preheader:                        ; preds = %vector.memcheck, %._crit_edge921.1, %middle.block1353
  %.8406920.2.ph = phi i64 [ %.0392923, %vector.memcheck ], [ %.0392923, %._crit_edge921.1 ], [ %i.afg, %middle.block1353 ]
  br label %.preheader862.2

.preheader862.2:                                  ; preds = %.preheader862.2.preheader, %.preheader862.2
  %.8406920.2 = phi i64 [ %i.agc, %.preheader862.2 ], [ %.8406920.2.ph, %.preheader862.2.preheader ] ; 3 uses
  %i.afn = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %.8406920.2 ; 3 uses
  %.idx509.2 = mul nuw nsw i64 %.8406920.2, 12
  %i.afo = getelementptr i8, ptr %i.afd, i64 %.idx509.2 ; 4 uses
  %i.afp = load float, ptr %i.afn, align 4, !tbaa !146
  %i.afq = load float, ptr %i.afo, align 4, !tbaa !146
  %i.afr = call float @llvm.fmuladd.f32(float %i.afp, float %i.afc, float %i.afq)
  store float %i.afr, ptr %i.afo, align 4, !tbaa !146
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afn, i64 4
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !146
  %i.afu = getelementptr i8, ptr %i.afo, i64 4    ; 2 uses
  %i.afv = load float, ptr %i.afu, align 4, !tbaa !146
  %i.afw = call float @llvm.fmuladd.f32(float %i.aft, float %i.afc, float %i.afv)
  store float %i.afw, ptr %i.afu, align 4, !tbaa !146
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !146
  %i.afz = getelementptr i8, ptr %i.afo, i64 8    ; 2 uses
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !146
  %i.agb = call float @llvm.fmuladd.f32(float %i.afy, float %i.afc, float %i.aga)
  store float %i.agb, ptr %i.afz, align 4, !tbaa !146
  %i.agc = add nuw nsw i64 %.8406920.2, 1         ; 2 uses
  %i.agd = icmp slt i64 %i.agc, %i.xv
  br i1 %i.agd, label %.preheader862.2, label %._crit_edge921.2, !llvm.loop !65

._crit_edge921.2:                                 ; preds = %.preheader862.2, %middle.block1353
  %i.age = add nuw nsw i64 %.0392923, 1           ; 2 uses
  %exitcond1022.not = icmp eq i64 %i.age, %i.xv
  br i1 %exitcond1022.not, label %._crit_edge924, label %.preheader863, !llvm.loop !66

._crit_edge924:                                   ; preds = %._crit_edge921.2, %.preheader864, %.preheader866
  %i.agf = load ptr, ptr %i.z, align 8, !tbaa !159
  %i.agg = load ptr, ptr %i.e, align 8, !tbaa !161
  %i.agh = load ptr, ptr %i.g, align 8, !tbaa !157
  %i.agi = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.agf, ptr noundef %i.agg, ptr noundef nonnull %i.k, ptr noundef %i.agh, ptr noundef nonnull %i.i)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.di:                                            ; preds = %._crit_edge924
  br i1 %i.agi, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.agj = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !127, !range !128, !noundef !129
  %i.agk = trunc nuw i8 %i.agj to i1
  %i.agl = icmp samesign ult i32 %.0421, %.0422
  %i.agm = select i1 %i.agk, i1 true, i1 %i.agl
  br i1 %i.agm, label %bb.cu, label %.critedge, !llvm.loop !67

.critedge:                                        ; preds = %bb.di, %bb.dj
  %i.agn = load ptr, ptr %i.e, align 8, !tbaa !161
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.agn)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %.critedge
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %.0377)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk
  %i.ago = load ptr, ptr @stderr, align 8, !tbaa !153
  %i.agp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ago, ptr noundef nonnull @.str.67, i32 noundef %i.xc) #28 ; 0 uses
  %i.agq = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !127, !range !128, !noundef !129
  %i.agr = trunc nuw i8 %i.agq to i1
  %.pre1061 = load i32, ptr %i.l, align 4, !tbaa !10 ; 3 uses
  br i1 %i.agr, label %bb.dm, label %.loopexit861

bb.dm:                                            ; preds = %bb.dl
  %i.ags = sext i32 %.pre1061 to i64
  %i.agt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.50, i32 noundef 435, i64 noundef range(i64 -2147483648, 2147483648) %i.ags, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader: ; preds = %bb.dm
  %i.agu = load i32, ptr %i.l, align 4, !tbaa !10 ; 5 uses
  %i.agv = sext i32 %i.agu to i64                 ; 4 uses
  %i.agw = icmp sgt i32 %i.agu, 0
  br i1 %i.agw, label %.lr.ph926, label %.preheader858

.lr.ph926:                                        ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader
  %i.agx = load ptr, ptr %i.h, align 8, !tbaa !157 ; 5 uses
  %i.agy = load ptr, ptr %i.x, align 8, !tbaa !131 ; 5 uses
  %xtraiter1646 = and i64 %i.agv, 3
  %i.agz = icmp ult i32 %i.agu, 4
  br i1 %i.agz, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader, label %.lr.ph926.new

.lr.ph926.new:                                    ; preds = %.lr.ph926
  %unroll_iter1650 = and i64 %i.agv, 2147483644
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582, %.lr.ph926.new
  %.9407925 = phi i64 [ 0, %.lr.ph926.new ], [ %i.aiz, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582 ] ; 6 uses
  %niter1651 = phi i64 [ 0, %.lr.ph926.new ], [ %niter1651.next.3, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582 ]
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %.9407925
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !10
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.ahc ; 3 uses
  %i.ahe = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %.9407925 ; 3 uses
  %i.ahf = load float, ptr %i.ahd, align 4, !tbaa !146
  store float %i.ahf, ptr %i.ahe, align 4, !tbaa !146
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !146
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4
  store float %i.ahh, ptr %i.ahi, align 4, !tbaa !146
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahk = load float, ptr %i.ahj, align 4, !tbaa !146
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  store float %i.ahk, ptr %i.ahl, align 4, !tbaa !146
  %i.ahm = or disjoint i64 %.9407925, 1           ; 2 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ahm
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !10
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.ahp ; 3 uses
  %i.ahr = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %i.ahm ; 3 uses
  %i.ahs = load float, ptr %i.ahq, align 4, !tbaa !146
  store float %i.ahs, ptr %i.ahr, align 4, !tbaa !146
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !146
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  store float %i.ahu, ptr %i.ahv, align 4, !tbaa !146
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !146
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !146
  %i.ahz = or disjoint i64 %.9407925, 2           ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !10
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.aic ; 3 uses
  %i.aie = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %i.ahz ; 3 uses
  %i.aif = load float, ptr %i.aid, align 4, !tbaa !146
  store float %i.aif, ptr %i.aie, align 4, !tbaa !146
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !146
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  store float %i.aih, ptr %i.aii, align 4, !tbaa !146
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !146
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  store float %i.aik, ptr %i.ail, align 4, !tbaa !146
  %i.aim = or disjoint i64 %.9407925, 3           ; 2 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.aim
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !10
  %i.aip = sext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.aip ; 3 uses
  %i.air = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %i.aim ; 3 uses
  %i.ais = load float, ptr %i.aiq, align 4, !tbaa !146
  store float %i.ais, ptr %i.air, align 4, !tbaa !146
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !146
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.air, i64 4
  store float %i.aiu, ptr %i.aiv, align 4, !tbaa !146
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !146
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  store float %i.aix, ptr %i.aiy, align 4, !tbaa !146
  %i.aiz = add nuw nsw i64 %.9407925, 4           ; 2 uses
  %niter1651.next.3 = add i64 %niter1651, 4       ; 2 uses
  %niter1651.ncmp.3 = icmp eq i64 %niter1651.next.3, %unroll_iter1650
  br i1 %niter1651.ncmp.3, label %.preheader860.preheader.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582, !llvm.loop !68

.loopexit861:                                     ; preds = %bb.dl
  %.pre1063 = zext nneg i32 %.pre1061 to i64
  %i.aja = icmp sgt i32 %.pre1061, 0
  br i1 %i.aja, label %.preheader860.preheader, label %.preheader858

.preheader860.preheader.loopexit.unr-lcssa:       ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582
  %i.ajb = and i32 %i.agu, 3
  %lcmp.mod1648.not = icmp eq i32 %i.ajb, 0
  br i1 %lcmp.mod1648.not, label %.preheader860.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader: ; preds = %.preheader860.preheader.loopexit.unr-lcssa, %.lr.ph926
  %.9407925.epil.init = phi i64 [ 0, %.lr.ph926 ], [ %i.aiz, %.preheader860.preheader.loopexit.unr-lcssa ]
  %i.ajc = and i32 %i.agu, 3
  %lcmp.mod1649 = icmp ne i32 %i.ajc, 0
  call void @llvm.assume(i1 %lcmp.mod1649)
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader
  %.9407925.epil = phi i64 [ %.9407925.epil.init, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader ], [ %i.ajp, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ] ; 3 uses
  %epil.iter1647 = phi i64 [ 0, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil.preheader ], [ %epil.iter1647.next, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ]
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %.9407925.epil
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !10
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds [12 x i8], ptr %i.agx, i64 %i.ajf ; 3 uses
  %i.ajh = getelementptr inbounds nuw [12 x i8], ptr %i.agt, i64 %.9407925.epil ; 3 uses
  %i.aji = load float, ptr %i.ajg, align 4, !tbaa !146
  store float %i.aji, ptr %i.ajh, align 4, !tbaa !146
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 4
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !146
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  store float %i.ajk, ptr %i.ajl, align 4, !tbaa !146
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !146
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store float %i.ajn, ptr %i.ajo, align 4, !tbaa !146
  %i.ajp = add nuw nsw i64 %.9407925.epil, 1
  %epil.iter1647.next = add i64 %epil.iter1647, 1 ; 2 uses
  %epil.iter1647.cmp.not = icmp eq i64 %epil.iter1647.next, %xtraiter1646
  br i1 %epil.iter1647.cmp.not, label %.preheader860.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, !llvm.loop !69

.preheader860.preheader:                          ; preds = %.preheader860.preheader.loopexit.unr-lcssa, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil, %.loopexit861
  %.01261 = phi ptr [ %i.oy, %.loopexit861 ], [ %i.agt, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ], [ %i.agt, %.preheader860.preheader.loopexit.unr-lcssa ]
  %.pre-phi10641259 = phi i64 [ %.pre1063, %.loopexit861 ], [ %i.agv, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.epil ], [ %i.agv, %.preheader860.preheader.loopexit.unr-lcssa ] ; 10 uses
  %.pn1281 = uitofp nneg i32 %i.xc to double
  %.in = fdiv nnan double 1.000000e+00, %.pn1281
  %i.ajq = fptrunc double %.in to float           ; 12 uses
  %i.ajr = shl nsw i64 %.pre-phi10641259, 2
  %scevgep1421 = getelementptr i8, ptr %i.ih, i64 %i.ajr ; 3 uses
  %i.ajs = getelementptr i8, ptr %i.pg, i64 %i.wv
  %i.ajt = getelementptr i8, ptr %i.pg, i64 %i.wv
  %i.aju = getelementptr i8, ptr %i.ajt, i64 12
  %i.ajv = getelementptr i8, ptr %i.pg, i64 %i.ws
  %i.ajw = getelementptr i8, ptr %i.pg, i64 %i.ws
  %i.ajx = getelementptr i8, ptr %i.ajw, i64 12
  %broadcast.splatinsert1508 = insertelement <8 x float> poison, float %i.ajq, i64 0
  %broadcast.splat1509 = shufflevector <8 x float> %broadcast.splatinsert1508, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1472 = insertelement <8 x float> poison, float %i.ajq, i64 0
  %broadcast.splat1473 = shufflevector <8 x float> %broadcast.splatinsert1472, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1434 = insertelement <8 x float> poison, float %i.ajq, i64 0
  %broadcast.splat1435 = shufflevector <8 x float> %broadcast.splatinsert1434, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %.preheader860

.preheader860:                                    ; preds = %.preheader860.preheader, %._crit_edge930.2
  %.1393933 = phi i64 [ %i.aqh, %._crit_edge930.2 ], [ 0, %.preheader860.preheader ] ; 31 uses
  %44 = add nuw i64 %.1393933, 1
  %i.ajy = mul i64 %i.wu, %.1393933               ; 2 uses
  %scevgep1455 = getelementptr i8, ptr %i.ajs, i64 %i.ajy ; 2 uses
  %scevgep1456 = getelementptr i8, ptr %i.aju, i64 %i.ajy
  %i.ajz = add nuw i64 %.1393933, 1
  %smax1457 = call i64 @llvm.smax.i64(i64 %.pre-phi10641259, i64 %i.ajz) ; 2 uses
  %i.aka = xor i64 %.1393933, -1
  %i.akb = add i64 %smax1457, %i.aka              ; 2 uses
  %i.akc = mul i64 %i.akb, 12
  %scevgep1458 = getelementptr i8, ptr %scevgep1456, i64 %i.akc ; 2 uses
  %i.akd = shl i64 %.1393933, 2
  %i.ake = getelementptr i8, ptr %i.ih, i64 %i.akd
  %scevgep1459 = getelementptr i8, ptr %i.ake, i64 4
  %i.akf = shl i64 %i.akb, 2
  %scevgep1460 = getelementptr i8, ptr %scevgep1459, i64 %i.akf ; 2 uses
  %45 = add nuw i64 %.1393933, 1
  %i.akg = mul i64 %i.wu, %.1393933               ; 2 uses
  %scevgep1417 = getelementptr i8, ptr %i.ajv, i64 %i.akg ; 2 uses
  %scevgep1418 = getelementptr i8, ptr %i.ajx, i64 %i.akg
  %i.akh = add nuw i64 %.1393933, 1
  %smax1419 = call i64 @llvm.smax.i64(i64 %.pre-phi10641259, i64 %i.akh)
  %i.aki = xor i64 %.1393933, -1
  %i.akj = add i64 %smax1419, %i.aki              ; 2 uses
  %i.akk = mul i64 %i.akj, 12
  %scevgep1420 = getelementptr i8, ptr %scevgep1418, i64 %i.akk ; 2 uses
  %i.akl = shl i64 %.1393933, 2
  %i.akm = getelementptr i8, ptr %i.ih, i64 %i.akl
  %scevgep1422 = getelementptr i8, ptr %i.akm, i64 4
  %i.akn = shl i64 %i.akj, 2
  %scevgep1423 = getelementptr i8, ptr %scevgep1422, i64 %i.akn
  %i.ako = mul nuw nsw i64 %.1393933, 3           ; 3 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1393933 ; 15 uses
  %i.akq = mul nsw i64 %i.ako, %i.pb
  %i.akr = getelementptr [4 x i8], ptr %i.pg, i64 %i.akq ; 2 uses
  %i.aks = sub i64 %smax1457, %.1393933           ; 3 uses
  %min.iters.check1505 = icmp ult i64 %i.aks, 8
  br i1 %min.iters.check1505, label %scalar.ph1504.preheader, label %vector.memcheck1492

vector.memcheck1492:                              ; preds = %.preheader860
  %i.akt = mul i64 %i.wu, %.1393933               ; 2 uses
  %i.aku = getelementptr i8, ptr %i.pg, i64 %i.akt
  %scevgep1494 = getelementptr i8, ptr %i.aku, i64 12
  %i.akv = add nuw i64 %.1393933, 1
  %smax1495 = call i64 @llvm.smax.i64(i64 %.pre-phi10641259, i64 %i.akv)
  %i.akw = xor i64 %.1393933, -1
  %i.akx = add i64 %smax1495, %i.akw
  %i.aky = mul i64 %i.akx, 12
  %scevgep1496 = getelementptr i8, ptr %scevgep1494, i64 %i.aky ; 2 uses
  %scevgep1493 = getelementptr i8, ptr %i.pg, i64 %i.akt ; 2 uses
  %bound01497 = icmp ult ptr %scevgep1493, %scevgep1421
  %bound11498 = icmp ult ptr %i.ih, %scevgep1496
  %found.conflict1499 = and i1 %bound01497, %bound11498
  %bound01500 = icmp ult ptr %scevgep1493, %scevgep1460
  %bound11501 = icmp ult ptr %i.akp, %scevgep1496
  %found.conflict1502 = and i1 %bound01500, %bound11501
  %conflict.rdx1503 = or i1 %found.conflict1499, %found.conflict1502
  br i1 %conflict.rdx1503, label %scalar.ph1504.preheader, label %vector.ph1506

vector.ph1506:                                    ; preds = %vector.memcheck1492
  %n.vec1507 = and i64 %i.aks, -8                 ; 3 uses
  %i.akz = add i64 %.1393933, %n.vec1507
  %i.ala = load float, ptr %i.akp, align 4, !tbaa !146, !alias.scope !168 ; 3 uses
  %broadcast.splatinsert1517 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splatinsert1519 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splatinsert1521 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splat1522 = shufflevector <8 x float> %broadcast.splatinsert1521, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alb = shufflevector <8 x float> %broadcast.splatinsert1517, <8 x float> %broadcast.splatinsert1519, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1510

vector.body1510:                                  ; preds = %vector.body1510, %vector.ph1506
  %index1511 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1524, %vector.body1510 ] ; 2 uses
  %i.alc = add nuw i64 %.1393933, %index1511      ; 2 uses
  %i.ald = mul nuw nsw i64 %i.alc, 12
  %i.ale = getelementptr i8, ptr %i.akr, i64 %i.ald ; 2 uses
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.alc
  %wide.vec1512 = load <24 x float>, ptr %i.ale, align 4, !tbaa !146, !alias.scope !169, !noalias !170 ; 3 uses
  %strided.vec1513 = shufflevector <24 x float> %wide.vec1512, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1514 = shufflevector <24 x float> %wide.vec1512, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1515 = shufflevector <24 x float> %wide.vec1512, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.alg = fmul <8 x float> %strided.vec1513, %broadcast.splat1509
  %wide.load1516 = load <8 x float>, ptr %i.alf, align 4, !tbaa !146, !alias.scope !171 ; 3 uses
  %i.alh = fmul <8 x float> %i.alg, %wide.load1516
  %i.ali = fmul <8 x float> %strided.vec1514, %broadcast.splat1509
  %i.alj = fmul <8 x float> %i.ali, %wide.load1516
  %i.alk = fmul <8 x float> %strided.vec1515, %broadcast.splat1509
  %i.all = fmul <8 x float> %i.alk, %wide.load1516
  %i.alm = fmul <8 x float> %i.all, %broadcast.splat1522
  %i.aln = shufflevector <8 x float> %i.alh, <8 x float> %i.alj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alo = fmul <16 x float> %i.aln, %i.alb
  %i.alp = shufflevector <8 x float> %i.alm, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1523 = shufflevector <16 x float> %i.alo, <16 x float> %i.alp, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1523, ptr %i.ale, align 4, !tbaa !146, !alias.scope !169, !noalias !170
  %index.next1524 = add nuw i64 %index1511, 8     ; 2 uses
  %i.alq = icmp eq i64 %index.next1524, %n.vec1507
  br i1 %i.alq, label %middle.block1525, label %vector.body1510, !llvm.loop !74

middle.block1525:                                 ; preds = %vector.body1510
  %cmp.n1526 = icmp eq i64 %i.aks, %n.vec1507
  br i1 %cmp.n1526, label %._crit_edge930, label %scalar.ph1504.preheader

scalar.ph1504.preheader:                          ; preds = %vector.memcheck1492, %.preheader860, %middle.block1525
  %.10408928.ph = phi i64 [ %.1393933, %vector.memcheck1492 ], [ %.1393933, %.preheader860 ], [ %i.akz, %middle.block1525 ]
  br label %scalar.ph1504

.preheader858:                                    ; preds = %._crit_edge930.2, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader, %.loopexit861
  %.01260 = phi ptr [ %i.agt, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit582.preheader ], [ %i.oy, %.loopexit861 ], [ %.01261, %._crit_edge930.2 ]
  %i.alr = icmp sgt i32 %i.oz, 0                  ; 8 uses
  br i1 %i.alr, label %.preheader857.preheader, label %._crit_edge939

.preheader857.preheader:                          ; preds = %.preheader858
  %xtraiter1652 = and i64 %i.pb, 3
  %i.als = icmp ult i32 %i.pa, 4
  br i1 %i.als, label %.preheader857.epil.preheader, label %.preheader857.preheader.new

.preheader857.preheader.new:                      ; preds = %.preheader857.preheader
  %unroll_iter1656 = and i64 %i.pb, 2147483644
  br label %.preheader857

scalar.ph1504:                                    ; preds = %scalar.ph1504.preheader, %scalar.ph1504
  %.10408928 = phi i64 [ %i.amp, %scalar.ph1504 ], [ %.10408928.ph, %scalar.ph1504.preheader ] ; 3 uses
  %.idx508 = mul nuw nsw i64 %.10408928, 12
  %i.alt = getelementptr i8, ptr %i.akr, i64 %.idx508 ; 4 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408928 ; 3 uses
  %i.alv = load float, ptr %i.alt, align 4, !tbaa !146
  %i.alw = fmul float %i.alv, %i.ajq
  %i.alx = load float, ptr %i.alu, align 4, !tbaa !146
  %i.aly = fmul float %i.alw, %i.alx
  %i.alz = load float, ptr %i.akp, align 4, !tbaa !146
  %i.ama = fmul float %i.aly, %i.alz
  store float %i.ama, ptr %i.alt, align 4, !tbaa !146
  %i.amb = getelementptr i8, ptr %i.alt, i64 4    ; 2 uses
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !146
  %i.amd = fmul float %i.amc, %i.ajq
  %i.ame = load float, ptr %i.alu, align 4, !tbaa !146
  %i.amf = fmul float %i.amd, %i.ame
  %i.amg = load float, ptr %i.akp, align 4, !tbaa !146
  %i.amh = fmul float %i.amf, %i.amg
  store float %i.amh, ptr %i.amb, align 4, !tbaa !146
  %i.ami = getelementptr i8, ptr %i.alt, i64 8    ; 2 uses
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !146
  %i.amk = fmul float %i.amj, %i.ajq
  %i.aml = load float, ptr %i.alu, align 4, !tbaa !146
  %i.amm = fmul float %i.amk, %i.aml
  %i.amn = load float, ptr %i.akp, align 4, !tbaa !146
  %i.amo = fmul float %i.amm, %i.amn
  store float %i.amo, ptr %i.ami, align 4, !tbaa !146
  %i.amp = add nuw nsw i64 %.10408928, 1          ; 2 uses
  %i.amq = icmp slt i64 %i.amp, %.pre-phi10641259
  br i1 %i.amq, label %scalar.ph1504, label %._crit_edge930, !llvm.loop !75

._crit_edge930:                                   ; preds = %scalar.ph1504, %middle.block1525
  %i.amr = add nuw nsw i64 %i.ako, 1
  %i.ams = mul nsw i64 %i.amr, %i.pb
  %i.amt = getelementptr [4 x i8], ptr %i.pg, i64 %i.ams ; 2 uses
  %i.amu = call i64 @llvm.smax.i64(i64 %.pre-phi10641259, i64 %44)
  %i.amv = sub i64 %i.amu, %.1393933              ; 3 uses
  %min.iters.check1469 = icmp ult i64 %i.amv, 8
  br i1 %min.iters.check1469, label %scalar.ph1468.preheader, label %vector.memcheck1454

vector.memcheck1454:                              ; preds = %._crit_edge930
  %bound01461 = icmp ult ptr %scevgep1455, %scevgep1421
  %bound11462 = icmp ult ptr %i.ih, %scevgep1458
  %found.conflict1463 = and i1 %bound01461, %bound11462
  %bound01464 = icmp ult ptr %scevgep1455, %scevgep1460
  %bound11465 = icmp ult ptr %i.akp, %scevgep1458
  %found.conflict1466 = and i1 %bound01464, %bound11465
  %conflict.rdx1467 = or i1 %found.conflict1463, %found.conflict1466
  br i1 %conflict.rdx1467, label %scalar.ph1468.preheader, label %vector.ph1470

vector.ph1470:                                    ; preds = %vector.memcheck1454
  %n.vec1471 = and i64 %i.amv, -8                 ; 3 uses
  %i.amw = add i64 %.1393933, %n.vec1471
  %i.amx = load float, ptr %i.akp, align 4, !tbaa !146, !alias.scope !172 ; 3 uses
  %broadcast.splatinsert1481 = insertelement <8 x float> poison, float %i.amx, i64 0
  %broadcast.splatinsert1483 = insertelement <8 x float> poison, float %i.amx, i64 0
  %broadcast.splatinsert1485 = insertelement <8 x float> poison, float %i.amx, i64 0
  %broadcast.splat1486 = shufflevector <8 x float> %broadcast.splatinsert1485, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amy = shufflevector <8 x float> %broadcast.splatinsert1481, <8 x float> %broadcast.splatinsert1483, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %vector.ph1470
  %index1475 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1488, %vector.body1474 ] ; 2 uses
  %i.amz = add nuw i64 %.1393933, %index1475      ; 2 uses
  %i.ana = mul nuw nsw i64 %i.amz, 12
  %i.anb = getelementptr i8, ptr %i.amt, i64 %i.ana ; 2 uses
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.amz
  %wide.vec1476 = load <24 x float>, ptr %i.anb, align 4, !tbaa !146, !alias.scope !173, !noalias !174 ; 3 uses
  %strided.vec1477 = shufflevector <24 x float> %wide.vec1476, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1478 = shufflevector <24 x float> %wide.vec1476, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1479 = shufflevector <24 x float> %wide.vec1476, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.and = fmul <8 x float> %strided.vec1477, %broadcast.splat1473
  %wide.load1480 = load <8 x float>, ptr %i.anc, align 4, !tbaa !146, !alias.scope !175 ; 3 uses
  %i.ane = fmul <8 x float> %i.and, %wide.load1480
  %i.anf = fmul <8 x float> %strided.vec1478, %broadcast.splat1473
  %i.ang = fmul <8 x float> %i.anf, %wide.load1480
  %i.anh = fmul <8 x float> %strided.vec1479, %broadcast.splat1473
  %i.ani = fmul <8 x float> %i.anh, %wide.load1480
  %i.anj = fmul <8 x float> %i.ani, %broadcast.splat1486
  %i.ank = shufflevector <8 x float> %i.ane, <8 x float> %i.ang, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anl = fmul <16 x float> %i.ank, %i.amy
  %i.anm = shufflevector <8 x float> %i.anj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1487 = shufflevector <16 x float> %i.anl, <16 x float> %i.anm, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1487, ptr %i.anb, align 4, !tbaa !146, !alias.scope !173, !noalias !174
  %index.next1488 = add nuw i64 %index1475, 8     ; 2 uses
  %i.ann = icmp eq i64 %index.next1488, %n.vec1471
  br i1 %i.ann, label %middle.block1489, label %vector.body1474, !llvm.loop !80

middle.block1489:                                 ; preds = %vector.body1474
  %cmp.n1490 = icmp eq i64 %i.amv, %n.vec1471
  br i1 %cmp.n1490, label %._crit_edge930.1, label %scalar.ph1468.preheader

scalar.ph1468.preheader:                          ; preds = %vector.memcheck1454, %._crit_edge930, %middle.block1489
  %.10408928.1.ph = phi i64 [ %.1393933, %vector.memcheck1454 ], [ %.1393933, %._crit_edge930 ], [ %i.amw, %middle.block1489 ]
  br label %scalar.ph1468

scalar.ph1468:                                    ; preds = %scalar.ph1468.preheader, %scalar.ph1468
  %.10408928.1 = phi i64 [ %i.aok, %scalar.ph1468 ], [ %.10408928.1.ph, %scalar.ph1468.preheader ] ; 3 uses
  %.idx508.1 = mul nuw nsw i64 %.10408928.1, 12
  %i.ano = getelementptr i8, ptr %i.amt, i64 %.idx508.1 ; 4 uses
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408928.1 ; 3 uses
  %i.anq = load float, ptr %i.ano, align 4, !tbaa !146
  %i.anr = fmul float %i.anq, %i.ajq
  %i.ans = load float, ptr %i.anp, align 4, !tbaa !146
  %i.ant = fmul float %i.anr, %i.ans
  %i.anu = load float, ptr %i.akp, align 4, !tbaa !146
  %i.anv = fmul float %i.ant, %i.anu
  store float %i.anv, ptr %i.ano, align 4, !tbaa !146
  %i.anw = getelementptr i8, ptr %i.ano, i64 4    ; 2 uses
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !146
  %i.any = fmul float %i.anx, %i.ajq
  %i.anz = load float, ptr %i.anp, align 4, !tbaa !146
  %i.aoa = fmul float %i.any, %i.anz
  %i.aob = load float, ptr %i.akp, align 4, !tbaa !146
  %i.aoc = fmul float %i.aoa, %i.aob
  store float %i.aoc, ptr %i.anw, align 4, !tbaa !146
  %i.aod = getelementptr i8, ptr %i.ano, i64 8    ; 2 uses
  %i.aoe = load float, ptr %i.aod, align 4, !tbaa !146
  %i.aof = fmul float %i.aoe, %i.ajq
  %i.aog = load float, ptr %i.anp, align 4, !tbaa !146
  %i.aoh = fmul float %i.aof, %i.aog
  %i.aoi = load float, ptr %i.akp, align 4, !tbaa !146
  %i.aoj = fmul float %i.aoh, %i.aoi
  store float %i.aoj, ptr %i.aod, align 4, !tbaa !146
  %i.aok = add nuw nsw i64 %.10408928.1, 1        ; 2 uses
  %i.aol = icmp slt i64 %i.aok, %.pre-phi10641259
  br i1 %i.aol, label %scalar.ph1468, label %._crit_edge930.1, !llvm.loop !81

._crit_edge930.1:                                 ; preds = %scalar.ph1468, %middle.block1489
  %i.aom = add nuw nsw i64 %i.ako, 2
  %i.aon = mul nsw i64 %i.aom, %i.pb
  %i.aoo = getelementptr [4 x i8], ptr %i.pg, i64 %i.aon ; 2 uses
  %i.aop = call i64 @llvm.smax.i64(i64 %.pre-phi10641259, i64 %45)
  %i.aoq = sub i64 %i.aop, %.1393933              ; 3 uses
  %min.iters.check1431 = icmp ult i64 %i.aoq, 8
  br i1 %min.iters.check1431, label %scalar.ph1430.preheader, label %vector.memcheck1416

vector.memcheck1416:                              ; preds = %._crit_edge930.1
  %bound01424 = icmp ult ptr %scevgep1417, %scevgep1421
  %bound11425 = icmp ult ptr %i.ih, %scevgep1420
  %found.conflict1426 = and i1 %bound01424, %bound11425
  %bound01427 = icmp ult ptr %scevgep1417, %scevgep1423
  %bound11428 = icmp ult ptr %i.akp, %scevgep1420
  %found.conflict1429 = and i1 %bound01427, %bound11428
  %conflict.rdx = or i1 %found.conflict1426, %found.conflict1429
  br i1 %conflict.rdx, label %scalar.ph1430.preheader, label %vector.ph1432

vector.ph1432:                                    ; preds = %vector.memcheck1416
  %n.vec1433 = and i64 %i.aoq, -8                 ; 3 uses
  %i.aor = add i64 %.1393933, %n.vec1433
  %i.aos = load float, ptr %i.akp, align 4, !tbaa !146, !alias.scope !176 ; 3 uses
  %broadcast.splatinsert1443 = insertelement <8 x float> poison, float %i.aos, i64 0
  %broadcast.splatinsert1445 = insertelement <8 x float> poison, float %i.aos, i64 0
  %broadcast.splatinsert1447 = insertelement <8 x float> poison, float %i.aos, i64 0
  %broadcast.splat1448 = shufflevector <8 x float> %broadcast.splatinsert1447, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aot = shufflevector <8 x float> %broadcast.splatinsert1443, <8 x float> %broadcast.splatinsert1445, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1436

vector.body1436:                                  ; preds = %vector.body1436, %vector.ph1432
  %index1437 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1450, %vector.body1436 ] ; 2 uses
  %i.aou = add nuw i64 %.1393933, %index1437      ; 2 uses
  %i.aov = mul nuw nsw i64 %i.aou, 12
  %i.aow = getelementptr i8, ptr %i.aoo, i64 %i.aov ; 2 uses
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aou
  %wide.vec1438 = load <24 x float>, ptr %i.aow, align 4, !tbaa !146, !alias.scope !177, !noalias !178 ; 3 uses
  %strided.vec1439 = shufflevector <24 x float> %wide.vec1438, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1440 = shufflevector <24 x float> %wide.vec1438, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1441 = shufflevector <24 x float> %wide.vec1438, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aoy = fmul <8 x float> %strided.vec1439, %broadcast.splat1435
  %wide.load1442 = load <8 x float>, ptr %i.aox, align 4, !tbaa !146, !alias.scope !179 ; 3 uses
  %i.aoz = fmul <8 x float> %i.aoy, %wide.load1442
  %i.apa = fmul <8 x float> %strided.vec1440, %broadcast.splat1435
  %i.apb = fmul <8 x float> %i.apa, %wide.load1442
  %i.apc = fmul <8 x float> %strided.vec1441, %broadcast.splat1435
  %i.apd = fmul <8 x float> %i.apc, %wide.load1442
  %i.ape = fmul <8 x float> %i.apd, %broadcast.splat1448
  %i.apf = shufflevector <8 x float> %i.aoz, <8 x float> %i.apb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apg = fmul <16 x float> %i.apf, %i.aot
  %i.aph = shufflevector <8 x float> %i.ape, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1449 = shufflevector <16 x float> %i.apg, <16 x float> %i.aph, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1449, ptr %i.aow, align 4, !tbaa !146, !alias.scope !177, !noalias !178
  %index.next1450 = add nuw i64 %index1437, 8     ; 2 uses
  %i.api = icmp eq i64 %index.next1450, %n.vec1433
  br i1 %i.api, label %middle.block1451, label %vector.body1436, !llvm.loop !86

middle.block1451:                                 ; preds = %vector.body1436
  %cmp.n1452 = icmp eq i64 %i.aoq, %n.vec1433
  br i1 %cmp.n1452, label %._crit_edge930.2, label %scalar.ph1430.preheader

scalar.ph1430.preheader:                          ; preds = %vector.memcheck1416, %._crit_edge930.1, %middle.block1451
  %.10408928.2.ph = phi i64 [ %.1393933, %vector.memcheck1416 ], [ %.1393933, %._crit_edge930.1 ], [ %i.aor, %middle.block1451 ]
  br label %scalar.ph1430

scalar.ph1430:                                    ; preds = %scalar.ph1430.preheader, %scalar.ph1430
  %.10408928.2 = phi i64 [ %i.aqf, %scalar.ph1430 ], [ %.10408928.2.ph, %scalar.ph1430.preheader ] ; 3 uses
  %.idx508.2 = mul nuw nsw i64 %.10408928.2, 12
  %i.apj = getelementptr i8, ptr %i.aoo, i64 %.idx508.2 ; 4 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408928.2 ; 3 uses
  %i.apl = load float, ptr %i.apj, align 4, !tbaa !146
  %i.apm = fmul float %i.apl, %i.ajq
  %i.apn = load float, ptr %i.apk, align 4, !tbaa !146
  %i.apo = fmul float %i.apm, %i.apn
  %i.app = load float, ptr %i.akp, align 4, !tbaa !146
  %i.apq = fmul float %i.apo, %i.app
  store float %i.apq, ptr %i.apj, align 4, !tbaa !146
  %i.apr = getelementptr i8, ptr %i.apj, i64 4    ; 2 uses
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !146
  %i.apt = fmul float %i.aps, %i.ajq
  %i.apu = load float, ptr %i.apk, align 4, !tbaa !146
  %i.apv = fmul float %i.apt, %i.apu
  %i.apw = load float, ptr %i.akp, align 4, !tbaa !146
  %i.apx = fmul float %i.apv, %i.apw
  store float %i.apx, ptr %i.apr, align 4, !tbaa !146
  %i.apy = getelementptr i8, ptr %i.apj, i64 8    ; 2 uses
  %i.apz = load float, ptr %i.apy, align 4, !tbaa !146
  %i.aqa = fmul float %i.apz, %i.ajq
  %i.aqb = load float, ptr %i.apk, align 4, !tbaa !146
  %i.aqc = fmul float %i.aqa, %i.aqb
  %i.aqd = load float, ptr %i.akp, align 4, !tbaa !146
  %i.aqe = fmul float %i.aqc, %i.aqd
  store float %i.aqe, ptr %i.apy, align 4, !tbaa !146
  %i.aqf = add nuw nsw i64 %.10408928.2, 1        ; 2 uses
  %i.aqg = icmp slt i64 %i.aqf, %.pre-phi10641259
  br i1 %i.aqg, label %scalar.ph1430, label %._crit_edge930.2, !llvm.loop !87

._crit_edge930.2:                                 ; preds = %scalar.ph1430, %middle.block1451
  %i.aqh = add nuw nsw i64 %.1393933, 1           ; 2 uses
  %exitcond1028.not = icmp eq i64 %i.aqh, %.pre-phi10641259
  br i1 %exitcond1028.not, label %.preheader858, label %.preheader860, !llvm.loop !88

.preheader857:                                    ; preds = %bb.dt, %.preheader857.preheader.new
  %.2394935 = phi i64 [ 0, %.preheader857.preheader.new ], [ %i.ary, %bb.dt ] ; 7 uses
  %niter1657 = phi i64 [ 0, %.preheader857.preheader.new ], [ %niter1657.next.3, %bb.dt ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.pg, i64 %.2394935
  %i.aqi = mul nuw nsw i64 %.2394935, %i.pb
  %i.aqj = getelementptr [4 x i8], ptr %i.pg, i64 %i.aqi
  br label %bb.dp

.lr.ph938.unr-lcssa:                              ; preds = %bb.dt
  %i.aqk = and i32 %i.pa, 3
  %lcmp.mod1654.not = icmp eq i32 %i.aqk, 0
  br i1 %lcmp.mod1654.not, label %.lr.ph938, label %.preheader857.epil.preheader

.preheader857.epil.preheader:                     ; preds = %.lr.ph938.unr-lcssa, %.preheader857.preheader
  %.2394935.epil.init = phi i64 [ 0, %.preheader857.preheader ], [ %i.ary, %.lr.ph938.unr-lcssa ]
  %i.aql = and i32 %i.pa, 3
  %lcmp.mod1655 = icmp ne i32 %i.aql, 0
  call void @llvm.assume(i1 %lcmp.mod1655)
  br label %.preheader857.epil

.preheader857.epil:                               ; preds = %bb.do, %.preheader857.epil.preheader
  %.2394935.epil = phi i64 [ %i.aqt, %bb.do ], [ %.2394935.epil.init, %.preheader857.epil.preheader ] ; 4 uses
  %epil.iter1653 = phi i64 [ %epil.iter1653.next, %bb.do ], [ 0, %.preheader857.epil.preheader ]
  %invariant.gep.epil = getelementptr [4 x i8], ptr %i.pg, i64 %.2394935.epil
  %i.aqm = mul nuw nsw i64 %.2394935.epil, %i.pb
  %i.aqn = getelementptr [4 x i8], ptr %i.pg, i64 %i.aqm
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.preheader857.epil
  %.11409934.epil = phi i64 [ %.2394935.epil, %.preheader857.epil ], [ %i.aqr, %bb.dn ] ; 3 uses
  %i.aqo = getelementptr [4 x i8], ptr %i.aqn, i64 %.11409934.epil
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !146
  %i.aqq = mul nuw nsw i64 %.11409934.epil, %i.pb
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep.epil, i64 %i.aqq
  store float %i.aqp, ptr %gep.epil, align 4, !tbaa !146
  %i.aqr = add nuw nsw i64 %.11409934.epil, 1     ; 2 uses
  %i.aqs = icmp slt i64 %i.aqr, %i.pb
  br i1 %i.aqs, label %bb.dn, label %bb.do, !llvm.loop !89

bb.do:                                            ; preds = %bb.dn
  %i.aqt = add nuw nsw i64 %.2394935.epil, 1
  %epil.iter1653.next = add i64 %epil.iter1653, 1 ; 2 uses
  %epil.iter1653.cmp.not = icmp eq i64 %epil.iter1653.next, %xtraiter1652
  br i1 %epil.iter1653.cmp.not, label %.lr.ph938, label %.preheader857.epil, !llvm.loop !90

.lr.ph938:                                        ; preds = %bb.do, %.lr.ph938.unr-lcssa
  %.12410507 = add nuw nsw i64 %i.pb, 1           ; 9 uses
  %xtraiter1659 = and i64 %i.pb, 7
  %i.aqu = icmp ult i32 %i.pa, 8
  br i1 %i.aqu, label %.epil.preheader1658, label %.lr.ph938.new

.lr.ph938.new:                                    ; preds = %.lr.ph938
  %unroll_iter1664 = and i64 %i.pb, 2147483640
  br label %bb.du

bb.dp:                                            ; preds = %.preheader857, %bb.dp
  %.11409934 = phi i64 [ %.2394935, %.preheader857 ], [ %i.aqy, %bb.dp ] ; 3 uses
  %i.aqv = getelementptr [4 x i8], ptr %i.aqj, i64 %.11409934
  %i.aqw = load float, ptr %i.aqv, align 4, !tbaa !146
  %i.aqx = mul nuw nsw i64 %.11409934, %i.pb
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aqx
  store float %i.aqw, ptr %gep, align 4, !tbaa !146
  %i.aqy = add nuw nsw i64 %.11409934, 1          ; 2 uses
  %i.aqz = icmp slt i64 %i.aqy, %i.pb
  br i1 %i.aqz, label %bb.dp, label %.preheader857.1, !llvm.loop !89

.preheader857.1:                                  ; preds = %bb.dp
  %i.ara = or disjoint i64 %.2394935, 1           ; 3 uses
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.pg, i64 %i.ara
  %i.arb = mul nuw nsw i64 %i.ara, %i.pb
  %i.arc = getelementptr [4 x i8], ptr %i.pg, i64 %i.arb
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.preheader857.1
  %.11409934.1 = phi i64 [ %i.ara, %.preheader857.1 ], [ %i.arg, %bb.dq ] ; 3 uses
  %i.ard = getelementptr [4 x i8], ptr %i.arc, i64 %.11409934.1
  %i.are = load float, ptr %i.ard, align 4, !tbaa !146
  %i.arf = mul nuw nsw i64 %.11409934.1, %i.pb
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.arf
  store float %i.are, ptr %gep.1, align 4, !tbaa !146
  %i.arg = add nuw nsw i64 %.11409934.1, 1        ; 2 uses
  %i.arh = icmp slt i64 %i.arg, %i.pb
  br i1 %i.arh, label %bb.dq, label %.preheader857.2, !llvm.loop !89

.preheader857.2:                                  ; preds = %bb.dq
  %i.ari = or disjoint i64 %.2394935, 2           ; 3 uses
  %invariant.gep.2 = getelementptr [4 x i8], ptr %i.pg, i64 %i.ari
  %i.arj = mul nuw nsw i64 %i.ari, %i.pb
  %i.ark = getelementptr [4 x i8], ptr %i.pg, i64 %i.arj
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %.preheader857.2
  %.11409934.2 = phi i64 [ %i.ari, %.preheader857.2 ], [ %i.aro, %bb.dr ] ; 3 uses
  %i.arl = getelementptr [4 x i8], ptr %i.ark, i64 %.11409934.2
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !146
  %i.arn = mul nuw nsw i64 %.11409934.2, %i.pb
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.arn
  store float %i.arm, ptr %gep.2, align 4, !tbaa !146
  %i.aro = add nuw nsw i64 %.11409934.2, 1        ; 2 uses
  %i.arp = icmp slt i64 %i.aro, %i.pb
  br i1 %i.arp, label %bb.dr, label %.preheader857.3, !llvm.loop !89

end_hunk_0
