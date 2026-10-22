Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3ExecuteBlock:bb.a
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !115 ; 3 uses
  %i.sl = icmp ne ptr %i.sk, null, !nosanitize !9
  %i.sm = ptrtoint ptr %i.sk to i64, !nosanitize !9 ; 5 uses
  %i.sn = and i64 %i.sm, 7, !nosanitize !9
  %i.so = icmp eq i64 %i.sn, 0, !nosanitize !9
  %i.sp = and i1 %i.sl, %i.so, !nosanitize !9
  br i1 %i.sp, label %bb.ay, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @298, i64 %i.sm) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  %i.sq = mul nuw nsw i64 %.sroa.2.0.extract.shift, 112
  %i.sr = add i64 %i.sq, %i.sm, !nosanitize !9    ; 2 uses
  %.not.i47 = icmp ult i64 %i.sr, %i.sm, !nosanitize !9
  br i1 %.not.i47, label %bb.az, label %bb.ba, !prof !97, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @299, i64 %i.sm, i64 %i.sr) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ba:                                            ; preds = %bb.ay
  %i.ss = getelementptr inbounds nuw [112 x i8], ptr %i.sk, i64 %.sroa.2.0.extract.shift
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !106 ; 3 uses
  %i.sv = trunc nuw i64 %.sroa.3.0.extract.shift.i46 to i32
  %i.sw = and i32 %i.sv, 65535
  %i.sx = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i45, i32 %i.sw), !nosanitize !9 ; 2 uses
  %i.sy = extractvalue { i32, i1 } %i.sx, 1, !nosanitize !9
  br i1 %i.sy, label %bb.bb, label %.lr.ph.i48, !prof !173, !nosanitize !9

.lr.ph.i48:                                       ; preds = %bb.ba
  %i.sz = extractvalue { i32, i1 } %i.sx, 0, !nosanitize !9 ; 2 uses
  %i.ta = ptrtoint ptr %i.su to i64               ; 3 uses
  %i.tb = icmp ne ptr %i.su, null
  %i.tc = icmp sgt i32 %i.sz, %.sroa.0.0.extract.trunc.i45
  br i1 %i.tc, label %.lr.ph17.preheader.i, label %b3PrepareJointsTask.exit

.lr.ph17.preheader.i:                             ; preds = %.lr.ph.i48
  %sext.i49 = shl i64 %2, 32
  %i.td = ashr exact i64 %sext.i49, 32
  %wide.trip.count.i50 = sext i32 %i.sz to i64
  br label %.lr.ph17.i

bb.bb:                                            ; preds = %bb.ba
  %i.te = and i64 %2, 4294967295
  %i.tf = and i64 %.sroa.3.0.extract.shift.i46, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @300, i64 %i.te, i64 %i.tf) #12, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph17.i:                                       ; preds = %bb.bc, %.lr.ph17.preheader.i
  %indvars.iv.i51 = phi i64 [ %i.td, %.lr.ph17.preheader.i ], [ %indvars.iv.next.i52, %bb.bc ] ; 4 uses
  %i.tg = mul nsw i64 %indvars.iv.i51, 444
  %i.th = add i64 %i.tg, %i.ta, !nosanitize !9    ; 3 uses
  %i.ti = icmp eq i64 %i.th, 0
  %i.tj = xor i1 %i.tb, %i.ti
  %i.tk = icmp uge i64 %i.th, %i.ta, !nosanitize !9
  %i.tl = icmp slt i64 %indvars.iv.i51, 0
  %i.tm = xor i1 %i.tl, %i.tk
  %i.tn = and i1 %i.tj, %i.tm, !nosanitize !9
  br i1 %i.tn, label %bb.bc, label %.split14.i, !prof !10, !nosanitize !9

.split14.i:                                       ; preds = %.lr.ph17.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @301, i64 %i.ta, i64 %i.th) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bc:                                            ; preds = %.lr.ph17.i
  %i.to = getelementptr inbounds [444 x i8], ptr %i.su, i64 %indvars.iv.i51
  tail call void @b3WarmStartJoint(ptr noundef %i.to, ptr noundef nonnull %1) #13
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i50
  br i1 %exitcond.not.i53, label %b3PrepareJointsTask.exit, label %.lr.ph17.i

bb.bd:                                            ; preds = %bb.at
  tail call void @b3WarmStartContacts_Convex(i64 %2, ptr noundef nonnull %1) #13
  br label %b3PrepareJointsTask.exit

bb.be:                                            ; preds = %bb.at
  tail call void @b3WarmStartContacts_Mesh(i64 %2, ptr noundef nonnull %1) #13
  br label %b3PrepareJointsTask.exit

bb.bf:                                            ; preds = %bb.c
  switch i8 %.sroa.1.0.extract.trunc, label %bb.bi [
    i8 4, label %bb.bg
    i8 5, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  tail call fastcc void @b3SolveJointsTask(i64 %2, ptr noundef %1, i1 noundef zeroext true, i32 noundef %3)
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.tp) #12, !nosanitize !9
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
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @315, i64 %i.uu, i64 %i.uv) #12, !nosanitize !9
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @316, i64 %i.ui, i64 %.us-phi162.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bn:                                            ; preds = %.lr.ph
  %i.ve = ptrtoint ptr %i.uw to i64, !nosanitize !9 ; 2 uses
  %i.vf = and i64 %i.ve, 3, !nosanitize !9
  %i.vg = icmp eq i64 %i.vf, 0, !nosanitize !9
  br i1 %i.vg, label %bb.bo, label %.split164.i, !prof !10, !nosanitize !9

.split164.i:                                      ; preds = %bb.bn, %bb.bm
  %.us-phi165.i = phi i64 [ 0, %bb.bm ], [ %i.ve, %bb.bn ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @317, i64 %.us-phi165.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0121.0.copyload.i = load <2 x float>, ptr %i.uw, align 4, !tbaa !146 ; 2 uses
  %.sroa.12128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 2 uses
  %.sroa.12128.0.copyload.i = load float, ptr %.sroa.12128.0..sroa_idx.i, align 4, !tbaa !146
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uw, i64 12 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 20 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uw, i64 52 ; 3 uses
  %.sroa.12.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !146
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.vh, align 4, !tbaa !146
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !168 ; 7 uses
  %.not.i61 = trunc i32 %i.vj to i1
  %.sroa.0121.0.vec.extract.i = extractelement <2 x float> %.sroa.0121.0.copyload.i, i64 0
  %4 = select i1 %.not.i61, float 0.000000e+00, float %.sroa.0121.0.vec.extract.i ; 4 uses
  %.sroa.0121.0.vec.insert.i = insertelement <2 x float> poison, float %4, i64 0
  %5 = and i32 %i.vj, 2
  %.not84.i = icmp eq i32 %5, 0
  %.sroa.0121.4.vec.extract.i = extractelement <2 x float> %.sroa.0121.0.copyload.i, i64 1
  %6 = select i1 %.not84.i, float %.sroa.0121.4.vec.extract.i, float 0.000000e+00 ; 4 uses
  %.sroa.0121.4.vec.insert.i = insertelement <2 x float> %.sroa.0121.0.vec.insert.i, float %6, i64 1
  %i.vk = and i32 %i.vj, 4
  %.not85.i = icmp eq i32 %i.vk, 0
  %i.vl = select i1 %.not85.i, float %.sroa.12128.0.copyload.i, float 0.000000e+00 ; 4 uses
  %7 = insertelement <2 x i32> poison, i32 %i.vj, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vm = and <2 x i32> %8, <i32 8, i32 16>
  %i.vn = icmp eq <2 x i32> %i.vm, zeroinitializer
  %i.vo = select <2 x i1> %i.vn, <2 x float> %.sroa.0.0.copyload.i, <2 x float> zeroinitializer ; 4 uses
  %i.vp = and i32 %i.vj, 32
  %.not88.i = icmp eq i32 %i.vp, 0
  %i.vq = select i1 %.not88.i, float %.sroa.12.0.copyload.i, float 0.000000e+00 ; 4 uses
  %9 = fmul float %4, %4
  %10 = fmul float %6, %6
  %11 = fadd float %9, %10
  %i.vr = fmul float %i.vl, %i.vl
  %i.vs = fadd float %i.vr, %11                   ; 2 uses
  %i.vt = fcmp ogt float %i.vs, %i.ub
  br i1 %i.vt, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.vu = tail call float @sqrtf(float noundef %i.vs) #13
  %i.vv = fdiv float %i.tx, %i.vu                 ; 3 uses
  %12 = fmul float %4, %i.vv
  %i.vw = insertelement <2 x float> poison, float %12, i64 0
  %13 = fmul float %6, %i.vv
  %.sroa.05.4.vec.insert.i.i = insertelement <2 x float> %i.vw, float %13, i64 1
  %i.vx = fmul float %i.vl, %i.vv
  %i.vy = or i32 %i.vj, 256                       ; 2 uses
  store i32 %i.vy, ptr %i.vi, align 4, !tbaa !168
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.vz = phi i32 [ %i.vy, %bb.bp ], [ %i.vj, %bb.bo ] ; 2 uses
  %.sroa.12128.0.i = phi float [ %i.vx, %bb.bp ], [ %i.vl, %bb.bo ] ; 2 uses
  %.sroa.0121.0.i = phi <2 x float> [ %.sroa.05.4.vec.insert.i.i, %bb.bp ], [ %.sroa.0121.4.vec.insert.i, %bb.bo ] ; 2 uses
  %i.wa = fmul <2 x float> %i.vo, %i.vo           ; 2 uses
  %shift670 = shufflevector <2 x float> %i.wa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop671 = fadd <2 x float> %i.wa, %shift670
  %i.wb = extractelement <2 x float> %foldExtExtBinop671, i64 0
  %i.wc = fmul float %i.vq, %i.vq
  %i.wd = fadd float %i.wc, %i.wb                 ; 2 uses
  %i.we = fcmp ogt float %i.wd, %i.uc
  %i.wf = and i32 %i.vz, 1024
  %i.wg = icmp eq i32 %i.wf, 0
  %or.cond.i = and i1 %i.we, %i.wg
  br i1 %or.cond.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.wh = tail call float @sqrtf(float noundef %i.wd) #13
  %i.wi = fdiv float %i.ua, %i.wh                 ; 2 uses
  %i.wj = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.wk = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wl = fmul <2 x float> %i.vo, %i.wk
  %i.wm = fmul float %i.vq, %i.wi
  %i.wn = or i32 %i.vz, 256
  store i32 %i.wn, ptr %i.vi, align 4, !tbaa !168
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.12.0.i62 = phi float [ %i.wm, %bb.br ], [ %i.vq, %bb.bq ] ; 2 uses
  %.sroa.0.0.i = phi <2 x float> [ %i.wl, %bb.br ], [ %i.vo, %bb.bq ] ; 2 uses
  store <2 x float> %.sroa.0121.0.i, ptr %i.uw, align 4, !tbaa !146
  store float %.sroa.12128.0.i, ptr %.sroa.12128.0..sroa_idx.i, align 4, !tbaa !146
  store <2 x float> %.sroa.0.0.i, ptr %i.vh, align 4, !tbaa !146
  store float %.sroa.12.0.i62, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !146
  %i.wo = getelementptr inbounds nuw i8, ptr %i.uw, i64 24 ; 2 uses
  %.sroa.014.0.copyload.i = load <2 x float>, ptr %i.wo, align 4
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 32 ; 2 uses
  %.sroa.215.0.copyload.i = load float, ptr %.sroa.215.0..sroa_idx.i, align 4
  %i.wp = fmul <2 x float> %i.ul, %.sroa.0121.0.i
  %i.wq = fadd <2 x float> %i.wp, %.sroa.014.0.copyload.i
  %i.wr = fmul float %i.tv, %.sroa.12128.0.i
  %i.ws = fadd float %i.wr, %.sroa.215.0.copyload.i
  store <2 x float> %i.wq, ptr %i.wo, align 4, !tbaa !146
  store float %i.ws, ptr %.sroa.215.0..sroa_idx.i, align 4, !tbaa !146
  %i.wt = getelementptr inbounds nuw i8, ptr %i.uw, i64 36 ; 2 uses
  %i.wu = fmul float %i.tv, %.sroa.12.0.i62
  %i.wv = load <2 x float>, ptr %i.wt, align 4    ; 6 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.uw, i64 44 ; 2 uses
  %i.wx = load <2 x float>, ptr %i.ww, align 4    ; 5 uses
  %i.wy = fmul float %i.wu, 5.000000e-01          ; 4 uses
  %.sroa.0.4.vec.extract8.i.i.i.i65 = extractelement <2 x float> %i.wv, i64 1
  %i.wz = fmul <2 x float> %i.ul, %.sroa.0.0.i
  %i.xa = fmul <2 x float> %i.wz, splat (float 5.000000e-01) ; 5 uses
  %i.xb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wy, i64 0
  %i.xc = shufflevector <2 x float> %i.wx, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.xd = fmul <2 x float> %i.xb, %i.xc           ; 2 uses
  %i.xe = shufflevector <2 x float> %i.xa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xf = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xg = fmul <2 x float> %i.xe, %i.xf           ; 2 uses
  %i.xh = shufflevector <2 x float> %i.xa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xi = fmul <2 x float> %i.xh, %i.wv           ; 2 uses
  %i.xj = fsub <2 x float> %i.xg, %i.xi
  %i.xk = fadd <2 x float> %i.xg, %i.xi
  %i.xl = shufflevector <2 x float> %i.xj, <2 x float> %i.xk, <2 x i32> <i32 0, i32 3>
  %i.xm = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.wy, i64 1
  %i.xn = shufflevector <2 x float> %i.wx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xo = fmul <2 x float> %i.xm, %i.xn
  %i.xp = fadd <2 x float> %i.xo, %i.xl           ; 2 uses
  %i.xq = fadd <2 x float> %i.xd, %i.xp
  %i.xr = fsub <2 x float> %i.xd, %i.xp
  %i.xs = shufflevector <2 x float> %i.xq, <2 x float> %i.xr, <2 x i32> <i32 0, i32 3>
  %i.xt = fmul float %i.wy, %.sroa.0.4.vec.extract8.i.i.i.i65
  %i.xu = fmul <2 x float> %i.wv, zeroinitializer
  %foldExtExtBinop676.a = fmul <2 x float> %i.xa, %i.wx
  %i.xv = shufflevector <2 x float> %i.xa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xw = insertelement <2 x float> %i.xv, float %i.wy, i64 1
  %i.xx = shufflevector <2 x float> %i.wx, <2 x float> %i.wv, <2 x i32> <i32 0, i32 2>
  %i.xy = fmul <2 x float> %i.xw, %i.xx
  %i.xz = insertelement <2 x float> poison, float %i.xt, i64 0
  %i.ya = shufflevector <2 x float> %i.xz, <2 x float> %foldExtExtBinop676.a, <2 x i32> <i32 0, i32 2>
  %i.yb = fsub <2 x float> %i.xy, %i.ya
  %i.yc = fadd <2 x float> %i.xu, %i.yb
  %i.yd = fmul <2 x float> %i.xa, %i.xc
  %i.ye = fadd <2 x float> %i.yd, %i.yc
  %i.yf = fadd <2 x float> %i.wv, %i.ye           ; 2 uses
  %i.yg = fadd <2 x float> %i.wx, %i.xs           ; 2 uses
  %i.yh = shufflevector <2 x float> %i.yf, <2 x float> %i.yg, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.yi = fmul <4 x float> %i.yh, %i.yh           ; 4 uses
  %shift678.a = shufflevector <4 x float> %i.yi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop679.a = fadd <4 x float> %i.yi, %shift678.a
  %shift681.a = shufflevector <4 x float> %i.yi, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop682.a = fadd <4 x float> %shift681.a, %foldExtExtBinop679.a
  %shift684 = shufflevector <4 x float> %i.yi, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop685 = fadd <4 x float> %shift684, %foldExtExtBinop682.a
  %i.yj = extractelement <4 x float> %foldExtExtBinop685, i64 0 ; 2 uses
  %i.yk = fcmp ogt float %i.yj, f0x057A0000
  br i1 %i.yk, label %bb.bt, label %b3IntegrateRotation.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.yl = tail call float @sqrtf(float noundef %i.yj) #13
  %i.ym = fdiv float 1.000000e+00, %i.yl
  %i.yn = insertelement <2 x float> poison, float %i.ym, i64 0
  %i.yo = shufflevector <2 x float> %i.yn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yp = fmul <2 x float> %i.yf, %i.yo
  %i.yq = fmul <2 x float> %i.yg, %i.yo
  br label %b3IntegrateRotation.exit.i

b3IntegrateRotation.exit.i:                       ; preds = %bb.bt, %bb.bs
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.yq, %bb.bt ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bs ]
  %.sroa.0.0.i.i.i = phi <2 x float> [ %i.yp, %bb.bt ], [ zeroinitializer, %bb.bs ]
  store <2 x float> %.sroa.0.0.i.i.i, ptr %i.wt, align 4, !tbaa !146
  store <2 x float> %.sroa.4.0.i.i.i, ptr %i.ww, align 4, !tbaa !146
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @302, i64 %i.c) #12, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @303, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = mul nuw nsw i64 %.sroa.429.0.extract.shift, 112
  %i.n = add i64 %i.m, %i.i, !nosanitize !9       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.i, !nosanitize !9
  br i1 %.not, label %bb.f, label %bb.g, !prof !97, !nosanitize !9
end_hunk_0
begin_hunk_1_@b3SolveContinuous:bb.a
  %i.tr = fmul float %i.tq, 1.000000e+03
  %i.ts = fcmp ogt float %i.tp, %i.tr
  br i1 %i.ts, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.tt = getelementptr inbounds nuw i8, ptr %i.dn, i64 116
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.tv = load i32, ptr %i.tt, align 4, !tbaa !164
  %i.tw = call ptr @b3FindName(ptr noundef nonnull %i.tu, i32 noundef %i.tv) #13 ; 2 uses
  %i.tx = icmp eq ptr %i.tw, null
  %i.ty = select i1 %i.tx, ptr @.str.22, ptr %i.tw
  %i.tz = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !182
  %i.ub = fpext float %i.tp to double
  %i.uc = extractelement <2 x float> %i.an, i64 0
  %i.ud = fpext float %i.uc to double
  %i.ue = extractelement <2 x float> %i.an, i64 1
  %i.uf = fpext float %i.ue to double
  %i.ug = fpext float %i.al to double
  %i.uh = extractelement <2 x float> %i.ao, i64 0
  %i.ui = fpext float %i.uh to double
  %i.uj = extractelement <2 x float> %i.ao, i64 1
  %i.uk = fpext float %i.uj to double
  %i.ul = fpext float %i.ap to double
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.24, double noundef %i.ub, i32 noundef %i.ua, ptr noundef nonnull %i.ty, double noundef %i.ud, double noundef %i.uf, double noundef %i.ug, double noundef %i.ui, double noundef %i.uk, double noundef %i.ul) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

declare void @b3ComputeFatShapeAABB(ptr dead_on_unwind writable sret(%struct.b3AABB) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, float noundef) local_unnamed_addr #3

declare ptr @b3FindName(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @b3MakeRelativeSweep(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, float %3) unnamed_addr #10 !func_sanitize !394 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 3, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @386, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.e, align 4
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4
  %i.f = fsub <2 x float> %.sroa.012.0.copyload, %2
  %i.g = fsub float %.sroa.213.0.copyload, %3
  store <2 x float> %i.f, ptr %i.d, align 4, !tbaa !146
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.g, ptr %.sroa.415.0..sroa_idx, align 4, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.i, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.j = fsub <2 x float> %.sroa.03.0.copyload, %2
  %i.k = fsub float %.sroa.24.0.copyload, %3
  store <2 x float> %i.j, ptr %i.h, align 4, !tbaa !146
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.k, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !165
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !165
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false), !tbaa.struct !169
  ret void
}

declare void @b3ComputeShapeAABB(ptr dead_on_unwind writable sret(%struct.b3AABB) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8) local_unnamed_addr #3

declare i64 @b3DynamicTree_Query(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3ContinuousQueryCallback(i32 %0, i64 noundef %1, ptr noundef %2) #0 !func_sanitize !395 {
bb.a:
  %3 = alloca %struct.b3Sweep, align 4            ; 4 uses
  %4 = alloca %struct.b3TOIOutput, align 4        ; 10 uses
  %i.a = trunc i64 %1 to i32
  %i.b = icmp ne ptr %2, null, !nosanitize !9
  %i.c = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  %i.f = and i1 %i.b, %i.e, !nosanitize !9
  br i1 %i.f, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @388, i64 %i.c) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  %i.i = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 1), !nosanitize !9 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1, !nosanitize !9
  br i1 %i.j, label %bb.d, label %bb.e, !prof !97, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.h to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @389, i64 %i.k, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.l = extractvalue { i32, i1 } %i.i, 0, !nosanitize !9
  store i32 %i.l, ptr %i.g, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !178  ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !177  ; 4 uses
  %i.q = icmp ne ptr %i.n, null, !nosanitize !9
  %i.r = ptrtoint ptr %i.n to i64, !nosanitize !9 ; 2 uses
  %i.s = and i64 %i.r, 7, !nosanitize !9
  %i.t = icmp eq i64 %i.s, 0, !nosanitize !9
  %i.u = and i1 %i.q, %i.t, !nosanitize !9
  br i1 %i.u, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @390, i64 %i.r) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.n, align 8, !tbaa !147
  %i.w = icmp eq i32 %i.v, %i.a
  br i1 %i.w, label %bb.br, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %2, align 8, !tbaa !176    ; 13 uses
  %i.y = icmp ne ptr %i.x, null, !nosanitize !9
  %i.z = ptrtoint ptr %i.x to i64, !nosanitize !9 ; 2 uses
  %i.aa = and i64 %i.z, 7, !nosanitize !9
  %i.ab = icmp eq i64 %i.aa, 0, !nosanitize !9
  %i.ac = and i1 %i.y, %i.ab, !nosanitize !9
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !10, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @391, i64 %i.z) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4080
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !136 ; 3 uses
  %sext = shl i64 %1, 32
  %i.af = ashr exact i64 %sext, 32                ; 3 uses
  %i.ag = getelementptr inbounds [232 x i8], ptr %i.ae, i64 %i.af ; 14 uses
  %i.ah = mul nsw i64 %i.af, 232
  %i.ai = ptrtoint ptr %i.ae to i64, !nosanitize !9 ; 3 uses
  %i.aj = add i64 %i.ah, %i.ai, !nosanitize !9    ; 3 uses
  %i.ak = icmp ne ptr %i.ae, null, !nosanitize !9 ; 2 uses
  %i.al = icmp eq i64 %i.aj, 0
  %i.am = xor i1 %i.ak, %i.al
  %i.an = icmp uge i64 %i.aj, %i.ai, !nosanitize !9
  %i.ao = icmp slt i64 %i.af, 0
  %i.ap = xor i1 %i.ao, %i.an
  %i.aq = and i1 %i.am, %i.ap, !nosanitize !9
  br i1 %i.aq, label %bb.l, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @392, i64 %i.ai, i64 %i.aj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.ag to i64, !nosanitize !9 ; 2 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !9
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !9
  %i.au = and i1 %i.ak, %i.at
  br i1 %i.au, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @393, i64 %i.ar) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !145 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !145
  %i.az = icmp eq i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.br, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !159
  %.not = icmp eq i32 %i.bb, -1                   ; 2 uses
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 198
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !156
  %5 = trunc i8 %i.bd to i1
  br i1 %5, label %bb.q, label %bb.br

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !156
  %6 = trunc i8 %i.bf to i1
  br i1 %6, label %bb.r, label %bb.br

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %.sroa.5156.0.copyload = load i32, ptr %.sroa.5156.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.bg = icmp ne i32 %.sroa.5.0.copyload, %.sroa.5156.0.copyload
  %.not.i = icmp eq i32 %.sroa.5.0.copyload, 0
  %or.cond.i = or i1 %.not.i, %i.bg
  br i1 %or.cond.i, label %b3ShouldShapesCollide.exit, label %.split

.split:                                           ; preds = %bb.r
  %i.bh = icmp sgt i32 %.sroa.5156.0.copyload, 0
  br i1 %i.bh, label %bb.s, label %bb.br

b3ShouldShapesCollide.exit:                       ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.0.0.copyload153 = load i64, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %.sroa.4155.0.copyload = load i64, ptr %.sroa.4155.0..sroa_idx, align 8
  %.sroa.0154.0.copyload = load i64, ptr %i.bj, align 8
  %i.bk = and i64 %.sroa.0154.0.copyload, %.sroa.4.0.copyload
  %.not2.i = icmp ne i64 %i.bk, 0
  %i.bl = and i64 %.sroa.4155.0.copyload, %.sroa.0.0.copyload153
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = select i1 %.not2.i, i1 %i.bm, i1 false
  br i1 %i.bn, label %bb.s, label %bb.br

bb.s:                                             ; preds = %.split, %b3ShouldShapesCollide.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 3880 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !139 ; 3 uses
  %i.bq = sext i32 %i.aw to i64                   ; 2 uses
  %i.br = getelementptr inbounds [128 x i8], ptr %i.bp, i64 %i.bq ; 4 uses
  %i.bs = shl nsw i64 %i.bq, 7
  %i.bt = ptrtoint ptr %i.bp to i64, !nosanitize !9 ; 3 uses
  %i.bu = add i64 %i.bs, %i.bt, !nosanitize !9    ; 3 uses
  %i.bv = icmp ne ptr %i.bp, null, !nosanitize !9 ; 2 uses
  %i.bw = icmp eq i64 %i.bu, 0
  %i.bx = xor i1 %i.bv, %i.bw
  %i.by = icmp uge i64 %i.bu, %i.bt, !nosanitize !9
  %i.bz = icmp slt i32 %i.aw, 0
  %i.ca = xor i1 %i.bz, %i.by
  %i.cb = and i1 %i.bx, %i.ca, !nosanitize !9
  br i1 %i.cb, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @394, i64 %i.bt, i64 %i.bu) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cc = tail call ptr @b3GetBodySim(ptr noundef nonnull %i.x, ptr noundef %i.br) #13 ; 4 uses
  %i.cd = icmp ne ptr %i.cc, null, !nosanitize !9
  %i.ce = ptrtoint ptr %i.cc to i64, !nosanitize !9 ; 2 uses
  %i.cf = and i64 %i.ce, 3, !nosanitize !9
  %i.cg = icmp eq i64 %i.cf, 0, !nosanitize !9
  %i.ch = and i1 %i.cd, %i.cg, !nosanitize !9
  br i1 %i.ch, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @395, i64 %i.ce) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 212
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154
  %i.ck = and i32 %i.cj, 128
  %.not140 = icmp eq i32 %i.ck, 0
  br i1 %.not140, label %bb.x, label %bb.br

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp ne ptr %i.p, null, !nosanitize !9
  %i.cm = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 2 uses
  %i.cn = and i64 %i.cm, 3, !nosanitize !9
  %i.co = icmp eq i64 %i.cn, 0, !nosanitize !9
  %i.cp = and i1 %i.cl, %i.co, !nosanitize !9
  br i1 %i.cp, label %bb.z, label %bb.y, !prof !10, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @396, i64 %i.cm) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.cq = load ptr, ptr %i.bo, align 8, !tbaa !139 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !151 ; 2 uses
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [128 x i8], ptr %i.cq, i64 %i.ct ; 3 uses
  %i.cv = shl nsw i64 %i.ct, 7
  %i.cw = ptrtoint ptr %i.cq to i64, !nosanitize !9 ; 3 uses
  %i.cx = add i64 %i.cv, %i.cw, !nosanitize !9    ; 3 uses
  %i.cy = icmp ne ptr %i.cq, null, !nosanitize !9 ; 2 uses
  %i.cz = icmp eq i64 %i.cx, 0
  %i.da = xor i1 %i.cy, %i.cz
  %i.db = icmp uge i64 %i.cx, %i.cw, !nosanitize !9
  %i.dc = icmp slt i32 %i.cs, 0
  %i.dd = xor i1 %i.dc, %i.db
  %i.de = and i1 %i.da, %i.dd, !nosanitize !9
  br i1 %i.de, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @397, i64 %i.cw, i64 %i.cx) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  %i.df = tail call zeroext i1 @b3ShouldBodiesCollide(ptr noundef nonnull %i.x, ptr noundef %i.cu, ptr noundef %i.br) #13
  br i1 %i.df, label %bb.ac, label %bb.br

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 198 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !156
  %i.di = and i8 %i.dh, 4
  %.not142 = icmp eq i8 %i.di, 0
  br i1 %.not142, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !156
  %i.dl = and i8 %i.dk, 4
  %.not144 = icmp eq i8 %i.dl, 0
  br i1 %.not144, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 4664
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !396 ; 5 uses
  %.not145 = icmp eq ptr %i.dn, null
  br i1 %.not145, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = load i32, ptr %i.ag, align 8, !tbaa !147 ; 2 uses
  %i.dp = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.do, i32 1), !nosanitize !9 ; 2 uses
  %i.dq = extractvalue { i32, i1 } %i.dp, 0, !nosanitize !9
  %i.dr = extractvalue { i32, i1 } %i.dp, 1, !nosanitize !9
  br i1 %i.dr, label %bb.ag, label %bb.ah, !prof !97, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.ds = zext nneg i32 %i.do to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @398, i64 %i.ds, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %bb.af
  %i.dt = getelementptr inbounds nuw i8, ptr %i.x, i64 4760
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !135
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ag, i64 196
  %i.dw = load i16, ptr %i.dv, align 4, !tbaa !148
  %i.dx = load i32, ptr %i.n, align 8, !tbaa !147 ; 2 uses
  %i.dy = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dx, i32 1), !nosanitize !9 ; 2 uses
  %i.dz = extractvalue { i32, i1 } %i.dy, 0, !nosanitize !9
  %i.ea = extractvalue { i32, i1 } %i.dy, 1, !nosanitize !9
  br i1 %i.ea, label %bb.ai, label %bb.aj, !prof !97, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  %i.eb = zext nneg i32 %i.dx to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @399, i64 %i.eb, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  %i.ed = load i16, ptr %i.ec, align 4, !tbaa !148
  %i.ee = getelementptr i8, ptr %i.dn, i64 -8
  %i.ef = load i32, ptr %i.ee, align 4, !nosanitize !9
  %i.eg = icmp eq i32 %i.ef, -1056584962, !nosanitize !9
  br i1 %i.eg, label %bb.ak, label %bb.am, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr i8, ptr %i.dn, i64 -4
  %i.ei = load i32, ptr %i.eh, align 8, !nosanitize !9
  %i.ej = icmp eq i32 %i.ei, -38424242, !nosanitize !9
  br i1 %i.ej, label %bb.am, label %bb.al, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  %i.ek = ptrtoint ptr %i.dn to i64, !nosanitize !9
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @401, i64 %i.ek) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %i.x, i64 4672
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !397
  %.sroa.532.0.insert.ext = zext i16 %i.dw to i64
  %.sroa.532.0.insert.shift = shl nuw i64 %.sroa.532.0.insert.ext, 48
  %.sroa.431.0.insert.ext = zext i16 %i.du to i64
  %.sroa.431.0.insert.shift = shl nuw nsw i64 %.sroa.431.0.insert.ext, 32 ; 2 uses
  %.sroa.030.0.insert.ext = zext i32 %i.dq to i64
  %i.en = or disjoint i64 %.sroa.532.0.insert.shift, %.sroa.030.0.insert.ext
  %.sroa.030.0.insert.insert = or disjoint i64 %i.en, %.sroa.431.0.insert.shift
  %.sroa.529.0.insert.ext = zext i16 %i.ed to i64
  %.sroa.529.0.insert.shift = shl nuw i64 %.sroa.529.0.insert.ext, 48
  %.sroa.027.0.insert.ext = zext i32 %i.dz to i64
  %i.eo = or disjoint i64 %.sroa.529.0.insert.shift, %.sroa.027.0.insert.ext
  %.sroa.027.0.insert.insert = or disjoint i64 %i.eo, %.sroa.431.0.insert.shift
  %i.ep = tail call zeroext i1 %i.dn(i64 %.sroa.030.0.insert.insert, i64 %.sroa.027.0.insert.insert, ptr noundef %i.em) #13
  br i1 %i.ep, label %.critedge, label %bb.br

.critedge:                                        ; preds = %bb.ae, %bb.am, %bb.ad
  %i.eq = tail call i64 @b3GetTicks() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.er, align 4
end_hunk_1
