Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3ExecuteBlock:bb.a
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !115 ; 3 uses
  %i.sm = icmp ne ptr %i.sl, null, !nosanitize !9
  %i.sn = ptrtoint ptr %i.sl to i64, !nosanitize !9 ; 5 uses
  %i.so = and i64 %i.sn, 7, !nosanitize !9
  %i.sp = icmp eq i64 %i.so, 0, !nosanitize !9
  %i.sq = and i1 %i.sm, %i.sp, !nosanitize !9
  br i1 %i.sq, label %bb.ay, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @299, i64 %i.sn) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  %i.sr = mul nuw nsw i64 %.sroa.2.0.extract.shift, 112
  %i.ss = add i64 %i.sr, %i.sn, !nosanitize !9    ; 2 uses
  %.not.i47 = icmp ult i64 %i.ss, %i.sn, !nosanitize !9
  br i1 %.not.i47, label %bb.az, label %bb.ba, !prof !97, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @300, i64 %i.sn, i64 %i.ss) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ba:                                            ; preds = %bb.ay
  %i.st = getelementptr inbounds nuw [112 x i8], ptr %i.sl, i64 %.sroa.2.0.extract.shift
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !106 ; 3 uses
  %i.sw = trunc nuw i64 %.sroa.3.0.extract.shift.i46 to i32
  %i.sx = and i32 %i.sw, 65535
  %i.sy = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc.i45, i32 %i.sx), !nosanitize !9 ; 2 uses
  %i.sz = extractvalue { i32, i1 } %i.sy, 1, !nosanitize !9
  br i1 %i.sz, label %bb.bb, label %.lr.ph.i48, !prof !173, !nosanitize !9

.lr.ph.i48:                                       ; preds = %bb.ba
  %i.ta = extractvalue { i32, i1 } %i.sy, 0, !nosanitize !9 ; 2 uses
  %i.tb = ptrtoint ptr %i.sv to i64               ; 3 uses
  %i.tc = icmp ne ptr %i.sv, null
  %i.td = icmp sgt i32 %i.ta, %.sroa.0.0.extract.trunc.i45
  br i1 %i.td, label %.lr.ph17.preheader.i, label %b3PrepareJointsTask.exit

.lr.ph17.preheader.i:                             ; preds = %.lr.ph.i48
  %sext.i49 = shl i64 %2, 32
  %i.te = ashr exact i64 %sext.i49, 32
  %wide.trip.count.i50 = sext i32 %i.ta to i64
  br label %.lr.ph17.i

bb.bb:                                            ; preds = %bb.ba
  %i.tf = and i64 %2, 4294967295
  %i.tg = and i64 %.sroa.3.0.extract.shift.i46, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @301, i64 %i.tf, i64 %i.tg) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph17.i:                                       ; preds = %bb.bc, %.lr.ph17.preheader.i
  %indvars.iv.i51 = phi i64 [ %i.te, %.lr.ph17.preheader.i ], [ %indvars.iv.next.i52, %bb.bc ] ; 4 uses
  %i.th = mul nsw i64 %indvars.iv.i51, 444
  %i.ti = add i64 %i.th, %i.tb, !nosanitize !9    ; 3 uses
  %i.tj = icmp eq i64 %i.ti, 0
  %i.tk = xor i1 %i.tc, %i.tj
  %i.tl = icmp uge i64 %i.ti, %i.tb, !nosanitize !9
  %i.tm = icmp slt i64 %indvars.iv.i51, 0
  %i.tn = xor i1 %i.tm, %i.tl
  %i.to = and i1 %i.tk, %i.tn, !nosanitize !9
  br i1 %i.to, label %bb.bc, label %.split14.i, !prof !10, !nosanitize !9

.split14.i:                                       ; preds = %.lr.ph17.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @302, i64 %i.tb, i64 %i.ti) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bc:                                            ; preds = %.lr.ph17.i
  %i.tp = getelementptr inbounds [444 x i8], ptr %i.sv, i64 %indvars.iv.i51
  tail call void @b3WarmStartJoint(ptr noundef %i.tp, ptr noundef nonnull %1) #12
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i50
  br i1 %exitcond.not.i53, label %b3PrepareJointsTask.exit, label %.lr.ph17.i

bb.bd:                                            ; preds = %bb.at
  tail call void @b3WarmStartContacts_Convex(i64 %2, ptr noundef nonnull %1) #12
  br label %b3PrepareJointsTask.exit

bb.be:                                            ; preds = %bb.at
  tail call void @b3WarmStartContacts_Mesh(i64 %2, ptr noundef nonnull %1) #12
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
  tail call void @b3SolveContacts_Convex(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext true) #12
  br label %b3PrepareJointsTask.exit

bb.bi:                                            ; preds = %bb.bf
  tail call void @b3SolveContacts_Mesh(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext true) #12
  br label %b3PrepareJointsTask.exit

bb.bj:                                            ; preds = %bb.c
  %.sroa.0132.0.extract.trunc.i = trunc i64 %2 to i32 ; 4 uses
  %.sroa.3.0.extract.shift.i54 = lshr i64 %2, 32  ; 2 uses
  %i.tq = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.tr = and i64 %i.tq, 7, !nosanitize !9
  %i.ts = icmp eq i64 %i.tr, 0, !nosanitize !9
  br i1 %i.ts, label %bb.bl, label %bb.bk, !prof !10, !nosanitize !9

bb.bk:                                            ; preds = %bb.bj
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @315, i64 %i.tq) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bl:                                            ; preds = %bb.bj
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !96
  %.fr167.i = freeze ptr %i.tu                    ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tw = load float, ptr %i.tv, align 8, !tbaa !371 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ty = load float, ptr %i.tx, align 8, !tbaa !374 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !163
  %i.ub = fmul float %i.ua, f0x3F490FDB           ; 3 uses
  %i.uc = fmul float %i.ty, %i.ty
  %i.ud = fmul float %i.ub, %i.ub
  %i.ue = trunc nuw i64 %.sroa.3.0.extract.shift.i54 to i32
  %i.uf = and i32 %i.ue, 65535
  %i.ug = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0132.0.extract.trunc.i, i32 %i.uf), !nosanitize !9 ; 2 uses
  %i.uh = extractvalue { i32, i1 } %i.ug, 1, !nosanitize !9
  br i1 %i.uh, label %._crit_edge.i71, label %.lr.ph.i55, !prof !173, !nosanitize !9

.lr.ph.i55:                                       ; preds = %bb.bl
  %i.ui = extractvalue { i32, i1 } %i.ug, 0, !nosanitize !9 ; 2 uses
  %i.uj = ptrtoint ptr %.fr167.i to i64           ; 4 uses
  %.not168.i = icmp eq ptr %.fr167.i, null
  br i1 %.not168.i, label %.lr.ph.split.us.i69, label %.lr.ph.split.preheader.i, !prof !97

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i55
  %sext198.i = shl i64 %2, 32
  %i.uk = ashr exact i64 %sext198.i, 32           ; 2 uses
  %smax.i56 = tail call i32 @llvm.smax.i32(i32 %i.ui, i32 %.sroa.0132.0.extract.trunc.i)
  %wide.trip.count.i57 = sext i32 %smax.i56 to i64 ; 2 uses
  %exitcond.not.i60213 = icmp eq i64 %i.uk, %wide.trip.count.i57
  br i1 %exitcond.not.i60213, label %b3PrepareJointsTask.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.split.preheader.i
  %i.ul = insertelement <2 x float> poison, float %i.tw, i64 0
  %i.um = shufflevector <2 x float> %i.ul, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph.split.us.i69:                              ; preds = %.lr.ph.i55
  %i.un = icmp sgt i32 %i.ui, %.sroa.0132.0.extract.trunc.i
  br i1 %i.un, label %bb.bm, label %b3PrepareJointsTask.exit

bb.bm:                                            ; preds = %.lr.ph.split.us.i69
  %sext.i70 = shl i64 %2, 32                      ; 2 uses
  %i.uo = ashr exact i64 %sext.i70, 32
  %i.up = mul nsw i64 %i.uo, 56                   ; 2 uses
  %i.uq = icmp eq i64 %sext.i70, 0
  %i.ur = icmp uge i64 %i.up, %i.uj, !nosanitize !9
  %i.us = icmp slt i32 %.sroa.0132.0.extract.trunc.i, 0
  %i.ut = xor i1 %i.us, %i.ur
  %i.uu = and i1 %i.uq, %i.ut, !nosanitize !9
  br i1 %i.uu, label %.split165.i, label %.split162.us.i, !prof !10, !nosanitize !9

._crit_edge.i71:                                  ; preds = %bb.bl
  %i.uv = and i64 %2, 4294967295
  %i.uw = and i64 %.sroa.3.0.extract.shift.i54, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @316, i64 %i.uv, i64 %i.uw) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %.lr.ph.preheader, %b3IntegrateRotation.exit.i
  %indvars.iv.i59214 = phi i64 [ %indvars.iv.next.i67, %b3IntegrateRotation.exit.i ], [ %i.uk, %.lr.ph.preheader ] ; 4 uses
  %i.ux = getelementptr inbounds [56 x i8], ptr %.fr167.i, i64 %indvars.iv.i59214 ; 11 uses
  %i.uy = mul nsw i64 %indvars.iv.i59214, 56
  %i.uz = add i64 %i.uy, %i.uj, !nosanitize !9    ; 3 uses
  %i.va = icmp ne i64 %i.uz, 0
  %i.vb = icmp uge i64 %i.uz, %i.uj, !nosanitize !9
  %i.vc = icmp slt i64 %indvars.iv.i59214, 0
  %i.vd = xor i1 %i.vc, %i.vb
  %i.ve = and i1 %i.va, %i.vd, !nosanitize !9
  br i1 %i.ve, label %bb.bn, label %.split162.us.i, !prof !10, !nosanitize !9

.split162.us.i:                                   ; preds = %.lr.ph, %bb.bm
  %.us-phi163.i = phi i64 [ %i.up, %bb.bm ], [ %i.uz, %.lr.ph ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @317, i64 %i.uj, i64 %.us-phi163.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bn:                                            ; preds = %.lr.ph
  %i.vf = ptrtoint ptr %i.ux to i64, !nosanitize !9 ; 2 uses
  %i.vg = and i64 %i.vf, 3, !nosanitize !9
  %i.vh = icmp eq i64 %i.vg, 0, !nosanitize !9
  br i1 %i.vh, label %bb.bo, label %.split165.i, !prof !10, !nosanitize !9

.split165.i:                                      ; preds = %bb.bn, %bb.bm
  %.us-phi166.i = phi i64 [ 0, %bb.bm ], [ %i.vf, %bb.bn ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @318, i64 %.us-phi166.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0122.0.copyload.i = load <2 x float>, ptr %i.ux, align 4, !tbaa !146 ; 2 uses
  %.sroa.12129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  %.sroa.12129.0.copyload.i = load float, ptr %.sroa.12129.0..sroa_idx.i, align 4, !tbaa !146
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ux, i64 12 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ux, i64 20 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ux, i64 52 ; 3 uses
  %.sroa.12.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !146
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.vi, align 4, !tbaa !146
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !168 ; 7 uses
  %.not.i61 = trunc i32 %i.vk to i1
  %.sroa.0122.0.vec.extract.i = extractelement <2 x float> %.sroa.0122.0.copyload.i, i64 0
  %4 = select i1 %.not.i61, float 0.000000e+00, float %.sroa.0122.0.vec.extract.i ; 4 uses
  %.sroa.0122.0.vec.insert.i = insertelement <2 x float> poison, float %4, i64 0
  %5 = and i32 %i.vk, 2
  %.not84.i = icmp eq i32 %5, 0
  %.sroa.0122.4.vec.extract.i = extractelement <2 x float> %.sroa.0122.0.copyload.i, i64 1
  %6 = select i1 %.not84.i, float %.sroa.0122.4.vec.extract.i, float 0.000000e+00 ; 4 uses
  %.sroa.0122.4.vec.insert.i = insertelement <2 x float> %.sroa.0122.0.vec.insert.i, float %6, i64 1
  %i.vl = and i32 %i.vk, 4
  %.not85.i = icmp eq i32 %i.vl, 0
  %i.vm = select i1 %.not85.i, float %.sroa.12129.0.copyload.i, float 0.000000e+00 ; 4 uses
  %7 = insertelement <2 x i32> poison, i32 %i.vk, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vn = and <2 x i32> %8, <i32 8, i32 16>
  %i.vo = icmp eq <2 x i32> %i.vn, zeroinitializer
  %i.vp = select <2 x i1> %i.vo, <2 x float> %.sroa.0.0.copyload.i, <2 x float> zeroinitializer ; 4 uses
  %i.vq = and i32 %i.vk, 32
  %.not88.i = icmp eq i32 %i.vq, 0
  %i.vr = select i1 %.not88.i, float %.sroa.12.0.copyload.i, float 0.000000e+00 ; 4 uses
  %9 = fmul float %4, %4
  %10 = fmul float %6, %6
  %11 = fadd float %9, %10
  %i.vs = fmul float %i.vm, %i.vm
  %i.vt = fadd float %i.vs, %11                   ; 2 uses
  %i.vu = fcmp ogt float %i.vt, %i.uc
  br i1 %i.vu, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.vt)
  %i.vv = fdiv float %i.ty, %sqrt.i.i             ; 3 uses
  %12 = fmul float %4, %i.vv
  %i.vw = insertelement <2 x float> poison, float %12, i64 0
  %13 = fmul float %6, %i.vv
  %.sroa.05.4.vec.insert.i.i = insertelement <2 x float> %i.vw, float %13, i64 1
  %i.vx = fmul float %i.vm, %i.vv
  %i.vy = or i32 %i.vk, 256                       ; 2 uses
  store i32 %i.vy, ptr %i.vj, align 4, !tbaa !168
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.vz = phi i32 [ %i.vy, %bb.bp ], [ %i.vk, %bb.bo ] ; 2 uses
  %.sroa.12129.0.i = phi float [ %i.vx, %bb.bp ], [ %i.vm, %bb.bo ] ; 2 uses
  %.sroa.0122.0.i = phi <2 x float> [ %.sroa.05.4.vec.insert.i.i, %bb.bp ], [ %.sroa.0122.4.vec.insert.i, %bb.bo ] ; 2 uses
  %i.wa = fmul <2 x float> %i.vp, %i.vp           ; 2 uses
  %shift670 = shufflevector <2 x float> %i.wa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop671 = fadd <2 x float> %i.wa, %shift670
  %i.wb = extractelement <2 x float> %foldExtExtBinop671, i64 0
  %i.wc = fmul float %i.vr, %i.vr
  %i.wd = fadd float %i.wc, %i.wb                 ; 2 uses
  %i.we = fcmp ogt float %i.wd, %i.ud
  %i.wf = and i32 %i.vz, 1024
  %i.wg = icmp eq i32 %i.wf, 0
  %or.cond.i = and i1 %i.we, %i.wg
  br i1 %or.cond.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %sqrt.i97.i = tail call float @llvm.sqrt.f32(float %i.wd)
  %i.wh = fdiv float %i.ub, %sqrt.i97.i           ; 2 uses
  %i.wi = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wk = fmul <2 x float> %i.vp, %i.wj
  %i.wl = fmul float %i.vr, %i.wh
  %i.wm = or i32 %i.vz, 256
  store i32 %i.wm, ptr %i.vj, align 4, !tbaa !168
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.12.0.i62 = phi float [ %i.wl, %bb.br ], [ %i.vr, %bb.bq ] ; 2 uses
  %.sroa.0.0.i = phi <2 x float> [ %i.wk, %bb.br ], [ %i.vp, %bb.bq ] ; 2 uses
  store <2 x float> %.sroa.0122.0.i, ptr %i.ux, align 4, !tbaa !146
  store float %.sroa.12129.0.i, ptr %.sroa.12129.0..sroa_idx.i, align 4, !tbaa !146
  store <2 x float> %.sroa.0.0.i, ptr %i.vi, align 4, !tbaa !146
  store float %.sroa.12.0.i62, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !146
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ux, i64 24 ; 2 uses
  %.sroa.014.0.copyload.i = load <2 x float>, ptr %i.wn, align 4
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ux, i64 32 ; 2 uses
  %.sroa.215.0.copyload.i = load float, ptr %.sroa.215.0..sroa_idx.i, align 4
  %i.wo = fmul <2 x float> %i.um, %.sroa.0122.0.i
  %i.wp = fadd <2 x float> %i.wo, %.sroa.014.0.copyload.i
  %i.wq = fmul float %i.tw, %.sroa.12129.0.i
  %i.wr = fadd float %i.wq, %.sroa.215.0.copyload.i
  store <2 x float> %i.wp, ptr %i.wn, align 4, !tbaa !146
  store float %i.wr, ptr %.sroa.215.0..sroa_idx.i, align 4, !tbaa !146
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ux, i64 36 ; 2 uses
  %i.wt = fmul float %i.tw, %.sroa.12.0.i62
  %i.wu = load <2 x float>, ptr %i.ws, align 4    ; 6 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ux, i64 44 ; 2 uses
  %i.ww = load <2 x float>, ptr %i.wv, align 4    ; 5 uses
  %i.wx = fmul float %i.wt, 5.000000e-01          ; 4 uses
  %.sroa.0.4.vec.extract8.i.i.i.i65 = extractelement <2 x float> %i.wu, i64 1
  %i.wy = fmul <2 x float> %i.um, %.sroa.0.0.i
  %i.wz = fmul <2 x float> %i.wy, splat (float 5.000000e-01) ; 5 uses
  %i.xa = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wx, i64 0
  %i.xb = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.xc = fmul <2 x float> %i.xa, %i.xb           ; 2 uses
  %i.xd = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xe = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xf = fmul <2 x float> %i.xd, %i.xe           ; 2 uses
  %i.xg = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xh = fmul <2 x float> %i.xg, %i.wu           ; 2 uses
  %i.xi = fsub <2 x float> %i.xf, %i.xh
  %i.xj = fadd <2 x float> %i.xf, %i.xh
  %i.xk = shufflevector <2 x float> %i.xi, <2 x float> %i.xj, <2 x i32> <i32 0, i32 3>
  %i.xl = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.wx, i64 1
  %i.xm = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = fmul <2 x float> %i.xl, %i.xm
  %i.xo = fadd <2 x float> %i.xn, %i.xk           ; 2 uses
  %i.xp = fadd <2 x float> %i.xc, %i.xo
  %i.xq = fsub <2 x float> %i.xc, %i.xo
  %i.xr = shufflevector <2 x float> %i.xp, <2 x float> %i.xq, <2 x i32> <i32 0, i32 3>
  %i.xs = fmul float %i.wx, %.sroa.0.4.vec.extract8.i.i.i.i65
  %i.xt = fmul <2 x float> %i.wu, zeroinitializer
  %foldExtExtBinop676.a = fmul <2 x float> %i.wz, %i.ww
  %i.xu = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xv = insertelement <2 x float> %i.xu, float %i.wx, i64 1
  %i.xw = shufflevector <2 x float> %i.ww, <2 x float> %i.wu, <2 x i32> <i32 0, i32 2>
  %i.xx = fmul <2 x float> %i.xv, %i.xw
  %i.xy = insertelement <2 x float> poison, float %i.xs, i64 0
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> %foldExtExtBinop676.a, <2 x i32> <i32 0, i32 2>
  %i.ya = fsub <2 x float> %i.xx, %i.xz
  %i.yb = fadd <2 x float> %i.xt, %i.ya
  %i.yc = fmul <2 x float> %i.wz, %i.xb
  %i.yd = fadd <2 x float> %i.yc, %i.yb
  %i.ye = fadd <2 x float> %i.wu, %i.yd           ; 2 uses
  %i.yf = fadd <2 x float> %i.ww, %i.xr           ; 2 uses
  %i.yg = shufflevector <2 x float> %i.ye, <2 x float> %i.yf, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.yh = fmul <4 x float> %i.yg, %i.yg           ; 4 uses
  %shift678.a = shufflevector <4 x float> %i.yh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop679.a = fadd <4 x float> %i.yh, %shift678.a
  %shift681.a = shufflevector <4 x float> %i.yh, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop682.a = fadd <4 x float> %shift681.a, %foldExtExtBinop679.a
  %shift684 = shufflevector <4 x float> %i.yh, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop685 = fadd <4 x float> %shift684, %foldExtExtBinop682.a
  %i.yi = extractelement <4 x float> %foldExtExtBinop685, i64 0 ; 2 uses
  %i.yj = fcmp ogt float %i.yi, f0x057A0000
  br i1 %i.yj, label %bb.bt, label %b3IntegrateRotation.exit.i

bb.bt:                                            ; preds = %bb.bs
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.yi)
  %i.yk = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.yl = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yn = fmul <2 x float> %i.ye, %i.ym
  %i.yo = fmul <2 x float> %i.yf, %i.ym
  br label %b3IntegrateRotation.exit.i

b3IntegrateRotation.exit.i:                       ; preds = %bb.bt, %bb.bs
  %.sroa.4.0.i.i.i = phi <2 x float> [ %i.yo, %bb.bt ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bs ]
  %.sroa.0.0.i.i.i = phi <2 x float> [ %i.yn, %bb.bt ], [ zeroinitializer, %bb.bs ]
  store <2 x float> %.sroa.0.0.i.i.i, ptr %i.ws, align 4, !tbaa !146
  store <2 x float> %.sroa.4.0.i.i.i, ptr %i.wv, align 4, !tbaa !146
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
  tail call void @b3SolveContacts_Convex(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext false) #12
  br label %b3PrepareJointsTask.exit

bb.bx:                                            ; preds = %bb.bu
  tail call void @b3SolveContacts_Mesh(i64 %2, ptr noundef nonnull %1, i1 noundef zeroext false) #12
  br label %b3PrepareJointsTask.exit

bb.by:                                            ; preds = %bb.c
  switch i8 %.sroa.1.0.extract.trunc, label %b3PrepareJointsTask.exit [
    i8 5, label %bb.bz
    i8 6, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  tail call void @b3ApplyRestitution_Convex(i64 %2, ptr noundef nonnull %1) #12
  br label %b3PrepareJointsTask.exit

bb.ca:                                            ; preds = %bb.by
  tail call void @b3ApplyRestitution_Mesh(i64 %2, ptr noundef nonnull %1) #12
  br label %b3PrepareJointsTask.exit

bb.cb:                                            ; preds = %bb.c
  tail call void @b3StoreImpulses_Convex(i64 %2, ptr noundef nonnull %1, i32 noundef %3) #12
  br label %b3PrepareJointsTask.exit

bb.cc:                                            ; preds = %bb.c
  tail call void @b3StoreImpulses_Mesh(i64 %2, ptr noundef nonnull %1, i32 noundef %3) #12
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @303, i64 %i.c) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @304, i64 %i.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = mul nuw nsw i64 %.sroa.429.0.extract.shift, 112
  %i.n = add i64 %i.m, %i.i, !nosanitize !9       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.i, !nosanitize !9
  br i1 %.not, label %bb.f, label %bb.g, !prof !97, !nosanitize !9
end_hunk_0
begin_hunk_1_@b3SolveContinuous:bb.a
  %i.tq = fmul float %i.tp, 1.000000e+03
  %i.tr = fcmp ogt float %i.to, %i.tq
  br i1 %i.tr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ts = getelementptr inbounds nuw i8, ptr %i.dn, i64 116
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.tu = load i32, ptr %i.ts, align 4, !tbaa !164
  %i.tv = call ptr @b3FindName(ptr noundef nonnull %i.tt, i32 noundef %i.tu) #12 ; 2 uses
  %i.tw = icmp eq ptr %i.tv, null
  %i.tx = select i1 %i.tw, ptr @.str.22, ptr %i.tv
  %i.ty = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !182
  %i.ua = fpext float %i.to to double
  %i.ub = extractelement <2 x float> %i.an, i64 0
  %i.uc = fpext float %i.ub to double
  %i.ud = extractelement <2 x float> %i.an, i64 1
  %i.ue = fpext float %i.ud to double
  %i.uf = fpext float %i.al to double
  %i.ug = extractelement <2 x float> %i.ao, i64 0
  %i.uh = fpext float %i.ug to double
  %i.ui = extractelement <2 x float> %i.ao, i64 1
  %i.uj = fpext float %i.ui to double
  %i.uk = fpext float %i.ap to double
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.24, double noundef %i.ua, i32 noundef %i.tz, ptr noundef nonnull %i.tx, double noundef %i.uc, double noundef %i.ue, double noundef %i.uf, double noundef %i.uh, double noundef %i.uj, double noundef %i.uk) #12
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare void @b3ComputeFatShapeAABB(ptr dead_on_unwind writable sret(%struct.b3AABB) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, float noundef) local_unnamed_addr #3

declare ptr @b3FindName(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @b3MakeRelativeSweep(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, float %3) unnamed_addr #9 !func_sanitize !394 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 3, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @387, i64 %i.a) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @389, i64 %i.c) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !182  ; 2 uses
  %i.i = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 1), !nosanitize !9 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1, !nosanitize !9
  br i1 %i.j, label %bb.d, label %bb.e, !prof !97, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.h to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @390, i64 %i.k, i64 1) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @391, i64 %i.r) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @392, i64 %i.z) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @393, i64 %i.ai, i64 %i.aj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.ag to i64, !nosanitize !9 ; 2 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !9
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !9
  %i.au = and i1 %i.ak, %i.at
  br i1 %i.au, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @394, i64 %i.ar) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @395, i64 %i.bt, i64 %i.bu) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.cc = tail call ptr @b3GetBodySim(ptr noundef nonnull %i.x, ptr noundef %i.br) #12 ; 4 uses
  %i.cd = icmp ne ptr %i.cc, null, !nosanitize !9
  %i.ce = ptrtoint ptr %i.cc to i64, !nosanitize !9 ; 2 uses
  %i.cf = and i64 %i.ce, 3, !nosanitize !9
  %i.cg = icmp eq i64 %i.cf, 0, !nosanitize !9
  %i.ch = and i1 %i.cd, %i.cg, !nosanitize !9
  br i1 %i.ch, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @396, i64 %i.ce) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @397, i64 %i.cm) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @398, i64 %i.cw, i64 %i.cx) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  %i.df = tail call zeroext i1 @b3ShouldBodiesCollide(ptr noundef nonnull %i.x, ptr noundef %i.cu, ptr noundef %i.br) #12
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
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @399, i64 %i.ds, i64 1) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @400, i64 %i.eb, i64 1) #11, !nosanitize !9
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
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @402, i64 %i.ek) #11, !nosanitize !9
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
  %i.ep = tail call zeroext i1 %i.dn(i64 %.sroa.030.0.insert.insert, i64 %.sroa.027.0.insert.insert, ptr noundef %i.em) #12
  br i1 %i.ep, label %.critedge, label %bb.br

.critedge:                                        ; preds = %bb.ae, %bb.am, %bb.ad
  %i.eq = tail call i64 @b3GetTicks() #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 116 ; 2 uses
  %.sroa.024.0.copyload = load <2 x float>, ptr %i.er, align 4
end_hunk_1
