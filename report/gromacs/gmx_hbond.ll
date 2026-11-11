Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hbond?download=true
inline.NumInlined: 2166
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z9gmx_hbondiPPc.omp_outlined:bb.a
._crit_edge4.2.i:                                 ; preds = %._crit_edge4.loopexit.2.i, %.preheader.lr.ph.2.i, %.preheader1.2.i
  %i.vx = phi i32 [ %.pre24.i, %._crit_edge4.loopexit.2.i ], [ %i.uq, %.preheader1.2.i ], [ %i.uq, %.preheader.lr.ph.2.i ] ; 2 uses
  %i.vy = phi i32 [ %i.vs, %._crit_edge4.loopexit.2.i ], [ %i.ur, %.preheader1.2.i ], [ %i.ur, %.preheader.lr.ph.2.i ]
  %i.vz = phi i32 [ %i.vt, %._crit_edge4.loopexit.2.i ], [ %i.us, %.preheader1.2.i ], [ %i.us, %.preheader.lr.ph.2.i ]
  %i.wa = phi i32 [ %i.vs, %._crit_edge4.loopexit.2.i ], [ %i.ut, %.preheader1.2.i ], [ %i.ut, %.preheader.lr.ph.2.i ]
  %indvars.iv.next15.2.i = add nuw nsw i64 %indvars.iv14.2.i, 1 ; 2 uses
  %i.wb = sext i32 %i.vx to i64
  %i.wc = icmp slt i64 %indvars.iv.next15.2.i, %i.wb
  br i1 %i.wc, label %.preheader1.2.i, label %_ZL13count_da_gridPKiRKSt6vectorIS1_IS1_I16HydrogenGridCellSaIS2_EESaIS4_EESaIS6_EEPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLSD_3EEE.exit, !llvm.loop !501

_ZL13count_da_gridPKiRKSt6vectorIS1_IS1_I16HydrogenGridCellSaIS2_EESaIS4_EESaIS6_EEPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLSD_3EEE.exit: ; preds = %._crit_edge4.2.i, %.preheader1.lr.ph.2.i, %._crit_edge6.1.i, %bb.bi
  call void @__kmpc_end_single(ptr nonnull @1, i32 %i.bz)
  br label %bb.bn

bb.bn:                                            ; preds = %_ZL13count_da_gridPKiRKSt6vectorIS1_IS1_I16HydrogenGridCellSaIS2_EESaIS4_EESaIS6_EEPN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLSD_3EEE.exit, %bb.h
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bz)
  %i.wd = load ptr, ptr %4, align 8, !tbaa !136
  %i.we = getelementptr inbounds nuw [392 x i8], ptr %i.wd, i64 %i.t
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 88
  %i.wg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.wf, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.bo unwind label %.loopexit.split-lp442.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.wh = load i32, ptr %10, align 4, !tbaa !61   ; 2 uses
  %i.wi = icmp sgt i32 %i.wh, 0
  br i1 %i.wi, label %bb.bp, label %bb.gy

bb.bp:                                            ; preds = %bb.bo
  %i.wj = add nsw i32 %i.wh, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i32 0, ptr %i.e, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 %i.wj, ptr %i.f, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 1, ptr %i.g, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i32 0, ptr %i.h, align 4, !tbaa !61
  call void @__kmpc_dispatch_init_4(ptr nonnull @1, i32 %i.bz, i32 1073741859, i32 0, i32 %i.wj, i32 1, i32 1)
  %i.wk = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.bz, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.g)
  %.not2311355 = icmp eq i32 %i.wk, 0
  br i1 %.not2311355, label %._crit_edge1361, label %.lr.ph1360

.loopexit436:                                     ; preds = %._crit_edge1343, %.lr.ph1360
  %.sroa.0390.2.lcssa = phi float [ %.sroa.0390.11356, %.lr.ph1360 ], [ %.sroa.0390.3.lcssa, %._crit_edge1343 ] ; 2 uses
  %.sroa.0392.2.lcssa = phi float [ %.sroa.0392.11357, %.lr.ph1360 ], [ %.sroa.0392.3.lcssa, %._crit_edge1343 ] ; 2 uses
  %.sroa.0.2.lcssa = phi i32 [ %.sroa.0.11358, %.lr.ph1360 ], [ %.sroa.0.3.lcssa, %._crit_edge1343 ] ; 2 uses
  %i.wl = call i32 @__kmpc_dispatch_next_4(ptr nonnull @1, i32 %i.bz, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.g)
  %.not231 = icmp eq i32 %i.wl, 0
  br i1 %.not231, label %._crit_edge1361, label %.lr.ph1360

.lr.ph1360:                                       ; preds = %bb.bp, %.loopexit436
  %.sroa.0.11358 = phi i32 [ %.sroa.0.2.lcssa, %.loopexit436 ], [ %.sroa.0.0, %bb.bp ] ; 2 uses
  %.sroa.0392.11357 = phi float [ %.sroa.0392.2.lcssa, %.loopexit436 ], [ %.sroa.0392.0, %bb.bp ] ; 2 uses
  %.sroa.0390.11356 = phi float [ %.sroa.0390.2.lcssa, %.loopexit436 ], [ %.sroa.0390.0, %bb.bp ] ; 2 uses
  %i.wm = load i32, ptr %i.e, align 4, !tbaa !61  ; 2 uses
  %i.wn = load i32, ptr %i.f, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %.not2381347 = icmp sgt i32 %i.wm, %i.wn
  br i1 %.not2381347, label %.loopexit436, label %.preheader432.preheader

.preheader432.preheader:                          ; preds = %.lr.ph1360
  %i.wo = sext i32 %i.wm to i64
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !61 ; 2 uses
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.preheader, %._crit_edge1343
  %i.wp = phi i32 [ %i.wn, %.preheader432.preheader ], [ %i.bfk, %._crit_edge1343 ]
  %i.wq = phi i32 [ %.pre, %.preheader432.preheader ], [ %i.bfl, %._crit_edge1343 ] ; 2 uses
  %i.wr = phi i32 [ %.pre, %.preheader432.preheader ], [ %i.bfm, %._crit_edge1343 ] ; 3 uses
  %indvars.iv1644 = phi i64 [ %i.wo, %.preheader432.preheader ], [ %i.wt, %._crit_edge1343 ] ; 5 uses
  %.sroa.0.21350 = phi i32 [ %.sroa.0.11358, %.preheader432.preheader ], [ %.sroa.0.3.lcssa, %._crit_edge1343 ] ; 2 uses
  %.sroa.0392.21349 = phi float [ %.sroa.0392.11357, %.preheader432.preheader ], [ %.sroa.0392.3.lcssa, %._crit_edge1343 ] ; 2 uses
  %.sroa.0390.21348 = phi float [ %.sroa.0390.11356, %.preheader432.preheader ], [ %.sroa.0390.3.lcssa, %._crit_edge1343 ] ; 2 uses
  %i.ws = icmp sgt i32 %i.wr, 0
  %i.wt = add nsw i64 %indvars.iv1644, 1          ; 2 uses
  br i1 %i.ws, label %.preheader431.lr.ph, label %._crit_edge1343

.preheader431.lr.ph:                              ; preds = %.preheader432
  %.pre1659 = load i32, ptr %i.ac, align 4, !tbaa !61 ; 2 uses
  %i.wu = trunc i64 %indvars.iv1644 to i32
  %i.wv = add i32 %i.wu, -1
  %i.ww = trunc nsw i64 %indvars.iv1644 to i32    ; 2 uses
  %i.wx = trunc nsw i64 %i.wt to i32              ; 2 uses
  br label %.preheader431

.preheader431:                                    ; preds = %.preheader431.lr.ph, %._crit_edge1335
  %i.wy = phi i32 [ %i.wq, %.preheader431.lr.ph ], [ %i.bff, %._crit_edge1335 ] ; 2 uses
  %i.wz = phi i32 [ %.pre1659, %.preheader431.lr.ph ], [ %i.bfg, %._crit_edge1335 ] ; 2 uses
  %i.xa = phi i32 [ %i.wr, %.preheader431.lr.ph ], [ %i.bff, %._crit_edge1335 ] ; 2 uses
  %i.xb = phi i32 [ %.pre1659, %.preheader431.lr.ph ], [ %i.bfh, %._crit_edge1335 ] ; 3 uses
  %indvars.iv1641 = phi i64 [ 0, %.preheader431.lr.ph ], [ %i.xd, %._crit_edge1335 ] ; 4 uses
  %.sroa.0.31341 = phi i32 [ %.sroa.0.21350, %.preheader431.lr.ph ], [ %.sroa.0.4.lcssa, %._crit_edge1335 ] ; 2 uses
  %.sroa.0392.31340 = phi float [ %.sroa.0392.21349, %.preheader431.lr.ph ], [ %.sroa.0392.4.lcssa, %._crit_edge1335 ] ; 2 uses
  %.sroa.0390.31339 = phi float [ %.sroa.0390.21348, %.preheader431.lr.ph ], [ %.sroa.0390.4.lcssa, %._crit_edge1335 ] ; 2 uses
  %i.xc = icmp sgt i32 %i.xb, 0
  %i.xd = add nuw nsw i64 %indvars.iv1641, 1      ; 3 uses
  br i1 %i.xc, label %.preheader430.lr.ph, label %._crit_edge1335

.preheader430.lr.ph:                              ; preds = %.preheader431
  %.pre1660 = load i8, ptr %14, align 1, !tbaa !88, !range !59
  %i.xe = trunc i64 %indvars.iv1641 to i32
  %i.xf = add i32 %i.xe, -1
  %i.xg = trunc nuw nsw i64 %indvars.iv1641 to i32 ; 2 uses
  %i.xh = trunc nuw nsw i64 %i.xd to i32
  br label %.preheader430

.preheader430:                                    ; preds = %.preheader430.lr.ph, %bb.bq
  %i.xi = phi i32 [ %i.wy, %.preheader430.lr.ph ], [ %i.bew, %bb.bq ]
  %i.xj = phi i32 [ %i.wz, %.preheader430.lr.ph ], [ %i.bex, %bb.bq ]
  %i.xk = phi i8 [ %.pre1660, %.preheader430.lr.ph ], [ %i.bey, %bb.bq ]
  %i.xl = phi i32 [ %i.xa, %.preheader430.lr.ph ], [ %i.bfa, %bb.bq ]
  %i.xm = phi i32 [ %i.xa, %.preheader430.lr.ph ], [ %i.bfb, %bb.bq ]
  %i.xn = phi i32 [ %i.xb, %.preheader430.lr.ph ], [ %i.bex, %bb.bq ] ; 2 uses
  %indvars.iv1638 = phi i64 [ 0, %.preheader430.lr.ph ], [ %indvars.iv.next1639, %bb.bq ] ; 3 uses
  %.sroa.0.41333 = phi i32 [ %.sroa.0.31341, %.preheader430.lr.ph ], [ %.sroa.0.6.lcssa, %bb.bq ]
  %.sroa.0392.41332 = phi float [ %.sroa.0392.31340, %.preheader430.lr.ph ], [ %.sroa.0392.6.lcssa, %bb.bq ]
  %.sroa.0390.41331 = phi float [ %.sroa.0390.31339, %.preheader430.lr.ph ], [ %.sroa.0390.6.lcssa, %bb.bq ]
  %i.xo = trunc nuw nsw i64 %indvars.iv1638 to i32 ; 2 uses
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge1323
  %indvars.iv.next1639 = add nuw nsw i64 %indvars.iv1638, 1 ; 2 uses
  %i.xp = sext i32 %i.bex to i64
  %i.xq = icmp slt i64 %indvars.iv.next1639, %i.xp
  br i1 %i.xq, label %.preheader430, label %._crit_edge1335, !llvm.loop !503

bb.br:                                            ; preds = %.preheader430, %._crit_edge1323
  %i.xr = phi i32 [ %i.xi, %.preheader430 ], [ %i.bew, %._crit_edge1323 ] ; 2 uses
  %i.xs = phi i32 [ %i.xj, %.preheader430 ], [ %i.bex, %._crit_edge1323 ] ; 2 uses
  %i.xt = phi i8 [ %i.xk, %.preheader430 ], [ %i.bey, %._crit_edge1323 ] ; 2 uses
  %i.xu = phi i32 [ %i.xn, %.preheader430 ], [ %i.bez, %._crit_edge1323 ] ; 2 uses
  %i.xv = phi i32 [ %i.xl, %.preheader430 ], [ %i.bfa, %._crit_edge1323 ] ; 2 uses
  %i.xw = phi i32 [ %i.xm, %.preheader430 ], [ %i.bfb, %._crit_edge1323 ] ; 2 uses
  %i.xx = phi i32 [ %i.xn, %.preheader430 ], [ %i.bfc, %._crit_edge1323 ] ; 2 uses
  %indvars.iv1636 = phi i64 [ 0, %.preheader430 ], [ %indvars.iv.next1637, %._crit_edge1323 ] ; 11 uses
  %.02081330 = phi i32 [ 0, %.preheader430 ], [ %i.bfd, %._crit_edge1323 ] ; 2 uses
  %.sroa.0.51329 = phi i32 [ %.sroa.0.41333, %.preheader430 ], [ %.sroa.0.6.lcssa, %._crit_edge1323 ] ; 2 uses
  %.sroa.0392.51328 = phi float [ %.sroa.0392.41332, %.preheader430 ], [ %.sroa.0392.6.lcssa, %._crit_edge1323 ] ; 2 uses
  %.sroa.0390.51327 = phi float [ %.sroa.0390.41331, %.preheader430 ], [ %.sroa.0390.6.lcssa, %._crit_edge1323 ] ; 2 uses
  %i.xy = load ptr, ptr %11, align 8, !tbaa !121, !llvm.access.group !502
  %i.xz = getelementptr inbounds nuw [24 x i8], ptr %i.xy, i64 %indvars.iv1638
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !126, !llvm.access.group !502
  %i.yb = getelementptr inbounds nuw [24 x i8], ptr %i.ya, i64 %indvars.iv1641
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !131, !llvm.access.group !502
  %i.yd = getelementptr inbounds nuw [144 x i8], ptr %i.yc, i64 %indvars.iv1644
  %i.ye = getelementptr inbounds nuw [24 x i8], ptr %i.yd, i64 %indvars.iv1636 ; 3 uses
  %i.yf = trunc nuw i8 %i.xt to i1                ; 3 uses
  %i.yg = sub nuw nsw i32 1, %.02081330
  %i.yh = trunc nuw nsw i64 %indvars.iv1636 to i32 ; 2 uses
  %.0210 = select i1 %i.yf, i32 %i.yg, i32 %i.yh  ; 5 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 2 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !78, !llvm.access.group !502
  %i.yk = load ptr, ptr %i.ye, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = icmp sgt i64 %i.yn, 0
  br i1 %i.yo, label %.lr.ph1322, label %._crit_edge1323

.lr.ph1322:                                       ; preds = %bb.br
  %i.yp = zext nneg i32 %.0210 to i64
  %not. = xor i1 %i.yf, true
  br label %.lr.ph1312

.lr.ph1312:                                       ; preds = %._crit_edge1313, %.lr.ph1322
  %i.yq = phi i32 [ %i.xr, %.lr.ph1322 ], [ %i.bei, %._crit_edge1313 ]
  %i.yr = phi i32 [ %i.xs, %.lr.ph1322 ], [ %i.bej, %._crit_edge1313 ]
  %i.ys = phi ptr [ %i.yk, %.lr.ph1322 ], [ %.pre1667, %._crit_edge1313 ]
  %i.yt = phi i32 [ %i.xu, %.lr.ph1322 ], [ %i.bek, %._crit_edge1313 ]
  %i.yu = phi i32 [ %i.xv, %.lr.ph1322 ], [ %i.bel, %._crit_edge1313 ]
  %i.yv = phi i32 [ %i.xw, %.lr.ph1322 ], [ %i.bem, %._crit_edge1313 ]
  %i.yw = phi i32 [ %i.xx, %.lr.ph1322 ], [ %i.bek, %._crit_edge1313 ] ; 2 uses
  %indvars.iv1633 = phi i64 [ 0, %.lr.ph1322 ], [ %indvars.iv.next1634, %._crit_edge1313 ] ; 2 uses
  %.sroa.0.61319 = phi i32 [ %.sroa.0.51329, %.lr.ph1322 ], [ %.sroa.0.8.lcssa, %._crit_edge1313 ]
  %.sroa.0392.61318 = phi float [ %.sroa.0392.51328, %.lr.ph1322 ], [ %.sroa.0392.8.lcssa, %._crit_edge1313 ]
  %.sroa.0390.61317 = phi float [ %.sroa.0390.51327, %.lr.ph1322 ], [ %.sroa.0390.8.lcssa, %._crit_edge1313 ]
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv1633
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !61, !llvm.access.group !502 ; 11 uses
  %i.yz = icmp ne i32 %i.yw, 1
  %i.za = sext i1 %i.yz to i32
  %i.zb = add nsw i32 %i.xo, %i.za
  %i.zc = sext i32 %i.yy to i64                   ; 7 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1312, %._crit_edge1302
  %i.zd = phi i32 [ %i.yq, %.lr.ph1312 ], [ %i.bei, %._crit_edge1302 ] ; 2 uses
  %i.ze = phi i32 [ %i.yr, %.lr.ph1312 ], [ %i.bej, %._crit_edge1302 ]
  %i.zf = phi i32 [ %i.yt, %.lr.ph1312 ], [ %i.bek, %._crit_edge1302 ]
  %i.zg = phi i32 [ %i.yu, %.lr.ph1312 ], [ %i.bel, %._crit_edge1302 ] ; 2 uses
  %i.zh = phi i32 [ %i.yv, %.lr.ph1312 ], [ %i.bem, %._crit_edge1302 ] ; 5 uses
  %i.zi = phi i32 [ %i.yw, %.lr.ph1312 ], [ %i.bek, %._crit_edge1302 ] ; 3 uses
  %.02181310 = phi i32 [ %i.zb, %.lr.ph1312 ], [ %i.ben, %._crit_edge1302 ] ; 3 uses
  %.sroa.0.71309 = phi i32 [ %.sroa.0.61319, %.lr.ph1312 ], [ %.sroa.0.8.lcssa, %._crit_edge1302 ] ; 2 uses
  %.sroa.0392.71308 = phi float [ %.sroa.0392.61318, %.lr.ph1312 ], [ %.sroa.0392.8.lcssa, %._crit_edge1302 ] ; 2 uses
  %.sroa.0390.71307 = phi float [ %.sroa.0390.61317, %.lr.ph1312 ], [ %.sroa.0390.8.lcssa, %._crit_edge1302 ] ; 2 uses
  %i.zj = add nsw i32 %i.zi, %.02181310
  %i.zk = srem i32 %i.zj, %i.zi                   ; 4 uses
  %i.zl = icmp eq i32 %i.zk, 0                    ; 2 uses
  %i.zm = add nsw i32 %i.zi, -1
  %i.zn = icmp eq i32 %i.zk, %i.zm
  %i.zo = select i1 %i.zl, i1 true, i1 %i.zn
  %45 = icmp ne i32 %i.zh, 1                      ; 2 uses
  %or.cond.i = and i1 %i.bp, %i.zo                ; 3 uses
  %i.zp = select i1 %or.cond.i, i32 0, i32 %i.xf
  %46 = select i1 %45, i32 %i.zp, i32 %i.xg       ; 2 uses
  %.not241129513781379 = icmp sle i32 %i.zh, %46
  %47 = select i1 %45, i1 %or.cond.i, i1 false
  %.not2411295 = select i1 %47, i1 %.not241129513781379, i1 false
  br i1 %.not2411295, label %._crit_edge1302, label %.lr.ph1301

.lr.ph1301:                                       ; preds = %bb.bs
  %i.zq = add nsw i32 %i.zh, -1
  %i.zr = sext i32 %i.zk to i64
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1301, %._crit_edge1291
  %i.zs = phi i32 [ %i.zd, %.lr.ph1301 ], [ %i.beb, %._crit_edge1291 ]
  %i.zt = phi i32 [ %i.zg, %.lr.ph1301 ], [ %i.bec, %._crit_edge1291 ]
  %i.zu = phi i32 [ %i.zq, %.lr.ph1301 ], [ %i.bef, %._crit_edge1291 ]
  %i.zv = phi i32 [ %i.zh, %.lr.ph1301 ], [ %i.bec, %._crit_edge1291 ] ; 2 uses
  %.02191299 = phi i32 [ %46, %.lr.ph1301 ], [ %i.bed, %._crit_edge1291 ] ; 3 uses
  %.sroa.0.81298 = phi i32 [ %.sroa.0.71309, %.lr.ph1301 ], [ %.sroa.0.9.lcssa, %._crit_edge1291 ] ; 2 uses
  %.sroa.0392.81297 = phi float [ %.sroa.0392.71308, %.lr.ph1301 ], [ %.sroa.0392.9.lcssa, %._crit_edge1291 ] ; 2 uses
  %.sroa.0390.81296 = phi float [ %.sroa.0390.71307, %.lr.ph1301 ], [ %.sroa.0390.9.lcssa, %._crit_edge1291 ] ; 2 uses
  %i.zw = add nsw i32 %i.zv, %.02191299
  %i.zx = srem i32 %i.zw, %i.zv                   ; 3 uses
  %i.zy = icmp eq i32 %i.zx, 0
  %i.zz = icmp eq i32 %i.zx, %i.zu
  %or.cond3 = or i1 %i.zl, %i.zz
  %or.cond = select i1 %i.zy, i1 true, i1 %or.cond3
  br i1 %or.cond, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aaa = load i32, ptr %i.ac, align 4, !tbaa !61, !llvm.access.group !502
  %i.aab = add nsw i32 %i.aaa, -1
  %i.aac = icmp eq i32 %i.zk, %i.aab
  %i.aad = and i1 %i.bp, %i.aac
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %or.cond.i266 = phi i1 [ %i.aad, %bb.bu ], [ %i.bp, %bb.bt ] ; 3 uses
  %i.aae = load i32, ptr %10, align 4, !tbaa !61, !llvm.access.group !502 ; 3 uses
  %i.aaf = icmp ne i32 %i.aae, 1                  ; 2 uses
  %i.aag = select i1 %or.cond.i266, i32 0, i32 %i.wv ; 2 uses
  %i.aah = add nsw i32 %i.aae, -1
  %i.aai = select i1 %or.cond.i266, i32 %i.aah, i32 %i.wx
  %i.aaj = icmp sgt i32 %i.aag, %i.aai
  %.not2421284 = select i1 %i.aaf, i1 %i.aaj, i1 false
  br i1 %.not2421284, label %._crit_edge1291, label %.lr.ph1290

.lr.ph1290:                                       ; preds = %bb.bv
  %i.aak = select i1 %i.aaf, i32 %i.aag, i32 %i.ww
  %i.aal = sext i32 %i.zx to i64
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1290, %._crit_edge
  %i.aam = phi i32 [ %i.aae, %.lr.ph1290 ], [ %i.bdt, %._crit_edge ] ; 3 uses
  %.02201288 = phi i32 [ %i.aak, %.lr.ph1290 ], [ %i.bdu, %._crit_edge ] ; 3 uses
  %.sroa.0.91287 = phi i32 [ %.sroa.0.81298, %.lr.ph1290 ], [ %.sroa.0.10.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0392.91286 = phi float [ %.sroa.0392.81297, %.lr.ph1290 ], [ %.sroa.0392.10.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0390.91285 = phi float [ %.sroa.0390.81296, %.lr.ph1290 ], [ %.sroa.0390.10.lcssa, %._crit_edge ] ; 2 uses
  %i.aan = add nsw i32 %i.aam, %.02201288
  %i.aao = srem i32 %i.aan, %i.aam
  %i.aap = load ptr, ptr %11, align 8, !tbaa !121, !llvm.access.group !502
  %i.aaq = getelementptr inbounds nuw [24 x i8], ptr %i.aap, i64 %i.zr
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !126, !llvm.access.group !502
  %i.aas = getelementptr inbounds nuw [24 x i8], ptr %i.aar, i64 %i.aal
  %i.aat = sext i32 %i.aao to i64
  %i.aau = load ptr, ptr %i.aas, align 8, !tbaa !131, !llvm.access.group !502
  %i.aav = getelementptr inbounds nuw [144 x i8], ptr %i.aau, i64 %i.aat
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 72
  %i.aax = getelementptr inbounds nuw [24 x i8], ptr %i.aaw, i64 %i.yp ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8 ; 2 uses
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !78, !llvm.access.group !502
  %i.aba = load ptr, ptr %i.aax, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = sub i64 %i.abb, %i.abc
  %i.abe = icmp sgt i64 %i.abd, 0
  br i1 %i.abe, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bw
  %.pre1662 = load i8, ptr @_ZZ9gmx_hbondiPPcE8bContact, align 1, !tbaa !88, !range !59
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread
  %i.abf = phi i8 [ %.pre1662, %.lr.ph.preheader ], [ %i.bdl, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread ] ; 2 uses
  %i.abg = phi ptr [ %i.aba, %.lr.ph.preheader ], [ %i.bdn, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread ]
  %.sroa.0.101280 = phi i32 [ %.sroa.0.91287, %.lr.ph.preheader ], [ %.sroa.0.12404, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread ] ; 7 uses
  %.sroa.0392.101279 = phi float [ %.sroa.0392.91286, %.lr.ph.preheader ], [ %.sroa.0392.12403, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread ] ; 10 uses
  %.sroa.0390.101278 = phi float [ %.sroa.0390.91285, %.lr.ph.preheader ], [ %.sroa.0390.11, %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread ] ; 10 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.abg, i64 %indvars.iv
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !61, !llvm.access.group !502 ; 11 uses
  %i.abj = load ptr, ptr %4, align 8, !tbaa !136, !llvm.access.group !502
  %i.abk = getelementptr inbounds nuw [392 x i8], ptr %i.abj, i64 %i.t ; 24 uses
  %i.abl = load float, ptr @_ZZ9gmx_hbondiPPcE4rcut, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.abm = load float, ptr @_ZZ9gmx_hbondiPPcE5r2cut, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.abn = load float, ptr %16, align 4, !tbaa !69, !llvm.access.group !502
  %i.abo = load ptr, ptr %7, align 8, !tbaa !139, !llvm.access.group !502 ; 3 uses
  %i.abp = load i8, ptr %2, align 1, !tbaa !88, !range !59, !llvm.access.group !502, !noundef !60
  %i.abq = trunc nuw i8 %i.abp to i1              ; 4 uses
  %i.abr = load i8, ptr @_ZZ9gmx_hbondiPPcE3bDA, align 1, !tbaa !88, !range !59, !llvm.access.group !502, !noundef !60
  %i.abs = trunc nuw i8 %i.abr to i1              ; 4 uses
  %i.abt = trunc nuw i8 %i.abf to i1              ; 2 uses
  %i.abu = load i8, ptr @_ZZ9gmx_hbondiPPcE6bMerge, align 1, !tbaa !88, !range !59, !llvm.access.group !502, !noundef !60 ; 2 uses
  %i.abv = trunc nuw i8 %i.abu to i1              ; 2 uses
  %i.abw = icmp eq i32 %i.yy, %i.abi
  br i1 %i.abw, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abk, i64 208 ; 3 uses
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.zc
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %i.acb = icmp eq i32 %i.aca, -49297
  br i1 %i.acb, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abk, i64 184 ; 3 uses
  %i.acd = sext i32 %i.aca to i64                 ; 3 uses
  %i.ace = load ptr, ptr %i.acc, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.acd
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !61, !llvm.access.group !502
  %i.ach = zext i32 %i.acg to i64
  %.not.i.i268 = icmp eq i64 %indvars.iv1636, %i.ach
  br i1 %.not.i.i268, label %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread

_ZL20donor_index_functionP8t_donorsiiPKci.exit.i: ; preds = %bb.by
  %i.aci = getelementptr i8, ptr %i.abk, i64 328  ; 3 uses
  %.val.i = load ptr, ptr %i.aci, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.acj = getelementptr i8, ptr %i.abk, i64 352  ; 2 uses
  %.val105.i = load ptr, ptr %i.acj, align 8, !tbaa !70, !llvm.access.group !502 ; 2 uses
  %i.ack = sext i32 %i.abi to i64                 ; 7 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %i.ack
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %i.acn = sext i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.acn
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !61, !llvm.access.group !502
  %.not.i106.i = icmp ne i32 %i.acp, %.0210
  %i.acq = icmp eq i32 %i.acm, -49297
  %i.acr = or i1 %i.acq, %.not.i106.i
  br i1 %i.acr, label %_ZL8is_hbondP16HydrogenBondDataiiiifffPA3_fbS2_PfS3_S3_bPibb.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i
  %i.acs = fmul float %i.abl, %i.abl              ; 3 uses
  %i.act = fmul float %i.abm, %i.abm
  %i.acu = getelementptr inbounds [12 x i8], ptr %i.abo, i64 %i.zc ; 3 uses
  %i.acv = getelementptr inbounds [12 x i8], ptr %i.abo, i64 %i.ack ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.acy = load <2 x float>, ptr %i.acu, align 4, !tbaa !69 ; 2 uses
  %i.acz = load float, ptr %i.acw, align 4, !tbaa !69, !llvm.access.group !502
  %i.ada = load <2 x float>, ptr %i.acv, align 4, !tbaa !69 ; 2 uses
  %i.adb = load float, ptr %i.acx, align 4, !tbaa !69, !llvm.access.group !502
  %i.adc = fsub <2 x float> %i.acy, %i.ada        ; 4 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %i.ade = load float, ptr %i.add, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.adh = fsub float %i.ade, %i.adg              ; 4 uses
  %i.adi = icmp sgt i32 %i.yy, %i.abi             ; 2 uses
  %or.cond99.i = and i1 %i.adi, %i.abv
  br i1 %or.cond99.i, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i

_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i: ; preds = %bb.bz
  br i1 %i.abq, label %bb.ca, label %_ZL15pbc_correct_gemPfPA3_fPKf.exit.i

_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i: ; preds = %bb.bz
  br i1 %i.abq, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i, label %_ZL15pbc_correct_gemPfPA3_fPKf.exit.i

bb.ca:                                            ; preds = %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.i
  br i1 %i.yf, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.ack
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %i.adl = icmp eq i32 %i.adk, -49297
  br i1 %i.adl, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.adm = sext i32 %i.adk to i64
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.adm
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !61, !llvm.access.group !502
  %i.adp = zext i32 %i.ado to i64
  %.not.i.i112.i = icmp eq i64 %indvars.iv1636, %i.adp
  br i1 %.not.i.i112.i, label %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i, label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i

_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i: ; preds = %bb.cc
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %i.zc
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !61, !llvm.access.group !502 ; 2 uses
  %i.ads = sext i32 %i.adr to i64
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ads
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !61, !llvm.access.group !502
  %i.adv = zext i32 %i.adu to i64
  %.not.i12.i116.i = icmp eq i64 %indvars.iv1636, %i.adv
  %i.adw = icmp ne i32 %i.adr, -49297
  %i.adx = and i1 %i.adw, %.not.i12.i116.i
  br label %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i

_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i: ; preds = %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i, %bb.cc, %bb.cb, %bb.ca, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i
  %.0.i = phi i1 [ false, %bb.ca ], [ false, %bb.cb ], [ false, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit.thread.i ], [ %i.adx, %_ZL20donor_index_functionP8t_donorsiiPKci.exit.i113.i ], [ false, %bb.cc ]
  %i.ady = load float, ptr %i.aa, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.adz = fneg float %i.ady
  %i.aea = load float, ptr %i.y, align 4, !tbaa !69, !llvm.access.group !502 ; 2 uses
  %i.aeb = fneg float %i.aea
  %i.aec = load float, ptr %9, align 4, !tbaa !69, !llvm.access.group !502 ; 3 uses
  %i.aed = fneg float %i.aec
  br label %.preheader.i.i287

.preheader.i.i287:                                ; preds = %.preheader.i.i287.backedge, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i
  %.sroa.24.1.i = phi float [ %i.adh, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.sroa.24.1.i.be, %.preheader.i.i287.backedge ]
  %i.aee = phi float [ %i.adh, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.be2362, %.preheader.i.i287.backedge ] ; 3 uses
  %i.aef = phi <2 x float> [ %i.adc, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.be2363, %.preheader.i.i287.backedge ] ; 2 uses
  %i.aeg = phi <2 x float> [ %i.adc, %_ZL16isInterchangableP16HydrogenBondDataiiii.exit117.i ], [ %.be2364, %.preheader.i.i287.backedge ]
  %i.aeh = fcmp uge float %i.aee, %i.adz          ; 2 uses
  br i1 %i.aeh, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i.i287
  %i.aei = load <2 x float>, ptr %i.v, align 4, !tbaa !69
  %i.aej = fadd <2 x float> %i.aef, %i.aei        ; 2 uses
end_hunk_0
