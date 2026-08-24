Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a
  %i.xo = trunc nuw i8 %i.xn to i1
  br i1 %i.xo, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.xp = load i32, ptr %i.w, align 4, !tbaa !9
  %i.xq = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.xr = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.xp, ptr noundef %i.xq, i32 noundef %i.wl, ptr noundef null, ptr noundef %i.xr, ptr noundef %.0838)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.de:                                            ; preds = %bb.dd
  %i.xs = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.xt = load ptr, ptr %i.g, align 8, !tbaa !74
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.wl, ptr noundef %.0838, ptr noundef %i.xs, ptr noundef %i.xt)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.df:                                            ; preds = %bb.de, %bb.dc
  %i.xu = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.xv = trunc nuw i8 %i.xu to i1
  %i.xw = load i32, ptr %i.l, align 4, !tbaa !9   ; 8 uses
  %i.xx = sext i32 %i.xw to i64                   ; 11 uses
  %i.xy = icmp sgt i32 %i.xw, 0                   ; 2 uses
  br i1 %i.xv, label %.preheader854, label %.preheader856

.preheader856:                                    ; preds = %bb.df
  br i1 %i.xy, label %.lr.ph906, label %._crit_edge914

.lr.ph906:                                        ; preds = %.preheader856
  %i.xz = load ptr, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %i.ya = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.yb = icmp eq i32 %i.xw, 1
  br i1 %i.yb, label %.epil.preheader1632, label %.lr.ph906.new

.lr.ph906.new:                                    ; preds = %.lr.ph906
  %unroll_iter1637 = and i64 %i.xx, 2147483646
  br label %bb.dh

.preheader854:                                    ; preds = %bb.df
  br i1 %i.xy, label %.lr.ph908, label %._crit_edge914

.lr.ph908:                                        ; preds = %.preheader854
  %i.yc = load ptr, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %i.yd = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.ye = load ptr, ptr %i.h, align 8, !tbaa !74  ; 3 uses
  %i.yf = icmp eq i32 %i.xw, 1
  br i1 %i.yf, label %.epil.preheader1639, label %.lr.ph908.new

.lr.ph908.new:                                    ; preds = %.lr.ph908
  %unroll_iter1644 = and i64 %i.xx, 2147483646
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph908.new
  %.6404907 = phi i64 [ 0, %.lr.ph908.new ], [ %i.zl, %bb.dg ] ; 4 uses
  %niter1645 = phi i64 [ 0, %.lr.ph908.new ], [ %niter1645.next.1, %bb.dg ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.6404907
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !9
  %i.yi = sext i32 %i.yh to i64                   ; 2 uses
  %i.yj = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yi ; 2 uses
  %i.yk = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.yi ; 2 uses
  %i.yl = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.6404907 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !52
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !52
  %i.yq = fsub float %i.yn, %i.yp
  %i.yr = load <2 x float>, ptr %i.yj, align 4, !tbaa !52
  %i.ys = load <2 x float>, ptr %i.yk, align 4, !tbaa !52
  %i.yt = fsub <2 x float> %i.yr, %i.ys
  store <2 x float> %i.yt, ptr %i.yl, align 4, !tbaa !52
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  store float %i.yq, ptr %i.yu, align 4, !tbaa !52
  %i.yv = or disjoint i64 %.6404907, 1            ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !9
  %i.yy = sext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.yy ; 2 uses
  %i.za = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.yy ; 2 uses
  %i.zb = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.yv ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !52
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !52
  %i.zg = fsub float %i.zd, %i.zf
  %i.zh = load <2 x float>, ptr %i.yz, align 4, !tbaa !52
  %i.zi = load <2 x float>, ptr %i.za, align 4, !tbaa !52
  %i.zj = fsub <2 x float> %i.zh, %i.zi
  store <2 x float> %i.zj, ptr %i.zb, align 4, !tbaa !52
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store float %i.zg, ptr %i.zk, align 4, !tbaa !52
  %i.zl = add nuw nsw i64 %.6404907, 2            ; 2 uses
  %niter1645.next.1 = add i64 %niter1645, 2       ; 2 uses
  %niter1645.ncmp.1 = icmp eq i64 %niter1645.next.1, %unroll_iter1644
  br i1 %niter1645.ncmp.1, label %.preheader853.preheader.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !83

bb.dh:                                            ; preds = %bb.dh, %.lr.ph906.new
  %.7405905 = phi i64 [ 0, %.lr.ph906.new ], [ %i.aar, %bb.dh ] ; 5 uses
  %niter1638 = phi i64 [ 0, %.lr.ph906.new ], [ %niter1638.next.1, %bb.dh ]
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.7405905
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !9
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.zo ; 2 uses
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %.7405905 ; 2 uses
  %i.zr = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.7405905 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !52
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !52
  %i.zw = fsub float %i.zt, %i.zv
  %i.zx = load <2 x float>, ptr %i.zp, align 4, !tbaa !52
  %i.zy = load <2 x float>, ptr %i.zq, align 4, !tbaa !52
  %i.zz = fsub <2 x float> %i.zx, %i.zy
  store <2 x float> %i.zz, ptr %i.zr, align 4, !tbaa !52
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  store float %i.zw, ptr %i.aaa, align 4, !tbaa !52
  %i.aab = or disjoint i64 %.7405905, 1           ; 3 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !9
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.aae ; 2 uses
  %i.aag = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %i.aab ; 2 uses
  %i.aah = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.aab ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !52
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !52
  %i.aam = fsub float %i.aaj, %i.aal
  %i.aan = load <2 x float>, ptr %i.aaf, align 4, !tbaa !52
  %i.aao = load <2 x float>, ptr %i.aag, align 4, !tbaa !52
  %i.aap = fsub <2 x float> %i.aan, %i.aao
  store <2 x float> %i.aap, ptr %i.aah, align 4, !tbaa !52
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  store float %i.aam, ptr %i.aaq, align 4, !tbaa !52
  %i.aar = add nuw nsw i64 %.7405905, 2           ; 2 uses
  %niter1638.next.1 = add i64 %niter1638, 2       ; 2 uses
  %niter1638.ncmp.1 = icmp eq i64 %niter1638.next.1, %unroll_iter1637
  br i1 %niter1638.ncmp.1, label %.preheader853.preheader.loopexit1595.unr-lcssa, label %bb.dh, !llvm.loop !84

.preheader853.preheader.loopexit.unr-lcssa:       ; preds = %bb.dg
  %i.aas = and i32 %i.xw, 1
  %lcmp.mod1642.not = icmp eq i32 %i.aas, 0
  br i1 %lcmp.mod1642.not, label %.preheader853.preheader, label %.epil.preheader1639

.epil.preheader1639:                              ; preds = %.preheader853.preheader.loopexit.unr-lcssa, %.lr.ph908
  %.6404907.epil.init = phi i64 [ 0, %.lr.ph908 ], [ %i.zl, %.preheader853.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1643 = trunc i32 %i.xw to i1
  call void @llvm.assume(i1 %lcmp.mod1643)
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.6404907.epil.init
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !9
  %i.aav = sext i32 %i.aau to i64                 ; 2 uses
  %i.aaw = getelementptr inbounds [12 x i8], ptr %i.yc, i64 %i.aav ; 2 uses
  %i.aax = getelementptr inbounds [12 x i8], ptr %i.ye, i64 %i.aav ; 2 uses
  %i.aay = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.6404907.epil.init ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !52
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !52
  %i.abd = fsub float %i.aba, %i.abc
  %i.abe = load <2 x float>, ptr %i.aaw, align 4, !tbaa !52
  %i.abf = load <2 x float>, ptr %i.aax, align 4, !tbaa !52
  %i.abg = fsub <2 x float> %i.abe, %i.abf
  store <2 x float> %i.abg, ptr %i.aay, align 4, !tbaa !52
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  store float %i.abd, ptr %i.abh, align 4, !tbaa !52
  br label %.preheader853.preheader

.preheader853.preheader.loopexit1595.unr-lcssa:   ; preds = %bb.dh
  %i.abi = and i32 %i.xw, 1
  %lcmp.mod1635.not = icmp eq i32 %i.abi, 0
  br i1 %lcmp.mod1635.not, label %.preheader853.preheader, label %.epil.preheader1632

.epil.preheader1632:                              ; preds = %.preheader853.preheader.loopexit1595.unr-lcssa, %.lr.ph906
  %.7405905.epil.init = phi i64 [ 0, %.lr.ph906 ], [ %i.aar, %.preheader853.preheader.loopexit1595.unr-lcssa ] ; 3 uses
  %lcmp.mod1636 = trunc i32 %i.xw to i1
  call void @llvm.assume(i1 %lcmp.mod1636)
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.7405905.epil.init
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !9
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [12 x i8], ptr %i.xz, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw [12 x i8], ptr %i.oz, i64 %.7405905.epil.init ; 2 uses
  %i.abo = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.7405905.epil.init ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !52
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !52
  %i.abt = fsub float %i.abq, %i.abs
  %i.abu = load <2 x float>, ptr %i.abm, align 4, !tbaa !52
  %i.abv = load <2 x float>, ptr %i.abn, align 4, !tbaa !52
  %i.abw = fsub <2 x float> %i.abu, %i.abv
  store <2 x float> %i.abw, ptr %i.abo, align 4, !tbaa !52
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  store float %i.abt, ptr %i.abx, align 4, !tbaa !52
  br label %.preheader853.preheader

.preheader853.preheader:                          ; preds = %.epil.preheader1632, %.preheader853.preheader.loopexit1595.unr-lcssa, %.epil.preheader1639, %.preheader853.preheader.loopexit.unr-lcssa
  br label %.preheader853

.preheader853:                                    ; preds = %.preheader853.preheader, %._crit_edge911.2
  %.0392913 = phi i64 [ %i.agf, %._crit_edge911.2 ], [ 0, %.preheader853.preheader ] ; 30 uses
  %i.aby = add nuw i64 %.0392913, 1
  %smax1357 = call i64 @llvm.smax.i64(i64 %i.aby, i64 %i.xx)
  %i.abz = sub nsw i64 %smax1357, %.0392913       ; 6 uses
  %i.aca = mul i64 %i.ww, %.0392913               ; 2 uses
  %scevgep1348 = getelementptr i8, ptr %i.wy, i64 %i.aca
  %scevgep1349 = getelementptr i8, ptr %i.xa, i64 %i.aca
  %i.acb = add nuw i64 %.0392913, 1
  %smax1350 = call i64 @llvm.smax.i64(i64 %i.acb, i64 %i.xx)
  %i.acc = xor i64 %.0392913, -1
  %i.acd = add nsw i64 %smax1350, %i.acc
  %i.ace = mul i64 %i.acd, 12                     ; 2 uses
  %scevgep1351 = getelementptr i8, ptr %scevgep1349, i64 %i.ace
  %i.acf = mul i64 %.0392913, 12
  %i.acg = getelementptr i8, ptr %i.ow, i64 %i.acf
  %scevgep1352 = getelementptr i8, ptr %i.acg, i64 12
  %scevgep1353 = getelementptr i8, ptr %scevgep1352, i64 %i.ace ; 2 uses
  %i.ach = add nuw i64 %.0392913, 1
  %smax1331 = call i64 @llvm.smax.i64(i64 %i.ach, i64 %i.xx)
  %i.aci = sub nsw i64 %smax1331, %.0392913       ; 3 uses
  %i.acj = mul i64 %i.ww, %.0392913               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.xb, i64 %i.acj
  %scevgep1327 = getelementptr i8, ptr %i.xd, i64 %i.acj
  %i.ack = add nuw i64 %.0392913, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.ack, i64 %i.xx)
  %i.acl = xor i64 %.0392913, -1
  %i.acm = add nsw i64 %smax, %i.acl
  %i.acn = mul i64 %i.acm, 12                     ; 2 uses
  %scevgep1328 = getelementptr i8, ptr %scevgep1327, i64 %i.acn
  %i.aco = mul i64 %.0392913, 12
  %i.acp = getelementptr i8, ptr %i.ow, i64 %i.aco
  %scevgep1329 = getelementptr i8, ptr %i.acp, i64 12
  %scevgep1330 = getelementptr i8, ptr %scevgep1329, i64 %i.acn
  %i.acq = mul nuw nsw i64 %.0392913, 3           ; 3 uses
  %i.acr = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.0392913 ; 6 uses
  %i.acs = mul nsw i64 %i.acq, %i.pc
  %i.act = load float, ptr %i.acr, align 4, !tbaa !52 ; 4 uses
  %i.acu = getelementptr [4 x i8], ptr %i.ph, i64 %i.acs ; 2 uses
  %min.iters.check1388 = icmp ult i64 %i.abz, 8
  br i1 %min.iters.check1388, label %.preheader852.preheader, label %vector.memcheck1379

vector.memcheck1379:                              ; preds = %.preheader853
  %i.acv = mul i64 %i.ww, %.0392913               ; 2 uses
  %i.acw = getelementptr i8, ptr %i.ph, i64 %i.acv
  %scevgep1381 = getelementptr i8, ptr %i.acw, i64 12
  %i.acx = add nuw i64 %.0392913, 1
  %smax1382 = call i64 @llvm.smax.i64(i64 %i.acx, i64 %i.xx)
  %i.acy = xor i64 %.0392913, -1
  %i.acz = add nsw i64 %smax1382, %i.acy
  %i.ada = mul i64 %i.acz, 12
  %scevgep1383 = getelementptr i8, ptr %scevgep1381, i64 %i.ada
  %scevgep1380 = getelementptr i8, ptr %i.ph, i64 %i.acv
  %bound01384 = icmp ult ptr %scevgep1380, %scevgep1353
  %bound11385 = icmp ult ptr %i.acr, %scevgep1383
  %found.conflict1386 = and i1 %bound01384, %bound11385
  br i1 %found.conflict1386, label %.preheader852.preheader, label %vector.ph1389

vector.ph1389:                                    ; preds = %vector.memcheck1379
  %n.vec1390 = and i64 %i.abz, -8                 ; 3 uses
  %i.adb = add i64 %.0392913, %n.vec1390
  %broadcast.splatinsert1391 = insertelement <8 x float> poison, float %i.act, i64 0
  %i.adc = shufflevector <8 x float> %broadcast.splatinsert1391, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1389
  %index1394 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1404, %vector.body1393 ] ; 2 uses
  %i.add = add nuw i64 %.0392913, %index1394      ; 2 uses
  %i.ade = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.add
  %i.adf = mul nuw nsw i64 %i.add, 12
  %i.adg = getelementptr i8, ptr %i.acu, i64 %i.adf ; 2 uses
  %wide.vec1395 = load <24 x float>, ptr %i.ade, align 4, !tbaa !52, !alias.scope !85
  %wide.vec1399 = load <24 x float>, ptr %i.adg, align 4, !tbaa !52, !alias.scope !88, !noalias !85
  %interleaved.vec1403 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1395, <24 x float> %i.adc, <24 x float> %wide.vec1399)
  store <24 x float> %interleaved.vec1403, ptr %i.adg, align 4, !tbaa !52, !alias.scope !88, !noalias !85
  %index.next1404 = add nuw i64 %index1394, 8     ; 2 uses
  %i.adh = icmp eq i64 %index.next1404, %n.vec1390
  br i1 %i.adh, label %middle.block1405, label %vector.body1393, !llvm.loop !90

middle.block1405:                                 ; preds = %vector.body1393
  %cmp.n1406 = icmp eq i64 %i.abz, %n.vec1390
  br i1 %cmp.n1406, label %._crit_edge911, label %.preheader852.preheader

.preheader852.preheader:                          ; preds = %vector.memcheck1379, %.preheader853, %middle.block1405
  %.8406910.ph = phi i64 [ %.0392913, %vector.memcheck1379 ], [ %.0392913, %.preheader853 ], [ %i.adb, %middle.block1405 ]
  br label %.preheader852

.preheader852:                                    ; preds = %.preheader852.preheader, %.preheader852
  %.8406910 = phi i64 [ %i.adx, %.preheader852 ], [ %.8406910.ph, %.preheader852.preheader ] ; 3 uses
  %i.adi = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910 ; 3 uses
  %.idx502 = mul nuw nsw i64 %.8406910, 12
  %i.adj = getelementptr i8, ptr %i.acu, i64 %.idx502 ; 4 uses
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !52
  %i.adl = load float, ptr %i.adj, align 4, !tbaa !52
  %i.adm = call float @llvm.fmuladd.f32(float %i.adk, float %i.act, float %i.adl)
  store float %i.adm, ptr %i.adj, align 4, !tbaa !52
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adi, i64 4
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !52
  %i.adp = getelementptr i8, ptr %i.adj, i64 4    ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !52
  %i.adr = call float @llvm.fmuladd.f32(float %i.ado, float %i.act, float %i.adq)
  store float %i.adr, ptr %i.adp, align 4, !tbaa !52
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !52
  %i.adu = getelementptr i8, ptr %i.adj, i64 8    ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !52
  %i.adw = call float @llvm.fmuladd.f32(float %i.adt, float %i.act, float %i.adv)
  store float %i.adw, ptr %i.adu, align 4, !tbaa !52
  %i.adx = add nuw nsw i64 %.8406910, 1           ; 2 uses
  %i.ady = icmp slt i64 %i.adx, %i.xx
  br i1 %i.ady, label %.preheader852, label %._crit_edge911, !llvm.loop !91

._crit_edge911:                                   ; preds = %.preheader852, %middle.block1405
  %i.adz = add nuw nsw i64 %i.acq, 1
  %i.aea = mul nsw i64 %i.adz, %i.pc
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !52 ; 4 uses
  %i.aed = getelementptr [4 x i8], ptr %i.ph, i64 %i.aea ; 2 uses
  %min.iters.check1359 = icmp ult i64 %i.abz, 8
  br i1 %min.iters.check1359, label %.preheader852.1.preheader, label %vector.memcheck1347

vector.memcheck1347:                              ; preds = %._crit_edge911
  %bound01354 = icmp ult ptr %scevgep1348, %scevgep1353
  %bound11355 = icmp ult ptr %i.acr, %scevgep1351
  %found.conflict1356 = and i1 %bound01354, %bound11355
  br i1 %found.conflict1356, label %.preheader852.1.preheader, label %vector.ph1360

vector.ph1360:                                    ; preds = %vector.memcheck1347
  %n.vec1361 = and i64 %i.abz, -8                 ; 3 uses
  %i.aee = add i64 %.0392913, %n.vec1361
  %broadcast.splatinsert1362 = insertelement <8 x float> poison, float %i.aec, i64 0
  %i.aef = shufflevector <8 x float> %broadcast.splatinsert1362, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1360
  %index1365 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1375, %vector.body1364 ] ; 2 uses
  %i.aeg = add nuw i64 %.0392913, %index1365      ; 2 uses
  %i.aeh = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.aeg
  %i.aei = mul nuw nsw i64 %i.aeg, 12
  %i.aej = getelementptr i8, ptr %i.aed, i64 %i.aei ; 2 uses
  %wide.vec1366 = load <24 x float>, ptr %i.aeh, align 4, !tbaa !52, !alias.scope !92
  %wide.vec1370 = load <24 x float>, ptr %i.aej, align 4, !tbaa !52, !alias.scope !95, !noalias !92
  %interleaved.vec1374 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1366, <24 x float> %i.aef, <24 x float> %wide.vec1370)
  store <24 x float> %interleaved.vec1374, ptr %i.aej, align 4, !tbaa !52, !alias.scope !95, !noalias !92
  %index.next1375 = add nuw i64 %index1365, 8     ; 2 uses
  %i.aek = icmp eq i64 %index.next1375, %n.vec1361
  br i1 %i.aek, label %middle.block1376, label %vector.body1364, !llvm.loop !97

middle.block1376:                                 ; preds = %vector.body1364
  %cmp.n1377 = icmp eq i64 %i.abz, %n.vec1361
  br i1 %cmp.n1377, label %._crit_edge911.1, label %.preheader852.1.preheader

.preheader852.1.preheader:                        ; preds = %vector.memcheck1347, %._crit_edge911, %middle.block1376
  %.8406910.1.ph = phi i64 [ %.0392913, %vector.memcheck1347 ], [ %.0392913, %._crit_edge911 ], [ %i.aee, %middle.block1376 ]
  br label %.preheader852.1

.preheader852.1:                                  ; preds = %.preheader852.1.preheader, %.preheader852.1
  %.8406910.1 = phi i64 [ %i.afa, %.preheader852.1 ], [ %.8406910.1.ph, %.preheader852.1.preheader ] ; 3 uses
  %i.ael = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910.1 ; 3 uses
  %.idx502.1 = mul nuw nsw i64 %.8406910.1, 12
  %i.aem = getelementptr i8, ptr %i.aed, i64 %.idx502.1 ; 4 uses
  %i.aen = load float, ptr %i.ael, align 4, !tbaa !52
  %i.aeo = load float, ptr %i.aem, align 4, !tbaa !52
  %i.aep = call float @llvm.fmuladd.f32(float %i.aen, float %i.aec, float %i.aeo)
  store float %i.aep, ptr %i.aem, align 4, !tbaa !52
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !52
  %i.aes = getelementptr i8, ptr %i.aem, i64 4    ; 2 uses
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !52
  %i.aeu = call float @llvm.fmuladd.f32(float %i.aer, float %i.aec, float %i.aet)
  store float %i.aeu, ptr %i.aes, align 4, !tbaa !52
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !52
  %i.aex = getelementptr i8, ptr %i.aem, i64 8    ; 2 uses
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !52
  %i.aez = call float @llvm.fmuladd.f32(float %i.aew, float %i.aec, float %i.aey)
  store float %i.aez, ptr %i.aex, align 4, !tbaa !52
  %i.afa = add nuw nsw i64 %.8406910.1, 1         ; 2 uses
  %i.afb = icmp slt i64 %i.afa, %i.xx
  br i1 %i.afb, label %.preheader852.1, label %._crit_edge911.1, !llvm.loop !98

._crit_edge911.1:                                 ; preds = %.preheader852.1, %middle.block1376
  %i.afc = add nuw nsw i64 %i.acq, 2
  %i.afd = mul nsw i64 %i.afc, %i.pc
  %i.afe = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !52 ; 4 uses
  %i.afg = getelementptr [4 x i8], ptr %i.ph, i64 %i.afd ; 2 uses
  %min.iters.check1332 = icmp ult i64 %i.aci, 8
  br i1 %min.iters.check1332, label %.preheader852.2.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge911.1
  %bound0 = icmp ult ptr %scevgep, %scevgep1330
  %bound1 = icmp ult ptr %i.acr, %scevgep1328
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader852.2.preheader, label %vector.ph1333

vector.ph1333:                                    ; preds = %vector.memcheck
  %n.vec1334 = and i64 %i.aci, -8                 ; 3 uses
  %i.afh = add i64 %.0392913, %n.vec1334
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.aff, i64 0
  %i.afi = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1343, %vector.body1335 ] ; 2 uses
  %i.afj = add nuw i64 %.0392913, %index1336      ; 2 uses
  %i.afk = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.afj
  %i.afl = mul nuw nsw i64 %i.afj, 12
  %i.afm = getelementptr i8, ptr %i.afg, i64 %i.afl ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.afk, align 4, !tbaa !52, !alias.scope !99
  %wide.vec1339 = load <24 x float>, ptr %i.afm, align 4, !tbaa !52, !alias.scope !102, !noalias !99
  %interleaved.vec = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec, <24 x float> %i.afi, <24 x float> %wide.vec1339)
  store <24 x float> %interleaved.vec, ptr %i.afm, align 4, !tbaa !52, !alias.scope !102, !noalias !99
  %index.next1343 = add nuw i64 %index1336, 8     ; 2 uses
  %i.afn = icmp eq i64 %index.next1343, %n.vec1334
  br i1 %i.afn, label %middle.block1344, label %vector.body1335, !llvm.loop !104

middle.block1344:                                 ; preds = %vector.body1335
  %cmp.n1345 = icmp eq i64 %i.aci, %n.vec1334
  br i1 %cmp.n1345, label %._crit_edge911.2, label %.preheader852.2.preheader

.preheader852.2.preheader:                        ; preds = %vector.memcheck, %._crit_edge911.1, %middle.block1344
  %.8406910.2.ph = phi i64 [ %.0392913, %vector.memcheck ], [ %.0392913, %._crit_edge911.1 ], [ %i.afh, %middle.block1344 ]
  br label %.preheader852.2

.preheader852.2:                                  ; preds = %.preheader852.2.preheader, %.preheader852.2
  %.8406910.2 = phi i64 [ %i.agd, %.preheader852.2 ], [ %.8406910.2.ph, %.preheader852.2.preheader ] ; 3 uses
  %i.afo = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910.2 ; 3 uses
  %.idx502.2 = mul nuw nsw i64 %.8406910.2, 12
  %i.afp = getelementptr i8, ptr %i.afg, i64 %.idx502.2 ; 4 uses
  %i.afq = load float, ptr %i.afo, align 4, !tbaa !52
  %i.afr = load float, ptr %i.afp, align 4, !tbaa !52
  %i.afs = call float @llvm.fmuladd.f32(float %i.afq, float %i.aff, float %i.afr)
  store float %i.afs, ptr %i.afp, align 4, !tbaa !52
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 4
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !52
  %i.afv = getelementptr i8, ptr %i.afp, i64 4    ; 2 uses
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !52
  %i.afx = call float @llvm.fmuladd.f32(float %i.afu, float %i.aff, float %i.afw)
  store float %i.afx, ptr %i.afv, align 4, !tbaa !52
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !52
  %i.aga = getelementptr i8, ptr %i.afp, i64 8    ; 2 uses
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !52
  %i.agc = call float @llvm.fmuladd.f32(float %i.afz, float %i.aff, float %i.agb)
  store float %i.agc, ptr %i.aga, align 4, !tbaa !52
  %i.agd = add nuw nsw i64 %.8406910.2, 1         ; 2 uses
  %i.age = icmp slt i64 %i.agd, %i.xx
  br i1 %i.age, label %.preheader852.2, label %._crit_edge911.2, !llvm.loop !105

._crit_edge911.2:                                 ; preds = %.preheader852.2, %middle.block1344
  %i.agf = add nuw nsw i64 %.0392913, 1           ; 2 uses
  %exitcond1012.not = icmp eq i64 %i.agf, %i.xx
  br i1 %exitcond1012.not, label %._crit_edge914, label %.preheader853, !llvm.loop !106

._crit_edge914:                                   ; preds = %._crit_edge911.2, %.preheader854, %.preheader856
  %i.agg = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.agh = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.agi = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.agj = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.agg, ptr noundef %i.agh, ptr noundef nonnull %i.k, ptr noundef %i.agi, ptr noundef nonnull %i.i)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.di:                                            ; preds = %._crit_edge914
  br i1 %i.agj, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.agk = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.agl = trunc nuw i8 %i.agk to i1
  %i.agm = icmp samesign ult i32 %.0421, %.0422
  %i.agn = select i1 %i.agl, i1 true, i1 %i.agm
  br i1 %i.agn, label %bb.cu, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %bb.di, %bb.dj
  %i.ago = load ptr, ptr %i.e, align 8, !tbaa !79
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.ago)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %.critedge
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %.0377)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk
  %i.agp = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.agq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agp, ptr noundef nonnull @.str.67, i32 noundef %i.xe) #28 ; 0 uses
  %i.agr = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.ags = trunc nuw i8 %i.agr to i1
  %.pre1051 = load i32, ptr %i.l, align 4, !tbaa !9 ; 3 uses
  br i1 %i.ags, label %bb.dm, label %.loopexit851

bb.dm:                                            ; preds = %bb.dl
  %i.agt = sext i32 %.pre1051 to i64
  %i.agu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.50, i32 noundef 435, i64 noundef range(i64 -2147483648, 2147483648) %i.agt, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader: ; preds = %bb.dm
  %i.agv = load i32, ptr %i.l, align 4, !tbaa !9  ; 5 uses
  %i.agw = sext i32 %i.agv to i64                 ; 4 uses
  %i.agx = icmp sgt i32 %i.agv, 0
  br i1 %i.agx, label %.lr.ph916, label %.preheader848

.lr.ph916:                                        ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader
  %i.agy = load ptr, ptr %i.h, align 8, !tbaa !74 ; 5 uses
  %i.agz = load ptr, ptr %i.x, align 8, !tbaa !34 ; 5 uses
  %xtraiter1646 = and i64 %i.agw, 3
  %i.aha = icmp ult i32 %i.agv, 4
  br i1 %i.aha, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader, label %.lr.ph916.new

.lr.ph916.new:                                    ; preds = %.lr.ph916
  %unroll_iter1650 = and i64 %i.agw, 2147483644
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574, %.lr.ph916.new
  %.9407915 = phi i64 [ 0, %.lr.ph916.new ], [ %i.aja, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574 ] ; 6 uses
  %niter1651 = phi i64 [ 0, %.lr.ph916.new ], [ %niter1651.next.3, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574 ]
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %.9407915
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !9
  %i.ahd = sext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.ahd ; 3 uses
  %i.ahf = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %.9407915 ; 3 uses
  %i.ahg = load float, ptr %i.ahe, align 4, !tbaa !52
  store float %i.ahg, ptr %i.ahf, align 4, !tbaa !52
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4
  %i.ahi = load float, ptr %i.ahh, align 4, !tbaa !52
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  store float %i.ahi, ptr %i.ahj, align 4, !tbaa !52
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !52
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store float %i.ahl, ptr %i.ahm, align 4, !tbaa !52
  %i.ahn = or disjoint i64 %.9407915, 1           ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !9
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.ahq ; 3 uses
  %i.ahs = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %i.ahn ; 3 uses
  %i.aht = load float, ptr %i.ahr, align 4, !tbaa !52
  store float %i.aht, ptr %i.ahs, align 4, !tbaa !52
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !52
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  store float %i.ahv, ptr %i.ahw, align 4, !tbaa !52
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !52
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store float %i.ahy, ptr %i.ahz, align 4, !tbaa !52
  %i.aia = or disjoint i64 %.9407915, 2           ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !9
  %i.aid = sext i32 %i.aic to i64
  %i.aie = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.aid ; 3 uses
  %i.aif = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %i.aia ; 3 uses
  %i.aig = load float, ptr %i.aie, align 4, !tbaa !52
  store float %i.aig, ptr %i.aif, align 4, !tbaa !52
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !52
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  store float %i.aii, ptr %i.aij, align 4, !tbaa !52
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !52
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  store float %i.ail, ptr %i.aim, align 4, !tbaa !52
  %i.ain = or disjoint i64 %.9407915, 3           ; 2 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.ain
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !9
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.aiq ; 3 uses
  %i.ais = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %i.ain ; 3 uses
  %i.ait = load float, ptr %i.air, align 4, !tbaa !52
  store float %i.ait, ptr %i.ais, align 4, !tbaa !52
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 4
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !52
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ais, i64 4
  store float %i.aiv, ptr %i.aiw, align 4, !tbaa !52
  %i.aix = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !52
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store float %i.aiy, ptr %i.aiz, align 4, !tbaa !52
  %i.aja = add nuw nsw i64 %.9407915, 4           ; 2 uses
  %niter1651.next.3 = add i64 %niter1651, 4       ; 2 uses
  %niter1651.ncmp.3 = icmp eq i64 %niter1651.next.3, %unroll_iter1650
  br i1 %niter1651.ncmp.3, label %.preheader850.preheader.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574, !llvm.loop !108

.loopexit851:                                     ; preds = %bb.dl
  %.pre1053 = zext nneg i32 %.pre1051 to i64
  %i.ajb = icmp sgt i32 %.pre1051, 0
  br i1 %i.ajb, label %.preheader850.preheader, label %.preheader848

.preheader850.preheader.loopexit.unr-lcssa:       ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574
  %i.ajc = and i32 %i.agv, 3
  %lcmp.mod1648.not = icmp eq i32 %i.ajc, 0
  br i1 %lcmp.mod1648.not, label %.preheader850.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader: ; preds = %.preheader850.preheader.loopexit.unr-lcssa, %.lr.ph916
  %.9407915.epil.init = phi i64 [ 0, %.lr.ph916 ], [ %i.aja, %.preheader850.preheader.loopexit.unr-lcssa ]
  %i.ajd = and i32 %i.agv, 3
  %lcmp.mod1649 = icmp ne i32 %i.ajd, 0
  call void @llvm.assume(i1 %lcmp.mod1649)
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader
  %.9407915.epil = phi i64 [ %.9407915.epil.init, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader ], [ %i.ajq, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ] ; 3 uses
  %epil.iter1647 = phi i64 [ 0, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader ], [ %epil.iter1647.next, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ]
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %.9407915.epil
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !9
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %i.ajg ; 3 uses
  %i.aji = getelementptr inbounds nuw [12 x i8], ptr %i.agu, i64 %.9407915.epil ; 3 uses
  %i.ajj = load float, ptr %i.ajh, align 4, !tbaa !52
  store float %i.ajj, ptr %i.aji, align 4, !tbaa !52
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !52
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 4
  store float %i.ajl, ptr %i.ajm, align 4, !tbaa !52
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !52
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  store float %i.ajo, ptr %i.ajp, align 4, !tbaa !52
  %i.ajq = add nuw nsw i64 %.9407915.epil, 1
  %epil.iter1647.next = add i64 %epil.iter1647, 1 ; 2 uses
  %epil.iter1647.cmp.not = icmp eq i64 %epil.iter1647.next, %xtraiter1646
  br i1 %epil.iter1647.cmp.not, label %.preheader850.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, !llvm.loop !109

.preheader850.preheader:                          ; preds = %.preheader850.preheader.loopexit.unr-lcssa, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, %.loopexit851
  %.01251 = phi ptr [ %i.oz, %.loopexit851 ], [ %i.agu, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ], [ %i.agu, %.preheader850.preheader.loopexit.unr-lcssa ]
  %.pre-phi10541249 = phi i64 [ %.pre1053, %.loopexit851 ], [ %i.agw, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ], [ %i.agw, %.preheader850.preheader.loopexit.unr-lcssa ] ; 10 uses
  %.pn1271 = uitofp nneg i32 %i.xe to double
  %.in = fdiv nnan double 1.000000e+00, %.pn1271
  %i.ajr = fptrunc double %.in to float           ; 12 uses
  %i.ajs = shl nsw i64 %.pre-phi10541249, 2
  %scevgep1413 = getelementptr i8, ptr %i.ih, i64 %i.ajs ; 3 uses
  %i.ajt = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.aju = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.ajv = getelementptr i8, ptr %i.aju, i64 12
  %i.ajw = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.ajx = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 12
  %broadcast.splatinsert1506 = insertelement <8 x float> poison, float %i.ajr, i64 0
  %broadcast.splat1507 = shufflevector <8 x float> %broadcast.splatinsert1506, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1468 = insertelement <8 x float> poison, float %i.ajr, i64 0
  %broadcast.splat1469 = shufflevector <8 x float> %broadcast.splatinsert1468, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1427 = insertelement <8 x float> poison, float %i.ajr, i64 0
  %broadcast.splat1428 = shufflevector <8 x float> %broadcast.splatinsert1427, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %.preheader850

.preheader850:                                    ; preds = %.preheader850.preheader, %._crit_edge920.2
  %.1393923 = phi i64 [ %i.aqh, %._crit_edge920.2 ], [ 0, %.preheader850.preheader ] ; 30 uses
  %i.ajz = add nuw i64 %.1393923, 1
  %smax1463 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.ajz)
  %i.aka = sub nsw i64 %smax1463, %.1393923       ; 6 uses
  %i.akb = mul i64 %i.ww, %.1393923               ; 2 uses
  %scevgep1450 = getelementptr i8, ptr %i.ajt, i64 %i.akb ; 2 uses
  %scevgep1451 = getelementptr i8, ptr %i.ajv, i64 %i.akb
  %i.akc = add nuw i64 %.1393923, 1
  %smax1452 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akc)
  %i.akd = xor i64 %.1393923, -1
  %i.ake = add nsw i64 %smax1452, %i.akd          ; 2 uses
  %i.akf = mul i64 %i.ake, 12
  %scevgep1453 = getelementptr i8, ptr %scevgep1451, i64 %i.akf ; 2 uses
  %i.akg = shl i64 %.1393923, 2
  %i.akh = getelementptr i8, ptr %i.ih, i64 %i.akg
  %scevgep1454 = getelementptr i8, ptr %i.akh, i64 4
  %i.aki = shl i64 %i.ake, 2
  %scevgep1455 = getelementptr i8, ptr %scevgep1454, i64 %i.aki ; 2 uses
  %i.akj = add nuw i64 %.1393923, 1
  %smax1422 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akj)
  %i.akk = sub nsw i64 %smax1422, %.1393923       ; 3 uses
  %i.akl = mul i64 %i.ww, %.1393923               ; 2 uses
  %scevgep1409 = getelementptr i8, ptr %i.ajw, i64 %i.akl ; 2 uses
  %scevgep1410 = getelementptr i8, ptr %i.ajy, i64 %i.akl
  %i.akm = add nuw i64 %.1393923, 1
  %smax1411 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akm)
  %i.akn = xor i64 %.1393923, -1
  %i.ako = add nsw i64 %smax1411, %i.akn          ; 2 uses
  %i.akp = mul i64 %i.ako, 12
  %scevgep1412 = getelementptr i8, ptr %scevgep1410, i64 %i.akp ; 2 uses
  %i.akq = shl i64 %.1393923, 2
  %i.akr = getelementptr i8, ptr %i.ih, i64 %i.akq
  %scevgep1414 = getelementptr i8, ptr %i.akr, i64 4
  %i.aks = shl i64 %i.ako, 2
  %scevgep1415 = getelementptr i8, ptr %scevgep1414, i64 %i.aks
  %i.akt = mul nuw nsw i64 %.1393923, 3           ; 3 uses
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1393923 ; 15 uses
  %i.akv = mul nsw i64 %i.akt, %i.pc
  %i.akw = getelementptr [4 x i8], ptr %i.ph, i64 %i.akv ; 2 uses
  %min.iters.check1503 = icmp ult i64 %i.aka, 8
  br i1 %min.iters.check1503, label %scalar.ph1502.preheader, label %vector.memcheck1490

vector.memcheck1490:                              ; preds = %.preheader850
  %i.akx = mul i64 %i.ww, %.1393923               ; 2 uses
  %i.aky = getelementptr i8, ptr %i.ph, i64 %i.akx
  %scevgep1492 = getelementptr i8, ptr %i.aky, i64 12
  %i.akz = add nuw i64 %.1393923, 1
  %smax1493 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akz)
  %i.ala = xor i64 %.1393923, -1
  %i.alb = add nsw i64 %smax1493, %i.ala
  %i.alc = mul i64 %i.alb, 12
  %scevgep1494 = getelementptr i8, ptr %scevgep1492, i64 %i.alc ; 2 uses
  %scevgep1491 = getelementptr i8, ptr %i.ph, i64 %i.akx ; 2 uses
  %bound01495 = icmp ult ptr %scevgep1491, %scevgep1413
  %bound11496 = icmp ult ptr %i.ih, %scevgep1494
  %found.conflict1497 = and i1 %bound01495, %bound11496
  %bound01498 = icmp ult ptr %scevgep1491, %scevgep1455
  %bound11499 = icmp ult ptr %i.aku, %scevgep1494
  %found.conflict1500 = and i1 %bound01498, %bound11499
  %conflict.rdx1501 = or i1 %found.conflict1497, %found.conflict1500
  br i1 %conflict.rdx1501, label %scalar.ph1502.preheader, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1490
  %n.vec1505 = and i64 %i.aka, -8                 ; 3 uses
  %i.ald = add i64 %.1393923, %n.vec1505
  %i.ale = load float, ptr %i.aku, align 4, !tbaa !52, !alias.scope !110 ; 3 uses
  %broadcast.splatinsert1515 = insertelement <8 x float> poison, float %i.ale, i64 0
  %broadcast.splatinsert1518 = insertelement <8 x float> poison, float %i.ale, i64 0
  %broadcast.splatinsert1521 = insertelement <8 x float> poison, float %i.ale, i64 0
  %broadcast.splat1522 = shufflevector <8 x float> %broadcast.splatinsert1521, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alf = shufflevector <8 x float> %broadcast.splatinsert1515, <8 x float> %broadcast.splatinsert1518, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1504
  %index1509 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1524, %vector.body1508 ] ; 2 uses
  %i.alg = add nuw i64 %.1393923, %index1509      ; 2 uses
  %i.alh = mul nuw nsw i64 %i.alg, 12
  %i.ali = getelementptr i8, ptr %i.akw, i64 %i.alh ; 2 uses
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.alg
  %wide.vec1510 = load <24 x float>, ptr %i.ali, align 4, !tbaa !52, !alias.scope !113, !noalias !115 ; 3 uses
  %strided.vec1511 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1512 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1513 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.alk = fmul <8 x float> %strided.vec1511, %broadcast.splat1507
  %wide.load1514 = load <8 x float>, ptr %i.alj, align 4, !tbaa !52, !alias.scope !117 ; 3 uses
  %i.all = fmul <8 x float> %i.alk, %wide.load1514
  %i.alm = fmul <8 x float> %strided.vec1512, %broadcast.splat1507
  %i.aln = fmul <8 x float> %i.alm, %wide.load1514
  %i.alo = fmul <8 x float> %strided.vec1513, %broadcast.splat1507
  %i.alp = fmul <8 x float> %i.alo, %wide.load1514
  %i.alq = fmul <8 x float> %i.alp, %broadcast.splat1522
  %i.alr = shufflevector <8 x float> %i.all, <8 x float> %i.aln, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.als = fmul <16 x float> %i.alr, %i.alf
  %i.alt = shufflevector <8 x float> %i.alq, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1523 = shufflevector <16 x float> %i.als, <16 x float> %i.alt, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1523, ptr %i.ali, align 4, !tbaa !52, !alias.scope !113, !noalias !115
  %index.next1524 = add nuw i64 %index1509, 8     ; 2 uses
  %i.alu = icmp eq i64 %index.next1524, %n.vec1505
  br i1 %i.alu, label %middle.block1525, label %vector.body1508, !llvm.loop !118

middle.block1525:                                 ; preds = %vector.body1508
  %cmp.n1526 = icmp eq i64 %i.aka, %n.vec1505
  br i1 %cmp.n1526, label %._crit_edge920, label %scalar.ph1502.preheader

scalar.ph1502.preheader:                          ; preds = %vector.memcheck1490, %.preheader850, %middle.block1525
  %.10408918.ph = phi i64 [ %.1393923, %vector.memcheck1490 ], [ %.1393923, %.preheader850 ], [ %i.ald, %middle.block1525 ]
  br label %scalar.ph1502

.preheader848:                                    ; preds = %._crit_edge920.2, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader, %.loopexit851
  %.01250 = phi ptr [ %i.agu, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader ], [ %i.oz, %.loopexit851 ], [ %.01251, %._crit_edge920.2 ]
  %i.alv = icmp sgt i32 %i.pa, 0                  ; 8 uses
  br i1 %i.alv, label %.preheader847.preheader, label %._crit_edge929

.preheader847.preheader:                          ; preds = %.preheader848
  %xtraiter1652 = and i64 %i.pc, 3
  %i.alw = icmp ult i32 %i.pb, 4
  br i1 %i.alw, label %.preheader847.epil.preheader, label %.preheader847.preheader.new

.preheader847.preheader.new:                      ; preds = %.preheader847.preheader
  %unroll_iter1656 = and i64 %i.pc, 2147483644
  br label %.preheader847

scalar.ph1502:                                    ; preds = %scalar.ph1502.preheader, %scalar.ph1502
  %.10408918 = phi i64 [ %i.amt, %scalar.ph1502 ], [ %.10408918.ph, %scalar.ph1502.preheader ] ; 3 uses
  %.idx501 = mul nuw nsw i64 %.10408918, 12
  %i.alx = getelementptr i8, ptr %i.akw, i64 %.idx501 ; 4 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918 ; 3 uses
  %i.alz = load float, ptr %i.alx, align 4, !tbaa !52
  %i.ama = fmul float %i.alz, %i.ajr
  %i.amb = load float, ptr %i.aly, align 4, !tbaa !52
  %i.amc = fmul float %i.ama, %i.amb
  %i.amd = load float, ptr %i.aku, align 4, !tbaa !52
  %i.ame = fmul float %i.amc, %i.amd
  store float %i.ame, ptr %i.alx, align 4, !tbaa !52
  %i.amf = getelementptr i8, ptr %i.alx, i64 4    ; 2 uses
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !52
  %i.amh = fmul float %i.amg, %i.ajr
  %i.ami = load float, ptr %i.aly, align 4, !tbaa !52
  %i.amj = fmul float %i.amh, %i.ami
  %i.amk = load float, ptr %i.aku, align 4, !tbaa !52
  %i.aml = fmul float %i.amj, %i.amk
  store float %i.aml, ptr %i.amf, align 4, !tbaa !52
  %i.amm = getelementptr i8, ptr %i.alx, i64 8    ; 2 uses
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !52
  %i.amo = fmul float %i.amn, %i.ajr
  %i.amp = load float, ptr %i.aly, align 4, !tbaa !52
  %i.amq = fmul float %i.amo, %i.amp
  %i.amr = load float, ptr %i.aku, align 4, !tbaa !52
  %i.ams = fmul float %i.amq, %i.amr
  store float %i.ams, ptr %i.amm, align 4, !tbaa !52
  %i.amt = add nuw nsw i64 %.10408918, 1          ; 2 uses
  %i.amu = icmp slt i64 %i.amt, %.pre-phi10541249
  br i1 %i.amu, label %scalar.ph1502, label %._crit_edge920, !llvm.loop !119

._crit_edge920:                                   ; preds = %scalar.ph1502, %middle.block1525
  %i.amv = add nuw nsw i64 %i.akt, 1
  %i.amw = mul nsw i64 %i.amv, %i.pc
  %i.amx = getelementptr [4 x i8], ptr %i.ph, i64 %i.amw ; 2 uses
  %min.iters.check1465 = icmp ult i64 %i.aka, 8
  br i1 %min.iters.check1465, label %scalar.ph1464.preheader, label %vector.memcheck1449

vector.memcheck1449:                              ; preds = %._crit_edge920
  %bound01456 = icmp ult ptr %scevgep1450, %scevgep1413
  %bound11457 = icmp ult ptr %i.ih, %scevgep1453
  %found.conflict1458 = and i1 %bound01456, %bound11457
  %bound01459 = icmp ult ptr %scevgep1450, %scevgep1455
  %bound11460 = icmp ult ptr %i.aku, %scevgep1453
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %conflict.rdx1462 = or i1 %found.conflict1458, %found.conflict1461
  br i1 %conflict.rdx1462, label %scalar.ph1464.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %vector.memcheck1449
  %n.vec1467 = and i64 %i.aka, -8                 ; 3 uses
  %i.amy = add i64 %.1393923, %n.vec1467
  %i.amz = load float, ptr %i.aku, align 4, !tbaa !52, !alias.scope !120 ; 3 uses
  %broadcast.splatinsert1477 = insertelement <8 x float> poison, float %i.amz, i64 0
  %broadcast.splatinsert1480 = insertelement <8 x float> poison, float %i.amz, i64 0
  %broadcast.splatinsert1483 = insertelement <8 x float> poison, float %i.amz, i64 0
  %broadcast.splat1484 = shufflevector <8 x float> %broadcast.splatinsert1483, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ana = shufflevector <8 x float> %broadcast.splatinsert1477, <8 x float> %broadcast.splatinsert1480, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1466
  %index1471 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1486, %vector.body1470 ] ; 2 uses
  %i.anb = add nuw i64 %.1393923, %index1471      ; 2 uses
  %i.anc = mul nuw nsw i64 %i.anb, 12
  %i.and = getelementptr i8, ptr %i.amx, i64 %i.anc ; 2 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.anb
  %wide.vec1472 = load <24 x float>, ptr %i.and, align 4, !tbaa !52, !alias.scope !123, !noalias !125 ; 3 uses
  %strided.vec1473 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1474 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1475 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.anf = fmul <8 x float> %strided.vec1473, %broadcast.splat1469
  %wide.load1476 = load <8 x float>, ptr %i.ane, align 4, !tbaa !52, !alias.scope !127 ; 3 uses
  %i.ang = fmul <8 x float> %i.anf, %wide.load1476
  %i.anh = fmul <8 x float> %strided.vec1474, %broadcast.splat1469
  %i.ani = fmul <8 x float> %i.anh, %wide.load1476
  %i.anj = fmul <8 x float> %strided.vec1475, %broadcast.splat1469
  %i.ank = fmul <8 x float> %i.anj, %wide.load1476
  %i.anl = fmul <8 x float> %i.ank, %broadcast.splat1484
  %i.anm = shufflevector <8 x float> %i.ang, <8 x float> %i.ani, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ann = fmul <16 x float> %i.anm, %i.ana
  %i.ano = shufflevector <8 x float> %i.anl, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1485 = shufflevector <16 x float> %i.ann, <16 x float> %i.ano, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1485, ptr %i.and, align 4, !tbaa !52, !alias.scope !123, !noalias !125
  %index.next1486 = add nuw i64 %index1471, 8     ; 2 uses
  %i.anp = icmp eq i64 %index.next1486, %n.vec1467
  br i1 %i.anp, label %middle.block1487, label %vector.body1470, !llvm.loop !128

middle.block1487:                                 ; preds = %vector.body1470
  %cmp.n1488 = icmp eq i64 %i.aka, %n.vec1467
  br i1 %cmp.n1488, label %._crit_edge920.1, label %scalar.ph1464.preheader

scalar.ph1464.preheader:                          ; preds = %vector.memcheck1449, %._crit_edge920, %middle.block1487
  %.10408918.1.ph = phi i64 [ %.1393923, %vector.memcheck1449 ], [ %.1393923, %._crit_edge920 ], [ %i.amy, %middle.block1487 ]
  br label %scalar.ph1464

scalar.ph1464:                                    ; preds = %scalar.ph1464.preheader, %scalar.ph1464
  %.10408918.1 = phi i64 [ %i.aom, %scalar.ph1464 ], [ %.10408918.1.ph, %scalar.ph1464.preheader ] ; 3 uses
  %.idx501.1 = mul nuw nsw i64 %.10408918.1, 12
  %i.anq = getelementptr i8, ptr %i.amx, i64 %.idx501.1 ; 4 uses
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918.1 ; 3 uses
  %i.ans = load float, ptr %i.anq, align 4, !tbaa !52
  %i.ant = fmul float %i.ans, %i.ajr
  %i.anu = load float, ptr %i.anr, align 4, !tbaa !52
  %i.anv = fmul float %i.ant, %i.anu
  %i.anw = load float, ptr %i.aku, align 4, !tbaa !52
  %i.anx = fmul float %i.anv, %i.anw
  store float %i.anx, ptr %i.anq, align 4, !tbaa !52
  %i.any = getelementptr i8, ptr %i.anq, i64 4    ; 2 uses
  %i.anz = load float, ptr %i.any, align 4, !tbaa !52
  %i.aoa = fmul float %i.anz, %i.ajr
  %i.aob = load float, ptr %i.anr, align 4, !tbaa !52
  %i.aoc = fmul float %i.aoa, %i.aob
  %i.aod = load float, ptr %i.aku, align 4, !tbaa !52
  %i.aoe = fmul float %i.aoc, %i.aod
  store float %i.aoe, ptr %i.any, align 4, !tbaa !52
  %i.aof = getelementptr i8, ptr %i.anq, i64 8    ; 2 uses
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !52
  %i.aoh = fmul float %i.aog, %i.ajr
  %i.aoi = load float, ptr %i.anr, align 4, !tbaa !52
  %i.aoj = fmul float %i.aoh, %i.aoi
  %i.aok = load float, ptr %i.aku, align 4, !tbaa !52
  %i.aol = fmul float %i.aoj, %i.aok
  store float %i.aol, ptr %i.aof, align 4, !tbaa !52
  %i.aom = add nuw nsw i64 %.10408918.1, 1        ; 2 uses
  %i.aon = icmp slt i64 %i.aom, %.pre-phi10541249
  br i1 %i.aon, label %scalar.ph1464, label %._crit_edge920.1, !llvm.loop !129

._crit_edge920.1:                                 ; preds = %scalar.ph1464, %middle.block1487
end_hunk_0
