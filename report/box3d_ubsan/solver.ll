Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3ExecuteBlock:bb.a
  br label %b3PrepareJointsTask.exit

bb.bh:                                            ; preds = %bb.bf
  tail call void @b3SolveContacts_Convex(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext true) #13
  br label %b3PrepareJointsTask.exit

bb.bi:                                            ; preds = %bb.bf
  tail call void @b3SolveContacts_Mesh(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext true) #13
  br label %b3PrepareJointsTask.exit

bb.bj:                                            ; preds = %bb.c
  %.sroa.0131.0.extract.trunc.i = trunc i64 %2 to i32 ; 4 uses
  %.sroa.3.0.extract.shift.i54 = lshr i64 %2, 32  ; 2 uses
  %i.tp = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.tq = and i64 %i.tp, 7, !nosanitize !9
  %i.tr = icmp eq i64 %i.tq, 0, !nosanitize !9
  br i1 %i.tr, label %bb.bl, label %bb.bk, !prof !10, !nosanitize !9

bb.bk:                                            ; preds = %bb.bj
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @315, i64 %i.tp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bl:                                            ; preds = %bb.bj
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !96
  %.fr166.i = freeze ptr %i.tt                    ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tv = load float, ptr %i.tu, align 8, !tbaa !371 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.tx = load float, ptr %i.tw, align 8, !tbaa !374 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !163
  %i.ua = fmul float %i.tz, f0x3F490FDB           ; 3 uses
  %i.ub = fmul float %i.tx, %i.tx
  %i.uc = fmul float %i.ua, %i.ua
  %i.ud = trunc nuw i64 %.sroa.3.0.extract.shift.i54 to i32
  %i.ue = and i32 %i.ud, 65535
  %i.uf = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0131.0.extract.trunc.i, i32 %i.ue), !nosanitize !9 ; 2 uses
  %i.ug = extractvalue { i32, i1 } %i.uf, 1, !nosanitize !9
  br i1 %i.ug, label %._crit_edge.i71, label %.lr.ph.i55, !prof !173, !nosanitize !9

.lr.ph.i55:                                       ; preds = %bb.bl
  %i.uh = extractvalue { i32, i1 } %i.uf, 0, !nosanitize !9 ; 2 uses
  %i.ui = ptrtoint ptr %.fr166.i to i64           ; 4 uses
  %.not167.i = icmp eq ptr %.fr166.i, null
  br i1 %.not167.i, label %.lr.ph.split.us.i69, label %.lr.ph.split.preheader.i, !prof !97

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i55
  %sext197.i = shl i64 %2, 32
  %i.uj = ashr exact i64 %sext197.i, 32           ; 2 uses
  %smax.i56 = tail call i32 @llvm.smax.i32(i32 %i.uh, i32 %.sroa.0131.0.extract.trunc.i)
  %wide.trip.count.i57 = sext i32 %smax.i56 to i64 ; 2 uses
  %exitcond.not.i60213 = icmp eq i64 %i.uj, %wide.trip.count.i57
  br i1 %exitcond.not.i60213, label %b3PrepareJointsTask.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.split.preheader.i
  %i.uk = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.ul = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph.split.us.i69:                              ; preds = %.lr.ph.i55
  %i.um = icmp sgt i32 %i.uh, %.sroa.0131.0.extract.trunc.i
  br i1 %i.um, label %bb.bm, label %b3PrepareJointsTask.exit

bb.bm:                                            ; preds = %.lr.ph.split.us.i69
  %sext.i70 = shl i64 %2, 32                      ; 2 uses
  %i.un = ashr exact i64 %sext.i70, 32
  %i.uo = mul nsw i64 %i.un, 56                   ; 2 uses
  %i.up = icmp eq i64 %sext.i70, 0
  %i.uq = icmp uge i64 %i.uo, %i.ui, !nosanitize !9
  %i.ur = icmp slt i32 %.sroa.0131.0.extract.trunc.i, 0
  %i.us = xor i1 %i.ur, %i.uq
  %i.ut = and i1 %i.up, %i.us, !nosanitize !9
  br i1 %i.ut, label %.split164.i, label %.split161.us.i, !prof !10, !nosanitize !9

._crit_edge.i71:                                  ; preds = %bb.bl
  %i.uu = and i64 %2, 4294967295
  %i.uv = and i64 %.sroa.3.0.extract.shift.i54, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @316, i64 %i.uu, i64 %i.uv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %.lr.ph.preheader, %b3IntegrateRotation.exit.i
  %indvars.iv.i59214 = phi i64 [ %indvars.iv.next.i67, %b3IntegrateRotation.exit.i ], [ %i.uj, %.lr.ph.preheader ] ; 4 uses
  %i.uw = getelementptr inbounds [56 x i8], ptr %.fr166.i, i64 %indvars.iv.i59214 ; 11 uses
  %i.ux = mul nsw i64 %indvars.iv.i59214, 56
  %i.uy = add i64 %i.ux, %i.ui, !nosanitize !9    ; 3 uses
  %i.uz = icmp ne i64 %i.uy, 0
  %i.va = icmp uge i64 %i.uy, %i.ui, !nosanitize !9
  %i.vb = icmp slt i64 %indvars.iv.i59214, 0
  %i.vc = xor i1 %i.vb, %i.va
  %i.vd = and i1 %i.uz, %i.vc, !nosanitize !9
  br i1 %i.vd, label %bb.bn, label %.split161.us.i, !prof !10, !nosanitize !9

.split161.us.i:                                   ; preds = %.lr.ph, %bb.bm
  %.us-phi162.i = phi i64 [ %i.uo, %bb.bm ], [ %i.uy, %.lr.ph ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @317, i64 %i.ui, i64 %.us-phi162.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bn:                                            ; preds = %.lr.ph
  %i.ve = ptrtoint ptr %i.uw to i64, !nosanitize !9 ; 2 uses
  %i.vf = and i64 %i.ve, 3, !nosanitize !9
  %i.vg = icmp eq i64 %i.vf, 0, !nosanitize !9
  br i1 %i.vg, label %bb.bo, label %.split164.i, !prof !10, !nosanitize !9

.split164.i:                                      ; preds = %bb.bn, %bb.bm
  %.us-phi165.i = phi i64 [ 0, %bb.bm ], [ %i.ve, %bb.bn ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @318, i64 %.us-phi165.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0121.0.copyload.i = load <2 x float>, ptr %i.uw, align 4, !tbaa !146
  %.sroa.12128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 2 uses
  %.sroa.12128.0.copyload.i = load float, ptr %.sroa.12128.0..sroa_idx.i, align 4, !tbaa !146
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uw, i64 12 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 20 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uw, i64 52 ; 3 uses
  %.sroa.12.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !146
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.vh, align 4, !tbaa !146
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !168 ; 5 uses
  %i.vk = insertelement <2 x i32> poison, i32 %i.vj, i64 0
  %i.vl = shufflevector <2 x i32> %i.vk, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vm = and <2 x i32> %i.vl, <i32 1, i32 2>
  %i.vn = icmp eq <2 x i32> %i.vm, zeroinitializer
  %i.vo = select <2 x i1> %i.vn, <2 x float> %.sroa.0121.0.copyload.i, <2 x float> zeroinitializer ; 4 uses
  %i.vp = and i32 %i.vj, 4
  %.not85.i = icmp eq i32 %i.vp, 0
  %i.vq = select i1 %.not85.i, float %.sroa.12128.0.copyload.i, float 0.000000e+00 ; 4 uses
  %i.vr = and <2 x i32> %i.vl, <i32 8, i32 16>
  %i.vs = icmp eq <2 x i32> %i.vr, zeroinitializer
  %i.vt = select <2 x i1> %i.vs, <2 x float> %.sroa.0.0.copyload.i, <2 x float> zeroinitializer ; 4 uses
  %i.vu = and i32 %i.vj, 32
  %.not88.i = icmp eq i32 %i.vu, 0
  %i.vv = select i1 %.not88.i, float %.sroa.12.0.copyload.i, float 0.000000e+00 ; 4 uses
  %i.vw = fmul <2 x float> %i.vo, %i.vo           ; 2 uses
  %shift667 = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop668 = fadd <2 x float> %i.vw, %shift667
  %i.vx = extractelement <2 x float> %foldExtExtBinop668, i64 0
  %i.vy = fmul float %i.vq, %i.vq
  %i.vz = fadd float %i.vy, %i.vx                 ; 2 uses
  %i.wa = fcmp ogt float %i.vz, %i.ub
  br i1 %i.wa, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.wb = tail call float @sqrtf(float noundef %i.vz) #13
  %i.wc = fdiv float %i.tx, %i.wb                 ; 2 uses
  %i.wd = insertelement <2 x float> poison, float %i.wc, i64 0
  %i.we = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wf = fmul <2 x float> %i.vo, %i.we
  %i.wg = fmul float %i.vq, %i.wc
  %i.wh = or i32 %i.vj, 256                       ; 2 uses
  store i32 %i.wh, ptr %i.vi, align 4, !tbaa !168
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.wi = phi i32 [ %i.wh, %bb.bp ], [ %i.vj, %bb.bo ] ; 2 uses
  %.sroa.12128.0.i = phi float [ %i.wg, %bb.bp ], [ %i.vq, %bb.bo ] ; 2 uses
  %.sroa.0121.0.i = phi <2 x float> [ %i.wf, %bb.bp ], [ %i.vo, %bb.bo ] ; 2 uses
  %i.wj = fmul <2 x float> %i.vt, %i.vt           ; 2 uses
  %shift670 = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop671 = fadd <2 x float> %i.wj, %shift670
  %i.wk = extractelement <2 x float> %foldExtExtBinop671, i64 0
  %i.wl = fmul float %i.vv, %i.vv
  %i.wm = fadd float %i.wl, %i.wk                 ; 2 uses
  %i.wn = fcmp ogt float %i.wm, %i.uc
  %i.wo = and i32 %i.wi, 1024
  %i.wp = icmp eq i32 %i.wo, 0
  %or.cond.i = and i1 %i.wn, %i.wp
  br i1 %or.cond.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.wq = tail call float @sqrtf(float noundef %i.wm) #13
  %i.wr = fdiv float %i.ua, %i.wq                 ; 2 uses
  %i.ws = insertelement <2 x float> poison, float %i.wr, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = fmul <2 x float> %i.vt, %i.wt
  %i.wv = fmul float %i.vv, %i.wr
  %i.ww = or i32 %i.wi, 256
  store i32 %i.ww, ptr %i.vi, align 4, !tbaa !168
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.12.0.i62 = phi float [ %i.wv, %bb.br ], [ %i.vv, %bb.bq ] ; 2 uses
  %.sroa.0.0.i = phi <2 x float> [ %i.wu, %bb.br ], [ %i.vt, %bb.bq ] ; 2 uses
  store <2 x float> %.sroa.0121.0.i, ptr %i.uw, align 4, !tbaa !146
  store float %.sroa.12128.0.i, ptr %.sroa.12128.0..sroa_idx.i, align 4, !tbaa !146
  store <2 x float> %.sroa.0.0.i, ptr %i.vh, align 4, !tbaa !146
  store float %.sroa.12.0.i62, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !146
  %i.wx = getelementptr inbounds nuw i8, ptr %i.uw, i64 24 ; 2 uses
  %.sroa.014.0.copyload.i = load <2 x float>, ptr %i.wx, align 4
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 32 ; 2 uses
  %.sroa.215.0.copyload.i = load float, ptr %.sroa.215.0..sroa_idx.i, align 4
  %i.wy = fmul <2 x float> %i.ul, %.sroa.0121.0.i
  %i.wz = fadd <2 x float> %i.wy, %.sroa.014.0.copyload.i
  %i.xa = fmul float %i.tv, %.sroa.12128.0.i
  %i.xb = fadd float %i.xa, %.sroa.215.0.copyload.i
  store <2 x float> %i.wz, ptr %i.wx, align 4, !tbaa !146
  store float %i.xb, ptr %.sroa.215.0..sroa_idx.i, align 4, !tbaa !146
  %i.xc = getelementptr inbounds nuw i8, ptr %i.uw, i64 36 ; 2 uses
  %i.xd = fmul float %i.tv, %.sroa.12.0.i62
  %i.xe = load <2 x float>, ptr %i.xc, align 4    ; 6 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.uw, i64 44
  %i.xg = load <2 x float>, ptr %i.xf, align 4    ; 5 uses
  %i.xh = fmul float %i.xd, 5.000000e-01          ; 4 uses
  %.sroa.0.4.vec.extract8.i.i.i.i65 = extractelement <2 x float> %i.xe, i64 1
  %i.xi = fmul <2 x float> %i.ul, %.sroa.0.0.i
  %i.xj = fmul <2 x float> %i.xi, splat (float 5.000000e-01) ; 5 uses
  %i.xk = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.xh, i64 0
  %i.xl = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.xm = fmul <2 x float> %i.xk, %i.xl           ; 2 uses
  %i.xn = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xo = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xp = fmul <2 x float> %i.xn, %i.xo           ; 2 uses
  %i.xq = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xr = fmul <2 x float> %i.xq, %i.xe           ; 2 uses
  %i.xs = fsub <2 x float> %i.xp, %i.xr
  %i.xt = fadd <2 x float> %i.xp, %i.xr
  %i.xu = shufflevector <2 x float> %i.xs, <2 x float> %i.xt, <2 x i32> <i32 0, i32 3>
  %i.xv = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.xh, i64 1
  %i.xw = shufflevector <2 x float> %i.xg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xx = fmul <2 x float> %i.xv, %i.xw
  %i.xy = fadd <2 x float> %i.xx, %i.xu           ; 2 uses
  %i.xz = fadd <2 x float> %i.xm, %i.xy
  %i.ya = fsub <2 x float> %i.xm, %i.xy
  %i.yb = shufflevector <2 x float> %i.xz, <2 x float> %i.ya, <2 x i32> <i32 0, i32 3>
  %i.yc = fmul float %i.xh, %.sroa.0.4.vec.extract8.i.i.i.i65
  %i.yd = fmul <2 x float> %i.xe, zeroinitializer
  %foldExtExtBinop676 = fmul <2 x float> %i.xj, %i.xg
  %i.ye = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yf = insertelement <2 x float> %i.ye, float %i.xh, i64 1
  %i.yg = shufflevector <2 x float> %i.xg, <2 x float> %i.xe, <2 x i32> <i32 0, i32 2>
  %i.yh = fmul <2 x float> %i.yf, %i.yg
  %i.yi = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.yj = shufflevector <2 x float> %i.yi, <2 x float> %foldExtExtBinop676, <2 x i32> <i32 0, i32 2>
  %i.yk = fsub <2 x float> %i.yh, %i.yj
  %i.yl = fadd <2 x float> %i.yd, %i.yk
  %i.ym = fmul <2 x float> %i.xj, %i.xl
  %i.yn = fadd <2 x float> %i.ym, %i.yl
  %i.yo = fadd <2 x float> %i.xe, %i.yn           ; 2 uses
  %i.yp = fadd <2 x float> %i.xg, %i.yb           ; 2 uses
  %i.yq = shufflevector <2 x float> %i.yo, <2 x float> %i.yp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.yr = fmul <4 x float> %i.yq, %i.yq           ; 4 uses
  %shift678 = shufflevector <4 x float> %i.yr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop679 = fadd <4 x float> %i.yr, %shift678
  %shift681 = shufflevector <4 x float> %i.yr, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop682 = fadd <4 x float> %shift681, %foldExtExtBinop679
  %shift684 = shufflevector <4 x float> %i.yr, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop685 = fadd <4 x float> %shift684, %foldExtExtBinop682
  %i.ys = extractelement <4 x float> %foldExtExtBinop685, i64 0 ; 2 uses
  %i.yt = fcmp ogt float %i.ys, f0x057A0000
  br i1 %i.yt, label %bb.bt, label %b3IntegrateRotation.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.yu = tail call float @sqrtf(float noundef %i.ys) #13
  %i.yv = fdiv float 1.000000e+00, %i.yu
  %i.yw = insertelement <2 x float> poison, float %i.yv, i64 0
  %i.yx = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yy = fmul <2 x float> %i.yo, %i.yx
  %i.yz = fmul <2 x float> %i.yp, %i.yx
  br label %b3IntegrateRotation.exit.i

b3IntegrateRotation.exit.i:                       ; preds = %bb.bt, %bb.bs
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.yz, %bb.bt ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bs ]
  %.sroa.0.0.i.i.i = phi <2 x float> [ %i.yy, %bb.bt ], [ zeroinitializer, %bb.bs ]
  %4 = shufflevector <2 x float> %.sroa.0.0.i.i.i, <2 x float> %.sroa.4.0.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %i.xc, align 4, !tbaa !146
  %indvars.iv.next.i67 = add nsw i64 %indvars.iv.i59214, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i67, %wide.trip.count.i57
  br i1 %exitcond.not.i60, label %b3PrepareJointsTask.exit, label %.lr.ph

bb.bu:                                            ; preds = %bb.c
  switch i8 %.sroa.1.0.extract.trunc, label %bb.bx [
    i8 4, label %bb.bv
    i8 5, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bu
  tail call fastcc void @b3SolveJointsTask(i64 %2, ptr noundef %1, i1 noundef zeroext false, i32 noundef %3)
  br label %b3PrepareJointsTask.exit

bb.bw:                                            ; preds = %bb.bu
  tail call void @b3SolveContacts_Convex(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext false) #13
  br label %b3PrepareJointsTask.exit

bb.bx:                                            ; preds = %bb.bu
  tail call void @b3SolveContacts_Mesh(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext false) #13
  br label %b3PrepareJointsTask.exit

bb.by:                                            ; preds = %bb.c
  switch i8 %.sroa.1.0.extract.trunc, label %b3PrepareJointsTask.exit [
    i8 5, label %bb.bz
    i8 6, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  tail call void @b3ApplyRestitution_Convex(i64 %2, ptr noundef nonnull %1) #13
  br label %b3PrepareJointsTask.exit

bb.ca:                                            ; preds = %bb.by
  tail call void @b3ApplyRestitution_Mesh(i64 %2, ptr noundef nonnull %1) #13
  br label %b3PrepareJointsTask.exit

bb.cb:                                            ; preds = %bb.c
  tail call void @b3StoreImpulses_Convex(i64 %2, ptr noundef nonnull %1, i32 noundef %3) #13
  br label %b3PrepareJointsTask.exit

bb.cc:                                            ; preds = %bb.c
  tail call void @b3StoreImpulses_Mesh(i64 %2, ptr noundef nonnull %1, i32 noundef %3) #13
  br label %b3PrepareJointsTask.exit

b3PrepareJointsTask.exit:                         ; preds = %b3IntegrateRotation.exit.i, %bb.bc, %.lr.ph.split.split.i, %.loopexit.i, %.lr.ph.split.preheader.i, %.lr.ph.split.split.preheader.i, %.lr.ph.split.us.i69, %.lr.ph.i48, %.lr.ph.split.split.us.i, %.lr.ph.split.us.i, %.preheader.i, %bb.by, %bb.bz, %bb.ca, %bb.bv, %bb.bx, %bb.bw, %bb.bg, %bb.bi, %bb.bh, %bb.be, %bb.bd, %bb.cc, %bb.cb, %bb.z, %bb.y, %bb.c
  ret void
}

declare void @b3PrepareContacts_Convex(i64, ptr noundef) local_unnamed_addr #3

declare void @b3PrepareContacts_Mesh(i64, ptr noundef) local_unnamed_addr #3

declare void @b3WarmStartContacts_Convex(i64, ptr noundef) local_unnamed_addr #3

declare void @b3WarmStartContacts_Mesh(i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @b3SolveJointsTask(i64 %0, ptr noundef nonnull %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #7 !func_sanitize !375 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.429.0.extract.shift = lshr i64 %0, 56    ; 2 uses
  %i.c = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @303, i64 %i.c) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 3 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !9
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 5 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @304, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = mul nuw nsw i64 %.sroa.429.0.extract.shift, 112
  %i.n = add i64 %i.m, %i.i, !nosanitize !9       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.i, !nosanitize !9
  br i1 %.not, label %bb.f, label %bb.g, !prof !97, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @305, i64 %i.i, i64 %i.n) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %i.g, i64 %.sroa.429.0.extract.shift
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106
  %.fr222 = freeze ptr %i.q                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !160  ; 3 uses
  %i.t = icmp ne ptr %i.s, null, !nosanitize !9
  %i.u = ptrtoint ptr %i.s to i64, !nosanitize !9 ; 2 uses
  %i.v = and i64 %i.u, 7, !nosanitize !9
  %i.w = icmp eq i64 %i.v, 0, !nosanitize !9
  %i.x = and i1 %i.t, %i.w, !nosanitize !9
  br i1 %i.x, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @306, i64 %i.u) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !120  ; 3 uses
  %i.aa = sext i32 %3 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds [3848 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = mul nsw i64 %i.aa, 3848
  %i.ad = ptrtoint ptr %i.z to i64, !nosanitize !9 ; 3 uses
  %i.ae = add i64 %i.ac, %i.ad, !nosanitize !9    ; 3 uses
  %i.af = icmp ne ptr %i.z, null, !nosanitize !9  ; 2 uses
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = xor i1 %i.af, %i.ag
  %i.ai = icmp uge i64 %i.ae, %i.ad, !nosanitize !9
  %i.aj = icmp slt i32 %3, 0
  %i.ak = xor i1 %i.aj, %i.ai
  %i.al = and i1 %i.ah, %i.ak, !nosanitize !9
  br i1 %i.al, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @307, i64 %i.ad, i64 %i.ae) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.am = ptrtoint ptr %i.ab to i64, !nosanitize !9 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !9
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !9
  %i.ap = and i1 %i.af, %i.ao
  br i1 %i.ap, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @308, i64 %i.am) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.ar = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.as = and i32 %i.ar, 65535
  %i.at = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc, i32 %i.as), !nosanitize !9 ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 1, !nosanitize !9
  br i1 %i.au, label %._crit_edge, label %.lr.ph, !prof !173, !nosanitize !9

.lr.ph:                                           ; preds = %bb.m
  %i.av = extractvalue { i32, i1 } %i.at, 0, !nosanitize !9 ; 4 uses
  %i.aw = ptrtoint ptr %.fr222 to i64             ; 6 uses
  %i.ax = icmp ne ptr %.fr222, null               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ax, label %.lr.ph.split.us.split.split.us.split.us.preheader, label %.lr.ph.split.us.split.us, !prof !10

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.ba = icmp sgt i32 %i.av, %.sroa.0.0.extract.trunc
  br i1 %i.ba, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.lr.ph.split.us.split.us
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.bb = ashr exact i64 %sext, 32                ; 2 uses
  %i.bc = mul nsw i64 %i.bb, 444                  ; 2 uses
  %i.bd = icmp eq i64 %sext, 0
  %i.be = icmp uge i64 %i.bc, %i.aw, !nosanitize !9
  %i.bf = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %i.bg = xor i1 %i.bf, %i.be
  %i.bh = and i1 %i.bd, %i.bg, !nosanitize !9
  br i1 %i.bh, label %.split104.us.split.us, label %.split101.us, !prof !10, !nosanitize !9

.split104.us.split.us:                            ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw [444 x i8], ptr null, i64 %i.bb ; 2 uses
  tail call void @b3SolveJoint(ptr noundef %i.bi, ptr noundef nonnull %1, i1 noundef zeroext true) #13
  %i.bj = ptrtoint ptr %i.bi to i64, !nosanitize !9
  br label %.split104.us

.lr.ph.split.us.split.split.us.split.us.preheader: ; preds = %.lr.ph.split.us
  %sext344 = shl i64 %0, 32
  %i.bk = ashr exact i64 %sext344, 32             ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %.sroa.0.0.extract.trunc)
  %wide.trip.count327 = sext i32 %smax to i64     ; 2 uses
  %exitcond328.not455 = icmp eq i64 %i.bk, %wide.trip.count327
  br i1 %exitcond328.not455, label %.split.us, label %.lr.ph457

.lr.ph457:                                        ; preds = %.lr.ph.split.us.split.split.us.split.us.preheader, %.lr.ph.split.us.split.split.us.split.us
  %indvars.iv324456 = phi i64 [ %indvars.iv.next325, %.lr.ph.split.us.split.split.us.split.us ], [ %i.bk, %.lr.ph.split.us.split.split.us.split.us.preheader ] ; 4 uses
  %i.bl = getelementptr inbounds [444 x i8], ptr %.fr222, i64 %indvars.iv324456 ; 8 uses
  %i.bm = mul nsw i64 %indvars.iv324456, 444
  %i.bn = add i64 %i.bm, %i.aw, !nosanitize !9    ; 3 uses
end_hunk_0
begin_hunk_1_@b3SolveJointsTask:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !378
  %i.cb = fcmp olt float %i.ca, f0x7F7FFFFF
  br i1 %i.cb, label %bb.r, label %.lr.ph.split.us.split.split.us.split.us

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cc = load i32, ptr %i.bl, align 4, !tbaa !379 ; 2 uses
  %i.cd = lshr i32 %i.cc, 6                       ; 2 uses
  %i.ce = load i32, ptr %i.ay, align 4, !tbaa !133
  %.not.i.us.us.us = icmp ult i32 %i.cd, %i.ce
  br i1 %.not.i.us.us.us, label %bb.s, label %b3GetBit.exit.thread.us.us.us

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.aq, align 8, !tbaa !134 ; 3 uses
  %i.cg = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = shl nuw nsw i64 %i.cg, 3
  %i.cj = ptrtoint ptr %i.cf to i64, !nosanitize !9 ; 3 uses
  %i.ck = add i64 %i.ci, %i.cj, !nosanitize !9    ; 3 uses
  %i.cl = icmp ne ptr %i.cf, null, !nosanitize !9 ; 2 uses
  %i.cm = icmp eq i64 %i.ck, 0
  %i.cn = xor i1 %i.cl, %i.cm
  %i.co = icmp uge i64 %i.ck, %i.cj, !nosanitize !9
  %i.cp = and i1 %i.co, %i.cn, !nosanitize !9
  br i1 %i.cp, label %bb.t, label %.split118.us, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  %i.cq = ptrtoint ptr %i.ch to i64, !nosanitize !9 ; 2 uses
  %i.cr = and i64 %i.cq, 7, !nosanitize !9
  %i.cs = icmp eq i64 %i.cr, 0, !nosanitize !9
  %i.ct = and i1 %i.cl, %i.cs
  br i1 %i.ct, label %b3GetBit.exit.us.us.us, label %.split122.us, !prof !10, !nosanitize !9

b3GetBit.exit.us.us.us:                           ; preds = %bb.t
  %i.cu = and i32 %i.cc, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = load i64, ptr %i.ch, align 8, !tbaa !80
  %i.cx = shl nuw i64 1, %i.cv
  %i.cy = and i64 %i.cw, %i.cx
  %.not31.us.us.us = icmp eq i64 %i.cy, 0
  br i1 %.not31.us.us.us, label %b3GetBit.exit.thread.us.us.us, label %.lr.ph.split.us.split.split.us.split.us

b3GetBit.exit.thread.us.us.us:                    ; preds = %b3GetBit.exit.us.us.us, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.cz = load ptr, ptr %i.r, align 8, !tbaa !160
  %i.da = load float, ptr %i.az, align 4, !tbaa !380
  call void @b3GetJointReaction(ptr noundef %i.cz, ptr noundef nonnull %i.bl, float noundef %i.da, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %i.db = load float, ptr %i.a, align 4, !tbaa !146
  %i.dc = load float, ptr %i.bw, align 4, !tbaa !377
  %i.dd = fcmp ult float %i.db, %i.dc
  br i1 %i.dd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %b3GetBit.exit.thread.us.us.us
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.df = load float, ptr %i.b, align 4, !tbaa !146
  %i.dg = load float, ptr %i.de, align 4, !tbaa !378
  %i.dh = fcmp ult float %i.df, %i.dg
  br i1 %i.dh, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u, %b3GetBit.exit.thread.us.us.us
  %i.di = load i32, ptr %i.bl, align 4, !tbaa !379 ; 2 uses
  %i.dj = lshr i32 %i.di, 6
  %i.dk = load ptr, ptr %i.aq, align 8, !tbaa !134 ; 3 uses
  %i.dl = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl ; 3 uses
  %i.dn = shl nuw nsw i64 %i.dl, 3
  %i.do = ptrtoint ptr %i.dk to i64, !nosanitize !9 ; 3 uses
  %i.dp = add i64 %i.dn, %i.do, !nosanitize !9    ; 3 uses
  %i.dq = icmp ne ptr %i.dk, null, !nosanitize !9 ; 2 uses
  %i.dr = icmp eq i64 %i.dp, 0
  %i.ds = xor i1 %i.dq, %i.dr
  %i.dt = icmp uge i64 %i.dp, %i.do, !nosanitize !9
  %i.du = and i1 %i.dt, %i.ds, !nosanitize !9
  br i1 %i.du, label %bb.w, label %.split131.us, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  %i.dv = ptrtoint ptr %i.dm to i64, !nosanitize !9 ; 2 uses
  %i.dw = and i64 %i.dv, 7, !nosanitize !9
  %i.dx = icmp eq i64 %i.dw, 0, !nosanitize !9
  %i.dy = and i1 %i.dq, %i.dx
  br i1 %i.dy, label %b3SetBit.exit.us.us.us, label %.split135.us, !prof !10, !nosanitize !9

b3SetBit.exit.us.us.us:                           ; preds = %bb.w
  %i.dz = and i32 %i.di, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = load i64, ptr %i.dm, align 8, !tbaa !80
  %i.ed = or i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.dm, align 8, !tbaa !80
  br label %bb.x

bb.x:                                             ; preds = %b3SetBit.exit.us.us.us, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.lr.ph.split.us.split.split.us.split.us

.lr.ph.split.us.split.split.us.split.us:          ; preds = %bb.x, %b3GetBit.exit.us.us.us, %bb.q
  %indvars.iv.next325 = add nsw i64 %indvars.iv324456, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.split.us, label %.lr.ph457

.lr.ph.split.split:                               ; preds = %.lr.ph
  %i.ee = icmp sgt i32 %i.av, %.sroa.0.0.extract.trunc
  br i1 %i.ee, label %.lr.ph143.preheader, label %.split.us

.lr.ph143.preheader:                              ; preds = %.lr.ph.split.split
  %sext341 = shl i64 %0, 32
  %i.ef = ashr exact i64 %sext341, 32
  %wide.trip.count = sext i32 %i.av to i64
  br label %.lr.ph143

._crit_edge:                                      ; preds = %bb.m
  %i.eg = and i64 %0, 4294967295
  %i.eh = and i64 %.sroa.3.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @309, i64 %i.eg, i64 %i.eh) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.y, %.lr.ph.split.us.split.split.us.split.us, %.lr.ph.split.us.split.split.us.split.us.preheader, %.lr.ph.split.split, %.lr.ph.split.us.split.us
  ret void

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.y
  %indvars.iv = phi i64 [ %i.ef, %.lr.ph143.preheader ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %i.ei = mul nsw i64 %indvars.iv, 444
  %i.ej = add i64 %i.ei, %i.aw, !nosanitize !9    ; 3 uses
  %i.ek = icmp eq i64 %i.ej, 0
  %i.el = xor i1 %i.ax, %i.ek
  %i.em = icmp uge i64 %i.ej, %i.aw, !nosanitize !9
  %i.en = icmp slt i64 %indvars.iv, 0
  %i.eo = xor i1 %i.en, %i.em
  %i.ep = and i1 %i.el, %i.eo, !nosanitize !9
  br i1 %i.ep, label %bb.y, label %.split101.us, !prof !10, !nosanitize !9

.split101.us:                                     ; preds = %.lr.ph143, %.lr.ph457, %bb.n
  %.us-phi102 = phi i64 [ %i.bn, %.lr.ph457 ], [ %i.bc, %bb.n ], [ %i.ej, %.lr.ph143 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @310, i64 %i.aw, i64 %.us-phi102) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %.lr.ph143
  %i.eq = getelementptr inbounds [444 x i8], ptr %.fr222, i64 %indvars.iv
  tail call void @b3SolveJoint(ptr noundef %i.eq, ptr noundef nonnull %1, i1 noundef zeroext false) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.us, label %.lr.ph143

.split104.us:                                     ; preds = %bb.o, %.split104.us.split.us
  %.us-phi146 = phi i64 [ %i.bj, %.split104.us.split.us ], [ %i.bt, %bb.o ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @312, i64 %.us-phi146) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split118.us:                                     ; preds = %bb.s
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @425, i64 %i.cj, i64 %i.ck) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split122.us:                                     ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @426, i64 %i.cq) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split131.us:                                     ; preds = %bb.v
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.do, i64 %i.dp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split135.us:                                     ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.dv) #12, !nosanitize !9
  unreachable, !nosanitize !9
}

declare void @b3SolveContacts_Convex(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3SolveContacts_Mesh(i64, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3ApplyRestitution_Convex(i64, ptr noundef) local_unnamed_addr #3

declare void @b3ApplyRestitution_Mesh(i64, ptr noundef) local_unnamed_addr #3

declare void @b3StoreImpulses_Convex(i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @b3StoreImpulses_Mesh(i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @b3PrepareJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3WarmStartJoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b3SolveJoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @b3GetJointReaction(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #3

declare zeroext i1 @b3IsValidVec3(<2 x float>, float) local_unnamed_addr #3

declare void @b3Log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @b3SolveContinuous(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !func_sanitize !388 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 6 uses
  %4 = alloca %struct.b3ContinuousContext, align 8 ; 39 uses
  %5 = alloca %struct.b3AABB, align 8             ; 5 uses
  %6 = alloca %struct.b3AABB, align 8             ; 9 uses
  %7 = alloca %struct.b3Transform, align 8        ; 8 uses
  %8 = alloca %struct.b3AABB, align 8             ; 9 uses
  %i.a = tail call i64 @b3GetTicks() #13
  %i.b = icmp ne ptr %0, null, !nosanitize !9
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @357, i64 %i.c) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64, !nosanitize !9 ; 2 uses
  %i.k = add i64 %i.j, 176, !nosanitize !9        ; 2 uses
  %i.l = icmp ne ptr %i.h, null, !nosanitize !9
  %i.m = icmp ne i64 %i.k, 0
  %i.n = and i1 %i.l, %i.m
  %i.o = icmp ult ptr %i.h, inttoptr (i64 -176 to ptr)
  %i.p = and i1 %i.o, %i.n, !nosanitize !9
  br i1 %i.p, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @358, i64 %i.j, i64 %i.k) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 2 uses
  %i.r = and i64 %i.q, 7, !nosanitize !9
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !9
  br i1 %i.s, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @359, i64 %i.q) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !94   ; 3 uses
  %i.u = sext i32 %1 to i64                       ; 4 uses
  %i.v = getelementptr inbounds [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = mul nsw i64 %i.u, 216
  %i.x = ptrtoint ptr %i.t to i64, !nosanitize !9 ; 3 uses
  %i.y = add i64 %i.w, %i.x, !nosanitize !9       ; 3 uses
  %i.z = icmp ne ptr %i.t, null, !nosanitize !9   ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = xor i1 %i.z, %i.aa
  %i.ac = icmp uge i64 %i.y, %i.x, !nosanitize !9
  %i.ad = icmp slt i32 %1, 0                      ; 2 uses
  %i.ae = xor i1 %i.ad, %i.ac
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !9
  br i1 %i.af, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @360, i64 %i.x, i64 %i.y) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ag = ptrtoint ptr %i.v to i64, !nosanitize !9 ; 2 uses
  %i.ah = and i64 %i.ag, 3, !nosanitize !9
  %i.ai = icmp eq i64 %i.ah, 0, !nosanitize !9
  %i.aj = and i1 %i.z, %i.ai
  br i1 %i.aj, label %b3MakeRelativeSweep.exit, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @361, i64 %i.ag) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3MakeRelativeSweep.exit:                         ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 3 uses
  %.sroa.0205.0.copyload = load <2 x float>, ptr %i.ak, align 4, !tbaa !146 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !146 ; 8 uses
  %i.al = fsub float %.sroa.8.0.copyload, %.sroa.8.0.copyload ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 28 ; 3 uses
  %.sroa.03.0.copyload.i299 = load <2 x float>, ptr %i.am, align 4, !noalias !389
  %.sroa.24.0..sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i301 = load float, ptr %.sroa.24.0..sroa_idx.i300, align 4, !noalias !389
  %i.an = fsub <2 x float> %.sroa.0205.0.copyload, %.sroa.0205.0.copyload ; 5 uses
  %i.ao = fsub <2 x float> %.sroa.03.0.copyload.i299, %.sroa.0205.0.copyload ; 5 uses
  %i.ap = fsub float %.sroa.24.0.copyload.i301, %.sroa.8.0.copyload ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 3 uses
  %.sroa.28.36.copyload487 = load <2 x float>, ptr %i.aq, align 4, !tbaa !146 ; 13 uses
  %.sroa.32.36..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %.sroa.32.36.copyload488 = load <2 x float>, ptr %.sroa.32.36..sroa_idx, align 4, !tbaa !146 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %.sroa.34.52.copyload491 = load <2 x float>, ptr %i.ar, align 4, !tbaa !146 ; 13 uses
  %.sroa.38.52..sroa_idx492 = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.38.52.copyload493 = load <2 x float>, ptr %.sroa.38.52..sroa_idx492, align 4, !tbaa !146 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %.sroa.0475.0.copyload478 = load <2 x float>, ptr %i.as, align 4, !tbaa !146 ; 12 uses
  %.sroa.7479.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  %.sroa.7479.0.copyload481 = load float, ptr %.sroa.7479.0..sroa_idx480, align 4, !tbaa !146 ; 9 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.28.36.copyload487, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.32.36.copyload488, %.sroa.0475.0.copyload478
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.au = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.7479.0.copyload481
  %i.av = fsub float %i.at, %i.au
  %i.aw = shufflevector <2 x float> %.sroa.0475.0.copyload478, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ax = insertelement <2 x float> %i.aw, float %.sroa.7479.0.copyload481, i64 1 ; 4 uses
  %i.ay = fmul <2 x float> %.sroa.28.36.copyload487, %i.ax
  %i.az = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.32.36.copyload488, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ba = fmul <2 x float> %i.az, %.sroa.0475.0.copyload478
  %i.bb = fsub <2 x float> %i.ay, %i.ba           ; 2 uses
  %i.bc = shufflevector <2 x float> %.sroa.32.36.copyload488, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bd = insertelement <2 x float> %i.aw, float %.sroa.7479.0.copyload481, i64 0 ; 3 uses
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = fmul <2 x float> %i.bc, %i.ax
  %i.bg = fadd <2 x float> %i.be, %i.bb           ; 2 uses
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bi = insertelement <2 x float> %i.bh, float %i.av, i64 0
  %i.bj = fadd <2 x float> %i.bf, %i.bi           ; 2 uses
  %i.bk = fmul <2 x float> %i.az, %i.bg
  %i.bl = shufflevector <2 x float> %.sroa.32.36.copyload488, <2 x float> %.sroa.28.36.copyload487, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bj
  %i.bn = fsub <2 x float> %i.bk, %i.bm
  %i.bo = fmul <2 x float> %i.bn, splat (float 2.000000e+00)
  %i.bp = fadd <2 x float> %.sroa.0475.0.copyload478, %i.bo
  %i.bq = fsub <2 x float> %i.an, %i.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 12
  %9 = shufflevector <2 x float> %.sroa.34.52.copyload491, <2 x float> %.sroa.38.52.copyload493, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %i.br, align 4, !tbaa !146
  %.sroa.09.0.vec.extract.i.i307 = extractelement <2 x float> %.sroa.34.52.copyload491, i64 0 ; 2 uses
  %foldExtExtBinop1358 = fmul <2 x float> %.sroa.38.52.copyload493, %.sroa.0475.0.copyload478
  %i.bs = extractelement <2 x float> %foldExtExtBinop1358, i64 0
  %i.bt = fmul float %.sroa.09.0.vec.extract.i.i307, %.sroa.7479.0.copyload481
  %i.bu = fsub float %i.bs, %i.bt
  %i.bv = fmul <2 x float> %.sroa.34.52.copyload491, %i.ax
  %i.bw = shufflevector <2 x float> %.sroa.34.52.copyload491, <2 x float> %.sroa.38.52.copyload493, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bx = fmul <2 x float> %i.bw, %.sroa.0475.0.copyload478
  %i.by = fsub <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = shufflevector <2 x float> %.sroa.38.52.copyload493, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bd
  %i.cb = fmul <2 x float> %i.bz, %i.ax
  %i.cc = fadd <2 x float> %i.ca, %i.by           ; 2 uses
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ce = insertelement <2 x float> %i.cd, float %i.bu, i64 0
  %i.cf = fadd <2 x float> %i.cb, %i.ce           ; 2 uses
  %i.cg = fmul <2 x float> %i.bw, %i.cc
  %i.ch = shufflevector <2 x float> %.sroa.38.52.copyload493, <2 x float> %.sroa.34.52.copyload491, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ci = fmul <2 x float> %i.ch, %i.cf
  %i.cj = fsub <2 x float> %i.cg, %i.ci
  %i.ck = fmul <2 x float> %i.cj, splat (float 2.000000e+00)
  %i.cl = fadd <2 x float> %.sroa.0475.0.copyload478, %i.ck
  %i.cm = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.34.52.copyload491, <2 x i32> <i32 0, i32 2>
  %i.cn = shufflevector <2 x float> %i.bj, <2 x float> %i.cf, <2 x i32> <i32 0, i32 2>
  %i.co = fmul <2 x float> %i.cm, %i.cn
  %i.cp = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.34.52.copyload491, <2 x i32> <i32 1, i32 3>
  %i.cq = shufflevector <2 x float> %i.bg, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.cr = fmul <2 x float> %i.cp, %i.cq
  %i.cs = fsub <2 x float> %i.co, %i.cr
  %i.ct = fmul <2 x float> %i.cs, splat (float 2.000000e+00)
  %i.cu = insertelement <2 x float> poison, float %.sroa.7479.0.copyload481, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fadd <2 x float> %i.cv, %i.ct           ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0
  %i.cy = fsub float %i.al, %i.cx
  %i.cz = fsub <2 x float> %i.ao, %i.cl           ; 2 uses
  %i.da = extractelement <2 x float> %i.cw, i64 1
  %i.db = fsub float %i.ap, %i.da                 ; 2 uses
  store <2 x float> %i.cz, ptr %3, align 8, !tbaa !146
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.db, ptr %.sroa.4184.0..sroa_idx, align 8, !tbaa !146
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 4 uses
  %i.dd = ptrtoint ptr %i.dc to i64, !nosanitize !9 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.not = icmp ugt ptr %i.dc, inttoptr (i64 -81 to ptr)
  br i1 %.not, label %bb.k, label %bb.l, !prof !97, !nosanitize !9

bb.k:                                             ; preds = %b3MakeRelativeSweep.exit
  %i.df = add i64 %i.dd, 80, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @362, i64 %i.dd, i64 %i.df) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %b3MakeRelativeSweep.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 960
  %.not283 = icmp ugt ptr %i.dc, inttoptr (i64 -161 to ptr)
  br i1 %.not283, label %bb.m, label %bb.n, !prof !97, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  %i.dh = add i64 %i.dd, 160, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @363, i64 %i.dd, i64 %i.dh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3880
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !139 ; 3 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !151 ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [128 x i8], ptr %i.dk, i64 %i.dm ; 3 uses
  %i.do = shl nsw i64 %i.dm, 7
  %i.dp = ptrtoint ptr %i.dk to i64, !nosanitize !9 ; 3 uses
  %i.dq = add i64 %i.do, %i.dp, !nosanitize !9    ; 3 uses
  %i.dr = icmp ne ptr %i.dk, null, !nosanitize !9 ; 2 uses
  %i.ds = icmp eq i64 %i.dq, 0
  %i.dt = xor i1 %i.dr, %i.ds
  %i.du = icmp uge i64 %i.dq, %i.dp, !nosanitize !9
  %i.dv = icmp slt i32 %i.dl, 0
  %i.dw = xor i1 %i.dv, %i.du
  %i.dx = and i1 %i.dt, %i.dw, !nosanitize !9
  br i1 %i.dx, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @364, i64 %i.dp, i64 %i.dq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.dy, i8 0, i64 232, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !176
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %.sroa.0475.0.copyload478, ptr %i.dz, align 8, !tbaa !146
  %.sroa.7479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %.sroa.7479.0.copyload481, ptr %.sroa.7479.0..sroa_idx, align 8, !tbaa !146
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 60
  store <2 x float> %i.an, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !146
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  store float %i.al, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !146
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %i.ao, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !146
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  store float %i.ap, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !146
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  store <2 x float> %.sroa.28.36.copyload487, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !146
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 92
  store <2 x float> %.sroa.32.36.copyload488, ptr %.sroa.32.0..sroa_idx, align 4, !tbaa !146
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 100
  store <2 x float> %.sroa.34.52.copyload491, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !146
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store <2 x float> %.sroa.38.52.copyload493, ptr %.sroa.38.0..sroa_idx, align 4, !tbaa !146
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 116
  store <2 x float> %.sroa.0205.0.copyload, ptr %i.ea, align 4, !tbaa !146
  %.sroa.8.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.eb, align 8, !tbaa !177
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 3 uses
  %i.ed = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.8.0.copyload, i64 0
  store <2 x float> %i.ed, ptr %.sroa.8.0..sroa_idx210, align 4, !tbaa !146
  %i.ee = getelementptr inbounds nuw i8, ptr %i.v, i64 212 ; 5 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !154
  %i.eg = and i32 %i.ef, 128
  %.not284 = icmp eq i32 %i.eg, 0
  %i.eh = ptrtoint ptr %i.dn to i64, !nosanitize !9 ; 2 uses
  %i.ei = and i64 %i.eh, 7, !nosanitize !9
  %i.ej = icmp eq i64 %i.ei, 0, !nosanitize !9
  %i.ek = and i1 %i.dr, %i.ej
  br i1 %i.ek, label %bb.r, label %bb.q, !prof !10, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @365, i64 %i.eh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 3 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !153 ; 2 uses
  %.not285810 = icmp eq i32 %i.em, -1
  br i1 %.not285810, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.sroa.5505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.6506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.8508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.415.0..sroa_idx.i367 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.4.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %6, i64 20
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.aa
  %.0259811 = phi i32 [ %i.fk, %bb.aa ], [ %i.em, %.lr.ph ] ; 2 uses
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !136 ; 3 uses
  %i.et = sext i32 %.0259811 to i64               ; 2 uses
  %i.eu = getelementptr inbounds [232 x i8], ptr %i.es, i64 %i.et ; 12 uses
  %i.ev = mul nsw i64 %i.et, 232
  %i.ew = ptrtoint ptr %i.es to i64, !nosanitize !9 ; 3 uses
  %i.ex = add i64 %i.ev, %i.ew, !nosanitize !9    ; 3 uses
  %i.ey = icmp ne ptr %i.es, null, !nosanitize !9 ; 2 uses
  %i.ez = icmp eq i64 %i.ex, 0
  %i.fa = xor i1 %i.ey, %i.ez
  %i.fb = icmp uge i64 %i.ex, %i.ew, !nosanitize !9
  %i.fc = icmp slt i32 %.0259811, 0
  %i.fd = xor i1 %i.fc, %i.fb
  %i.fe = and i1 %i.fa, %i.fd, !nosanitize !9
  br i1 %i.fe, label %bb.t, label %bb.s, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %.lr.ph.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @366, i64 %i.ew, i64 %i.ex) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %.lr.ph.split
  %i.ff = ptrtoint ptr %i.eu to i64, !nosanitize !9 ; 2 uses
  %i.fg = and i64 %i.ff, 7, !nosanitize !9
  %i.fh = icmp eq i64 %i.fg, 0, !nosanitize !9
  %i.fi = and i1 %i.ey, %i.fh
  br i1 %i.fi, label %bb.v, label %bb.u, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @367, i64 %i.ff) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !155 ; 2 uses
  store ptr %i.eu, ptr %i.eo, align 8, !tbaa !178
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 88 ; 2 uses
  %.sroa.0139.0.copyload = load <2 x float>, ptr %i.fl, align 8 ; 4 uses
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 96 ; 2 uses
  %.sroa.2140.0.copyload = load float, ptr %.sroa.2140.0..sroa_idx, align 8 ; 4 uses
  %foldExtExtBinop1360 = fmul <2 x float> %.sroa.32.36.copyload488, %.sroa.0139.0.copyload
  %i.fm = extractelement <2 x float> %foldExtExtBinop1360, i64 0
  %i.fn = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2140.0.copyload
  %i.fo = fsub float %i.fm, %i.fn
  %i.fp = shufflevector <2 x float> %.sroa.0139.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fq = insertelement <2 x float> %i.fp, float %.sroa.2140.0.copyload, i64 1 ; 2 uses
  %i.fr = fmul <2 x float> %.sroa.28.36.copyload487, %i.fq
end_hunk_1
begin_hunk_2_@b3SolveContinuous:bb.a
  %i.gm = fmul float %.sroa.09.0.vec.extract.i.i307, %.sroa.2132.0.copyload
  %i.gn = fsub float %i.gl, %i.gm
  %i.go = shufflevector <2 x float> %.sroa.0131.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gp = insertelement <2 x float> %i.go, float %.sroa.2132.0.copyload, i64 1 ; 2 uses
  %i.gq = fmul <2 x float> %.sroa.34.52.copyload491, %i.gp
  %i.gr = fmul <2 x float> %i.bw, %.sroa.0131.0.copyload
  %i.gs = fsub <2 x float> %i.gq, %i.gr           ; 2 uses
  %i.gt = insertelement <2 x float> %i.go, float %.sroa.2132.0.copyload, i64 0
  %i.gu = fmul <2 x float> %i.bz, %i.gt
  %i.gv = fmul <2 x float> %i.bz, %i.gp
  %i.gw = fadd <2 x float> %i.gu, %i.gs           ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gy = insertelement <2 x float> %i.gx, float %i.gn, i64 0
  %i.gz = fadd <2 x float> %i.gv, %i.gy           ; 2 uses
  %i.ha = fmul <2 x float> %i.bw, %i.gw
  %i.hb = fmul <2 x float> %i.ch, %i.gz
  %i.hc = fsub <2 x float> %i.ha, %i.hb
  %foldExtExtBinop1370 = fmul <2 x float> %.sroa.34.52.copyload491, %i.gz
  %foldExtExtBinop1372 = fmul <2 x float> %.sroa.34.52.copyload491, %i.gw
  %shift1374 = shufflevector <2 x float> %foldExtExtBinop1372, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1375 = fsub <2 x float> %foldExtExtBinop1370, %shift1374
  %i.hd = extractelement <2 x float> %foldExtExtBinop1375, i64 0
  %i.he = fmul <2 x float> %i.hc, splat (float 2.000000e+00)
  %i.hf = fadd <2 x float> %.sroa.0131.0.copyload, %i.he
  %i.hg = fmul float %i.hd, 2.000000e+00
  %i.hh = fadd float %.sroa.2132.0.copyload, %i.hg
  %i.hi = fadd <2 x float> %i.cz, %i.hf
  %i.hj = fadd float %i.db, %i.hh
  store <2 x float> %i.hi, ptr %i.eq, align 4, !tbaa !146
  store float %i.hj, ptr %.sroa.4134.0..sroa_idx, align 4, !tbaa !146
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eu, i64 40 ; 2 uses
  %.sroa.0513.0.copyload = load <2 x float>, ptr %i.hk, align 8, !tbaa !146 ; 2 uses
  %.sroa.4514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 2 uses
  %.sroa.4514.0.copyload = load float, ptr %.sroa.4514.0..sroa_idx, align 8, !tbaa !146 ; 2 uses
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 52 ; 2 uses
  %.sroa.5515.0.copyload = load <2 x float>, ptr %.sroa.5515.0..sroa_idx, align 4, !tbaa !146 ; 2 uses
  %.sroa.6516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 60 ; 2 uses
  %.sroa.6516.0.copyload = load float, ptr %.sroa.6516.0..sroa_idx, align 4, !tbaa !146 ; 2 uses
  call void @b3ComputeShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef nonnull %i.eu, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3) #13
  %.sroa.5505.0.copyload = load float, ptr %.sroa.5505.0..sroa_idx, align 8
  %.sroa.8508.0.copyload = load float, ptr %.sroa.8508.0..sroa_idx, align 4
  %i.hl = load <2 x float>, ptr %5, align 8
  %i.hm = fadd <2 x float> %.sroa.0205.0.copyload, %i.hl ; 3 uses
  %i.hn = fadd float %.sroa.8.0.copyload, %.sroa.5505.0.copyload ; 3 uses
  %i.ho = load <2 x float>, ptr %.sroa.6506.0..sroa_idx, align 4
  %i.hp = fadd <2 x float> %.sroa.0205.0.copyload, %i.ho ; 3 uses
  %i.hq = fadd float %.sroa.8.0.copyload, %.sroa.8508.0.copyload ; 3 uses
  store <2 x float> %i.hm, ptr %i.hk, align 8, !tbaa !146
  store float %i.hn, ptr %.sroa.4514.0..sroa_idx, align 8, !tbaa !146
  store <2 x float> %i.hp, ptr %.sroa.5515.0..sroa_idx, align 4, !tbaa !146
  store float %i.hq, ptr %.sroa.6516.0..sroa_idx, align 4, !tbaa !146
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !390
  switch i32 %i.hs, label %bb.w [
    i32 4, label %bb.aa
    i32 2, label %bb.aa
  ], !llvm.loop !383

bb.w:                                             ; preds = %bb.v
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !159
  %.not293 = icmp eq i32 %i.hu, -1
  br i1 %.not293, label %bb.x, label %bb.aa, !llvm.loop !383

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.hv = fcmp olt <2 x float> %.sroa.0513.0.copyload, %i.hm
  %i.hw = select <2 x i1> %i.hv, <2 x float> %.sroa.0513.0.copyload, <2 x float> %i.hm
  %i.hx = fcmp olt float %.sroa.4514.0.copyload, %i.hn
  %i.hy = select i1 %i.hx, float %.sroa.4514.0.copyload, float %i.hn
  store <2 x float> %i.hw, ptr %6, align 8, !tbaa !146, !alias.scope !391
  store float %i.hy, ptr %.sroa.415.0..sroa_idx.i367, align 8, !tbaa !146, !alias.scope !391
  %i.hz = fcmp ogt <2 x float> %.sroa.5515.0.copyload, %i.hp
  %i.ia = select <2 x i1> %i.hz, <2 x float> %.sroa.5515.0.copyload, <2 x float> %i.hp
  %i.ib = fcmp ogt float %.sroa.6516.0.copyload, %i.hq
  %i.ic = select i1 %i.ib, float %.sroa.6516.0.copyload, float %i.hq
  store <2 x float> %i.ia, ptr %i.er, align 4, !tbaa !146, !alias.scope !391
  store float %i.ic, ptr %.sroa.4.0..sroa_idx.i371, align 4, !tbaa !146, !alias.scope !391
  %i.id = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.dc, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #13 ; 0 uses
  br i1 %.not284, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ie = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.de, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #13 ; 0 uses
  %i.if = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.dg, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3ContinuousQueryCallback, ptr noundef nonnull %4) #13 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.v, %bb.v, %bb.z
  %.not285 = icmp eq i32 %i.fk, -1
  br i1 %.not285, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.aa, %bb.r
  %i.ig = call float @b3GetLengthUnitsPerMeter() #13
  %i.ih = fmul float %i.ig, 5.000000e-03
  %i.ii = fmul float %i.ih, 4.000000e+00
  %i.ij = load float, ptr %i.ec, align 8, !tbaa !179 ; 4 uses
  %i.ik = fcmp olt float %i.ij, 1.000000e+00
  br i1 %i.ik, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %._crit_edge
  %i.il = shufflevector <2 x float> %.sroa.28.36.copyload487, <2 x float> %.sroa.32.36.copyload488, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.im = shufflevector <2 x float> %.sroa.34.52.copyload491, <2 x float> %.sroa.38.52.copyload493, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.in = fmul <4 x float> %i.il, %i.im           ; 4 uses
  %shift1377 = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1378 = fadd <4 x float> %i.in, %shift1377
  %shift1380 = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1381 = fadd <4 x float> %foldExtExtBinop1378, %shift1380
  %shift1383 = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1384 = fadd <4 x float> %shift1383, %foldExtExtBinop1381
  %i.io = extractelement <4 x float> %foldExtExtBinop1384, i64 0
  %i.ip = fcmp olt float %i.io, 0.000000e+00      ; 2 uses
  %i.iq = fneg <2 x float> %.sroa.28.36.copyload487
  %i.ir = fneg <2 x float> %.sroa.32.36.copyload488
  %i.is = select i1 %i.ip, <2 x float> %i.ir, <2 x float> %.sroa.32.36.copyload488
  %i.it = select i1 %i.ip, <2 x float> %i.iq, <2 x float> %.sroa.28.36.copyload487
  %i.iu = fsub float 1.000000e+00, %i.ij          ; 2 uses
  %i.iv = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ix = fmul <2 x float> %.sroa.34.52.copyload491, %i.iw
  %i.iy = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ja = fmul <2 x float> %i.iz, %i.it
  %i.jb = fadd <2 x float> %i.ix, %i.ja           ; 2 uses
  %i.jc = fmul <2 x float> %.sroa.38.52.copyload493, %i.iw
  %i.jd = fmul <2 x float> %i.iz, %i.is
  %i.je = fadd <2 x float> %i.jc, %i.jd           ; 2 uses
  %i.jf = shufflevector <2 x float> %i.jb, <2 x float> %i.je, <4 x i32> <i32 1, i32 0, i32 2, i32 3> ; 2 uses
  %i.jg = fmul <4 x float> %i.jf, %i.jf           ; 4 uses
  %shift1386 = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1387 = fadd <4 x float> %i.jg, %shift1386
  %shift1389 = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1390 = fadd <4 x float> %foldExtExtBinop1387, %shift1389
  %shift1392 = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1393 = fadd <4 x float> %shift1392, %foldExtExtBinop1390
  %i.jh = extractelement <4 x float> %foldExtExtBinop1393, i64 0 ; 2 uses
  %i.ji = fcmp ogt float %i.jh, f0x057A0000
  br i1 %i.ji, label %bb.ac, label %b3NLerp.exit

bb.ac:                                            ; preds = %bb.ab
  %i.jj = call float @sqrtf(float noundef %i.jh) #13
  %i.jk = fdiv float 1.000000e+00, %i.jj
  %i.jl = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = fmul <2 x float> %i.jb, %i.jm
  %i.jo = fmul <2 x float> %i.je, %i.jm
  br label %b3NLerp.exit

b3NLerp.exit:                                     ; preds = %bb.ab, %bb.ac
  %.sroa.4.0.i.i = phi <2 x float> [ %i.jo, %bb.ac ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.ab ] ; 6 uses
  %.sroa.0.0.i.i = phi <2 x float> [ %i.jn, %bb.ac ], [ zeroinitializer, %bb.ab ] ; 8 uses
  %i.jp = fmul float %i.al, %i.iu
  %i.jq = fmul <2 x float> %i.an, %i.iz
  %i.jr = fmul <2 x float> %i.ao, %i.iw
  %i.js = fmul float %i.ap, %i.ij
  %i.jt = fadd float %i.js, %i.jp                 ; 2 uses
  %.sroa.09.4.vec.extract13.i.i379 = extractelement <2 x float> %.sroa.0.0.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ju = fadd <2 x float> %i.jr, %i.jq           ; 2 uses
  %i.jv = fmul float %.sroa.7479.0.copyload481, %.sroa.09.4.vec.extract13.i.i379
  %i.jw = insertelement <2 x float> %.sroa.0475.0.copyload478, float %.sroa.7479.0.copyload481, i64 0
  %i.jx = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %i.jw, %i.jx           ; 2 uses
  %i.jz = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.4.0.i.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ka = fmul <2 x float> %.sroa.0475.0.copyload478, %i.jz
  %i.kb = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kc = insertelement <2 x float> %i.kb, float %i.jv, i64 1
  %i.kd = fsub <2 x float> %i.kc, %i.ka
  %i.ke = fmul <2 x float> %.sroa.0475.0.copyload478, %.sroa.4.0.i.i ; 2 uses
  %foldExtExtBinop1395 = fsub <2 x float> %i.ke, %i.jy
  %shift1397 = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1398 = fadd <2 x float> %shift1397, %foldExtExtBinop1395 ; 2 uses
  %i.kf = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kg = fmul <2 x float> %i.bd, %i.kf
  %i.kh = fadd <2 x float> %i.kg, %i.kd           ; 3 uses
  %i.ki = fmul <2 x float> %i.jz, %i.kh
  %i.kj = shufflevector <2 x float> %.sroa.4.0.i.i, <2 x float> %.sroa.0.0.i.i, <2 x i32> <i32 0, i32 2>
  %i.kk = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kl = shufflevector <2 x float> %foldExtExtBinop1398, <2 x float> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.km = fmul <2 x float> %i.kj, %i.kl
  %i.kn = fsub <2 x float> %i.ki, %i.km
  %foldExtExtBinop1400 = fmul <2 x float> %.sroa.0.0.i.i, %foldExtExtBinop1398
  %foldExtExtBinop1402 = fmul <2 x float> %.sroa.0.0.i.i, %i.kh
  %shift1404 = shufflevector <2 x float> %foldExtExtBinop1402, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1405 = fsub <2 x float> %foldExtExtBinop1400, %shift1404
  %i.ko = extractelement <2 x float> %foldExtExtBinop1405, i64 0
  %i.kp = fmul <2 x float> %i.kn, splat (float 2.000000e+00)
  %i.kq = fadd <2 x float> %.sroa.0475.0.copyload478, %i.kp
  %i.kr = fmul float %i.ko, 2.000000e+00
  %i.ks = fadd float %.sroa.7479.0.copyload481, %i.kr
  %i.kt = fsub <2 x float> %i.ju, %i.kq
  %i.ku = fsub float %i.jt, %i.ks
  %i.kv = fadd <2 x float> %.sroa.0205.0.copyload, %i.kt
  %i.kw = fadd float %.sroa.8.0.copyload, %i.ku
  store <2 x float> %i.kv, ptr %7, align 8
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.kw, ptr %.sroa.283.0..sroa_idx, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %10 = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> %.sroa.4.0.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %i.kx, align 4, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.v, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false), !tbaa.struct !166
  %i.ky = fadd float %.sroa.8.0.copyload, %i.jt   ; 2 uses
  %i.kz = fadd <2 x float> %.sroa.0205.0.copyload, %i.ju ; 2 uses
  store <2 x float> %i.kz, ptr %i.am, align 4, !tbaa !146
  store float %i.ky, ptr %.sroa.24.0..sroa_idx.i300, align 4, !tbaa !146
  store <2 x float> %.sroa.0.0.i.i, ptr %i.aq, align 4, !tbaa !146
  store <2 x float> %.sroa.4.0.i.i, ptr %.sroa.32.36..sroa_idx, align 4, !tbaa !146
  store <2 x float> %i.kz, ptr %i.ak, align 4, !tbaa !146
  store float %i.ky, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !146
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !102 ; 3 uses
  %i.lc = getelementptr inbounds [48 x i8], ptr %i.lb, i64 %i.u ; 2 uses
  %i.ld = mul nsw i64 %i.u, 48
  %i.le = ptrtoint ptr %i.lb to i64, !nosanitize !9 ; 3 uses
  %i.lf = add i64 %i.ld, %i.le, !nosanitize !9    ; 3 uses
  %i.lg = icmp ne ptr %i.lb, null, !nosanitize !9 ; 2 uses
  %i.lh = icmp eq i64 %i.lf, 0
  %i.li = xor i1 %i.lg, %i.lh
  %i.lj = icmp uge i64 %i.lf, %i.le, !nosanitize !9
  %i.lk = xor i1 %i.ad, %i.lj
  %i.ll = and i1 %i.li, %i.lk, !nosanitize !9
  br i1 %i.ll, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %b3NLerp.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @368, i64 %i.le, i64 %i.lf) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %b3NLerp.exit
  %i.lm = ptrtoint ptr %i.lc to i64, !nosanitize !9 ; 2 uses
  %i.ln = and i64 %i.lm, 7, !nosanitize !9
  %i.lo = icmp eq i64 %i.ln, 0, !nosanitize !9
  %i.lp = and i1 %i.lg, %i.lo
  br i1 %i.lp, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @369, i64 %i.lm) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.lq, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  %i.lr = load i32, ptr %i.el, align 8, !tbaa !153 ; 2 uses
  %.not288833 = icmp eq i32 %i.lr, -1
  br i1 %.not288833, label %._crit_edge837, label %.lr.ph836

.lr.ph836:                                        ; preds = %bb.ag
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.lt = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %8, i64 20
  br label %.lr.ph836.split

.lr.ph836.split:                                  ; preds = %.lr.ph836, %bb.al
  %.1834 = phi i32 [ %i.nr, %bb.al ], [ %i.lr, %.lr.ph836 ] ; 2 uses
  %i.lw = load ptr, ptr %i.ls, align 8, !tbaa !136 ; 3 uses
  %i.lx = sext i32 %.1834 to i64                  ; 2 uses
  %i.ly = getelementptr inbounds [232 x i8], ptr %i.lw, i64 %i.lx ; 10 uses
  %i.lz = mul nsw i64 %i.lx, 232
  %i.ma = ptrtoint ptr %i.lw to i64, !nosanitize !9 ; 3 uses
  %i.mb = add i64 %i.lz, %i.ma, !nosanitize !9    ; 3 uses
  %i.mc = icmp ne ptr %i.lw, null, !nosanitize !9 ; 2 uses
  %i.md = icmp eq i64 %i.mb, 0
  %i.me = xor i1 %i.mc, %i.md
  %i.mf = icmp uge i64 %i.mb, %i.ma, !nosanitize !9
  %i.mg = icmp slt i32 %.1834, 0
  %i.mh = xor i1 %i.mg, %i.mf
  %i.mi = and i1 %i.me, %i.mh, !nosanitize !9
  br i1 %i.mi, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %.lr.ph836.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @370, i64 %i.ma, i64 %i.mb) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %.lr.ph836.split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @b3ComputeFatShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %8, ptr noundef %i.ly, ptr noundef nonnull byval(%struct.b3Transform) align 8 %7, float noundef %i.ii) #13
  %i.mj = ptrtoint ptr %i.ly to i64, !nosanitize !9 ; 2 uses
  %i.mk = and i64 %i.mj, 7, !nosanitize !9
  %i.ml = icmp eq i64 %i.mk, 0, !nosanitize !9
  %i.mm = and i1 %i.mc, %i.ml
  br i1 %i.mm, label %bb.ak, label %bb.aj, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @371, i64 %i.mj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !170
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ly, i64 64 ; 2 uses
  %.sroa.5525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 72 ; 2 uses
  %.sroa.5525.0.copyload = load float, ptr %.sroa.5525.0..sroa_idx, align 8
  %.sroa.6526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 76 ; 2 uses
  %.sroa.8528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ly, i64 84 ; 2 uses
  %.sroa.8528.0.copyload = load float, ptr %.sroa.8528.0..sroa_idx, align 4
  %i.mp = load <2 x float>, ptr %i.mo, align 8
  %i.mq = load <2 x float>, ptr %.sroa.6526.0..sroa_idx, align 4
  %i.mr = load <2 x float>, ptr %8, align 8
  %i.ms = load <2 x float>, ptr %i.lt, align 4
  %i.mt = shufflevector <2 x float> %i.mp, <2 x float> %i.ms, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.mu = shufflevector <2 x float> %i.mr, <2 x float> %i.mq, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.mv = fcmp ule <4 x float> %i.mt, %i.mu
  %i.mw = load float, ptr %i.lu, align 8          ; 2 uses
  %i.mx = fcmp ule float %.sroa.5525.0.copyload, %i.mw
  %i.my = load float, ptr %i.lv, align 4          ; 2 uses
  %i.mz = fcmp ule float %i.my, %.sroa.8528.0.copyload
  %i.na = freeze <4 x i1> %i.mv
  %i.nb = bitcast <4 x i1> %i.na to i4
  %i.nc = icmp eq i4 %i.nb, -1
  %.fr1407 = freeze i1 %i.mx
  %op.rdx = and i1 %i.nc, %.fr1407
  %op.rdx1354 = select i1 %op.rdx, i1 %i.mz, i1 false
  br i1 %op.rdx1354, label %bb.al, label %b3AABB_Contains.exit.thread

b3AABB_Contains.exit.thread:                      ; preds = %bb.ak
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ly, i64 36
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !171 ; 3 uses
  %.sroa.051.0.copyload = load <2 x float>, ptr %8, align 8
  %i.nf = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.ng = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nh = fsub <2 x float> %.sroa.051.0.copyload, %i.ng
  %i.ni = fsub float %i.mw, %i.ne
  %.sroa.043.0.copyload = load <2 x float>, ptr %i.lt, align 4
  %i.nj = fadd <2 x float> %i.ng, %.sroa.043.0.copyload
  %i.nk = fadd float %i.ne, %i.my
  store <2 x float> %i.nh, ptr %i.mo, align 8, !tbaa !146
  store float %i.ni, ptr %.sroa.5525.0..sroa_idx, align 8, !tbaa !146
  store <2 x float> %i.nj, ptr %.sroa.6526.0..sroa_idx, align 4, !tbaa !146
  store float %i.nk, ptr %.sroa.8528.0..sroa_idx, align 4, !tbaa !146
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ly, i64 198 ; 2 uses
  %i.nm = load i8, ptr %i.nl, align 2, !tbaa !156
  %i.nn = or i8 %i.nm, 32
  store i8 %i.nn, ptr %i.nl, align 2, !tbaa !156
  %i.no = load i32, ptr %i.ee, align 4, !tbaa !154
  %i.np = or i32 %i.no, 2048
  store i32 %i.np, ptr %i.ee, align 4, !tbaa !154
  br label %bb.al

bb.al:                                            ; preds = %b3AABB_Contains.exit.thread, %bb.ak
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !155 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.not288 = icmp eq i32 %i.nr, -1
  br i1 %.not288, label %._crit_edge837, label %.lr.ph836.split, !llvm.loop !386

._crit_edge837:                                   ; preds = %bb.al, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.loopexit

bb.am:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.am, i64 12, i1 false), !tbaa.struct !169
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %.2.us1348 = load i32, ptr %i.el, align 8, !tbaa !103 ; 2 uses
  %.not286.us1349 = icmp eq i32 %.2.us1348, -1
  br i1 %.not286.us1349, label %.loopexit, label %.lr.ph1352.preheader

.lr.ph1352.preheader:                             ; preds = %bb.am
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !136 ; 3 uses
  %i.nu = ptrtoint ptr %i.nt to i64, !nosanitize !9 ; 3 uses
  %i.nv = icmp ne ptr %i.nt, null, !nosanitize !9 ; 2 uses
  br label %.lr.ph1352

.lr.ph1352:                                       ; preds = %.lr.ph1352.preheader, %.split.us
  %.2.us1350 = phi i32 [ %.2.us, %.split.us ], [ %.2.us1348, %.lr.ph1352.preheader ] ; 2 uses
  %i.nw = sext i32 %.2.us1350 to i64              ; 2 uses
  %i.nx = getelementptr inbounds [232 x i8], ptr %i.nt, i64 %i.nw ; 12 uses
  %i.ny = mul nsw i64 %i.nw, 232
  %i.nz = add i64 %i.ny, %i.nu, !nosanitize !9    ; 3 uses
  %i.oa = icmp eq i64 %i.nz, 0
  %i.ob = xor i1 %i.nv, %i.oa
  %i.oc = icmp uge i64 %i.nz, %i.nu, !nosanitize !9
  %i.od = icmp slt i32 %.2.us1350, 0
  %i.oe = xor i1 %i.od, %i.oc
  %i.of = and i1 %i.ob, %i.oe, !nosanitize !9
  br i1 %i.of, label %bb.an, label %.split813.us, !prof !10, !nosanitize !9

bb.an:                                            ; preds = %.lr.ph1352
  %i.og = ptrtoint ptr %i.nx to i64, !nosanitize !9 ; 2 uses
  %i.oh = and i64 %i.og, 7, !nosanitize !9
  %i.oi = icmp eq i64 %i.oh, 0, !nosanitize !9
  %i.oj = and i1 %i.nv, %i.oi
  br i1 %i.oj, label %bb.ao, label %.split816.us, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nx, i64 64 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nx, i64 40 ; 2 uses
  %.sroa.5537.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %.sroa.5537.0.copyload.us = load float, ptr %.sroa.5537.0..sroa_idx.us, align 8 ; 2 uses
  %.sroa.6538.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nx, i64 52 ; 2 uses
  %.sroa.8540.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nx, i64 60
  %.sroa.8540.0.copyload.us = load float, ptr %.sroa.8540.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.5531.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nx, i64 72 ; 2 uses
  %.sroa.5531.0.copyload.us = load float, ptr %.sroa.5531.0..sroa_idx.us, align 8
  %.sroa.6532.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nx, i64 76 ; 2 uses
  %.sroa.8534.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.nx, i64 84 ; 2 uses
  %.sroa.8534.0.copyload.us = load float, ptr %.sroa.8534.0..sroa_idx.us, align 4
  %i.om = load <2 x float>, ptr %i.ol, align 8
  %i.on = load <2 x float>, ptr %.sroa.6538.0..sroa_idx.us, align 4
  %i.oo = load <2 x float>, ptr %i.ok, align 8
end_hunk_2
