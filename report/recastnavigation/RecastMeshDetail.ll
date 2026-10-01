Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  store i64 %i.tp, ptr %7, align 8, !tbaa !67
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.tn
  store i32 %i.sm, ptr %i.tq, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit187.i.i

bb.bd:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit184.i.i
  %i.tr = add nsw i64 %i.tm, 1
  %i.ts = icmp sgt i64 %i.tm, 4611686018427387902
  %i.tt = shl nsw i64 %i.tm, 1
  %..i.i185.i.i = call i64 @llvm.smax.i64(i64 %i.tt, i64 %i.tr)
  %.0.i.i186.i.i = select i1 %i.ts, i64 9223372036854775807, i64 %..i.i185.i.i, !prof !141 ; 2 uses
  %i.tu = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0.i.i186.i.i) ; 3 uses
  %i.tv = load i64, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.tv
  store i32 %i.sm, ptr %i.tw, align 4, !tbaa !68
  %i.tx = add nsw i64 %i.tv, 1
  store i64 %i.tx, ptr %7, align 8, !tbaa !67
  store i64 %.0.i.i186.i.i, ptr %i.aj, align 8, !tbaa !124
  %i.ty = load ptr, ptr %i.ak, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.ty) #7
  store ptr %i.tu, ptr %i.ak, align 8, !tbaa !66
  %.pre308.i.i = load i64, ptr %7, align 8, !tbaa !67
  %.pre309.i.i = load i64, ptr %i.aj, align 8, !tbaa !124
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit187.i.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit187.i.i: ; preds = %bb.bd, %bb.bc
  %i.tz = phi ptr [ %i.tk, %bb.bc ], [ %i.tu, %bb.bd ] ; 3 uses
  %i.ua = phi i64 [ %i.tm, %bb.bc ], [ %.pre309.i.i, %bb.bd ] ; 4 uses
  %i.ub = phi i64 [ %i.tp, %bb.bc ], [ %.pre308.i.i, %bb.bd ] ; 3 uses
  %i.uc = load ptr, ptr %i.eo, align 8, !tbaa !136
  %i.ud = add nsw i32 %i.sj, %i.z
  %i.ue = add nsw i32 %i.sm, %i.z
  %i.uf = load i32, ptr %2, align 8, !tbaa !130
  %i.ug = mul nsw i32 %i.uf, %i.ue
  %i.uh = add nsw i32 %i.ud, %i.ug
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.uc, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4
  %i.ul = and i32 %i.uk, 16777215
  %i.um = load i32, ptr %i.rr, align 4
  %i.un = and i32 %i.um, 16777215
  %i.uo = lshr i32 %i.un, %i.rz
  %i.up = and i32 %i.uo, 63
  %i.uq = add nuw nsw i32 %i.up, %i.ul            ; 2 uses
  %i.ur = icmp slt i64 %i.ub, %i.ua
  br i1 %i.ur, label %bb.be, label %bb.bf, !prof !142

bb.be:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit187.i.i
  %i.us = add nsw i64 %i.ub, 1
  store i64 %i.us, ptr %7, align 8, !tbaa !67
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.ub
  store i32 %i.uq, ptr %i.ut, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit190.i.i

bb.bf:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit187.i.i
  %i.uu = add nsw i64 %i.ua, 1
  %i.uv = icmp sgt i64 %i.ua, 4611686018427387902
  %i.uw = shl nsw i64 %i.ua, 1
  %..i.i188.i.i = call i64 @llvm.smax.i64(i64 %i.uw, i64 %i.uu)
  %.0.i.i189.i.i = select i1 %i.uv, i64 9223372036854775807, i64 %..i.i188.i.i, !prof !141 ; 2 uses
  %i.ux = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0.i.i189.i.i) ; 4 uses
  %i.uy = load i64, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.ux, i64 %i.uy
  store i32 %i.uq, ptr %i.uz, align 4, !tbaa !68
  %i.va = add nsw i64 %i.uy, 1
  store i64 %i.va, ptr %7, align 8, !tbaa !67
  store i64 %.0.i.i189.i.i, ptr %i.aj, align 8, !tbaa !124
  %i.vb = load ptr, ptr %i.ak, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.vb) #7
  store ptr %i.ux, ptr %i.ak, align 8, !tbaa !66
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit190.i.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit190.i.i: ; preds = %bb.bf, %bb.be, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.vc = phi ptr [ %i.rv, %bb.av ], [ %i.rv, %bb.ax ], [ %i.rv, %bb.aw ], [ %i.rv, %bb.ay ], [ %i.tz, %bb.be ], [ %i.ux, %bb.bf ] ; 2 uses
  %i.vd = phi ptr [ %i.rw, %bb.av ], [ %i.rw, %bb.ax ], [ %i.rw, %bb.aw ], [ %i.rw, %bb.ay ], [ %i.tz, %bb.be ], [ %i.ux, %bb.bf ] ; 2 uses
  %indvars.iv.next299.i.i = add nuw nsw i64 %indvars.iv298.i.i, 1 ; 2 uses
  %exitcond301.not.i.i = icmp eq i64 %indvars.iv.next299.i.i, 4
  br i1 %exitcond301.not.i.i, label %bb.au, label %bb.av

.loopexit.i.i:                                    ; preds = %bb.as, %._crit_edge276.i.i
  %.1223.i.i = phi i32 [ %.0222.lcssa.i.i, %._crit_edge276.i.i ], [ %i.qz, %bb.as ] ; 3 uses
  %.1152.i.i = phi i32 [ %.0151.lcssa.i.i, %._crit_edge276.i.i ], [ %i.oh, %bb.as ] ; 2 uses
  %.1150.i.i = phi i32 [ %.0149.lcssa.i.i, %._crit_edge276.i.i ], [ %i.oi, %bb.as ] ; 2 uses
  store i64 0, ptr %7, align 8, !tbaa !67
  %i.ve = add nsw i32 %.1152.i.i, %i.z            ; 2 uses
  %i.vf = load i64, ptr %i.aj, align 8, !tbaa !124 ; 3 uses
  %i.vg = icmp sgt i64 %i.vf, 0
  br i1 %i.vg, label %bb.bg, label %bb.bh, !prof !142

bb.bg:                                            ; preds = %.loopexit.i.i
  %i.vh = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  store i64 1, ptr %7, align 8, !tbaa !67
  store i32 %i.ve, ptr %i.vh, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit193.i.i

bb.bh:                                            ; preds = %.loopexit.i.i
  %i.vi = add nsw i64 %i.vf, 1                    ; 2 uses
  %i.vj = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.vi) ; 3 uses
  %i.vk = load i64, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.vk
  store i32 %i.ve, ptr %i.vl, align 4, !tbaa !68
  %i.vm = add nsw i64 %i.vk, 1
  store i64 %i.vm, ptr %7, align 8, !tbaa !67
  store i64 %i.vi, ptr %i.aj, align 8, !tbaa !124
  %i.vn = load ptr, ptr %i.ak, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.vn) #7
  store ptr %i.vj, ptr %i.ak, align 8, !tbaa !66
  %.pre310.i.i = load i64, ptr %7, align 8, !tbaa !67
  %.pre311.i.i = load i64, ptr %i.aj, align 8, !tbaa !124
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit193.i.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit193.i.i: ; preds = %bb.bh, %bb.bg
  %i.vo = phi ptr [ %i.vh, %bb.bg ], [ %i.vj, %bb.bh ] ; 2 uses
  %i.vp = phi i64 [ %i.vf, %bb.bg ], [ %.pre311.i.i, %bb.bh ] ; 5 uses
  %i.vq = phi i64 [ 1, %bb.bg ], [ %.pre310.i.i, %bb.bh ] ; 3 uses
  %i.vr = add nsw i32 %.1150.i.i, %i.z            ; 2 uses
  %i.vs = icmp slt i64 %i.vq, %i.vp
  br i1 %i.vs, label %bb.bi, label %bb.bj, !prof !142

bb.bi:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit193.i.i
  %i.vt = add nsw i64 %i.vq, 1                    ; 2 uses
  store i64 %i.vt, ptr %7, align 8, !tbaa !67
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.vq
  store i32 %i.vr, ptr %i.vu, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit196.i.i

bb.bj:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit193.i.i
  %i.vv = add nsw i64 %i.vp, 1
  %i.vw = icmp sgt i64 %i.vp, 4611686018427387902
  %i.vx = shl nsw i64 %i.vp, 1
  %..i.i194.i.i = call i64 @llvm.smax.i64(i64 %i.vx, i64 %i.vv)
  %.0.i.i195.i.i = select i1 %i.vw, i64 9223372036854775807, i64 %..i.i194.i.i, !prof !141 ; 2 uses
  %i.vy = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0.i.i195.i.i) ; 3 uses
  %i.vz = load i64, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vy, i64 %i.vz
  store i32 %i.vr, ptr %i.wa, align 4, !tbaa !68
  %i.wb = add nsw i64 %i.vz, 1
  store i64 %i.wb, ptr %7, align 8, !tbaa !67
  store i64 %.0.i.i195.i.i, ptr %i.aj, align 8, !tbaa !124
  %i.wc = load ptr, ptr %i.ak, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.wc) #7
  store ptr %i.vy, ptr %i.ak, align 8, !tbaa !66
  %.pre312.i.i = load i64, ptr %7, align 8, !tbaa !67
  %.pre313.i.i = load i64, ptr %i.aj, align 8, !tbaa !124
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit196.i.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit196.i.i: ; preds = %bb.bj, %bb.bi
  %i.wd = phi ptr [ %i.vo, %bb.bi ], [ %i.vy, %bb.bj ]
  %i.we = phi i64 [ %i.vp, %bb.bi ], [ %.pre313.i.i, %bb.bj ] ; 4 uses
  %i.wf = phi i64 [ %i.vt, %bb.bi ], [ %.pre312.i.i, %bb.bj ] ; 3 uses
  %i.wg = icmp slt i64 %i.wf, %i.we
  br i1 %i.wg, label %bb.bk, label %bb.bl, !prof !142

bb.bk:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit196.i.i
  %i.wh = add nsw i64 %i.wf, 1
  store i64 %i.wh, ptr %7, align 8, !tbaa !67
  %i.wi = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.wf
  store i32 %.1223.i.i, ptr %i.wi, align 4, !tbaa !68
  br label %_ZL23seedArrayWithPolyCenterP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiE.exit.i

bb.bl:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit196.i.i
  %i.wj = add nsw i64 %i.we, 1
  %i.wk = icmp sgt i64 %i.we, 4611686018427387902
  %i.wl = shl nsw i64 %i.we, 1
  %..i.i197.i.i = call i64 @llvm.smax.i64(i64 %i.wl, i64 %i.wj)
  %.0.i.i198.i.i = select i1 %i.wk, i64 9223372036854775807, i64 %..i.i197.i.i, !prof !141 ; 2 uses
  %i.wm = call noundef ptr @_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.0.i.i198.i.i) ; 2 uses
  %i.wn = load i64, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.wm, i64 %i.wn
  store i32 %.1223.i.i, ptr %i.wo, align 4, !tbaa !68
  %i.wp = add nsw i64 %i.wn, 1
  store i64 %i.wp, ptr %7, align 8, !tbaa !67
  store i64 %.0.i.i198.i.i, ptr %i.aj, align 8, !tbaa !124
  %i.wq = load ptr, ptr %i.ak, align 8, !tbaa !66
  call void @_Z6rcFreePv(ptr noundef %i.wq) #7
  store ptr %i.wm, ptr %i.ak, align 8, !tbaa !66
  br label %_ZL23seedArrayWithPolyCenterP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiE.exit.i

_ZL23seedArrayWithPolyCenterP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiE.exit.i: ; preds = %bb.bl, %bb.bk
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.bi, i8 -1, i64 %i.ha, i1 false)
  %i.wr = load ptr, ptr %i.ep, align 8, !tbaa !137
  %i.ws = sext i32 %.1223.i.i to i64
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.wr, i64 %i.ws
  %i.wu = load i16, ptr %i.wt, align 4, !tbaa !140
  %i.wv = sub i32 %.1152.i.i, %i.gh
  %i.ww = sub nsw i32 %.1150.i.i, %i.gk
  %i.wx = mul nsw i32 %i.ww, %i.go
  %i.wy = add nsw i32 %i.wv, %i.wx
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.wz
  store i16 %i.wu, ptr %i.xa, align 2, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.bm

bb.bm:                                            ; preds = %_ZL23seedArrayWithPolyCenterP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiE.exit.i, %._crit_edge201.i
  %i.xb = load i64, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.xc = icmp sgt i64 %i.xb, 0
  br i1 %i.xc, label %.lr.ph206.i, label %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit

.lr.ph206.i:                                      ; preds = %bb.bm
  %i.xd = add i32 %i.gh, %i.z
  %i.xe = add i32 %i.gk, %i.z
  br label %bb.bn

.loopexit.i:                                      ; preds = %bb.bx
  %i.xf = mul nsw i32 %.1130.i, 3                 ; 2 uses
  %i.xg = sext i32 %i.xf to i64                   ; 2 uses
  %i.xh = icmp sgt i64 %i.abe, %i.xg
  br i1 %i.xh, label %bb.bn, label %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit

bb.bn:                                            ; preds = %.loopexit.i, %.lr.ph206.i
  %i.xi = phi i64 [ %i.xb, %.lr.ph206.i ], [ %i.abe, %.loopexit.i ] ; 4 uses
  %i.xj = phi i64 [ 0, %.lr.ph206.i ], [ %i.xg, %.loopexit.i ]
  %i.xk = phi i32 [ 0, %.lr.ph206.i ], [ %i.xf, %.loopexit.i ]
  %.0129204.i = phi i32 [ 0, %.lr.ph206.i ], [ %.1130.i, %.loopexit.i ] ; 2 uses
  %8 = load ptr, ptr %i.ak, align 8, !tbaa !66    ; 4 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %8, i64 %i.xj
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !68
  %i.xn = sext i32 %i.xk to i64
  %i.xo = getelementptr [4 x i8], ptr %8, i64 %i.xn ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xo, i64 4
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !68
  %i.xr = getelementptr i8, ptr %i.xo, i64 8
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !68
  %i.xt = add nsw i32 %.0129204.i, 1
  %i.xu = icmp sgt i32 %.0129204.i, 254
  br i1 %i.xu, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.xv = icmp sgt i64 %i.xi, 768
  br i1 %i.xv, label %bb.bp, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.xw = getelementptr inbounds nuw i8, ptr %8, i64 3072
  %i.xx = shl i64 %i.xi, 2
  %i.xy = add i64 %i.xx, -3072
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %8, ptr nonnull align 4 %i.xw, i64 %i.xy, i1 false)
  %.pre231.i.a = load i64, ptr %7, align 8, !tbaa !67
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i: ; preds = %bb.bp, %bb.bo
  %i.xz = phi i64 [ %.pre231.i.a, %bb.bp ], [ %i.xi, %bb.bo ]
  %i.ya = add nsw i64 %i.xz, -768                 ; 2 uses
  store i64 %i.ya, ptr %7, align 8, !tbaa !67
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i, %bb.bn
  %i.yb = phi i64 [ %i.ya, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i ], [ %i.xi, %bb.bn ] ; 2 uses
  %.1130.i = phi i32 [ 0, %_ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit.i ], [ %i.xt, %bb.bn ] ; 2 uses
  %i.yc = load ptr, ptr %i.ep, align 8, !tbaa !137
  %i.yd = sext i32 %i.xs to i64
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.yc, i64 %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bx, %bb.bq
  %i.yg = phi i64 [ %i.yb, %bb.bq ], [ %i.abe, %bb.bx ] ; 3 uses
  %i.yh = phi i64 [ %i.yb, %bb.bq ], [ %i.abf, %bb.bx ] ; 5 uses
  %indvars.iv227.i = phi i64 [ 0, %bb.bq ], [ %indvars.iv.next228.i, %bb.bx ] ; 4 uses
  %i.yi = load i32, ptr %i.yf, align 4
  %i.yj = and i32 %i.yi, 16777215
  %i.yk = trunc i64 %indvars.iv227.i to i32
  %i.yl = mul i32 %i.yk, 6
  %i.ym = lshr i32 %i.yj, %i.yl
  %i.yn = and i32 %i.ym, 63                       ; 2 uses
  %i.yo = icmp eq i32 %i.yn, 63
  br i1 %i.yo, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetXiE6offset, i64 %indvars.iv227.i
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !68
  %i.yr = add nsw i32 %i.yq, %i.xm                ; 3 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr @_ZZ15rcGetDirOffsetYiE6offset, i64 %indvars.iv227.i
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !68
  %i.yu = add nsw i32 %i.yt, %i.xq                ; 3 uses
  %i.yv = sub i32 %i.yr, %i.xd                    ; 2 uses
  %i.yw = sub i32 %i.yu, %i.xe                    ; 2 uses
  %.not146.i = icmp ult i32 %i.yv, %i.go
  %.not147.i = icmp ult i32 %i.yw, %i.gs
  %or.cond489 = select i1 %.not146.i, i1 %.not147.i, i1 false
  br i1 %or.cond489, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.yx = mul nsw i32 %i.yw, %i.go
  %i.yy = add nsw i32 %i.yx, %i.yv
  %i.yz = sext i32 %i.yy to i64
  %i.za = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.yz ; 2 uses
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !132
  %.not148.i = icmp eq i16 %i.zb, -1
  br i1 %.not148.i, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.zc = load ptr, ptr %i.eo, align 8, !tbaa !136
  %i.zd = load i32, ptr %2, align 8, !tbaa !130
  %i.ze = mul nsw i32 %i.zd, %i.yu
  %i.zf = add nsw i32 %i.ze, %i.yr
  %i.zg = sext i32 %i.zf to i64
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.zc, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4
  %i.zj = and i32 %i.zi, 16777215
  %i.zk = add nuw nsw i32 %i.zj, %i.yn            ; 2 uses
  %i.zl = load ptr, ptr %i.ep, align 8, !tbaa !137
  %i.zm = zext nneg i32 %i.zk to i64
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zl, i64 %i.zm
  %i.zo = load i16, ptr %i.zn, align 4, !tbaa !140
  store i16 %i.zo, ptr %i.za, align 2, !tbaa !132
  %i.zp = add nsw i64 %i.yh, 3                    ; 5 uses
  %i.zq = load i64, ptr %i.aj, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i156.i = icmp sgt i64 %i.zp, %i.zq
  br i1 %.not.i.i.i156.i, label %bb.bv, label %._ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit_crit_edge.i157.i

._ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit_crit_edge.i157.i: ; preds = %bb.bu
  %.pre.i159.i = load ptr, ptr %i.ak, align 8, !tbaa !66
  br label %_ZL5push3R12rcTempVectorIiEiii.exit169.i

bb.bv:                                            ; preds = %bb.bu
  %i.zr = icmp sgt i64 %i.zq, 4611686018427387902
  %i.zs = shl nsw i64 %i.zq, 1
  %..i.i.i.i160.i = call i64 @llvm.smax.i64(i64 %i.zs, i64 %i.zp)
  %.0.i.i.i.i161.i = select i1 %i.zr, i64 9223372036854775807, i64 %..i.i.i.i160.i, !prof !141 ; 2 uses
  %i.zt = shl i64 %.0.i.i.i.i161.i, 2
  %i.zu = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.zt, i32 noundef 1) #7 ; 10 uses
  %i.zv = ptrtoaddr ptr %i.zu to i64
  %.not.i.i.i.i162.i = icmp eq ptr %i.zu, null
  %.pre.i.i164.i = load ptr, ptr %i.ak, align 8, !tbaa !66 ; 8 uses
  %.pre.i.i164.i1069 = ptrtoaddr ptr %.pre.i.i164.i to i64
  br i1 %.not.i.i.i.i162.i, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.zw = load i64, ptr %7, align 8, !tbaa !67    ; 7 uses
  %i.zx = icmp sgt i64 %i.zw, 0
  br i1 %i.zx, label %.lr.ph.i.i.i.i.i166.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i

.lr.ph.i.i.i.i.i166.i.preheader:                  ; preds = %bb.bw
  %min.iters.check1072 = icmp ult i64 %i.zw, 8
  %i.zy = sub i64 %.pre.i.i164.i1069, %i.zv
  %diff.check1070 = icmp ugt i64 %i.zy, -32
  %or.cond1099 = select i1 %min.iters.check1072, i1 true, i1 %diff.check1070
  br i1 %or.cond1099, label %.lr.ph.i.i.i.i.i166.i.preheader1123, label %vector.ph1073

vector.ph1073:                                    ; preds = %.lr.ph.i.i.i.i.i166.i.preheader
  %n.vec1074 = and i64 %i.zw, 9223372036854775800 ; 3 uses
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %vector.ph1073
  %index1076 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1079, %vector.body1075 ] ; 3 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %index1076 ; 2 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %index1076 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %wide.load1077 = load <4 x i32>, ptr %i.aaa, align 4, !tbaa !68
  %wide.load1078 = load <4 x i32>, ptr %i.aab, align 4, !tbaa !68
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  store <4 x i32> %wide.load1077, ptr %i.zz, align 4, !tbaa !68
  store <4 x i32> %wide.load1078, ptr %i.aac, align 4, !tbaa !68
  %index.next1079 = add nuw i64 %index1076, 8     ; 2 uses
  %i.aad = icmp eq i64 %index.next1079, %n.vec1074
  br i1 %i.aad, label %middle.block1080, label %vector.body1075, !llvm.loop !86

middle.block1080:                                 ; preds = %vector.body1075
  %cmp.n1081 = icmp eq i64 %i.zw, %n.vec1074
  br i1 %cmp.n1081, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i.preheader1123

.lr.ph.i.i.i.i.i166.i.preheader1123:              ; preds = %.lr.ph.i.i.i.i.i166.i.preheader, %middle.block1080
  %.07.i.i.i.i.i167.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i166.i.preheader ], [ %n.vec1074, %middle.block1080 ] ; 3 uses
  %xtraiter1173 = and i64 %i.zw, 3                ; 2 uses
  %lcmp.mod1174.not = icmp eq i64 %xtraiter1173, 0
  br i1 %lcmp.mod1174.not, label %.lr.ph.i.i.i.i.i166.i.prol.loopexit, label %.lr.ph.i.i.i.i.i166.i.prol

.lr.ph.i.i.i.i.i166.i.prol:                       ; preds = %.lr.ph.i.i.i.i.i166.i.preheader1123, %.lr.ph.i.i.i.i.i166.i.prol
  %.07.i.i.i.i.i167.i.prol = phi i64 [ %i.aah, %.lr.ph.i.i.i.i.i166.i.prol ], [ %.07.i.i.i.i.i167.i.ph, %.lr.ph.i.i.i.i.i166.i.preheader1123 ] ; 3 uses
  %prol.iter1175 = phi i64 [ %prol.iter1175.next, %.lr.ph.i.i.i.i.i166.i.prol ], [ 0, %.lr.ph.i.i.i.i.i166.i.preheader1123 ]
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.07.i.i.i.i.i167.i.prol
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %.07.i.i.i.i.i167.i.prol
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !68
  store i32 %i.aag, ptr %i.aae, align 4, !tbaa !68
  %i.aah = add nuw nsw i64 %.07.i.i.i.i.i167.i.prol, 1 ; 2 uses
  %prol.iter1175.next = add i64 %prol.iter1175, 1 ; 2 uses
  %prol.iter1175.cmp.not = icmp eq i64 %prol.iter1175.next, %xtraiter1173
  br i1 %prol.iter1175.cmp.not, label %.lr.ph.i.i.i.i.i166.i.prol.loopexit, label %.lr.ph.i.i.i.i.i166.i.prol, !llvm.loop !87

.lr.ph.i.i.i.i.i166.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i166.i.prol, %.lr.ph.i.i.i.i.i166.i.preheader1123
  %.07.i.i.i.i.i167.i.unr = phi i64 [ %.07.i.i.i.i.i167.i.ph, %.lr.ph.i.i.i.i.i166.i.preheader1123 ], [ %i.aah, %.lr.ph.i.i.i.i.i166.i.prol ]
  %i.aai = sub nsw i64 %.07.i.i.i.i.i167.i.ph, %i.zw
  %i.aaj = icmp ugt i64 %i.aai, -4
  br i1 %i.aaj, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i

.lr.ph.i.i.i.i.i166.i:                            ; preds = %.lr.ph.i.i.i.i.i166.i.prol.loopexit, %.lr.ph.i.i.i.i.i166.i
  %.07.i.i.i.i.i167.i = phi i64 [ %i.aaz, %.lr.ph.i.i.i.i.i166.i ], [ %.07.i.i.i.i.i167.i.unr, %.lr.ph.i.i.i.i.i166.i.prol.loopexit ] ; 6 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.07.i.i.i.i.i167.i
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %.07.i.i.i.i.i167.i
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !68
  store i32 %i.aam, ptr %i.aak, align 4, !tbaa !68
  %i.aan = add nuw nsw i64 %.07.i.i.i.i.i167.i, 1 ; 2 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.aan
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %i.aan
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !68
  store i32 %i.aaq, ptr %i.aao, align 4, !tbaa !68
  %i.aar = add nuw nsw i64 %.07.i.i.i.i.i167.i, 2 ; 2 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.aar
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %i.aar
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !68
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !68
  %i.aav = add nuw nsw i64 %.07.i.i.i.i.i167.i, 3 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.aav
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %i.aav
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !68
  store i32 %i.aay, ptr %i.aaw, align 4, !tbaa !68
  %i.aaz = add nuw nsw i64 %.07.i.i.i.i.i167.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i168.i.3 = icmp eq i64 %i.aaz, %i.zw
  br i1 %exitcond.not.i.i.i.i.i168.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i, !llvm.loop !88

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i: ; preds = %.lr.ph.i.i.i.i.i166.i.prol.loopexit, %.lr.ph.i.i.i.i.i166.i, %middle.block1080, %bb.bw, %bb.bv
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i164.i) #7
  store ptr %i.zu, ptr %i.ak, align 8, !tbaa !66
  store i64 %.0.i.i.i.i161.i, ptr %i.aj, align 8, !tbaa !124
  br label %_ZL5push3R12rcTempVectorIiEiii.exit169.i

_ZL5push3R12rcTempVectorIiEiii.exit169.i:         ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, %._ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit_crit_edge.i157.i
  %i.aba = phi ptr [ %.pre.i159.i, %._ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit_crit_edge.i157.i ], [ %i.zu, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i ]
  store i64 %i.zp, ptr %7, align 8, !tbaa !67
  %i.abb = getelementptr [4 x i8], ptr %i.aba, i64 %i.yh ; 3 uses
  store i32 %i.yr, ptr %i.abb, align 4, !tbaa !68
  %i.abc = getelementptr i8, ptr %i.abb, i64 4
  store i32 %i.yu, ptr %i.abc, align 4, !tbaa !68
  %i.abd = getelementptr i8, ptr %i.abb, i64 8
  store i32 %i.zk, ptr %i.abd, align 4, !tbaa !68
  br label %bb.bx

bb.bx:                                            ; preds = %_ZL5push3R12rcTempVectorIiEiii.exit169.i, %bb.bt, %bb.bs, %bb.br
  %i.abe = phi i64 [ %i.zp, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yg, %bb.br ], [ %i.yg, %bb.bs ], [ %i.yg, %bb.bt ] ; 3 uses
  %i.abf = phi i64 [ %i.zp, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yh, %bb.br ], [ %i.yh, %bb.bs ], [ %i.yh, %bb.bt ]
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next228.i, 4
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.br

_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit: ; preds = %.loopexit.i, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %.not496 = icmp eq i32 %.0254.lcssa, 0          ; 3 uses
  br i1 %.not496, label %_ZL13polyMinExtentPKfi.exit.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  %wide.trip.count.i = zext nneg i32 %.0254.lcssa to i64 ; 5 uses
  %xtraiter1176 = and i64 %wide.trip.count.i, 1
  %i.abg = icmp eq i32 %.0254.lcssa, 1
  br i1 %i.abg, label %.lr.ph.i334.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1179 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i334

.lr.ph.us.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph.i334
  %lcmp.mod1177.not = icmp eq i64 %xtraiter1176, 0
  br i1 %lcmp.mod1177.not, label %.lr.ph.us.preheader.i.i, label %.lr.ph.i334.epil.preheader

.lr.ph.i334.epil.preheader:                       ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i335.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i336.1, %.lr.ph.us.preheader.i.i.unr-lcssa ]
  %lcmp.mod1178 = trunc i32 %.0254.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1178)
  %i.abh = mul nuw nsw i64 %indvars.iv.i335.epil.init, 3 ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abh ; 2 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.abh ; 2 uses
  %i.abk = load <2 x float>, ptr %i.abj, align 4, !tbaa !62
  store <2 x float> %i.abk, ptr %i.abi, align 4, !tbaa !62
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !62
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store float %i.abm, ptr %i.abn, align 4, !tbaa !62
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.i334.epil.preheader
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.abo = load float, ptr %i.er, align 4, !tbaa !143 ; 5 uses
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv42.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next43.i.i, %._crit_edge.us.i.i ] ; 3 uses
  %.036.us.i.i = phi float [ f0x7F7FFFFF, %.lr.ph.us.preheader.i.i ], [ %i.adg, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 3 uses
  %.not.i.i338 = icmp eq i64 %indvars.iv.next43.i.i, %wide.trip.count.i ; 2 uses
  %i.abp = trunc nuw nsw i64 %indvars.iv.next43.i.i to i32
  %iv.rem.i.i = select i1 %.not.i.i338, i32 0, i32 %i.abp ; 2 uses
  %.idx.i.i339 = mul nuw nsw i64 %indvars.iv42.i.i, 12
  %i.abq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i339 ; 2 uses
  %i.abr = mul nuw nsw i32 %iv.rem.i.i, 3
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abs ; 2 uses
  %i.abu = getelementptr i8, ptr %i.abq, i64 8
  %i.abv = getelementptr i8, ptr %i.abt, i64 8
  %i.abw = zext i32 %iv.rem.i.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph.us.i.i
  %indvars.iv.i.i340 = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i341, %bb.ca ] ; 4 uses
  %.02533.us.i.i = phi float [ 0.000000e+00, %.lr.ph.us.i.i ], [ %.1.us.i.i, %bb.ca ] ; 3 uses
  %i.abx = icmp eq i64 %indvars.iv.i.i340, %indvars.iv42.i.i
  %i.aby = icmp eq i64 %indvars.iv.i.i340, %i.abw
  %or.cond.us.i.i = select i1 %i.abx, i1 true, i1 %i.aby
  br i1 %or.cond.us.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.idx47.i.i = mul nuw nsw i64 %indvars.iv.i.i340, 12
  %i.abz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx47.i.i ; 2 uses
  %.val.us.i.i = load float, ptr %i.abz, align 4, !tbaa !62 ; 2 uses
  %i.aca = getelementptr i8, ptr %i.abz, i64 8
  %.val28.us.i.i = load float, ptr %i.aca, align 4, !tbaa !62 ; 2 uses
  %.val29.us.i.i = load float, ptr %i.abq, align 4, !tbaa !62 ; 2 uses
  %.val30.us.i.i = load float, ptr %i.abu, align 4, !tbaa !62 ; 2 uses
  %.val31.us.i.i = load float, ptr %i.abt, align 4, !tbaa !62
  %.val32.us.i.i = load float, ptr %i.abv, align 4, !tbaa !62
  %i.acb = insertelement <2 x float> poison, float %.val.us.i.i, i64 0
  %i.acc = insertelement <2 x float> %i.acb, float %.val31.us.i.i, i64 1
  %i.acd = insertelement <2 x float> poison, float %.val29.us.i.i, i64 0
  %i.ace = shufflevector <2 x float> %i.acd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acf = fsub <2 x float> %i.acc, %i.ace        ; 3 uses
  %i.acg = insertelement <2 x float> poison, float %.val28.us.i.i, i64 0
  %i.ach = insertelement <2 x float> %i.acg, float %.val32.us.i.i, i64 1
  %i.aci = insertelement <2 x float> poison, float %.val30.us.i.i, i64 0
  %i.acj = shufflevector <2 x float> %i.aci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ack = fsub <2 x float> %i.ach, %i.acj        ; 3 uses
  %i.acl = shufflevector <2 x float> %i.ack, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acm = fmul <2 x float> %i.acl, %i.ack
  %i.acn = shufflevector <2 x float> %i.acf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aco = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acn, <2 x float> %i.acf, <2 x float> %i.acm) ; 2 uses
  %i.acp = extractelement <2 x float> %i.aco, i64 1 ; 2 uses
  %i.acq = fcmp ogt float %i.acp, 0.000000e+00
  %i.acr = extractelement <2 x float> %i.aco, i64 0 ; 2 uses
  %i.acs = fdiv float %i.acr, %i.acp
  %.0.i.us.i.i = select i1 %i.acq, float %i.acs, float %i.acr ; 3 uses
  %i.act = fcmp olt float %.0.i.us.i.i, 0.000000e+00
  %i.acu = fcmp ogt float %.0.i.us.i.i, 1.000000e+00
  %spec.store.select.i.us.i.i = select i1 %i.acu, float 1.000000e+00, float %.0.i.us.i.i
  %.1.i.us.i.i = select i1 %i.act, float 0.000000e+00, float %spec.store.select.i.us.i.i ; 2 uses
  %i.acv = extractelement <2 x float> %i.acf, i64 1
  %i.acw = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.acv, float %.val29.us.i.i)
  %i.acx = fsub float %i.acw, %.val.us.i.i        ; 2 uses
  %i.acy = extractelement <2 x float> %i.ack, i64 1
  %i.acz = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.acy, float %.val30.us.i.i)
  %i.ada = fsub float %i.acz, %.val28.us.i.i      ; 2 uses
  %i.adb = fmul float %i.ada, %i.ada
  %i.adc = call noundef float @llvm.fmuladd.f32(float %i.acx, float %i.acx, float %i.adb) ; 2 uses
  %i.add = fcmp ogt float %.02533.us.i.i, %i.adc
  %i.ade = select i1 %i.add, float %.02533.us.i.i, float %i.adc
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.1.us.i.i = phi float [ %.02533.us.i.i, %bb.by ], [ %i.ade, %bb.bz ] ; 3 uses
  %indvars.iv.next.i.i341 = add nuw nsw i64 %indvars.iv.i.i340, 1 ; 2 uses
  %exitcond.not.i.i342 = icmp eq i64 %indvars.iv.next.i.i341, %wide.trip.count.i
  br i1 %exitcond.not.i.i342, label %._crit_edge.us.i.i, label %bb.by

._crit_edge.us.i.i:                               ; preds = %bb.ca
  %i.adf = fcmp olt float %.036.us.i.i, %.1.us.i.i
  %i.adg = select i1 %i.adf, float %.036.us.i.i, float %.1.us.i.i ; 2 uses
  br i1 %.not.i.i338, label %_ZL13polyMinExtentPKfi.exit.i, label %.lr.ph.us.i.i

_ZL13polyMinExtentPKfi.exit.i:                    ; preds = %._crit_edge.us.i.i
  %i.adh = fdiv float 1.000000e+00, %i.abo        ; 5 uses
  %i.adi = call noundef float @_Z6rcSqrtf(float noundef %i.adg) #7 ; 4 uses
  br i1 %i.es, label %bb.cb, label %._crit_edge.i347

_ZL13polyMinExtentPKfi.exit.thread.i:             ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.adj = load float, ptr %i.er, align 4, !tbaa !143 ; 2 uses
  %i.adk = fdiv float 1.000000e+00, %i.adj
  %i.adl = call noundef float @_Z6rcSqrtf(float noundef f0x7F7FFFFF) #7
  br label %._crit_edge.i347

.lr.ph.i334:                                      ; preds = %.lr.ph.i334, %.lr.ph.preheader.i.new
  %indvars.iv.i335 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i336.1, %.lr.ph.i334 ] ; 3 uses
  %niter1180 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1180.next.1, %.lr.ph.i334 ]
  %i.adm = mul nuw nsw i64 %indvars.iv.i335, 3    ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.adm ; 2 uses
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.adm ; 2 uses
  %i.adp = load <2 x float>, ptr %i.ado, align 4, !tbaa !62
  store <2 x float> %i.adp, ptr %i.adn, align 8, !tbaa !62
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !62
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  store float %i.adr, ptr %i.ads, align 8, !tbaa !62
  %i.adt = mul nuw i64 %indvars.iv.i335, 3
  %i.adu = add nuw i64 %i.adt, 3                  ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.adu ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.adu ; 2 uses
  %i.adx = load <2 x float>, ptr %i.adw, align 4, !tbaa !62
  store <2 x float> %i.adx, ptr %i.adv, align 4, !tbaa !62
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !62
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  store float %i.adz, ptr %i.aea, align 4, !tbaa !62
  %indvars.iv.next.i336.1 = add nuw nsw i64 %indvars.iv.i335, 2 ; 2 uses
  %niter1180.next.1 = add i64 %niter1180, 2       ; 2 uses
  %niter1180.ncmp.1 = icmp eq i64 %niter1180.next.1, %unroll_iter1179
  br i1 %niter1180.ncmp.1, label %.lr.ph.us.preheader.i.i.unr-lcssa, label %.lr.ph.i334

bb.cb:                                            ; preds = %_ZL13polyMinExtentPKfi.exit.i
  %i.aeb = add nsw i32 %.0254.lcssa, -1
  %i.aec = add nsw i32 %i.go, -1
  %i.aed = add nsw i32 %i.gs, -1
  %i.aee = insertelement <2 x float> poison, float %i.adh, i64 0
  %i.aef = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeg = insertelement <2 x i32> poison, i32 %i.gk, i64 0
  %i.aeh = insertelement <2 x i32> %i.aeg, i32 %i.gh, i64 1
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i346, %bb.cb
  %.4 = phi i32 [ %.0254.lcssa, %bb.cb ], [ %.5, %.loopexit.i346 ] ; 7 uses
  %indvars.iv589.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next590.i, %.loopexit.i346 ] ; 3 uses
  %.0238484.i = phi i32 [ 0, %bb.cb ], [ %.3241.i, %.loopexit.i346 ] ; 2 uses
  %.0247483.i = phi i32 [ %i.aeb, %bb.cb ], [ %i.anq, %.loopexit.i346 ] ; 2 uses
  %i.aei = mul nsw i32 %.0247483.i, 3
  %i.aej = sext i32 %i.aei to i64
  %i.aek = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aej ; 5 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv589.i, 12
  %i.ael = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i ; 5 uses
  %i.aem = load float, ptr %i.aek, align 4, !tbaa !62 ; 5 uses
  %i.aen = load float, ptr %i.ael, align 4, !tbaa !62 ; 5 uses
  %i.aeo = fsub float %i.aem, %i.aen
  %i.aep = call float @llvm.fabs.f32(float %i.aeo)
  %i.aeq = fcmp olt float %i.aep, f0x358637BD
  br i1 %i.aeq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !62
  %i.aet = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !62
  %i.aev = fcmp ogt float %i.aes, %i.aeu
  br i1 %i.aev, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %bb.cc
end_hunk_0
