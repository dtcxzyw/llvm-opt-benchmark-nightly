Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3FinalizeBodiesTask:bb.a
  %i.um = shufflevector <4 x float> %i.tk, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %shift7318 = fadd <4 x float> %i.ul, %i.um
  %foldExtExtBinop7319 = fadd <4 x float> %shift7318, %i.uk
  %i.un = extractelement <4 x float> %foldExtExtBinop7319, i64 1
  %shift7321 = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop7322 = fadd <4 x float> %shift7321, %i.uk
  %shift7324 = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop7325 = fadd <4 x float> %foldExtExtBinop7322, %shift7324
  %i.uo = extractelement <4 x float> %foldExtExtBinop7325, i64 0
  store <2 x float> %i.sn, ptr %i.pz, align 4, !tbaa !146
  %.sroa.4432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 152
  store float %i.to, ptr %.sroa.4432.0..sroa_idx, align 4, !tbaa !146
  %.sroa.5433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 156
  store <2 x float> %i.tx, ptr %.sroa.5433.0..sroa_idx, align 4, !tbaa !146
  %.sroa.6434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 164
  store float %i.un, ptr %.sroa.6434.0..sroa_idx, align 4, !tbaa !146
  %.sroa.7435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 168
  store <2 x float> %i.ug, ptr %.sroa.7435.0..sroa_idx, align 4, !tbaa !146
  %.sroa.8436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 176
  store float %i.uo, ptr %.sroa.8436.0..sroa_idx, align 4, !tbaa !146
  %i.up = getelementptr inbounds nuw i8, ptr %i.mg, i64 44
  %i.uq = load ptr, ptr %i.br, align 8, !tbaa !354 ; 3 uses
  %i.ur = load i32, ptr %i.up, align 4, !tbaa !355 ; 4 uses
  %i.us = sext i32 %i.ur to i64                   ; 2 uses
  %i.ut = getelementptr inbounds [64 x i8], ptr %i.uq, i64 %i.us ; 3 uses
  %i.uu = shl nsw i64 %i.us, 6
  %i.uv = ptrtoint ptr %i.uq to i64, !nosanitize !9 ; 3 uses
  %i.uw = add i64 %i.uu, %i.uv, !nosanitize !9    ; 3 uses
  %i.ux = icmp ne ptr %i.uq, null, !nosanitize !9 ; 2 uses
  %i.uy = icmp eq i64 %i.uw, 0
  %i.uz = xor i1 %i.ux, %i.uy
  %i.va = icmp uge i64 %i.uw, %i.uv, !nosanitize !9
  %i.vb = icmp slt i32 %i.ur, 0
  %i.vc = xor i1 %i.vb, %i.va
  %i.vd = and i1 %i.uz, %i.vc, !nosanitize !9
  br i1 %i.vd, label %bb.ay, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @349, i64 %i.uv, i64 %i.uw) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  %i.ve = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.vf = load float, ptr %i.ve, align 8, !tbaa !351 ; 4 uses
  %i.vg = fcmp olt float %i.vf, 5.000000e-01
  %i.vh = ptrtoint ptr %i.ut to i64, !nosanitize !9 ; 3 uses
  %i.vi = and i64 %i.vh, 7, !nosanitize !9
  %i.vj = icmp eq i64 %i.vi, 0, !nosanitize !9
  %i.vk = and i1 %i.ux, %i.vj                     ; 2 uses
  br i1 %i.vg, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  br i1 %i.vk, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @351, i64 %i.vh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !361 ; 2 uses
  %i.vn = lshr i32 %i.vm, 6
  %i.vo = load ptr, ptr %i.bb, align 8, !tbaa !134 ; 3 uses
  %i.vp = zext nneg i32 %i.vn to i64              ; 2 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vp ; 3 uses
  %i.vr = shl nuw nsw i64 %i.vp, 3
  %i.vs = ptrtoint ptr %i.vo to i64, !nosanitize !9 ; 3 uses
  %i.vt = add i64 %i.vr, %i.vs, !nosanitize !9    ; 3 uses
  %i.vu = icmp ne ptr %i.vo, null, !nosanitize !9 ; 2 uses
  %i.vv = icmp eq i64 %i.vt, 0
  %i.vw = xor i1 %i.vu, %i.vv
  %i.vx = icmp uge i64 %i.vt, %i.vs, !nosanitize !9
  %i.vy = and i1 %i.vx, %i.vw, !nosanitize !9
  br i1 %i.vy, label %bb.bd, label %bb.bc, !prof !10, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @312, i64 %i.vs, i64 %i.vt) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  %i.vz = ptrtoint ptr %i.vq to i64, !nosanitize !9 ; 2 uses
  %i.wa = and i64 %i.vz, 7, !nosanitize !9
  %i.wb = icmp eq i64 %i.wa, 0, !nosanitize !9
  %i.wc = and i1 %i.vu, %i.wb
  br i1 %i.wc, label %b3SetBit.exit, label %bb.be, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @313, i64 %i.vz) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3SetBit.exit:                                    ; preds = %bb.bd
  %i.wd = and i32 %i.vm, 63
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = shl nuw i64 1, %i.we
  %i.wg = load i64, ptr %i.vq, align 8, !tbaa !80
  %i.wh = or i64 %i.wg, %i.wf
  store i64 %i.wh, ptr %i.vq, align 8, !tbaa !80
  br label %.preheader

bb.bf:                                            ; preds = %bb.ay
  br i1 %i.vk, label %bb.bh, label %bb.bg, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @352, i64 %i.vh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %bb.bf
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !362
  %i.wk = icmp sgt i32 %i.wj, 0
  br i1 %i.wk, label %bb.bi, label %.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.wl = load float, ptr %i.bs, align 8, !tbaa !132 ; 2 uses
  %i.wm = fcmp ogt float %i.vf, %i.wl
  br i1 %i.wm, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.wn = fcmp oeq float %i.vf, %i.wl
  br i1 %i.wn, label %bb.bk, label %.preheader

bb.bk:                                            ; preds = %bb.bj
  %i.wo = load i32, ptr %i.bt, align 4, !tbaa !131
  %i.wp = icmp sgt i32 %i.ur, %i.wo
  br i1 %i.wp, label %.thread, label %.preheader

.thread:                                          ; preds = %bb.bi, %bb.bk
  store i32 %i.ur, ptr %i.bt, align 4, !tbaa !131
  store float %i.vf, ptr %i.bs, align 8, !tbaa !132
  br label %.preheader

.preheader:                                       ; preds = %bb.bh, %.thread, %bb.bk, %bb.bj, %b3SetBit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %i.cz, i64 28, i1 false), !tbaa.struct !166
  %i.wq = load i32, ptr %i.ny, align 4, !tbaa !154
  %.fr2942 = freeze i32 %i.wq
  %i.wr = and i32 %.fr2942, 64
  %.not299 = icmp eq i32 %i.wr, 0
  %i.ws = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.wt = lshr i64 %indvars.iv, 6
  %i.wu = and i64 %i.wt, 67108863                 ; 3 uses
  %i.wv = shl nuw nsw i64 %i.wu, 3                ; 2 uses
  %i.ww = and i64 %indvars.iv, 63
  %i.wx = shl nuw i64 1, %i.ww                    ; 2 uses
  %.0.us.us7274 = load i32, ptr %i.ws, align 8, !tbaa !103 ; 3 uses
  %.not300.us.us7275 = icmp eq i32 %.0.us.us7274, -1 ; 2 uses
  br i1 %.not299, label %.preheader.split.us.split.us.preheader, label %.preheader.split.us.split

.preheader.split.us.split.us.preheader:           ; preds = %.preheader
  br i1 %.not300.us.us7275, label %.loopexit, label %.lr.ph7277

.lr.ph7277:                                       ; preds = %.preheader.split.us.split.us.preheader, %.preheader.split.us.split.us
  %.0.us.us7276 = phi i32 [ %.0.us.us, %.preheader.split.us.split.us ], [ %.0.us.us7274, %.preheader.split.us.split.us.preheader ] ; 2 uses
  %i.wy = load ptr, ptr %i.bu, align 8, !tbaa !136 ; 3 uses
  %i.wz = sext i32 %.0.us.us7276 to i64           ; 2 uses
  %i.xa = getelementptr inbounds [232 x i8], ptr %i.wy, i64 %i.wz ; 10 uses
  %i.xb = mul nsw i64 %i.wz, 232
  %i.xc = ptrtoint ptr %i.wy to i64, !nosanitize !9 ; 3 uses
  %i.xd = add i64 %i.xb, %i.xc, !nosanitize !9    ; 3 uses
  %i.xe = icmp ne ptr %i.wy, null, !nosanitize !9 ; 2 uses
  %i.xf = icmp eq i64 %i.xd, 0
  %i.xg = xor i1 %i.xe, %i.xf
  %i.xh = icmp uge i64 %i.xd, %i.xc, !nosanitize !9
  %i.xi = icmp slt i32 %.0.us.us7276, 0
  %i.xj = xor i1 %i.xi, %i.xh
  %i.xk = and i1 %i.xg, %i.xj, !nosanitize !9
  br i1 %i.xk, label %bb.bl, label %.split2804.us, !prof !10, !nosanitize !9

bb.bl:                                            ; preds = %.lr.ph7277
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @b3ComputeFatShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef %i.xa, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.be) #13
  %i.xl = ptrtoint ptr %i.xa to i64, !nosanitize !9 ; 2 uses
  %i.xm = and i64 %i.xl, 7, !nosanitize !9
  %i.xn = icmp eq i64 %i.xm, 0, !nosanitize !9
  %i.xo = and i1 %i.xe, %i.xn
  br i1 %i.xo, label %bb.bm, label %.split2816.us, !prof !10, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xp, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !170
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xa, i64 64 ; 2 uses
  %.sroa.5508.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.xa, i64 72 ; 2 uses
  %.sroa.5508.0.copyload.us.us = load float, ptr %.sroa.5508.0..sroa_idx.us.us, align 8
  %.sroa.6509.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.xa, i64 76 ; 2 uses
  %.sroa.8511.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.xa, i64 84 ; 2 uses
  %.sroa.8511.0.copyload.us.us = load float, ptr %.sroa.8511.0..sroa_idx.us.us, align 4
  %i.xr = load <2 x float>, ptr %i.xq, align 8
  %i.xs = load <2 x float>, ptr %.sroa.6509.0..sroa_idx.us.us, align 4
  %i.xt = load <2 x float>, ptr %5, align 8
  %i.xu = load <2 x float>, ptr %i.bv, align 4
  %i.xv = shufflevector <2 x float> %i.xr, <2 x float> %i.xu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xw = shufflevector <2 x float> %i.xt, <2 x float> %i.xs, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xx = fcmp ule <4 x float> %i.xv, %i.xw
  %i.xy = load float, ptr %i.bw, align 8          ; 2 uses
  %i.xz = fcmp ule float %.sroa.5508.0.copyload.us.us, %i.xy
  %i.ya = load float, ptr %i.bx, align 4          ; 2 uses
  %i.yb = fcmp ule float %i.ya, %.sroa.8511.0.copyload.us.us
  %i.yc = freeze <4 x i1> %i.xx
  %i.yd = bitcast <4 x i1> %i.yc to i4
  %i.ye = icmp eq i4 %i.yd, -1
  %.fr = freeze i1 %i.xz
  %op.rdx = and i1 %i.ye, %.fr
  %op.rdx7278 = select i1 %op.rdx, i1 %i.yb, i1 false
  br i1 %op.rdx7278, label %.preheader.split.us.split.us, label %b3AABB_Contains.exit.thread.us.us

b3AABB_Contains.exit.thread.us.us:                ; preds = %bb.bm
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xa, i64 36
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !171 ; 3 uses
  %.sroa.011.0.copyload.us.us = load <2 x float>, ptr %5, align 8
  %i.yh = insertelement <2 x float> poison, float %i.yg, i64 0
  %i.yi = shufflevector <2 x float> %i.yh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yj = fsub <2 x float> %.sroa.011.0.copyload.us.us, %i.yi
  %i.yk = fsub float %i.xy, %i.yg
  %.sroa.03.0.copyload.us.us = load <2 x float>, ptr %i.bv, align 4
  %i.yl = fadd <2 x float> %i.yi, %.sroa.03.0.copyload.us.us
  %i.ym = fadd float %i.yg, %i.ya
  store <2 x float> %i.yj, ptr %i.xq, align 8, !tbaa !146
  store float %i.yk, ptr %.sroa.5508.0..sroa_idx.us.us, align 8, !tbaa !146
  store <2 x float> %i.yl, ptr %.sroa.6509.0..sroa_idx.us.us, align 4, !tbaa !146
  store float %i.ym, ptr %.sroa.8511.0..sroa_idx.us.us, align 4, !tbaa !146
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xa, i64 198 ; 2 uses
  %i.yo = load i8, ptr %i.yn, align 2, !tbaa !156
  %i.yp = or i8 %i.yo, 32
  store i8 %i.yp, ptr %i.yn, align 2, !tbaa !156
  %i.yq = load ptr, ptr %i.ba, align 8, !tbaa !134 ; 3 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.wu ; 3 uses
  %i.ys = ptrtoint ptr %i.yq to i64, !nosanitize !9 ; 3 uses
  %i.yt = add i64 %i.wv, %i.ys, !nosanitize !9    ; 3 uses
  %i.yu = icmp ne ptr %i.yq, null, !nosanitize !9 ; 2 uses
  %i.yv = icmp eq i64 %i.yt, 0
  %i.yw = xor i1 %i.yu, %i.yv
  %i.yx = icmp uge i64 %i.yt, %i.ys, !nosanitize !9
  %i.yy = and i1 %i.yx, %i.yw, !nosanitize !9
  br i1 %i.yy, label %bb.bn, label %.split2833.us, !prof !10, !nosanitize !9

bb.bn:                                            ; preds = %b3AABB_Contains.exit.thread.us.us
  %i.yz = ptrtoint ptr %i.yr to i64, !nosanitize !9 ; 2 uses
  %i.za = and i64 %i.yz, 7, !nosanitize !9
  %i.zb = icmp eq i64 %i.za, 0, !nosanitize !9
  %i.zc = and i1 %i.yu, %i.zb
  br i1 %i.zc, label %b3SetBit.exit416.us.us, label %.split2837.us, !prof !10, !nosanitize !9

b3SetBit.exit416.us.us:                           ; preds = %bb.bn
  %i.zd = load i64, ptr %i.yr, align 8, !tbaa !80
  %i.ze = or i64 %i.zd, %i.wx
  store i64 %i.ze, ptr %i.yr, align 8, !tbaa !80
  br label %.preheader.split.us.split.us

.preheader.split.us.split.us:                     ; preds = %bb.bm, %b3SetBit.exit416.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xa, i64 12
  %.0.us.us = load i32, ptr %i.zf, align 4, !tbaa !103 ; 2 uses
  %.not300.us.us = icmp eq i32 %.0.us.us, -1
  br i1 %.not300.us.us, label %.loopexit, label %.lr.ph7277

.preheader.split.us.split:                        ; preds = %.preheader
  br i1 %.not300.us.us7275, label %.loopexit, label %.lr.ph7273.preheader

.lr.ph7273.preheader:                             ; preds = %.preheader.split.us.split
  %i.zg = load ptr, ptr %i.bu, align 8, !tbaa !136 ; 3 uses
  %i.zh = ptrtoint ptr %i.zg to i64, !nosanitize !9 ; 3 uses
  %i.zi = icmp ne ptr %i.zg, null, !nosanitize !9 ; 2 uses
  br label %.lr.ph7273

.preheader.split.us.split.split.us:               ; preds = %b3SetBit.exit399.us.us
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zl, i64 12
  %.0.us.us2872 = load i32, ptr %i.zj, align 4, !tbaa !103 ; 2 uses
  %.not300.us.us2873 = icmp eq i32 %.0.us.us2872, -1
  br i1 %.not300.us.us2873, label %.loopexit, label %.lr.ph7273

.lr.ph7273:                                       ; preds = %.lr.ph7273.preheader, %.preheader.split.us.split.split.us
  %.0.us.us28727272 = phi i32 [ %.0.us.us2872, %.preheader.split.us.split.split.us ], [ %.0.us.us7274, %.lr.ph7273.preheader ] ; 2 uses
  %i.zk = sext i32 %.0.us.us28727272 to i64       ; 2 uses
  %i.zl = getelementptr inbounds [232 x i8], ptr %i.zg, i64 %i.zk ; 2 uses
  %i.zm = mul nsw i64 %i.zk, 232
  %i.zn = add i64 %i.zm, %i.zh, !nosanitize !9    ; 3 uses
  %i.zo = icmp eq i64 %i.zn, 0
  %i.zp = xor i1 %i.zi, %i.zo
  %i.zq = icmp uge i64 %i.zn, %i.zh, !nosanitize !9
  %i.zr = icmp slt i32 %.0.us.us28727272, 0
  %i.zs = xor i1 %i.zr, %i.zq
  %i.zt = and i1 %i.zp, %i.zs, !nosanitize !9
  br i1 %i.zt, label %bb.bo, label %.split2804.us, !prof !10, !nosanitize !9

bb.bo:                                            ; preds = %.lr.ph7273
  %i.zu = load ptr, ptr %i.ba, align 8, !tbaa !134 ; 3 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.wu ; 3 uses
  %i.zw = ptrtoint ptr %i.zu to i64, !nosanitize !9 ; 3 uses
  %i.zx = add i64 %i.wv, %i.zw, !nosanitize !9    ; 3 uses
  %i.zy = icmp ne ptr %i.zu, null, !nosanitize !9 ; 2 uses
  %i.zz = icmp eq i64 %i.zx, 0
  %i.aaa = xor i1 %i.zy, %i.zz
  %i.aab = icmp uge i64 %i.zx, %i.zw, !nosanitize !9
  %i.aac = and i1 %i.aab, %i.aaa, !nosanitize !9
  br i1 %i.aac, label %bb.bp, label %.split2809.us, !prof !10, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  %i.aad = ptrtoint ptr %i.zv to i64, !nosanitize !9 ; 2 uses
  %i.aae = and i64 %i.aad, 7, !nosanitize !9
  %i.aaf = icmp eq i64 %i.aae, 0, !nosanitize !9
  %i.aag = and i1 %i.zy, %i.aaf
  br i1 %i.aag, label %b3SetBit.exit399.us.us, label %.split2813.us, !prof !10, !nosanitize !9

b3SetBit.exit399.us.us:                           ; preds = %bb.bp
  %i.aah = load i64, ptr %i.zv, align 8, !tbaa !80
  %i.aai = or i64 %i.aah, %i.wx
  store i64 %i.aai, ptr %i.zv, align 8, !tbaa !80
  %i.aaj = ptrtoint ptr %i.zl to i64, !nosanitize !9 ; 2 uses
  %i.aak = and i64 %i.aaj, 7, !nosanitize !9
  %i.aal = icmp eq i64 %i.aak, 0, !nosanitize !9
  %i.aam = and i1 %i.zi, %i.aal
  br i1 %i.aam, label %.preheader.split.us.split.split.us, label %.split2840.us, !prof !10, !nosanitize !9

.split2804.us:                                    ; preds = %.lr.ph7273, %.lr.ph7277
  %.us-phi = phi i64 [ %i.xc, %.lr.ph7277 ], [ %i.zh, %.lr.ph7273 ]
  %.us-phi2860 = phi i64 [ %i.xd, %.lr.ph7277 ], [ %i.zn, %.lr.ph7273 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @353, i64 %.us-phi, i64 %.us-phi2860) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2809.us:                                    ; preds = %bb.bo
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @312, i64 %i.zw, i64 %i.zx) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2813.us:                                    ; preds = %bb.bp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @313, i64 %i.aad) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2816.us:                                    ; preds = %bb.bl
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @354, i64 %i.xl) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2833.us:                                    ; preds = %b3AABB_Contains.exit.thread.us.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @312, i64 %i.ys, i64 %i.yt) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2837.us:                                    ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @313, i64 %i.yz) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split2840.us:                                    ; preds = %b3SetBit.exit399.us.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @355, i64 %i.aaj) #12, !nosanitize !9
  unreachable, !nosanitize !9

.loopexit:                                        ; preds = %.preheader.split.us.split.split.us, %.preheader.split.us.split.us, %.preheader.split.us.split, %.preheader.split.us.split.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !338
}

declare void @b3StackFree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @b3GetMilliseconds(i64 noundef) local_unnamed_addr #3

declare void @b3InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_load_invalid_value_abort(ptr, i64) local_unnamed_addr #1

declare ptr @b3GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @b3GetShapeUserMaterialId(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @b3BroadPhase_EnlargeProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #3

declare void @b3ValidateBroadPhase(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @b3BulletBodyTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7 !func_sanitize !162 {
bb.a:
  %i.a = icmp ne ptr %3, null, !nosanitize !9
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @419, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !160  ; 3 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !9
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @420, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120  ; 3 uses
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %i.p = getelementptr inbounds [3848 x i8], ptr %i.n, i64 %i.o
  %i.q = mul nsw i64 %i.o, 3848
  %i.r = ptrtoint ptr %i.n to i64, !nosanitize !9 ; 3 uses
end_hunk_0
begin_hunk_1_@b3SolveContinuous:bb.a
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
  store <2 x float> %.sroa.0.0.i.i, ptr %i.kx, align 4, !tbaa !146
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store <2 x float> %.sroa.4.0.i.i, ptr %.sroa.6118.0..sroa_idx, align 4, !tbaa !146
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
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @367, i64 %i.le, i64 %i.lf) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %b3NLerp.exit
  %i.lm = ptrtoint ptr %i.lc to i64, !nosanitize !9 ; 2 uses
  %i.ln = and i64 %i.lm, 7, !nosanitize !9
  %i.lo = icmp eq i64 %i.ln, 0, !nosanitize !9
  %i.lp = and i1 %i.lg, %i.lo
  br i1 %i.lp, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @368, i64 %i.lm) #12, !nosanitize !9
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
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @369, i64 %i.ma, i64 %i.mb) #12, !nosanitize !9
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
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @370, i64 %i.mj) #12, !nosanitize !9
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
  %i.op = load <2 x float>, ptr %.sroa.6532.0..sroa_idx.us, align 4
  %i.oq = shufflevector <2 x float> %i.oo, <2 x float> %i.on, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.or = shufflevector <2 x float> %i.om, <2 x float> %i.op, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.os = fcmp ule <4 x float> %i.oq, %i.or
  %i.ot = fcmp ule float %.sroa.5531.0.copyload.us, %.sroa.5537.0.copyload.us
  %i.ou = fcmp ule float %.sroa.8540.0.copyload.us, %.sroa.8534.0.copyload.us
  %i.ov = freeze <4 x i1> %i.os
  %i.ow = bitcast <4 x i1> %i.ov to i4
  %i.ox = icmp eq i4 %i.ow, -1
  %.fr = freeze i1 %i.ot
  %op.rdx1355 = and i1 %i.ox, %.fr
  %op.rdx1356 = select i1 %op.rdx1355, i1 %i.ou, i1 false
  br i1 %op.rdx1356, label %.split.us, label %b3AABB_Contains.exit429.thread.us

b3AABB_Contains.exit429.thread.us:                ; preds = %bb.ao
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nx, i64 36
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !171 ; 3 uses
  %.sroa.021.0.copyload.us = load <2 x float>, ptr %i.ol, align 8
  %i.pa = insertelement <2 x float> poison, float %i.oz, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pc = fsub <2 x float> %.sroa.021.0.copyload.us, %i.pb
  %i.pd = fsub float %.sroa.5537.0.copyload.us, %i.oz
  %.sroa.013.0.copyload.us = load <2 x float>, ptr %.sroa.6538.0..sroa_idx.us, align 4
  %i.pe = fadd <2 x float> %i.pb, %.sroa.013.0.copyload.us
  %i.pf = fadd float %i.oz, %.sroa.8540.0.copyload.us
  store <2 x float> %i.pc, ptr %i.ok, align 8, !tbaa !146
  store float %i.pd, ptr %.sroa.5531.0..sroa_idx.us, align 8, !tbaa !146
  store <2 x float> %i.pe, ptr %.sroa.6532.0..sroa_idx.us, align 4, !tbaa !146
  store float %i.pf, ptr %.sroa.8534.0..sroa_idx.us, align 4, !tbaa !146
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nx, i64 198 ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 2, !tbaa !156
  %i.pi = or i8 %i.ph, 32
  store i8 %i.pi, ptr %i.pg, align 2, !tbaa !156
  %i.pj = load i32, ptr %i.ee, align 4, !tbaa !154
  %i.pk = or i32 %i.pj, 2048
  store i32 %i.pk, ptr %i.ee, align 4, !tbaa !154
  br label %.split.us

.split.us:                                        ; preds = %b3AABB_Contains.exit429.thread.us, %bb.ao
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  %.2.us = load i32, ptr %i.pl, align 4, !tbaa !103 ; 2 uses
  %.not286.us = icmp eq i32 %.2.us, -1
  br i1 %.not286.us, label %.loopexit, label %.lr.ph1352

.split813.us:                                     ; preds = %.lr.ph1352
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @371, i64 %i.nu, i64 %i.nz) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split816.us:                                     ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @372, i64 %i.og) #12, !nosanitize !9
  unreachable, !nosanitize !9

.loopexit:                                        ; preds = %.split.us, %bb.am, %._crit_edge837
  %i.pm = getelementptr inbounds nuw i8, ptr %4, i64 228 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !180 ; 10 uses
  %i.po = icmp sgt i32 %i.pn, 0
  br i1 %i.po, label %.lr.ph840, label %.loopexit.._crit_edge841_crit_edge

.loopexit.._crit_edge841_crit_edge:               ; preds = %.loopexit
  %.pre1111 = ptrtoint ptr %2 to i64, !nosanitize !9 ; 2 uses
  %.pre1113 = and i64 %.pre1111, 7, !nosanitize !9
  br label %._crit_edge841

.lr.ph840:                                        ; preds = %.loopexit
  %i.pp = getelementptr inbounds nuw i8, ptr %4, i64 196 ; 10 uses
  %i.pq = ptrtoint ptr %i.pp to i64, !nosanitize !9 ; 10 uses
  %i.pr = icmp ne ptr %2, null
  %i.ps = ptrtoint ptr %2 to i64                  ; 11 uses
  %i.pt = and i64 %i.ps, 7                        ; 9 uses
  %i.pu = icmp eq i64 %i.pt, 0
  %i.pv = and i1 %i.pr, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.qa = ptrtoint ptr %i.pz to i64               ; 3 uses
  br i1 %i.pv, label %.lr.ph840.split.us, label %bb.ba, !prof !10, !nosanitize !9

.lr.ph840.split.us.split.us:                      ; preds = %bb.az
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.split843.us, label %.lr.ph840.split.us, !prof !172, !llvm.loop !387, !nosanitize !9

.lr.ph840.split.us:                               ; preds = %.lr.ph840, %.lr.ph840.split.us.split.us
  %indvars.iv1353 = phi i64 [ %indvars.iv.next, %.lr.ph840.split.us.split.us ], [ 0, %.lr.ph840 ] ; 5 uses
  %i.qb = phi i32 [ %i.rs, %.lr.ph840.split.us.split.us ], [ %i.pn, %.lr.ph840 ]
  %i.qc = shl nuw nsw i64 %indvars.iv1353, 2
  %i.qd = add i64 %i.qc, %i.pq, !nosanitize !9    ; 2 uses
  %.not289.us.us = icmp ult i64 %i.qd, %i.pq, !nosanitize !9
  br i1 %.not289.us.us, label %.split845.us, label %bb.ap, !prof !97, !nosanitize !9

bb.ap:                                            ; preds = %.lr.ph840.split.us
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv1353
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !146
  %i.qg = load float, ptr %i.ec, align 8, !tbaa !179
  %i.qh = fcmp olt float %i.qf, %i.qg
  br i1 %i.qh, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %bb.ap
  %i.qi = load i32, ptr %i.px, align 8, !tbaa !130 ; 2 uses
  %i.qj = load i32, ptr %i.py, align 4, !tbaa !392 ; 6 uses
  %.not290.us.us = icmp slt i32 %i.qi, %i.qj
  br i1 %.not290.us.us, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qk = shl i32 %i.qj, 3
  %i.ql = icmp eq i32 %i.qj, 0
  br i1 %i.ql, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qm = shl nsw i32 %i.qj, 1
  %i.qn = add i32 %i.qj, 1073741824
  %i.qo = icmp sgt i32 %i.qn, -1
  br i1 %i.qo, label %bb.at, label %.split861.us, !prof !10, !nosanitize !9

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qp = phi i32 [ 8, %bb.ar ], [ %i.qm, %bb.as ] ; 2 uses
  %i.qq = shl i32 %i.qp, 3
  %i.qr = load ptr, ptr %i.pw, align 8, !tbaa !158
  %i.qs = call ptr @b3GrowAlloc(ptr noundef %i.qr, i32 noundef %i.qk, i32 noundef %i.qq) #13
  store ptr %i.qs, ptr %i.pw, align 8, !tbaa !158
  store i32 %i.qp, ptr %i.py, align 4, !tbaa !392
  %.pre = load i32, ptr %i.px, align 8, !tbaa !130
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.qt = phi i32 [ %.pre, %bb.at ], [ %i.qi, %bb.aq ] ; 4 uses
  %i.qu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.qt, i32 1), !nosanitize !9 ; 2 uses
  %i.qv = extractvalue { i32, i1 } %i.qu, 1, !nosanitize !9
  br i1 %i.qv, label %.split864.us, label %bb.av, !prof !97, !nosanitize !9

bb.av:                                            ; preds = %bb.au
  %i.qw = load ptr, ptr %i.pw, align 8, !tbaa !158 ; 3 uses
  %i.qx = extractvalue { i32, i1 } %i.qu, 0, !nosanitize !9
  store i32 %i.qx, ptr %i.px, align 8, !tbaa !130
  %i.qy = sext i32 %i.qt to i64                   ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.qw, i64 %i.qy ; 2 uses
  %i.ra = shl nsw i64 %i.qy, 3
  %i.rb = ptrtoint ptr %i.qw to i64, !nosanitize !9 ; 3 uses
  %i.rc = add i64 %i.ra, %i.rb, !nosanitize !9    ; 3 uses
  %i.rd = icmp ne ptr %i.qw, null, !nosanitize !9 ; 2 uses
  %i.re = icmp eq i64 %i.rc, 0
  %i.rf = xor i1 %i.rd, %i.re
  %i.rg = icmp uge i64 %i.rc, %i.rb, !nosanitize !9
  %i.rh = icmp slt i32 %i.qt, 0
  %i.ri = xor i1 %i.rh, %i.rg
  %i.rj = and i1 %i.rf, %i.ri, !nosanitize !9
  br i1 %i.rj, label %bb.aw, label %.split867.us, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.rk = ptrtoint ptr %i.qz to i64, !nosanitize !9 ; 2 uses
  %i.rl = and i64 %i.rk, 3, !nosanitize !9
  %i.rm = icmp eq i64 %i.rl, 0, !nosanitize !9
  %i.rn = and i1 %i.rd, %i.rm
  br i1 %i.rn, label %bb.ax, label %.split871.us, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.ro = shl nuw nsw i64 %indvars.iv1353, 3
  %i.rp = add i64 %i.ro, %i.qa, !nosanitize !9    ; 2 uses
  %.not291.us.us = icmp ult i64 %i.rp, %i.qa, !nosanitize !9
  br i1 %.not291.us.us, label %.split874.us, label %bb.ay, !prof !97, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %indvars.iv1353
  %i.rr = load i64, ptr %i.rq, align 4, !tbaa !103
  store i64 %i.rr, ptr %i.qz, align 4, !tbaa !103
  %.pre1109 = load i32, ptr %i.pm, align 4, !tbaa !180
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ap
  %i.rs = phi i32 [ %.pre1109, %bb.ay ], [ %i.qb, %bb.ap ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1353, 1 ; 3 uses
  %i.rt = sext i32 %i.rs to i64
  %i.ru = icmp slt i64 %indvars.iv.next, %i.rt
  br i1 %i.ru, label %.lr.ph840.split.us.split.us, label %._crit_edge841, !llvm.loop !387

._crit_edge841:                                   ; preds = %bb.az, %bb.bc, %bb.bf, %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bu, %bb.bx, %.loopexit.._crit_edge841_crit_edge
  %.pre-phi1114 = phi i64 [ %.pre1113, %.loopexit.._crit_edge841_crit_edge ], [ %i.pt, %bb.bf ], [ %i.pt, %bb.bc ], [ %i.pt, %bb.bx ], [ %i.pt, %bb.bu ], [ %i.pt, %bb.br ], [ %i.pt, %bb.bo ], [ %i.pt, %bb.bl ], [ %i.pt, %bb.bi ], [ 0, %bb.az ]
  %.pre-phi1112 = phi i64 [ %.pre1111, %.loopexit.._crit_edge841_crit_edge ], [ %i.ps, %bb.bf ], [ %i.ps, %bb.bc ], [ %i.ps, %bb.bx ], [ %i.ps, %bb.bu ], [ %i.ps, %bb.br ], [ %i.ps, %bb.bo ], [ %i.ps, %bb.bl ], [ %i.ps, %bb.bi ], [ %i.ps, %bb.az ]
  %i.rv = icmp ne ptr %2, null, !nosanitize !9
  %i.rw = icmp eq i64 %.pre-phi1114, 0, !nosanitize !9
  %i.rx = and i1 %i.rv, %i.rw, !nosanitize !9
  br i1 %i.rx, label %bb.bz, label %bb.by, !prof !10, !nosanitize !9

.split843.us:                                     ; preds = %.lr.ph840.split.us.split.us, %bb.bx
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @374, i64 8) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split845.us:                                     ; preds = %.lr.ph840.split.us, %bb.bd, %bb.bg, %bb.bj, %bb.bm, %bb.bp, %bb.bs, %bb.bv
  %.us-phi847 = phi i64 [ %i.sd, %bb.bd ], [ %i.sx, %bb.bs ], [ %i.tb, %bb.bv ], [ %i.sh, %bb.bg ], [ %i.st, %bb.bp ], [ %i.sp, %bb.bm ], [ %i.sl, %bb.bj ], [ %i.qd, %.lr.ph840.split.us ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @375, i64 %i.pq, i64 %.us-phi847) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ba:                                            ; preds = %.lr.ph840
  %i.ry = load float, ptr %i.ec, align 8          ; 8 uses
  %i.rz = load float, ptr %i.pp, align 4, !tbaa !146
  %i.sa = fcmp olt float %i.rz, %i.ry
  br i1 %i.sa, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.be, %bb.ba
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @376, i64 %i.ps) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split861.us:                                     ; preds = %bb.as
  %i.sb = zext i32 %i.qj to i64, !nosanitize !9
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @377, i64 2, i64 %i.sb) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split864.us:                                     ; preds = %bb.au
  %i.sc = zext nneg i32 %i.qt to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @378, i64 %i.sc, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9
end_hunk_1
