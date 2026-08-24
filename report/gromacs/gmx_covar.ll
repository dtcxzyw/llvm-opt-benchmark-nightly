Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_covar?download=true
inline.NumInlined: 404
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z9gmx_covariPPc:bb.a

bb.dc:                                            ; preds = %bb.cv, %bb.cu
  %i.xn = load i8, ptr @_ZZ9gmx_covariPPcE4bFit, align 1, !tbaa !30, !range !32, !noundef !33
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
  %.0392913 = phi i64 [ %i.agd, %._crit_edge911.2 ], [ 0, %.preheader853.preheader ] ; 31 uses
  %i.aby = add nuw i64 %.0392913, 1
  %i.abz = mul i64 %i.ww, %.0392913               ; 2 uses
  %scevgep1348.a = getelementptr i8, ptr %i.wy, i64 %i.abz
  %scevgep1349 = getelementptr i8, ptr %i.xa, i64 %i.abz
  %i.aca = add nuw i64 %.0392913, 1
  %smax1350 = call i64 @llvm.smax.i64(i64 %i.aca, i64 %i.xx) ; 2 uses
  %i.acb = xor i64 %.0392913, -1
  %i.acc = add i64 %smax1350, %i.acb
  %i.acd = mul i64 %i.acc, 12                     ; 2 uses
  %scevgep1351.a = getelementptr i8, ptr %scevgep1349, i64 %i.acd
  %i.ace = mul i64 %.0392913, 12
  %i.acf = getelementptr i8, ptr %i.ow, i64 %i.ace
  %scevgep1352.a = getelementptr i8, ptr %i.acf, i64 12
  %scevgep1353 = getelementptr i8, ptr %scevgep1352.a, i64 %i.acd ; 2 uses
  %i.acg = add nuw i64 %.0392913, 1
  %i.ach = mul i64 %i.ww, %.0392913               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.xb, i64 %i.ach
  %scevgep1327 = getelementptr i8, ptr %i.xd, i64 %i.ach
  %i.aci = add nuw i64 %.0392913, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.aci, i64 %i.xx)
  %i.acj = xor i64 %.0392913, -1
  %i.ack = add i64 %smax, %i.acj
  %i.acl = mul i64 %i.ack, 12                     ; 2 uses
  %scevgep1328 = getelementptr i8, ptr %scevgep1327, i64 %i.acl
  %i.acm = mul i64 %.0392913, 12
  %i.acn = getelementptr i8, ptr %i.ow, i64 %i.acm
  %scevgep1329 = getelementptr i8, ptr %i.acn, i64 12
  %scevgep1330 = getelementptr i8, ptr %scevgep1329, i64 %i.acl
  %i.aco = mul nuw nsw i64 %.0392913, 3           ; 3 uses
  %i.acp = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.0392913 ; 6 uses
  %i.acq = mul nsw i64 %i.aco, %i.pc
  %i.acr = load float, ptr %i.acp, align 4, !tbaa !52 ; 4 uses
  %i.acs = getelementptr [4 x i8], ptr %i.ph, i64 %i.acq ; 2 uses
  %42 = sub i64 %smax1350, %.0392913              ; 3 uses
  %min.iters.check1388 = icmp ult i64 %42, 8
  br i1 %min.iters.check1388, label %.preheader852.preheader, label %vector.memcheck1379

vector.memcheck1379:                              ; preds = %.preheader853
  %i.act = mul i64 %i.ww, %.0392913               ; 2 uses
  %i.acu = getelementptr i8, ptr %i.ph, i64 %i.act
  %scevgep1381.a = getelementptr i8, ptr %i.acu, i64 12
  %i.acv = add nuw i64 %.0392913, 1
  %smax1382 = call i64 @llvm.smax.i64(i64 %i.acv, i64 %i.xx)
  %i.acw = xor i64 %.0392913, -1
  %i.acx = add i64 %smax1382, %i.acw
  %i.acy = mul i64 %i.acx, 12
  %scevgep1383 = getelementptr i8, ptr %scevgep1381.a, i64 %i.acy
  %scevgep1380 = getelementptr i8, ptr %i.ph, i64 %i.act
  %bound01384 = icmp ult ptr %scevgep1380, %scevgep1353
  %bound11385 = icmp ult ptr %i.acp, %scevgep1383
  %found.conflict1386 = and i1 %bound01384, %bound11385
  br i1 %found.conflict1386, label %.preheader852.preheader, label %vector.ph1389

vector.ph1389:                                    ; preds = %vector.memcheck1379
  %n.vec1390 = and i64 %42, -8                    ; 3 uses
  %i.acz = add i64 %.0392913, %n.vec1390
  %broadcast.splatinsert1391 = insertelement <8 x float> poison, float %i.acr, i64 0
  %i.ada = shufflevector <8 x float> %broadcast.splatinsert1391, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1389
  %index1394 = phi i64 [ 0, %vector.ph1389 ], [ %index.next1404, %vector.body1393 ] ; 2 uses
  %i.adb = add nuw i64 %.0392913, %index1394      ; 2 uses
  %i.adc = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.adb
  %i.add = mul nuw nsw i64 %i.adb, 12
  %i.ade = getelementptr i8, ptr %i.acs, i64 %i.add ; 2 uses
  %wide.vec1395 = load <24 x float>, ptr %i.adc, align 4, !tbaa !52, !alias.scope !85
  %wide.vec1399 = load <24 x float>, ptr %i.ade, align 4, !tbaa !52, !alias.scope !88, !noalias !85
  %interleaved.vec1403 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1395, <24 x float> %i.ada, <24 x float> %wide.vec1399)
  store <24 x float> %interleaved.vec1403, ptr %i.ade, align 4, !tbaa !52, !alias.scope !88, !noalias !85
  %index.next1404 = add nuw i64 %index1394, 8     ; 2 uses
  %i.adf = icmp eq i64 %index.next1404, %n.vec1390
  br i1 %i.adf, label %middle.block1405, label %vector.body1393, !llvm.loop !90

middle.block1405:                                 ; preds = %vector.body1393
  %cmp.n1406 = icmp eq i64 %42, %n.vec1390
  br i1 %cmp.n1406, label %._crit_edge911, label %.preheader852.preheader

.preheader852.preheader:                          ; preds = %vector.memcheck1379, %.preheader853, %middle.block1405
  %.8406910.ph = phi i64 [ %.0392913, %vector.memcheck1379 ], [ %.0392913, %.preheader853 ], [ %i.acz, %middle.block1405 ]
  br label %.preheader852

.preheader852:                                    ; preds = %.preheader852.preheader, %.preheader852
  %.8406910 = phi i64 [ %i.adv, %.preheader852 ], [ %.8406910.ph, %.preheader852.preheader ] ; 3 uses
  %i.adg = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910 ; 3 uses
  %.idx502 = mul nuw nsw i64 %.8406910, 12
  %i.adh = getelementptr i8, ptr %i.acs, i64 %.idx502 ; 4 uses
  %i.adi = load float, ptr %i.adg, align 4, !tbaa !52
  %i.adj = load float, ptr %i.adh, align 4, !tbaa !52
  %i.adk = call float @llvm.fmuladd.f32(float %i.adi, float %i.acr, float %i.adj)
  store float %i.adk, ptr %i.adh, align 4, !tbaa !52
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !52
  %i.adn = getelementptr i8, ptr %i.adh, i64 4    ; 2 uses
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !52
  %i.adp = call float @llvm.fmuladd.f32(float %i.adm, float %i.acr, float %i.ado)
  store float %i.adp, ptr %i.adn, align 4, !tbaa !52
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !52
  %i.ads = getelementptr i8, ptr %i.adh, i64 8    ; 2 uses
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !52
  %i.adu = call float @llvm.fmuladd.f32(float %i.adr, float %i.acr, float %i.adt)
  store float %i.adu, ptr %i.ads, align 4, !tbaa !52
  %i.adv = add nuw nsw i64 %.8406910, 1           ; 2 uses
  %i.adw = icmp slt i64 %i.adv, %i.xx
  br i1 %i.adw, label %.preheader852, label %._crit_edge911, !llvm.loop !91

._crit_edge911:                                   ; preds = %.preheader852, %middle.block1405
  %i.adx = add nuw nsw i64 %i.aco, 1
  %i.ady = mul nsw i64 %i.adx, %i.pc
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !52 ; 4 uses
  %i.aeb = getelementptr [4 x i8], ptr %i.ph, i64 %i.ady ; 2 uses
  %43 = call i64 @llvm.smax.i64(i64 %i.aby, i64 %i.xx)
  %44 = sub i64 %43, %.0392913                    ; 3 uses
  %min.iters.check1359 = icmp ult i64 %44, 8
  br i1 %min.iters.check1359, label %.preheader852.1.preheader, label %vector.memcheck1347

vector.memcheck1347:                              ; preds = %._crit_edge911
  %bound01354 = icmp ult ptr %scevgep1348.a, %scevgep1353
  %bound11355 = icmp ult ptr %i.acp, %scevgep1351.a
  %found.conflict1356 = and i1 %bound01354, %bound11355
  br i1 %found.conflict1356, label %.preheader852.1.preheader, label %vector.ph1360

vector.ph1360:                                    ; preds = %vector.memcheck1347
  %n.vec1361 = and i64 %44, -8                    ; 3 uses
  %i.aec = add i64 %.0392913, %n.vec1361
  %broadcast.splatinsert1362 = insertelement <8 x float> poison, float %i.aea, i64 0
  %i.aed = shufflevector <8 x float> %broadcast.splatinsert1362, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1360
  %index1365 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1375, %vector.body1364 ] ; 2 uses
  %i.aee = add nuw i64 %.0392913, %index1365      ; 2 uses
  %i.aef = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.aee
  %i.aeg = mul nuw nsw i64 %i.aee, 12
  %i.aeh = getelementptr i8, ptr %i.aeb, i64 %i.aeg ; 2 uses
  %wide.vec1366 = load <24 x float>, ptr %i.aef, align 4, !tbaa !52, !alias.scope !92
  %wide.vec1370 = load <24 x float>, ptr %i.aeh, align 4, !tbaa !52, !alias.scope !95, !noalias !92
  %interleaved.vec1374 = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec1366, <24 x float> %i.aed, <24 x float> %wide.vec1370)
  store <24 x float> %interleaved.vec1374, ptr %i.aeh, align 4, !tbaa !52, !alias.scope !95, !noalias !92
  %index.next1375 = add nuw i64 %index1365, 8     ; 2 uses
  %i.aei = icmp eq i64 %index.next1375, %n.vec1361
  br i1 %i.aei, label %middle.block1376, label %vector.body1364, !llvm.loop !97

middle.block1376:                                 ; preds = %vector.body1364
  %cmp.n1377 = icmp eq i64 %44, %n.vec1361
  br i1 %cmp.n1377, label %._crit_edge911.1, label %.preheader852.1.preheader

.preheader852.1.preheader:                        ; preds = %vector.memcheck1347, %._crit_edge911, %middle.block1376
  %.8406910.1.ph = phi i64 [ %.0392913, %vector.memcheck1347 ], [ %.0392913, %._crit_edge911 ], [ %i.aec, %middle.block1376 ]
  br label %.preheader852.1

.preheader852.1:                                  ; preds = %.preheader852.1.preheader, %.preheader852.1
  %.8406910.1 = phi i64 [ %i.aey, %.preheader852.1 ], [ %.8406910.1.ph, %.preheader852.1.preheader ] ; 3 uses
  %i.aej = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910.1 ; 3 uses
  %.idx502.1 = mul nuw nsw i64 %.8406910.1, 12
  %i.aek = getelementptr i8, ptr %i.aeb, i64 %.idx502.1 ; 4 uses
  %i.ael = load float, ptr %i.aej, align 4, !tbaa !52
  %i.aem = load float, ptr %i.aek, align 4, !tbaa !52
  %i.aen = call float @llvm.fmuladd.f32(float %i.ael, float %i.aea, float %i.aem)
  store float %i.aen, ptr %i.aek, align 4, !tbaa !52
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aej, i64 4
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !52
  %i.aeq = getelementptr i8, ptr %i.aek, i64 4    ; 2 uses
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !52
  %i.aes = call float @llvm.fmuladd.f32(float %i.aep, float %i.aea, float %i.aer)
  store float %i.aes, ptr %i.aeq, align 4, !tbaa !52
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !52
  %i.aev = getelementptr i8, ptr %i.aek, i64 8    ; 2 uses
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !52
  %i.aex = call float @llvm.fmuladd.f32(float %i.aeu, float %i.aea, float %i.aew)
  store float %i.aex, ptr %i.aev, align 4, !tbaa !52
  %i.aey = add nuw nsw i64 %.8406910.1, 1         ; 2 uses
  %i.aez = icmp slt i64 %i.aey, %i.xx
  br i1 %i.aez, label %.preheader852.1, label %._crit_edge911.1, !llvm.loop !98

._crit_edge911.1:                                 ; preds = %.preheader852.1, %middle.block1376
  %i.afa = add nuw nsw i64 %i.aco, 2
  %i.afb = mul nsw i64 %i.afa, %i.pc
  %i.afc = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !52 ; 4 uses
  %i.afe = getelementptr [4 x i8], ptr %i.ph, i64 %i.afb ; 2 uses
  %45 = call i64 @llvm.smax.i64(i64 %i.acg, i64 %i.xx)
  %46 = sub i64 %45, %.0392913                    ; 3 uses
  %min.iters.check1332 = icmp ult i64 %46, 8
  br i1 %min.iters.check1332, label %.preheader852.2.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge911.1
  %bound0 = icmp ult ptr %scevgep, %scevgep1330
  %bound1 = icmp ult ptr %i.acp, %scevgep1328
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader852.2.preheader, label %vector.ph1333

vector.ph1333:                                    ; preds = %vector.memcheck
  %n.vec1334 = and i64 %46, -8                    ; 3 uses
  %i.aff = add i64 %.0392913, %n.vec1334
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.afd, i64 0
  %i.afg = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1343, %vector.body1335 ] ; 2 uses
  %i.afh = add nuw i64 %.0392913, %index1336      ; 2 uses
  %i.afi = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %i.afh
  %i.afj = mul nuw nsw i64 %i.afh, 12
  %i.afk = getelementptr i8, ptr %i.afe, i64 %i.afj ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.afi, align 4, !tbaa !52, !alias.scope !99
  %wide.vec1339 = load <24 x float>, ptr %i.afk, align 4, !tbaa !52, !alias.scope !102, !noalias !99
  %interleaved.vec = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %wide.vec, <24 x float> %i.afg, <24 x float> %wide.vec1339)
  store <24 x float> %interleaved.vec, ptr %i.afk, align 4, !tbaa !52, !alias.scope !102, !noalias !99
  %index.next1343 = add nuw i64 %index1336, 8     ; 2 uses
  %i.afl = icmp eq i64 %index.next1343, %n.vec1334
  br i1 %i.afl, label %middle.block1344, label %vector.body1335, !llvm.loop !104

middle.block1344:                                 ; preds = %vector.body1335
  %cmp.n1345 = icmp eq i64 %46, %n.vec1334
  br i1 %cmp.n1345, label %._crit_edge911.2, label %.preheader852.2.preheader

.preheader852.2.preheader:                        ; preds = %vector.memcheck, %._crit_edge911.1, %middle.block1344
  %.8406910.2.ph = phi i64 [ %.0392913, %vector.memcheck ], [ %.0392913, %._crit_edge911.1 ], [ %i.aff, %middle.block1344 ]
  br label %.preheader852.2

.preheader852.2:                                  ; preds = %.preheader852.2.preheader, %.preheader852.2
  %.8406910.2 = phi i64 [ %i.agb, %.preheader852.2 ], [ %.8406910.2.ph, %.preheader852.2.preheader ] ; 3 uses
  %i.afm = getelementptr inbounds nuw [12 x i8], ptr %i.ow, i64 %.8406910.2 ; 3 uses
  %.idx502.2 = mul nuw nsw i64 %.8406910.2, 12
  %i.afn = getelementptr i8, ptr %i.afe, i64 %.idx502.2 ; 4 uses
  %i.afo = load float, ptr %i.afm, align 4, !tbaa !52
  %i.afp = load float, ptr %i.afn, align 4, !tbaa !52
  %i.afq = call float @llvm.fmuladd.f32(float %i.afo, float %i.afd, float %i.afp)
  store float %i.afq, ptr %i.afn, align 4, !tbaa !52
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !52
  %i.aft = getelementptr i8, ptr %i.afn, i64 4    ; 2 uses
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !52
  %i.afv = call float @llvm.fmuladd.f32(float %i.afs, float %i.afd, float %i.afu)
  store float %i.afv, ptr %i.aft, align 4, !tbaa !52
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !52
  %i.afy = getelementptr i8, ptr %i.afn, i64 8    ; 2 uses
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !52
  %i.aga = call float @llvm.fmuladd.f32(float %i.afx, float %i.afd, float %i.afz)
  store float %i.aga, ptr %i.afy, align 4, !tbaa !52
  %i.agb = add nuw nsw i64 %.8406910.2, 1         ; 2 uses
  %i.agc = icmp slt i64 %i.agb, %i.xx
  br i1 %i.agc, label %.preheader852.2, label %._crit_edge911.2, !llvm.loop !105

._crit_edge911.2:                                 ; preds = %.preheader852.2, %middle.block1344
  %i.agd = add nuw nsw i64 %.0392913, 1           ; 2 uses
  %exitcond1012.not = icmp eq i64 %i.agd, %i.xx
  br i1 %exitcond1012.not, label %._crit_edge914, label %.preheader853, !llvm.loop !106

._crit_edge914:                                   ; preds = %._crit_edge911.2, %.preheader854, %.preheader856
  %i.age = load ptr, ptr %i.z, align 8, !tbaa !76
  %i.agf = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.agg = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.agh = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.age, ptr noundef %i.agf, ptr noundef nonnull %i.k, ptr noundef %i.agg, ptr noundef nonnull %i.i)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.di:                                            ; preds = %._crit_edge914
  br i1 %i.agh, label %bb.dj, label %.critedge

bb.dj:                                            ; preds = %bb.di
  %i.agi = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.agj = trunc nuw i8 %i.agi to i1
  %i.agk = icmp samesign ult i32 %.0421, %.0422
  %i.agl = select i1 %i.agj, i1 true, i1 %i.agk
  br i1 %i.agl, label %bb.cu, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %bb.di, %bb.dj
  %i.agm = load ptr, ptr %i.e, align 8, !tbaa !79
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.agm)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %.critedge
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %.0377)
          to label %bb.dl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk
  %i.agn = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.ago = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agn, ptr noundef nonnull @.str.67, i32 noundef %i.xe) #28 ; 0 uses
  %i.agp = load i8, ptr @_ZZ9gmx_covariPPcE4bRef, align 1, !tbaa !30, !range !32, !noundef !33
  %i.agq = trunc nuw i8 %i.agp to i1
  %.pre1051 = load i32, ptr %i.l, align 4, !tbaa !9 ; 3 uses
  br i1 %i.agq, label %bb.dm, label %.loopexit851

bb.dm:                                            ; preds = %bb.dl
  %i.agr = sext i32 %.pre1051 to i64
  %i.ags = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.50, i32 noundef 435, i64 noundef range(i64 -2147483648, 2147483648) %i.agr, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader: ; preds = %bb.dm
  %i.agt = load i32, ptr %i.l, align 4, !tbaa !9  ; 5 uses
  %i.agu = sext i32 %i.agt to i64                 ; 4 uses
  %i.agv = icmp sgt i32 %i.agt, 0
  br i1 %i.agv, label %.lr.ph916, label %.preheader848

.lr.ph916:                                        ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader
  %i.agw = load ptr, ptr %i.h, align 8, !tbaa !74 ; 5 uses
  %i.agx = load ptr, ptr %i.x, align 8, !tbaa !34 ; 5 uses
  %xtraiter1646 = and i64 %i.agu, 3
  %i.agy = icmp ult i32 %i.agt, 4
  br i1 %i.agy, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader, label %.lr.ph916.new

.lr.ph916.new:                                    ; preds = %.lr.ph916
  %unroll_iter1650 = and i64 %i.agu, 2147483644
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574, %.lr.ph916.new
  %.9407915 = phi i64 [ 0, %.lr.ph916.new ], [ %i.aiy, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574 ] ; 6 uses
  %niter1651 = phi i64 [ 0, %.lr.ph916.new ], [ %niter1651.next.3, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574 ]
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.9407915
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !9
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds [12 x i8], ptr %i.agw, i64 %i.ahb ; 3 uses
  %i.ahd = getelementptr inbounds nuw [12 x i8], ptr %i.ags, i64 %.9407915 ; 3 uses
  %i.ahe = load float, ptr %i.ahc, align 4, !tbaa !52
  store float %i.ahe, ptr %i.ahd, align 4, !tbaa !52
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !52
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4
  store float %i.ahg, ptr %i.ahh, align 4, !tbaa !52
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !52
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store float %i.ahj, ptr %i.ahk, align 4, !tbaa !52
  %i.ahl = or disjoint i64 %.9407915, 1           ; 2 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.ahl
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !9
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds [12 x i8], ptr %i.agw, i64 %i.aho ; 3 uses
  %i.ahq = getelementptr inbounds nuw [12 x i8], ptr %i.ags, i64 %i.ahl ; 3 uses
  %i.ahr = load float, ptr %i.ahp, align 4, !tbaa !52
  store float %i.ahr, ptr %i.ahq, align 4, !tbaa !52
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !52
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahq, i64 4
  store float %i.aht, ptr %i.ahu, align 4, !tbaa !52
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !52
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  store float %i.ahw, ptr %i.ahx, align 4, !tbaa !52
  %i.ahy = or disjoint i64 %.9407915, 2           ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.ahy
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !9
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds [12 x i8], ptr %i.agw, i64 %i.aib ; 3 uses
  %i.aid = getelementptr inbounds nuw [12 x i8], ptr %i.ags, i64 %i.ahy ; 3 uses
  %i.aie = load float, ptr %i.aic, align 4, !tbaa !52
  store float %i.aie, ptr %i.aid, align 4, !tbaa !52
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 4
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !52
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  store float %i.aig, ptr %i.aih, align 4, !tbaa !52
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !52
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  store float %i.aij, ptr %i.aik, align 4, !tbaa !52
  %i.ail = or disjoint i64 %.9407915, 3           ; 2 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !9
  %i.aio = sext i32 %i.ain to i64
  %i.aip = getelementptr inbounds [12 x i8], ptr %i.agw, i64 %i.aio ; 3 uses
  %i.aiq = getelementptr inbounds nuw [12 x i8], ptr %i.ags, i64 %i.ail ; 3 uses
  %i.air = load float, ptr %i.aip, align 4, !tbaa !52
  store float %i.air, ptr %i.aiq, align 4, !tbaa !52
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 4
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !52
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4
  store float %i.ait, ptr %i.aiu, align 4, !tbaa !52
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !52
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  store float %i.aiw, ptr %i.aix, align 4, !tbaa !52
  %i.aiy = add nuw nsw i64 %.9407915, 4           ; 2 uses
  %niter1651.next.3 = add i64 %niter1651, 4       ; 2 uses
  %niter1651.ncmp.3 = icmp eq i64 %niter1651.next.3, %unroll_iter1650
  br i1 %niter1651.ncmp.3, label %.preheader850.preheader.loopexit.unr-lcssa, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574, !llvm.loop !108

.loopexit851:                                     ; preds = %bb.dl
  %.pre1053 = zext nneg i32 %.pre1051 to i64
  %i.aiz = icmp sgt i32 %.pre1051, 0
  br i1 %i.aiz, label %.preheader850.preheader, label %.preheader848

.preheader850.preheader.loopexit.unr-lcssa:       ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574
  %i.aja = and i32 %i.agt, 3
  %lcmp.mod1648.not = icmp eq i32 %i.aja, 0
  br i1 %lcmp.mod1648.not, label %.preheader850.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader: ; preds = %.preheader850.preheader.loopexit.unr-lcssa, %.lr.ph916
  %.9407915.epil.init = phi i64 [ 0, %.lr.ph916 ], [ %i.aiy, %.preheader850.preheader.loopexit.unr-lcssa ]
  %i.ajb = and i32 %i.agt, 3
  %lcmp.mod1649 = icmp ne i32 %i.ajb, 0
  call void @llvm.assume(i1 %lcmp.mod1649)
  br label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil: ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader
  %.9407915.epil = phi i64 [ %.9407915.epil.init, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader ], [ %i.ajo, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ] ; 3 uses
  %epil.iter1647 = phi i64 [ 0, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil.preheader ], [ %epil.iter1647.next, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ]
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.9407915.epil
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !9
  %i.aje = sext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds [12 x i8], ptr %i.agw, i64 %i.aje ; 3 uses
  %i.ajg = getelementptr inbounds nuw [12 x i8], ptr %i.ags, i64 %.9407915.epil ; 3 uses
  %i.ajh = load float, ptr %i.ajf, align 4, !tbaa !52
  store float %i.ajh, ptr %i.ajg, align 4, !tbaa !52
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajf, i64 4
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !52
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajg, i64 4
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !52
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !52
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  store float %i.ajm, ptr %i.ajn, align 4, !tbaa !52
  %i.ajo = add nuw nsw i64 %.9407915.epil, 1
  %epil.iter1647.next = add i64 %epil.iter1647, 1 ; 2 uses
  %epil.iter1647.cmp.not = icmp eq i64 %epil.iter1647.next, %xtraiter1646
  br i1 %epil.iter1647.cmp.not, label %.preheader850.preheader, label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, !llvm.loop !109

.preheader850.preheader:                          ; preds = %.preheader850.preheader.loopexit.unr-lcssa, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil, %.loopexit851
  %.01251 = phi ptr [ %i.oz, %.loopexit851 ], [ %i.ags, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ], [ %i.ags, %.preheader850.preheader.loopexit.unr-lcssa ]
  %.pre-phi10541249 = phi i64 [ %.pre1053, %.loopexit851 ], [ %i.agu, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.epil ], [ %i.agu, %.preheader850.preheader.loopexit.unr-lcssa ] ; 10 uses
  %.pn1271 = uitofp nneg i32 %i.xe to double
  %.in = fdiv nnan double 1.000000e+00, %.pn1271
  %i.ajp = fptrunc double %.in to float           ; 12 uses
  %i.ajq = shl nsw i64 %.pre-phi10541249, 2
  %scevgep1413.a = getelementptr i8, ptr %i.ih, i64 %i.ajq ; 3 uses
  %i.ajr = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.ajs = getelementptr i8, ptr %i.ph, i64 %i.wx
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 12
  %i.aju = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.ajv = getelementptr i8, ptr %i.ph, i64 %i.wu
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 12
  %broadcast.splatinsert1506 = insertelement <8 x float> poison, float %i.ajp, i64 0
  %broadcast.splat1507 = shufflevector <8 x float> %broadcast.splatinsert1506, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1468 = insertelement <8 x float> poison, float %i.ajp, i64 0
  %broadcast.splat1469 = shufflevector <8 x float> %broadcast.splatinsert1468, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1427 = insertelement <8 x float> poison, float %i.ajp, i64 0
  %broadcast.splat1428 = shufflevector <8 x float> %broadcast.splatinsert1427, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %.preheader850

.preheader850:                                    ; preds = %.preheader850.preheader, %._crit_edge920.2
  %.1393923 = phi i64 [ %i.aqd, %._crit_edge920.2 ], [ 0, %.preheader850.preheader ] ; 31 uses
  %i.ajx = add nuw i64 %.1393923, 1
  %i.ajy = mul i64 %i.ww, %.1393923               ; 2 uses
  %scevgep1450.a = getelementptr i8, ptr %i.ajr, i64 %i.ajy ; 2 uses
  %scevgep1451.a = getelementptr i8, ptr %i.ajt, i64 %i.ajy
  %i.ajz = add nuw i64 %.1393923, 1
  %smax1452 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.ajz) ; 2 uses
  %i.aka = xor i64 %.1393923, -1
  %i.akb = add i64 %smax1452, %i.aka              ; 2 uses
  %i.akc = mul i64 %i.akb, 12
  %scevgep1453 = getelementptr i8, ptr %scevgep1451.a, i64 %i.akc ; 2 uses
  %i.akd = shl i64 %.1393923, 2
  %i.ake = getelementptr i8, ptr %i.ih, i64 %i.akd
  %scevgep1454 = getelementptr i8, ptr %i.ake, i64 4
  %i.akf = shl i64 %i.akb, 2
  %scevgep1455 = getelementptr i8, ptr %scevgep1454, i64 %i.akf ; 2 uses
  %i.akg = add nuw i64 %.1393923, 1
  %i.akh = mul i64 %i.ww, %.1393923               ; 2 uses
  %scevgep1409 = getelementptr i8, ptr %i.aju, i64 %i.akh ; 2 uses
  %scevgep1410.a = getelementptr i8, ptr %i.ajw, i64 %i.akh
  %i.aki = add nuw i64 %.1393923, 1
  %smax1411 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.aki)
  %i.akj = xor i64 %.1393923, -1
  %i.akk = add i64 %smax1411, %i.akj              ; 2 uses
  %i.akl = mul i64 %i.akk, 12
  %scevgep1412.a = getelementptr i8, ptr %scevgep1410.a, i64 %i.akl ; 2 uses
  %i.akm = shl i64 %.1393923, 2
  %i.akn = getelementptr i8, ptr %i.ih, i64 %i.akm
  %scevgep1414 = getelementptr i8, ptr %i.akn, i64 4
  %i.ako = shl i64 %i.akk, 2
  %scevgep1415 = getelementptr i8, ptr %scevgep1414, i64 %i.ako
  %i.akp = mul nuw nsw i64 %.1393923, 3           ; 3 uses
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.1393923 ; 15 uses
  %i.akr = mul nsw i64 %i.akp, %i.pc
  %i.aks = getelementptr [4 x i8], ptr %i.ph, i64 %i.akr ; 2 uses
  %47 = sub i64 %smax1452, %.1393923              ; 3 uses
  %min.iters.check1503 = icmp ult i64 %47, 8
  br i1 %min.iters.check1503, label %scalar.ph1502.preheader, label %vector.memcheck1490

vector.memcheck1490:                              ; preds = %.preheader850
  %i.akt = mul i64 %i.ww, %.1393923               ; 2 uses
  %i.aku = getelementptr i8, ptr %i.ph, i64 %i.akt
  %scevgep1492 = getelementptr i8, ptr %i.aku, i64 12
  %i.akv = add nuw i64 %.1393923, 1
  %smax1493 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akv)
  %i.akw = xor i64 %.1393923, -1
  %i.akx = add i64 %smax1493, %i.akw
  %i.aky = mul i64 %i.akx, 12
  %scevgep1494 = getelementptr i8, ptr %scevgep1492, i64 %i.aky ; 2 uses
  %scevgep1491 = getelementptr i8, ptr %i.ph, i64 %i.akt ; 2 uses
  %bound01495 = icmp ult ptr %scevgep1491, %scevgep1413.a
  %bound11496 = icmp ult ptr %i.ih, %scevgep1494
  %found.conflict1497 = and i1 %bound01495, %bound11496
  %bound01498 = icmp ult ptr %scevgep1491, %scevgep1455
  %bound11499 = icmp ult ptr %i.akq, %scevgep1494
  %found.conflict1500 = and i1 %bound01498, %bound11499
  %conflict.rdx1501 = or i1 %found.conflict1497, %found.conflict1500
  br i1 %conflict.rdx1501, label %scalar.ph1502.preheader, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1490
  %n.vec1505 = and i64 %47, -8                    ; 3 uses
  %i.akz = add i64 %.1393923, %n.vec1505
  %i.ala = load float, ptr %i.akq, align 4, !tbaa !52, !alias.scope !110 ; 3 uses
  %broadcast.splatinsert1515 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splatinsert1518 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splatinsert1521 = insertelement <8 x float> poison, float %i.ala, i64 0
  %broadcast.splat1522 = shufflevector <8 x float> %broadcast.splatinsert1521, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alb = shufflevector <8 x float> %broadcast.splatinsert1515, <8 x float> %broadcast.splatinsert1518, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1504
  %index1509 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1524, %vector.body1508 ] ; 2 uses
  %i.alc = add nuw i64 %.1393923, %index1509      ; 2 uses
  %i.ald = mul nuw nsw i64 %i.alc, 12
  %i.ale = getelementptr i8, ptr %i.aks, i64 %i.ald ; 2 uses
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.alc
  %wide.vec1510 = load <24 x float>, ptr %i.ale, align 4, !tbaa !52, !alias.scope !113, !noalias !115 ; 3 uses
  %strided.vec1511 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1512 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1513 = shufflevector <24 x float> %wide.vec1510, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.alg = fmul <8 x float> %strided.vec1511, %broadcast.splat1507
  %wide.load1514 = load <8 x float>, ptr %i.alf, align 4, !tbaa !52, !alias.scope !117 ; 3 uses
  %i.alh = fmul <8 x float> %i.alg, %wide.load1514
  %i.ali = fmul <8 x float> %strided.vec1512, %broadcast.splat1507
  %i.alj = fmul <8 x float> %i.ali, %wide.load1514
  %i.alk = fmul <8 x float> %strided.vec1513, %broadcast.splat1507
  %i.all = fmul <8 x float> %i.alk, %wide.load1514
  %i.alm = fmul <8 x float> %i.all, %broadcast.splat1522
  %i.aln = shufflevector <8 x float> %i.alh, <8 x float> %i.alj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alo = fmul <16 x float> %i.aln, %i.alb
  %i.alp = shufflevector <8 x float> %i.alm, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1523 = shufflevector <16 x float> %i.alo, <16 x float> %i.alp, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1523, ptr %i.ale, align 4, !tbaa !52, !alias.scope !113, !noalias !115
  %index.next1524 = add nuw i64 %index1509, 8     ; 2 uses
  %i.alq = icmp eq i64 %index.next1524, %n.vec1505
  br i1 %i.alq, label %middle.block1525, label %vector.body1508, !llvm.loop !118

middle.block1525:                                 ; preds = %vector.body1508
  %cmp.n1526 = icmp eq i64 %47, %n.vec1505
  br i1 %cmp.n1526, label %._crit_edge920, label %scalar.ph1502.preheader

scalar.ph1502.preheader:                          ; preds = %vector.memcheck1490, %.preheader850, %middle.block1525
  %.10408918.ph = phi i64 [ %.1393923, %vector.memcheck1490 ], [ %.1393923, %.preheader850 ], [ %i.akz, %middle.block1525 ]
  br label %scalar.ph1502

.preheader848:                                    ; preds = %._crit_edge920.2, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader, %.loopexit851
  %.01250 = phi ptr [ %i.ags, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit574.preheader ], [ %i.oz, %.loopexit851 ], [ %.01251, %._crit_edge920.2 ]
  %i.alr = icmp sgt i32 %i.pa, 0                  ; 8 uses
  br i1 %i.alr, label %.preheader847.preheader, label %._crit_edge929

.preheader847.preheader:                          ; preds = %.preheader848
  %xtraiter1652 = and i64 %i.pc, 3
  %i.als = icmp ult i32 %i.pb, 4
  br i1 %i.als, label %.preheader847.epil.preheader, label %.preheader847.preheader.new

.preheader847.preheader.new:                      ; preds = %.preheader847.preheader
  %unroll_iter1656 = and i64 %i.pc, 2147483644
  br label %.preheader847

scalar.ph1502:                                    ; preds = %scalar.ph1502.preheader, %scalar.ph1502
  %.10408918 = phi i64 [ %i.amp, %scalar.ph1502 ], [ %.10408918.ph, %scalar.ph1502.preheader ] ; 3 uses
  %.idx501 = mul nuw nsw i64 %.10408918, 12
  %i.alt = getelementptr i8, ptr %i.aks, i64 %.idx501 ; 4 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918 ; 3 uses
  %i.alv = load float, ptr %i.alt, align 4, !tbaa !52
  %i.alw = fmul float %i.alv, %i.ajp
  %i.alx = load float, ptr %i.alu, align 4, !tbaa !52
  %i.aly = fmul float %i.alw, %i.alx
  %i.alz = load float, ptr %i.akq, align 4, !tbaa !52
  %i.ama = fmul float %i.aly, %i.alz
  store float %i.ama, ptr %i.alt, align 4, !tbaa !52
  %i.amb = getelementptr i8, ptr %i.alt, i64 4    ; 2 uses
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !52
  %i.amd = fmul float %i.amc, %i.ajp
  %i.ame = load float, ptr %i.alu, align 4, !tbaa !52
  %i.amf = fmul float %i.amd, %i.ame
  %i.amg = load float, ptr %i.akq, align 4, !tbaa !52
  %i.amh = fmul float %i.amf, %i.amg
  store float %i.amh, ptr %i.amb, align 4, !tbaa !52
  %i.ami = getelementptr i8, ptr %i.alt, i64 8    ; 2 uses
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !52
  %i.amk = fmul float %i.amj, %i.ajp
  %i.aml = load float, ptr %i.alu, align 4, !tbaa !52
  %i.amm = fmul float %i.amk, %i.aml
  %i.amn = load float, ptr %i.akq, align 4, !tbaa !52
  %i.amo = fmul float %i.amm, %i.amn
  store float %i.amo, ptr %i.ami, align 4, !tbaa !52
  %i.amp = add nuw nsw i64 %.10408918, 1          ; 2 uses
  %i.amq = icmp slt i64 %i.amp, %.pre-phi10541249
  br i1 %i.amq, label %scalar.ph1502, label %._crit_edge920, !llvm.loop !119

._crit_edge920:                                   ; preds = %scalar.ph1502, %middle.block1525
  %i.amr = add nuw nsw i64 %i.akp, 1
  %i.ams = mul nsw i64 %i.amr, %i.pc
  %i.amt = getelementptr [4 x i8], ptr %i.ph, i64 %i.ams ; 2 uses
  %48 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.ajx)
  %49 = sub i64 %48, %.1393923                    ; 3 uses
  %min.iters.check1465 = icmp ult i64 %49, 8
  br i1 %min.iters.check1465, label %scalar.ph1464.preheader, label %vector.memcheck1449

vector.memcheck1449:                              ; preds = %._crit_edge920
  %bound01456.a = icmp ult ptr %scevgep1450.a, %scevgep1413.a
  %bound11457.a = icmp ult ptr %i.ih, %scevgep1453
  %found.conflict1458.a = and i1 %bound01456.a, %bound11457.a
  %bound01459 = icmp ult ptr %scevgep1450.a, %scevgep1455
  %bound11460 = icmp ult ptr %i.akq, %scevgep1453
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %conflict.rdx1462 = or i1 %found.conflict1458.a, %found.conflict1461
  br i1 %conflict.rdx1462, label %scalar.ph1464.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %vector.memcheck1449
  %n.vec1467 = and i64 %49, -8                    ; 3 uses
  %i.amu = add i64 %.1393923, %n.vec1467
  %i.amv = load float, ptr %i.akq, align 4, !tbaa !52, !alias.scope !120 ; 3 uses
  %broadcast.splatinsert1477 = insertelement <8 x float> poison, float %i.amv, i64 0
  %broadcast.splatinsert1480 = insertelement <8 x float> poison, float %i.amv, i64 0
  %broadcast.splatinsert1483 = insertelement <8 x float> poison, float %i.amv, i64 0
  %broadcast.splat1484 = shufflevector <8 x float> %broadcast.splatinsert1483, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amw = shufflevector <8 x float> %broadcast.splatinsert1477, <8 x float> %broadcast.splatinsert1480, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1466
  %index1471 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1486, %vector.body1470 ] ; 2 uses
  %i.amx = add nuw i64 %.1393923, %index1471      ; 2 uses
  %i.amy = mul nuw nsw i64 %i.amx, 12
  %i.amz = getelementptr i8, ptr %i.amt, i64 %i.amy ; 2 uses
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.amx
  %wide.vec1472 = load <24 x float>, ptr %i.amz, align 4, !tbaa !52, !alias.scope !123, !noalias !125 ; 3 uses
  %strided.vec1473 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1474 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1475 = shufflevector <24 x float> %wide.vec1472, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.anb = fmul <8 x float> %strided.vec1473, %broadcast.splat1469
  %wide.load1476 = load <8 x float>, ptr %i.ana, align 4, !tbaa !52, !alias.scope !127 ; 3 uses
  %i.anc = fmul <8 x float> %i.anb, %wide.load1476
  %i.and = fmul <8 x float> %strided.vec1474, %broadcast.splat1469
  %i.ane = fmul <8 x float> %i.and, %wide.load1476
  %i.anf = fmul <8 x float> %strided.vec1475, %broadcast.splat1469
  %i.ang = fmul <8 x float> %i.anf, %wide.load1476
  %i.anh = fmul <8 x float> %i.ang, %broadcast.splat1484
  %i.ani = shufflevector <8 x float> %i.anc, <8 x float> %i.ane, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anj = fmul <16 x float> %i.ani, %i.amw
  %i.ank = shufflevector <8 x float> %i.anh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1485 = shufflevector <16 x float> %i.anj, <16 x float> %i.ank, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1485, ptr %i.amz, align 4, !tbaa !52, !alias.scope !123, !noalias !125
  %index.next1486 = add nuw i64 %index1471, 8     ; 2 uses
  %i.anl = icmp eq i64 %index.next1486, %n.vec1467
  br i1 %i.anl, label %middle.block1487, label %vector.body1470, !llvm.loop !128

middle.block1487:                                 ; preds = %vector.body1470
  %cmp.n1488 = icmp eq i64 %49, %n.vec1467
  br i1 %cmp.n1488, label %._crit_edge920.1, label %scalar.ph1464.preheader

scalar.ph1464.preheader:                          ; preds = %vector.memcheck1449, %._crit_edge920, %middle.block1487
  %.10408918.1.ph = phi i64 [ %.1393923, %vector.memcheck1449 ], [ %.1393923, %._crit_edge920 ], [ %i.amu, %middle.block1487 ]
  br label %scalar.ph1464

scalar.ph1464:                                    ; preds = %scalar.ph1464.preheader, %scalar.ph1464
  %.10408918.1 = phi i64 [ %i.aoi, %scalar.ph1464 ], [ %.10408918.1.ph, %scalar.ph1464.preheader ] ; 3 uses
  %.idx501.1 = mul nuw nsw i64 %.10408918.1, 12
  %i.anm = getelementptr i8, ptr %i.amt, i64 %.idx501.1 ; 4 uses
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918.1 ; 3 uses
  %i.ano = load float, ptr %i.anm, align 4, !tbaa !52
  %i.anp = fmul float %i.ano, %i.ajp
  %i.anq = load float, ptr %i.ann, align 4, !tbaa !52
  %i.anr = fmul float %i.anp, %i.anq
  %i.ans = load float, ptr %i.akq, align 4, !tbaa !52
  %i.ant = fmul float %i.anr, %i.ans
  store float %i.ant, ptr %i.anm, align 4, !tbaa !52
  %i.anu = getelementptr i8, ptr %i.anm, i64 4    ; 2 uses
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !52
  %i.anw = fmul float %i.anv, %i.ajp
  %i.anx = load float, ptr %i.ann, align 4, !tbaa !52
  %i.any = fmul float %i.anw, %i.anx
  %i.anz = load float, ptr %i.akq, align 4, !tbaa !52
  %i.aoa = fmul float %i.any, %i.anz
  store float %i.aoa, ptr %i.anu, align 4, !tbaa !52
  %i.aob = getelementptr i8, ptr %i.anm, i64 8    ; 2 uses
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !52
  %i.aod = fmul float %i.aoc, %i.ajp
  %i.aoe = load float, ptr %i.ann, align 4, !tbaa !52
  %i.aof = fmul float %i.aod, %i.aoe
  %i.aog = load float, ptr %i.akq, align 4, !tbaa !52
  %i.aoh = fmul float %i.aof, %i.aog
  store float %i.aoh, ptr %i.aob, align 4, !tbaa !52
  %i.aoi = add nuw nsw i64 %.10408918.1, 1        ; 2 uses
  %i.aoj = icmp slt i64 %i.aoi, %.pre-phi10541249
  br i1 %i.aoj, label %scalar.ph1464, label %._crit_edge920.1, !llvm.loop !129

._crit_edge920.1:                                 ; preds = %scalar.ph1464, %middle.block1487
  %i.aok = add nuw nsw i64 %i.akp, 2
  %i.aol = mul nsw i64 %i.aok, %i.pc
  %i.aom = getelementptr [4 x i8], ptr %i.ph, i64 %i.aol ; 2 uses
  %50 = call i64 @llvm.smax.i64(i64 %.pre-phi10541249, i64 %i.akg)
  %51 = sub i64 %50, %.1393923                    ; 3 uses
  %min.iters.check1424 = icmp ult i64 %51, 8
  br i1 %min.iters.check1424, label %scalar.ph1423.preheader, label %vector.memcheck1408

vector.memcheck1408:                              ; preds = %._crit_edge920.1
  %bound01416 = icmp ult ptr %scevgep1409, %scevgep1413.a
  %bound11417 = icmp ult ptr %i.ih, %scevgep1412.a
  %found.conflict1418 = and i1 %bound01416, %bound11417
  %bound01419 = icmp ult ptr %scevgep1409, %scevgep1415
  %bound11420 = icmp ult ptr %i.akq, %scevgep1412.a
  %found.conflict1421 = and i1 %bound01419, %bound11420
  %conflict.rdx = or i1 %found.conflict1418, %found.conflict1421
  br i1 %conflict.rdx, label %scalar.ph1423.preheader, label %vector.ph1425

vector.ph1425:                                    ; preds = %vector.memcheck1408
  %n.vec1426 = and i64 %51, -8                    ; 3 uses
  %i.aon = add i64 %.1393923, %n.vec1426
  %i.aoo = load float, ptr %i.akq, align 4, !tbaa !52, !alias.scope !130 ; 3 uses
  %broadcast.splatinsert1436.a = insertelement <8 x float> poison, float %i.aoo, i64 0
  %broadcast.splatinsert1439.a = insertelement <8 x float> poison, float %i.aoo, i64 0
  %broadcast.splatinsert1442 = insertelement <8 x float> poison, float %i.aoo, i64 0
  %broadcast.splat1443 = shufflevector <8 x float> %broadcast.splatinsert1442, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aop = shufflevector <8 x float> %broadcast.splatinsert1436.a, <8 x float> %broadcast.splatinsert1439.a, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1425
  %index1430 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1445, %vector.body1429 ] ; 2 uses
  %i.aoq = add nuw i64 %.1393923, %index1430      ; 2 uses
  %i.aor = mul nuw nsw i64 %i.aoq, 12
  %i.aos = getelementptr i8, ptr %i.aom, i64 %i.aor ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.aoq
  %wide.vec1431 = load <24 x float>, ptr %i.aos, align 4, !tbaa !52, !alias.scope !133, !noalias !135 ; 3 uses
  %strided.vec1432 = shufflevector <24 x float> %wide.vec1431, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1433 = shufflevector <24 x float> %wide.vec1431, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1434 = shufflevector <24 x float> %wide.vec1431, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aou = fmul <8 x float> %strided.vec1432, %broadcast.splat1428
  %wide.load1435 = load <8 x float>, ptr %i.aot, align 4, !tbaa !52, !alias.scope !137 ; 3 uses
  %i.aov = fmul <8 x float> %i.aou, %wide.load1435
  %i.aow = fmul <8 x float> %strided.vec1433, %broadcast.splat1428
  %i.aox = fmul <8 x float> %i.aow, %wide.load1435
  %i.aoy = fmul <8 x float> %strided.vec1434, %broadcast.splat1428
  %i.aoz = fmul <8 x float> %i.aoy, %wide.load1435
  %i.apa = fmul <8 x float> %i.aoz, %broadcast.splat1443
  %i.apb = shufflevector <8 x float> %i.aov, <8 x float> %i.aox, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apc = fmul <16 x float> %i.apb, %i.aop
  %i.apd = shufflevector <8 x float> %i.apa, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec1444 = shufflevector <16 x float> %i.apc, <16 x float> %i.apd, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec1444, ptr %i.aos, align 4, !tbaa !52, !alias.scope !133, !noalias !135
  %index.next1445 = add nuw i64 %index1430, 8     ; 2 uses
  %i.ape = icmp eq i64 %index.next1445, %n.vec1426
  br i1 %i.ape, label %middle.block1446, label %vector.body1429, !llvm.loop !138

middle.block1446:                                 ; preds = %vector.body1429
  %cmp.n1447 = icmp eq i64 %51, %n.vec1426
  br i1 %cmp.n1447, label %._crit_edge920.2, label %scalar.ph1423.preheader

scalar.ph1423.preheader:                          ; preds = %vector.memcheck1408, %._crit_edge920.1, %middle.block1446
  %.10408918.2.ph = phi i64 [ %.1393923, %vector.memcheck1408 ], [ %.1393923, %._crit_edge920.1 ], [ %i.aon, %middle.block1446 ]
  br label %scalar.ph1423

scalar.ph1423:                                    ; preds = %scalar.ph1423.preheader, %scalar.ph1423
  %.10408918.2 = phi i64 [ %i.aqb, %scalar.ph1423 ], [ %.10408918.2.ph, %scalar.ph1423.preheader ] ; 3 uses
  %.idx501.2 = mul nuw nsw i64 %.10408918.2, 12
  %i.apf = getelementptr i8, ptr %i.aom, i64 %.idx501.2 ; 4 uses
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.10408918.2 ; 3 uses
  %i.aph = load float, ptr %i.apf, align 4, !tbaa !52
  %i.api = fmul float %i.aph, %i.ajp
  %i.apj = load float, ptr %i.apg, align 4, !tbaa !52
  %i.apk = fmul float %i.api, %i.apj
  %i.apl = load float, ptr %i.akq, align 4, !tbaa !52
  %i.apm = fmul float %i.apk, %i.apl
  store float %i.apm, ptr %i.apf, align 4, !tbaa !52
  %i.apn = getelementptr i8, ptr %i.apf, i64 4    ; 2 uses
  %i.apo = load float, ptr %i.apn, align 4, !tbaa !52
  %i.app = fmul float %i.apo, %i.ajp
  %i.apq = load float, ptr %i.apg, align 4, !tbaa !52
  %i.apr = fmul float %i.app, %i.apq
  %i.aps = load float, ptr %i.akq, align 4, !tbaa !52
  %i.apt = fmul float %i.apr, %i.aps
  store float %i.apt, ptr %i.apn, align 4, !tbaa !52
  %i.apu = getelementptr i8, ptr %i.apf, i64 8    ; 2 uses
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !52
  %i.apw = fmul float %i.apv, %i.ajp
  %i.apx = load float, ptr %i.apg, align 4, !tbaa !52
  %i.apy = fmul float %i.apw, %i.apx
  %i.apz = load float, ptr %i.akq, align 4, !tbaa !52
  %i.aqa = fmul float %i.apy, %i.apz
  store float %i.aqa, ptr %i.apu, align 4, !tbaa !52
  %i.aqb = add nuw nsw i64 %.10408918.2, 1        ; 2 uses
  %i.aqc = icmp slt i64 %i.aqb, %.pre-phi10541249
  br i1 %i.aqc, label %scalar.ph1423, label %._crit_edge920.2, !llvm.loop !139

._crit_edge920.2:                                 ; preds = %scalar.ph1423, %middle.block1446
  %i.aqd = add nuw nsw i64 %.1393923, 1           ; 2 uses
  %exitcond1018.not = icmp eq i64 %i.aqd, %.pre-phi10541249
  br i1 %exitcond1018.not, label %.preheader848, label %.preheader850, !llvm.loop !140

.preheader847:                                    ; preds = %bb.dt, %.preheader847.preheader.new
  %.2394925 = phi i64 [ 0, %.preheader847.preheader.new ], [ %i.aru, %bb.dt ] ; 7 uses
  %niter1657 = phi i64 [ 0, %.preheader847.preheader.new ], [ %niter1657.next.3, %bb.dt ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.ph, i64 %.2394925
  %i.aqe = mul nuw nsw i64 %.2394925, %i.pc
  %i.aqf = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqe
  br label %bb.dp

.lr.ph928.unr-lcssa:                              ; preds = %bb.dt
  %i.aqg = and i32 %i.pb, 3
  %lcmp.mod1654.not = icmp eq i32 %i.aqg, 0
  br i1 %lcmp.mod1654.not, label %.lr.ph928, label %.preheader847.epil.preheader

.preheader847.epil.preheader:                     ; preds = %.lr.ph928.unr-lcssa, %.preheader847.preheader
  %.2394925.epil.init = phi i64 [ 0, %.preheader847.preheader ], [ %i.aru, %.lr.ph928.unr-lcssa ]
  %i.aqh = and i32 %i.pb, 3
  %lcmp.mod1655 = icmp ne i32 %i.aqh, 0
  call void @llvm.assume(i1 %lcmp.mod1655)
  br label %.preheader847.epil

.preheader847.epil:                               ; preds = %bb.do, %.preheader847.epil.preheader
  %.2394925.epil = phi i64 [ %i.aqp, %bb.do ], [ %.2394925.epil.init, %.preheader847.epil.preheader ] ; 4 uses
  %epil.iter1653 = phi i64 [ %epil.iter1653.next, %bb.do ], [ 0, %.preheader847.epil.preheader ]
  %invariant.gep.epil = getelementptr [4 x i8], ptr %i.ph, i64 %.2394925.epil
  %i.aqi = mul nuw nsw i64 %.2394925.epil, %i.pc
  %i.aqj = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqi
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dn, %.preheader847.epil
  %.11409924.epil = phi i64 [ %.2394925.epil, %.preheader847.epil ], [ %i.aqn, %bb.dn ] ; 3 uses
  %i.aqk = getelementptr [4 x i8], ptr %i.aqj, i64 %.11409924.epil
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !52
  %i.aqm = mul nuw nsw i64 %.11409924.epil, %i.pc
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep.epil, i64 %i.aqm
  store float %i.aql, ptr %gep.epil, align 4, !tbaa !52
  %i.aqn = add nuw nsw i64 %.11409924.epil, 1     ; 2 uses
  %i.aqo = icmp slt i64 %i.aqn, %i.pc
  br i1 %i.aqo, label %bb.dn, label %bb.do, !llvm.loop !141

bb.do:                                            ; preds = %bb.dn
  %i.aqp = add nuw nsw i64 %.2394925.epil, 1
  %epil.iter1653.next = add i64 %epil.iter1653, 1 ; 2 uses
  %epil.iter1653.cmp.not = icmp eq i64 %epil.iter1653.next, %xtraiter1652
  br i1 %epil.iter1653.cmp.not, label %.lr.ph928, label %.preheader847.epil, !llvm.loop !142

.lr.ph928:                                        ; preds = %bb.do, %.lr.ph928.unr-lcssa
  %.12410500 = add nuw nsw i64 %i.pc, 1           ; 9 uses
  %xtraiter1659 = and i64 %i.pc, 7
  %i.aqq = icmp ult i32 %i.pb, 8
  br i1 %i.aqq, label %.epil.preheader1658, label %.lr.ph928.new

.lr.ph928.new:                                    ; preds = %.lr.ph928
  %unroll_iter1664 = and i64 %i.pc, 2147483640
  br label %bb.du

bb.dp:                                            ; preds = %.preheader847, %bb.dp
  %.11409924 = phi i64 [ %.2394925, %.preheader847 ], [ %i.aqu, %bb.dp ] ; 3 uses
  %i.aqr = getelementptr [4 x i8], ptr %i.aqf, i64 %.11409924
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !52
  %i.aqt = mul nuw nsw i64 %.11409924, %i.pc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aqt
  store float %i.aqs, ptr %gep, align 4, !tbaa !52
  %i.aqu = add nuw nsw i64 %.11409924, 1          ; 2 uses
  %i.aqv = icmp slt i64 %i.aqu, %i.pc
  br i1 %i.aqv, label %bb.dp, label %.preheader847.1, !llvm.loop !141

.preheader847.1:                                  ; preds = %bb.dp
  %i.aqw = or disjoint i64 %.2394925, 1           ; 3 uses
  %invariant.gep.1 = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqw
  %i.aqx = mul nuw nsw i64 %i.aqw, %i.pc
  %i.aqy = getelementptr [4 x i8], ptr %i.ph, i64 %i.aqx
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.preheader847.1
  %.11409924.1 = phi i64 [ %i.aqw, %.preheader847.1 ], [ %i.arc, %bb.dq ] ; 3 uses
  %i.aqz = getelementptr [4 x i8], ptr %i.aqy, i64 %.11409924.1
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !52
  %i.arb = mul nuw nsw i64 %.11409924.1, %i.pc
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.arb
  store float %i.ara, ptr %gep.1, align 4, !tbaa !52
  %i.arc = add nuw nsw i64 %.11409924.1, 1        ; 2 uses
  %i.ard = icmp slt i64 %i.arc, %i.pc
  br i1 %i.ard, label %bb.dq, label %.preheader847.2, !llvm.loop !141

.preheader847.2:                                  ; preds = %bb.dq
  %i.are = or disjoint i64 %.2394925, 2           ; 3 uses
  %invariant.gep.2 = getelementptr [4 x i8], ptr %i.ph, i64 %i.are
  %i.arf = mul nuw nsw i64 %i.are, %i.pc
  %i.arg = getelementptr [4 x i8], ptr %i.ph, i64 %i.arf
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %.preheader847.2
  %.11409924.2 = phi i64 [ %i.are, %.preheader847.2 ], [ %i.ark, %bb.dr ] ; 3 uses
  %i.arh = getelementptr [4 x i8], ptr %i.arg, i64 %.11409924.2
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !52
  %i.arj = mul nuw nsw i64 %.11409924.2, %i.pc
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.arj
  store float %i.ari, ptr %gep.2, align 4, !tbaa !52
  %i.ark = add nuw nsw i64 %.11409924.2, 1        ; 2 uses
  %i.arl = icmp slt i64 %i.ark, %i.pc
  br i1 %i.arl, label %bb.dr, label %.preheader847.3, !llvm.loop !141

.preheader847.3:                                  ; preds = %bb.dr
  %i.arm = or disjoint i64 %.2394925, 3           ; 3 uses
  %invariant.gep.3 = getelementptr [4 x i8], ptr %i.ph, i64 %i.arm
  %i.arn = mul nuw nsw i64 %i.arm, %i.pc
  %i.aro = getelementptr [4 x i8], ptr %i.ph, i64 %i.arn
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ds, %.preheader847.3
  %.11409924.3 = phi i64 [ %i.arm, %.preheader847.3 ], [ %i.ars, %bb.ds ] ; 3 uses
  %i.arp = getelementptr [4 x i8], ptr %i.aro, i64 %.11409924.3
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !52
  %i.arr = mul nuw nsw i64 %.11409924.3, %i.pc
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.arr
  store float %i.arq, ptr %gep.3, align 4, !tbaa !52
  %i.ars = add nuw nsw i64 %.11409924.3, 1        ; 2 uses
  %i.art = icmp slt i64 %i.ars, %i.pc
  br i1 %i.art, label %bb.ds, label %bb.dt, !llvm.loop !141

bb.dt:                                            ; preds = %bb.ds
  %i.aru = add nuw nsw i64 %.2394925, 4           ; 2 uses
  %niter1657.next.3 = add i64 %niter1657, 4       ; 2 uses
  %niter1657.ncmp.3 = icmp eq i64 %niter1657.next.3, %unroll_iter1656
  br i1 %niter1657.ncmp.3, label %.lr.ph928.unr-lcssa, label %.preheader847, !llvm.loop !143

bb.du:                                            ; preds = %bb.du, %.lr.ph928.new
  %.12410927 = phi i64 [ 0, %.lr.ph928.new ], [ %i.ati, %bb.du ] ; 9 uses
  %.0435926 = phi float [ 0.000000e+00, %.lr.ph928.new ], [ %i.ath, %bb.du ]
  %niter1665 = phi i64 [ 0, %.lr.ph928.new ], [ %niter1665.next.7, %bb.du ]
  %i.arv = mul i64 %.12410927, %.12410500
  %i.arw = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.arv
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !52
  %i.ary = fadd float %.0435926, %i.arx
  %i.arz = or disjoint i64 %.12410927, 1
  %i.asa = mul i64 %i.arz, %.12410500
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.asa
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !52
  %i.asd = fadd float %i.ary, %i.asc
  %i.ase = or disjoint i64 %.12410927, 2
  %i.asf = mul i64 %i.ase, %.12410500
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.asf
  %i.ash = load float, ptr %i.asg, align 4, !tbaa !52
  %i.asi = fadd float %i.asd, %i.ash
  %i.asj = or disjoint i64 %.12410927, 3
  %i.ask = mul i64 %i.asj, %.12410500
  %i.asl = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.ask
  %i.asm = load float, ptr %i.asl, align 4, !tbaa !52
  %i.asn = fadd float %i.asi, %i.asm
  %i.aso = or disjoint i64 %.12410927, 4
  %i.asp = mul i64 %i.aso, %.12410500
  %i.asq = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.asp
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !52
  %i.ass = fadd float %i.asn, %i.asr
  %i.ast = or disjoint i64 %.12410927, 5
  %i.asu = mul i64 %i.ast, %.12410500
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.asu
end_hunk_0
