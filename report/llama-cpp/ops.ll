Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 221
loop-unroll.NumUnrolled: 268
begin_hunk_0_@ggml_compute_forward_out_prod:bb.a

vector.body216:                                   ; preds = %vector.body216, %vector.ph212
  %index217 = phi i64 [ 0, %vector.ph212 ], [ %index.next226, %vector.body216 ] ; 2 uses
  %i.tv = add i64 %index217, %i.nh                ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.tv ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 96
  %wide.load218 = load <8 x float>, ptr %i.tw, align 4, !tbaa !43, !alias.scope !748, !noalias !747
  %wide.load219 = load <8 x float>, ptr %i.tx, align 4, !tbaa !43, !alias.scope !748, !noalias !747
  %wide.load220 = load <8 x float>, ptr %i.ty, align 4, !tbaa !43, !alias.scope !748, !noalias !747
  %wide.load221 = load <8 x float>, ptr %i.tz, align 4, !tbaa !43, !alias.scope !748, !noalias !747
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.tv ; 5 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 32 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 64 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 96 ; 2 uses
  %wide.load222 = load <8 x float>, ptr %i.ua, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %wide.load223 = load <8 x float>, ptr %i.ub, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %wide.load224 = load <8 x float>, ptr %i.uc, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %wide.load225 = load <8 x float>, ptr %i.ud, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %i.ue = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load218, <8 x float> %broadcast.splat215, <8 x float> %wide.load222)
  %i.uf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load219, <8 x float> %broadcast.splat215, <8 x float> %wide.load223)
  %i.ug = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load220, <8 x float> %broadcast.splat215, <8 x float> %wide.load224)
  %i.uh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load221, <8 x float> %broadcast.splat215, <8 x float> %wide.load225)
  store <8 x float> %i.ue, ptr %i.ua, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  store <8 x float> %i.uf, ptr %i.ub, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  store <8 x float> %i.ug, ptr %i.uc, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  store <8 x float> %i.uh, ptr %i.ud, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %index.next226 = add nuw i64 %index217, 32      ; 2 uses
  %i.ui = icmp eq i64 %index.next226, %n.vec213
  br i1 %i.ui, label %middle.block227, label %vector.body216, !llvm.loop !719

middle.block227:                                  ; preds = %vector.body216
  br i1 %cmp.n228, label %_ZL16ggml_vec_mad_f32iPfPKff.exit.loopexit.i17, label %vec.epilog.iter.check232

vec.epilog.iter.check232:                         ; preds = %middle.block227
  br i1 %min.epilog.iters.check233, label %.lr.ph.i181.i.preheader, label %vec.epilog.ph234, !prof !50

vec.epilog.ph234:                                 ; preds = %vector.main.loop.iter.check210, %vec.epilog.iter.check232
  %vec.epilog.resume.val229 = phi i64 [ %n.vec213, %vec.epilog.iter.check232 ], [ 0, %vector.main.loop.iter.check210 ]
  %broadcast.splatinsert236 = insertelement <8 x float> poison, float %i.tu, i64 0
  %broadcast.splat237 = shufflevector <8 x float> %broadcast.splatinsert236, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph234
  %index239 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph234 ], [ %index.next242, %vec.epilog.vector.body238 ] ; 2 uses
  %i.uj = add i64 %index239, %i.nh                ; 2 uses
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.uj
  %wide.load240 = load <8 x float>, ptr %i.uk, align 4, !tbaa !43, !alias.scope !748, !noalias !747
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.uj ; 2 uses
  %wide.load241 = load <8 x float>, ptr %i.ul, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %i.um = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load240, <8 x float> %broadcast.splat237, <8 x float> %wide.load241)
  store <8 x float> %i.um, ptr %i.ul, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %index.next242 = add nuw i64 %index239, 8       ; 2 uses
  %i.un = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.un, label %vec.epilog.middle.block243, label %vec.epilog.vector.body238, !llvm.loop !720

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body238
  br i1 %cmp.n244, label %_ZL16ggml_vec_mad_f32iPfPKff.exit.loopexit.i17, label %.lr.ph.i181.i.preheader

.lr.ph.i181.i.preheader:                          ; preds = %iter.check230, %vec.epilog.iter.check232, %vec.epilog.middle.block243
  %indvars.iv40.i.i15.ph = phi i64 [ %i.nh, %iter.check230 ], [ %i.sd, %vec.epilog.iter.check232 ], [ %i.sf, %vec.epilog.middle.block243 ]
  br label %.lr.ph.i181.i

.lr.ph.i181.i:                                    ; preds = %.lr.ph.i181.i.preheader, %.lr.ph.i181.i
  %indvars.iv40.i.i15 = phi i64 [ %indvars.iv.next41.i.i16, %.lr.ph.i181.i ], [ %indvars.iv40.i.i15.ph, %.lr.ph.i181.i.preheader ] ; 3 uses
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.my, i64 %indvars.iv40.i.i15
  %i.up = load float, ptr %i.uo, align 4, !tbaa !43, !alias.scope !748, !noalias !747
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %indvars.iv40.i.i15 ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %i.us = tail call float @llvm.fmuladd.f32(float %i.up, float %i.tu, float %i.ur)
  store float %i.us, ptr %i.uq, align 4, !tbaa !43, !alias.scope !747, !noalias !748
  %indvars.iv.next41.i.i16 = add nsw i64 %indvars.iv40.i.i15, 1 ; 2 uses
  %i.ut = icmp slt i64 %indvars.iv.next41.i.i16, %i.ni
  br i1 %i.ut, label %.lr.ph.i181.i, label %_ZL16ggml_vec_mad_f32iPfPKff.exit.loopexit.i17, !llvm.loop !721

_ZL16ggml_vec_mad_f32iPfPKff.exit.loopexit.i17:   ; preds = %.lr.ph.i181.i, %vec.epilog.middle.block243, %middle.block227
  %i.uu = add nuw nsw i64 %.0196.i, 1             ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %i.uu, %i.jn
  br i1 %exitcond.not.i18, label %._crit_edge.split.split.i19, label %iter.check230, !llvm.loop !714

.thread245.i:                                     ; preds = %bb.a
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !24 ; 10 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !31 ; 5 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !31 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !31 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !31 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !31
  %i.vh = icmp eq i64 %i.vg, 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !31 ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !31 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !31 ; 2 uses
  %.not228.i = icmp eq ptr %i.uw, null
  br i1 %.not228.i, label %.thread251.i, label %bb.aq

bb.aq:                                            ; preds = %.thread245.i
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !31
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uw, i64 32
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !31
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uw, i64 40
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !31
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uw, i64 48
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !31
  %i.vw = getelementptr inbounds nuw i8, ptr %i.uw, i64 56
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !31
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uw, i64 64
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !31
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uw, i64 72
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !31
  br label %.thread251.i

.thread251.i:                                     ; preds = %bb.aq, %.thread245.i
  %i.wc = phi i64 [ %i.vz, %bb.aq ], [ 0, %.thread245.i ] ; 2 uses
  %i.wd = phi i64 [ %i.vv, %bb.aq ], [ 0, %.thread245.i ] ; 2 uses
  %i.we = phi i64 [ %i.vr, %bb.aq ], [ 0, %.thread245.i ] ; 4 uses
  %i.wf = phi i64 [ %i.vp, %bb.aq ], [ 0, %.thread245.i ] ; 5 uses
  %i.wg = phi i64 [ %i.vt, %bb.aq ], [ 0, %.thread245.i ] ; 5 uses
  %i.wh = phi i64 [ %i.vx, %bb.aq ], [ 0, %.thread245.i ] ; 4 uses
  %i.wi = phi i64 [ %i.wb, %bb.aq ], [ 0, %.thread245.i ] ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !31
  %i.wl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !31
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !31
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !31
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !31
  %i.wt = icmp eq i64 %i.ws, 4
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !31 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !31 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !31 ; 2 uses
  %i.xa = load i32, ptr %1, align 8, !tbaa !30
  %i.xb = icmp eq i32 %i.xa, 0
  br i1 %i.xb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.thread251.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4380, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.as:                                            ; preds = %.thread251.i
  %i.xc = load i32, ptr %i.uw, align 8, !tbaa !30
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4382, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.xe = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !36
  %i.xh = icmp eq i64 %i.wk, %i.uy
  br i1 %i.xh, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4387, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #17
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.xi = icmp eq i64 %i.wm, %i.wf
  br i1 %i.xi, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4388, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.75) #17
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.xj = icmp eq i64 %i.wo, %i.we
  br i1 %i.xj, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4389, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73) #17
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.xk = icmp eq i64 %i.wq, %i.wg
  br i1 %i.xk, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4390, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.74) #17
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.xl = srem i64 %i.we, %i.vc
  %i.xm = sdiv exact i64 %i.we, %i.vc
  %i.xn = icmp eq i64 %i.xl, 0
  br i1 %i.xn, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4392, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.76) #17
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.xo = srem i64 %i.wg, %i.ve
  %i.xp = sdiv exact i64 %i.wg, %i.ve
  %i.xq = icmp eq i64 %i.xo, 0
  br i1 %i.xq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4393, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.77) #17
  unreachable

bb.bg:                                            ; preds = %bb.be
  br i1 %i.vh, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4396, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.29) #17
  unreachable

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.wt, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4399, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #17
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.xr = icmp eq i32 %i.xe, 0
  %i.xs = mul i64 %i.wf, %i.we                    ; 5 uses
  br i1 %i.xr, label %bb.bl, label %_ZL16ggml_vec_set_f32iPff.exit.i34

bb.bl:                                            ; preds = %bb.bk
  %i.xt = mul i64 %i.xs, %i.uy
  %i.xu = mul nsw i64 %i.xt, %i.wg                ; 2 uses
  %i.xv = trunc i64 %i.xu to i32
  %i.xw = icmp sgt i32 %i.xv, 0
  br i1 %i.xw, label %.lr.ph.preheader.i.i41, label %_ZL16ggml_vec_set_f32iPff.exit.i34

.lr.ph.preheader.i.i41:                           ; preds = %bb.bl
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !37
  %wide.trip.count.i.i42 = shl i64 %i.xu, 2
  %i.xz = and i64 %wide.trip.count.i.i42, 8589934588
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xy, i8 0, i64 %i.xz, i1 false), !tbaa !43
  br label %_ZL16ggml_vec_set_f32iPff.exit.i34

_ZL16ggml_vec_set_f32iPff.exit.i34:               ; preds = %.lr.ph.preheader.i.i41, %bb.bl, %bb.bk
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.yb)
  %i.yc = mul nsw i64 %i.xs, %i.wg                ; 2 uses
  %i.yd = sext i32 %i.xg to i64                   ; 2 uses
  %i.ye = add i64 %i.yc, -1
  %i.yf = add i64 %i.ye, %i.yd
  %i.yg = sdiv i64 %i.yf, %i.yd                   ; 2 uses
  %i.yh = sext i32 %i.xe to i64
  %i.yi = mul nsw i64 %i.yg, %i.yh                ; 3 uses
  %i.yj = add nsw i64 %i.yi, %i.yg
  %i.yk = tail call i64 @llvm.smin.i64(i64 %i.yj, i64 %i.yc) ; 3 uses
  %i.yl = icmp slt i64 %i.yi, %i.yk
  br i1 %i.yl, label %.lr.ph269.i, label %_ZL35ggml_compute_forward_out_prod_q_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph269.i:                                      ; preds = %_ZL16ggml_vec_set_f32iPff.exit.i34
  %i.ym = icmp sgt i64 %i.va, 0
  %i.yn = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.uw, i64 248 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %i.yq = trunc i64 %i.uy to i32                  ; 3 uses
  %sext252.i = shl i64 %i.vj, 32                  ; 5 uses
  %i.yr = ashr exact i64 %sext252.i, 32           ; 27 uses
  %sext253.i = shl i64 %i.wh, 32                  ; 5 uses
  %i.ys = ashr exact i64 %sext253.i, 32           ; 27 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.yv = ashr exact i64 %sext252.i, 31
  %i.yw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.yx = ashr exact i64 %sext253.i, 31
  %i.yy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.yz = mul nsw i64 %i.yr, 3
  %i.za = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.zb = mul nsw i64 %i.ys, 3
  %i.zc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.zd = ashr exact i64 %sext252.i, 30
  %i.ze = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.zf = ashr exact i64 %sext253.i, 30
  %i.zg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.zh = mul nsw i64 %i.yr, 5
  %i.zi = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.zj = mul nsw i64 %i.ys, 5
  %i.zk = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.zl = mul nsw i64 %i.yr, 6
  %i.zm = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.zn = mul nsw i64 %i.ys, 6
  %i.zo = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.zp = mul nsw i64 %i.yr, 7
  %i.zq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.zr = mul nsw i64 %i.ys, 7
  %i.zs = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.zt = ashr exact i64 %sext252.i, 29
  %i.zu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.zv = ashr exact i64 %sext253.i, 29
  %i.zw = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.zx = mul nsw i64 %i.yr, 9
  %i.zy = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.zz = mul nsw i64 %i.ys, 9
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aab = mul nsw i64 %i.yr, 10
  %i.aac = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.aad = mul nsw i64 %i.ys, 10
  %i.aae = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.aaf = mul nsw i64 %i.yr, 11
  %i.aag = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aah = mul nsw i64 %i.ys, 11
  %i.aai = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aaj = mul nsw i64 %i.yr, 12
  %i.aak = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.aal = mul nsw i64 %i.ys, 12
  %i.aam = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aan = mul nsw i64 %i.yr, 13
  %i.aao = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.aap = mul nsw i64 %i.ys, 13
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aar = mul nsw i64 %i.yr, 14
  %i.aas = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.aat = mul nsw i64 %i.ys, 14
  %i.aau = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aav = mul nsw i64 %i.yr, 15
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.aax = mul nsw i64 %i.ys, 15
  %i.aay = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.aaz = ashr exact i64 %sext252.i, 28
  %i.aba = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.abb = ashr exact i64 %sext253.i, 28
  %i.abc = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.abd = mul nsw i64 %i.yr, 17
  %i.abe = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.abf = mul nsw i64 %i.ys, 17
  %i.abg = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.abh = mul nsw i64 %i.yr, 18
  %i.abi = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.abj = mul nsw i64 %i.ys, 18
  %i.abk = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.abl = mul nsw i64 %i.yr, 19
  %i.abm = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.abn = mul nsw i64 %i.ys, 19
  %i.abo = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.abp = mul nsw i64 %i.yr, 20
  %i.abq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.abr = mul nsw i64 %i.ys, 20
  %i.abs = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.abt = mul nsw i64 %i.yr, 21
  %i.abu = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.abv = mul nsw i64 %i.ys, 21
  %i.abw = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.abx = mul nsw i64 %i.yr, 22
  %i.aby = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.abz = mul nsw i64 %i.ys, 22
  %i.aca = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.acb = mul nsw i64 %i.yr, 23
  %i.acc = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.acd = mul nsw i64 %i.ys, 23
  %i.ace = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.acf = mul nsw i64 %i.yr, 24
  %i.acg = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ach = mul nsw i64 %i.ys, 24
  %i.aci = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.acj = mul nsw i64 %i.yr, 25
  %i.ack = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.acl = mul nsw i64 %i.ys, 25
  %i.acm = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.acn = mul nsw i64 %i.yr, 26
  %i.aco = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.acp = mul nsw i64 %i.ys, 26
  %i.acq = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.acr = mul nsw i64 %i.yr, 27
  %i.acs = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.act = mul nsw i64 %i.ys, 27
  %i.acu = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.acv = mul nsw i64 %i.yr, 28
  %i.acw = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.acx = mul nsw i64 %i.ys, 28
  %i.acy = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.acz = mul nsw i64 %i.yr, 29
  %i.ada = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.adb = mul nsw i64 %i.ys, 29
  %i.adc = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.add = mul nsw i64 %i.yr, 30
  %i.ade = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.adf = mul nsw i64 %i.ys, 30
  %i.adg = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.adh = mul nsw i64 %i.yr, 31
  %i.adi = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.adj = mul nsw i64 %i.ys, 31
  %i.adk = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.adl = and i32 %i.yq, -64                     ; 2 uses
  %i.adm = icmp sgt i32 %i.yq, 63                 ; 2 uses
  %i.adn = and i64 %i.uy, 2147483584              ; 2 uses
  %.not.i.i35 = icmp eq i32 %i.adl, %i.yq         ; 3 uses
  %i.ado = sext i32 %i.adl to i64                 ; 17 uses
  %sext254.i = shl i64 %i.uy, 32
  %i.adp = ashr exact i64 %sext254.i, 32          ; 4 uses
  br i1 %i.ym, label %.lr.ph264.preheader.i.preheader, label %_ZL35ggml_compute_forward_out_prod_q_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph264.preheader.i.preheader:                  ; preds = %.lr.ph269.i
  %i.adq = or disjoint i64 %i.ado, 1
end_hunk_0
begin_hunk_1_@ggml_compute_forward_im2col:bb.a
_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge204.split211.us.split.us.us.us.i, %._crit_edge266.split276.us.split.us.us.us.i, %.preheader175.lr.ph.split.split.split.i, %.preheader175.lr.ph.i, %bb.x, %.preheader202.lr.ph.split.split.split.i, %.preheader202.lr.ph.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_im2col_back_f32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6674, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !30
  %switch = icmp ult i32 %i.g, 2
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6675, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.113) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 8, !tbaa !30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6676, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %.fr305 = freeze i32 %i.au
  %i.av = icmp eq i32 %.fr305, 1                  ; 8 uses
  %i.aw = load i32, ptr %0, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.az = select i1 %i.av, i64 %i.y, i64 %i.w     ; 12 uses
  %i.ba = select i1 %i.av, i64 %i.w, i64 %i.u     ; 19 uses
  %i.bb = select i1 %i.av, i64 %i.u, i64 1        ; 5 uses
  %i.bc = select i1 %i.av, i64 %i.q, i64 1        ; 4 uses
  %.fr306 = freeze i64 %i.m
  %i.bd = select i1 %i.av, i64 %.fr306, i64 1     ; 3 uses
  %i.be = select i1 %i.av, i64 %i.ag, i64 %i.ae
  %i.bf = select i1 %i.av, i64 %i.ae, i64 %i.ac
  %i.bg = icmp eq i64 %i.aa, 4
  br i1 %i.bg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6705, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 17 uses
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge281.split

.lr.ph:                                           ; preds = %bb.i
  %factor.op.mul278 = mul i64 %i.bc, %i.o         ; 3 uses
  %i.bk = sext i32 %i.aw to i64                   ; 18 uses
  %factor.op.mul257.reass = mul i64 %factor.op.mul278, %i.ba ; 4 uses
  %i.bl = icmp sle i64 %i.ba, %i.bk
  %i.bm = icmp slt i64 %i.s, 1
  %i.bn = icmp sgt i64 %i.o, 0
  %i.bo = sext i32 %i.am to i64                   ; 2 uses
  %i.bp = sext i32 %i.aq to i64
  %factor.op.mul193 = sub nsw i64 0, %i.bp        ; 4 uses
  %i.bq = sext i32 %i.ai to i64                   ; 8 uses
  %i.br = sext i32 %i.ao to i64
  %i.bs = sext i32 %i.as to i64
  %i.bt = sext i32 %i.ak to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 4 uses
  %.not177 = icmp sgt i64 %i.bd, 0
  %sext = shl i64 %i.be, 32
  %i.bv = ashr exact i64 %sext, 32                ; 17 uses
  %sext175 = shl i64 %i.bf, 32
  %i.bw = ashr exact i64 %sext175, 32             ; 17 uses
  %i.bx = sext i32 %i.ay to i64                   ; 17 uses
  %i.by = icmp slt i64 %i.bb, 1
  %or.cond354.not357 = select i1 %i.bl, i1 true, i1 %i.by
  %brmerge = select i1 %or.cond354.not357, i1 true, i1 %i.bm
  br i1 %brmerge, label %._crit_edge281.split, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph
  %i.bz = icmp sgt i64 %i.bc, 0
  br i1 %i.bz, label %.lr.ph.split.split.us.split.us.split.us, label %.preheader186.lr.ph.us.us.preheader

.preheader186.lr.ph.us.us.preheader:              ; preds = %.lr.ph.split.split.us.split.us
  %i.ca = mul i64 %i.bb, %i.s
  %i.cb = shl i64 %i.ca, 2                        ; 5 uses
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.cc = icmp ult i64 %i.az, 4
  br i1 %i.cc, label %.preheader186.lr.ph.us.us.epil.preheader, label %.preheader186.lr.ph.us.us.preheader.new

.preheader186.lr.ph.us.us.preheader.new:          ; preds = %.preheader186.lr.ph.us.us.preheader
  %unroll_iter = and i64 %i.az, 9223372036854775804
  br label %.preheader186.lr.ph.us.us

.lr.ph.split.split.us.split.us.split.us:          ; preds = %.lr.ph.split.split.us.split.us
  br i1 %i.bn, label %.lr.ph.split.split.us.split.us.split.us.split.us, label %.preheader186.lr.ph.us.us.us.preheader

.preheader186.lr.ph.us.us.us.preheader:           ; preds = %.lr.ph.split.split.us.split.us.split.us
  %i.cd = mul i64 %i.bb, %i.s
  %i.ce = shl i64 %i.cd, 2                        ; 5 uses
  %xtraiter367 = and i64 %i.az, 3                 ; 3 uses
  %i.cf = icmp ult i64 %i.az, 4
  br i1 %i.cf, label %.preheader186.lr.ph.us.us.us.epil.preheader, label %.preheader186.lr.ph.us.us.us.preheader.new

.preheader186.lr.ph.us.us.us.preheader.new:       ; preds = %.preheader186.lr.ph.us.us.us.preheader
  %unroll_iter371 = and i64 %i.az, 9223372036854775804
  br label %.preheader186.lr.ph.us.us.us

.lr.ph.split.split.us.split.us.split.us.split.us: ; preds = %.lr.ph.split.split.us.split.us.split.us
  br i1 %i.av, label %.preheader186.lr.ph.us.us.us.us.us, label %.lr.ph.split.split.us.split.us.split.us.split.us.split

.preheader186.lr.ph.us.us.us.us.us:               ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us, %._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us
  %.0166279.us.us.us.us.us = phi i64 [ %i.ds, %._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us ], [ 0, %.lr.ph.split.split.us.split.us.split.us.split.us ] ; 3 uses
  %i.cg = mul nuw nsw i64 %.0166279.us.us.us.us.us, %i.bd
  %i.ch = mul nsw i64 %.0166279.us.us.us.us.us, %i.bv
  %i.ci = getelementptr i8, ptr %i.bi, i64 %i.ch
  br label %.preheader186.us.us.us.us.us.us.us.us.us.us

.preheader186.us.us.us.us.us.us.us.us.us.us:      ; preds = %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.lr.ph.us.us.us.us.us
  %.0164258.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.bk, %.preheader186.lr.ph.us.us.us.us.us ], [ %i.dq, %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %factor.op.mul226.reass.us.us.us.us.us.us.us.us.us.us = mul i64 %factor.op.mul278, %.0164258.us.us.us.us.us.us.us.us.us.us
  %i.cj = mul nsw i64 %.0164258.us.us.us.us.us.us.us.us.us.us, %i.bw
  %i.ck = getelementptr i8, ptr %i.ci, i64 %i.cj
  br label %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.us.us.us.us.us.us.us.us.us.us
  %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader186.us.us.us.us.us.us.us.us.us.us ], [ %i.dp, %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.cl = add nsw i64 %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.br
  %i.cm = mul nuw nsw i64 %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.s
  %i.cn = getelementptr [4 x i8], ptr %i.ck, i64 %i.cm
  br label %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.do, %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.co = add nsw i64 %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.bo
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.dm, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.0160205.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %i.cp = mul i64 %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.bs
  %i.cq = sub i64 %i.cl, %i.cp                    ; 2 uses
  %i.cr = mul nuw nsw i64 %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.dl, %bb.n ] ; 3 uses
  %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.0160205.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.n ] ; 4 uses
  %.reass194.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = mul i64 %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %factor.op.mul193
  %i.cs = add i64 %i.co, %.reass194.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ; 2 uses
  %i.ct = srem i64 %i.cs, %i.bq
  %i.cu = sdiv exact i64 %i.cs, %i.bq             ; 3 uses
  %.not.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.ct, 0
  br i1 %.not.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cv = srem i64 %i.cq, %i.bt
  %i.cw = sdiv exact i64 %i.cq, %i.bt             ; 3 uses
  %.not176.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp ne i64 %i.cv, 0
  %i.cx = icmp slt i64 %i.cu, 0
  %or.cond389 = select i1 %.not176.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i1 true, i1 %i.cx
  br i1 %or.cond389, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = icmp slt i64 %i.cu, %i.k
  %i.cz = icmp sgt i64 %i.cw, -1
  %.not177.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp slt i64 %i.cw, %i.bd
  %or.cond178.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.a = and i1 %i.cz, %.not177.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %or.cond178.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = select i1 %i.cy, i1 %or.cond178.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.a, i1 false
  br i1 %or.cond178.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.db = add i64 %i.cw, %i.cg
  %i.dc = mul i64 %i.db, %i.k
  %i.dd = add nsw i64 %i.dc, %i.cu
  %i.de = mul nsw i64 %factor.op.mul257.reass, %i.dd
  %i.df = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.de
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %factor.op.mul226.reass.us.us.us.us.us.us.us.us.us.us
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.cr
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dj = load float, ptr %i.di, align 4, !tbaa !43
  %i.dk = fadd float %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.dj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.j ], [ %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.k ], [ %i.dk, %bb.m ], [ %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.l ] ; 3 uses
  %i.dl = add nuw nsw i64 %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %i.dl, %i.o
  br i1 %exitcond320.not, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.j, !llvm.loop !1044

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.n
  %i.dm = add nuw nsw i64 %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %i.dm, %i.bc
  br i1 %exitcond321.not, label %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1045

._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dn = getelementptr [4 x i8], ptr %i.cn, i64 %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  store float %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.dn, align 4, !tbaa !43
  %i.do = add nuw nsw i64 %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %i.do, %i.s
  br i1 %exitcond322.not, label %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1046

._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dp = add nuw nsw i64 %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %i.dp, %i.bb
  br i1 %exitcond323.not, label %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us, label %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1047

._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dq = add nsw i64 %.0164258.us.us.us.us.us.us.us.us.us.us, %i.bx ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %i.ba
  br i1 %i.dr, label %.preheader186.us.us.us.us.us.us.us.us.us.us, label %._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us: ; preds = %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us
  %i.ds = add nuw nsw i64 %.0166279.us.us.us.us.us, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %i.ds, %i.az
  br i1 %exitcond324.not, label %._crit_edge281.split, label %.preheader186.lr.ph.us.us.us.us.us, !llvm.loop !1049

.lr.ph.split.split.us.split.us.split.us.split.us.split: ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us
  br i1 %.not177, label %.preheader186.lr.ph.us.us.us.us.us303.preheader, label %.preheader186.lr.ph.us.us.us.us.preheader

.preheader186.lr.ph.us.us.us.us.us303.preheader:  ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us.split
  %xtraiter379 = and i64 %i.o, 1
  %i.dt = icmp eq i64 %i.o, 1
  %unroll_iter384 = and i64 %i.o, 9223372036854775806
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  %lcmp.mod383 = trunc i64 %i.o to i1
  br label %.preheader186.lr.ph.us.us.us.us.us303

.preheader186.lr.ph.us.us.us.us.preheader:        ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us.split
  %i.du = shl i64 %i.s, 2                         ; 5 uses
  %xtraiter373 = and i64 %i.az, 3                 ; 3 uses
  %i.dv = icmp ult i64 %i.az, 4
  br i1 %i.dv, label %.preheader186.lr.ph.us.us.us.us.epil.preheader, label %.preheader186.lr.ph.us.us.us.us.preheader.new

.preheader186.lr.ph.us.us.us.us.preheader.new:    ; preds = %.preheader186.lr.ph.us.us.us.us.preheader
  %unroll_iter377 = and i64 %i.az, 9223372036854775804
  br label %.preheader186.lr.ph.us.us.us.us

.preheader186.lr.ph.us.us.us.us.us303:            ; preds = %.preheader186.lr.ph.us.us.us.us.us303.preheader, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us
  %.0166279.us.us.us.us.us304 = phi i64 [ %i.gc, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us ], [ 0, %.preheader186.lr.ph.us.us.us.us.us303.preheader ] ; 3 uses
  %.reass.us = mul i64 %.0166279.us.us.us.us.us304, %i.k ; 3 uses
  %i.dw = mul nsw i64 %.0166279.us.us.us.us.us304, %i.bv
  %i.dx = getelementptr i8, ptr %i.bi, i64 %i.dw
  br label %.preheader186.us.us.us.us.us275.us.us.us.us.us

.preheader186.us.us.us.us.us275.us.us.us.us.us:   ; preds = %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.lr.ph.us.us.us.us.us303
  %.0164258.us.us.us.us.us276.us.us.us.us.us = phi i64 [ %i.bk, %.preheader186.lr.ph.us.us.us.us.us303 ], [ %i.ga, %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us = mul i64 %factor.op.mul278, %.0164258.us.us.us.us.us276.us.us.us.us.us ; 3 uses
  %i.dy = mul nsw i64 %.0164258.us.us.us.us.us276.us.us.us.us.us, %i.bw
  %i.dz = getelementptr i8, ptr %i.dx, i64 %i.dy
  br label %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us

.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.us.us.us.us.us275.us.us.us.us.us
  %.0163241.us.us.us256.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader186.us.us.us.us.us275.us.us.us.us.us ], [ %i.fz, %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %i.ea = mul nuw nsw i64 %.0163241.us.us.us256.us.us.us.us.us.us.us.us.us.us, %i.s
  %i.eb = getelementptr [4 x i8], ptr %i.dz, i64 %i.ea
  br label %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us
  %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us ], [ %i.fy, %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.ec = add nsw i64 %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.bo ; 3 uses
  br label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0159206.us.us222.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.fw, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.0160205.us.us223.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %i.ed = mul nuw nsw i64 %.0159206.us.us222.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.o ; 3 uses
  br i1 %i.dt, label %.epil.preheader, label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new

.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new: ; preds = %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.t
  %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.fh, %bb.t ], [ 0, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.t ], [ %.0160205.us.us223.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %niter385 = phi i64 [ %niter385.next.1, %bb.t ], [ 0, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = mul i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %factor.op.mul193
  %i.ee = add i64 %i.ec, %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ; 2 uses
  %i.ef = srem i64 %i.ee, %i.bq
  %i.eg = sdiv exact i64 %i.ee, %i.bq             ; 3 uses
  %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.ef, 0
  br i1 %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new
  %i.eh = icmp sgt i64 %i.eg, -1
  %i.ei = icmp slt i64 %i.eg, %i.k
  %or.cond = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ej = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.ek = add nsw i64 %.reass.us, %i.eg
  %i.el = mul nsw i64 %factor.op.mul257.reass, %i.ek
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.el
  %i.en = getelementptr [4 x i8], ptr %i.em, i64 %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %i.ed
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !43
  %i.er = fadd float %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.eq
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new
  %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new ], [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.o ], [ %i.er, %bb.p ] ; 3 uses
  %i.es = or disjoint i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = mul i64 %i.es, %factor.op.mul193
  %i.et = add i64 %i.ec, %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ; 2 uses
  %i.eu = srem i64 %i.et, %i.bq
  %i.ev = sdiv exact i64 %i.et, %i.bq             ; 3 uses
  %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i64 %i.eu, 0
  br i1 %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ew = icmp sgt i64 %i.ev, -1
  %i.ex = icmp slt i64 %i.ev, %i.k
  %or.cond.1 = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ey = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.ez = add nsw i64 %.reass.us, %i.ev
  %i.fa = mul nsw i64 %factor.op.mul257.reass, %i.ez
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = getelementptr [4 x i8], ptr %i.fb, i64 %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us
  %i.fd = getelementptr [4 x i8], ptr %i.fc, i64 %i.ed
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %i.es
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !43
  %i.fg = fadd float %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.ff
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi float [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.q ], [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.r ], [ %i.fg, %bb.s ] ; 3 uses
  %i.fh = add nuw nsw i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter385.next.1 = add nuw nsw i64 %niter385, 2 ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new, !llvm.loop !1044

._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.t
  br i1 %lcmp.mod381.not, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.fh, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi float [ %.0160205.us.us223.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod383)
  %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = mul i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %factor.op.mul193
  %i.fi = add i64 %i.ec, %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil ; 2 uses
  %i.fj = srem i64 %i.fi, %i.bq
  %i.fk = sdiv exact i64 %i.fi, %i.bq             ; 3 uses
  %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i64 %i.fj, 0
  br i1 %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %bb.u, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.u:                                             ; preds = %.epil.preheader
  %i.fl = icmp sgt i64 %i.fk, -1
  %i.fm = icmp slt i64 %i.fk, %i.k
  %or.cond.epil = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.epil, label %bb.v, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.v:                                             ; preds = %bb.u
  %i.fn = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.fo = add nsw i64 %.reass.us, %i.fk
  %i.fp = mul nsw i64 %factor.op.mul257.reass, %i.fo
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fp
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.ed
  %i.ft = getelementptr [4 x i8], ptr %i.fs, i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !43
  %i.fv = fadd float %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %i.fu
  br label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.epil.preheader, %bb.u, %bb.v, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi float [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %bb.u ], [ %i.fv, %bb.v ] ; 2 uses
  %i.fw = add nuw nsw i64 %.0159206.us.us222.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %i.fw, %i.bc
  br i1 %exitcond316.not, label %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1045

._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.fx = getelementptr [4 x i8], ptr %i.eb, i64 %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us
  store float %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa, ptr %i.fx, align 4, !tbaa !43
  %i.fy = add nuw nsw i64 %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %i.fy, %i.s
  br i1 %exitcond317.not, label %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1046

._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.fz = add nuw nsw i64 %.0163241.us.us.us256.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %i.fz, %i.bb
  br i1 %exitcond318.not, label %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us, label %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1047

._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ga = add nsw i64 %.0164258.us.us.us.us.us276.us.us.us.us.us, %i.bx ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.ba
  br i1 %i.gb, label %.preheader186.us.us.us.us.us275.us.us.us.us.us, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us: ; preds = %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us
  %i.gc = add nuw nsw i64 %.0166279.us.us.us.us.us304, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %i.gc, %i.az
  br i1 %exitcond319.not, label %._crit_edge281.split, label %.preheader186.lr.ph.us.us.us.us.us303, !llvm.loop !1049

.preheader186.lr.ph.us.us.us.us:                  ; preds = %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3, %.preheader186.lr.ph.us.us.us.us.preheader.new
  %.0166279.us.us.us.us = phi i64 [ 0, %.preheader186.lr.ph.us.us.us.us.preheader.new ], [ %i.he, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3 ] ; 5 uses
  %niter378 = phi i64 [ 0, %.preheader186.lr.ph.us.us.us.us.preheader.new ], [ %niter378.next.3, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3 ]
  %i.gd = mul nsw i64 %.0166279.us.us.us.us, %i.bv
  %i.ge = getelementptr i8, ptr %i.bi, i64 %i.gd
  br label %.preheader186.us.us.us.us.us296.us.us.us

.preheader186.us.us.us.us.us296.us.us.us:         ; preds = %.preheader186.us.us.us.us.us296.us.us.us, %.preheader186.lr.ph.us.us.us.us
  %.0164258.us.us.us.us.us297.us.us.us = phi i64 [ %i.bk, %.preheader186.lr.ph.us.us.us.us ], [ %i.gh, %.preheader186.us.us.us.us.us296.us.us.us ] ; 2 uses
  %i.gf = mul i64 %.0164258.us.us.us.us.us297.us.us.us, %i.bw
  %i.gg = getelementptr i8, ptr %i.ge, i64 %i.gf
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gg, i8 0, i64 %i.du, i1 false), !tbaa !43
  %i.gh = add nsw i64 %.0164258.us.us.us.us.us297.us.us.us, %i.bx ; 2 uses
  %i.gi = icmp slt i64 %i.gh, %i.ba
  br i1 %i.gi, label %.preheader186.us.us.us.us.us296.us.us.us, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us: ; preds = %.preheader186.us.us.us.us.us296.us.us.us
  %i.gj = or disjoint i64 %.0166279.us.us.us.us, 1
  %i.gk = mul nsw i64 %i.gj, %i.bv
  %i.gl = getelementptr i8, ptr %i.bi, i64 %i.gk
  br label %.preheader186.us.us.us.us.us296.us.us.us.1

.preheader186.us.us.us.us.us296.us.us.us.1:       ; preds = %.preheader186.us.us.us.us.us296.us.us.us.1, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us
  %.0164258.us.us.us.us.us297.us.us.us.1 = phi i64 [ %i.bk, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us ], [ %i.go, %.preheader186.us.us.us.us.us296.us.us.us.1 ] ; 2 uses
  %i.gm = mul i64 %.0164258.us.us.us.us.us297.us.us.us.1, %i.bw
  %i.gn = getelementptr i8, ptr %i.gl, i64 %i.gm
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gn, i8 0, i64 %i.du, i1 false), !tbaa !43
  %i.go = add nsw i64 %.0164258.us.us.us.us.us297.us.us.us.1, %i.bx ; 2 uses
  %i.gp = icmp slt i64 %i.go, %i.ba
  br i1 %i.gp, label %.preheader186.us.us.us.us.us296.us.us.us.1, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1: ; preds = %.preheader186.us.us.us.us.us296.us.us.us.1
  %i.gq = or disjoint i64 %.0166279.us.us.us.us, 2
  %i.gr = mul nsw i64 %i.gq, %i.bv
  %i.gs = getelementptr i8, ptr %i.bi, i64 %i.gr
  br label %.preheader186.us.us.us.us.us296.us.us.us.2

.preheader186.us.us.us.us.us296.us.us.us.2:       ; preds = %.preheader186.us.us.us.us.us296.us.us.us.2, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1
  %.0164258.us.us.us.us.us297.us.us.us.2 = phi i64 [ %i.bk, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1 ], [ %i.gv, %.preheader186.us.us.us.us.us296.us.us.us.2 ] ; 2 uses
  %i.gt = mul i64 %.0164258.us.us.us.us.us297.us.us.us.2, %i.bw
  %i.gu = getelementptr i8, ptr %i.gs, i64 %i.gt
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gu, i8 0, i64 %i.du, i1 false), !tbaa !43
  %i.gv = add nsw i64 %.0164258.us.us.us.us.us297.us.us.us.2, %i.bx ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.ba
  br i1 %i.gw, label %.preheader186.us.us.us.us.us296.us.us.us.2, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2: ; preds = %.preheader186.us.us.us.us.us296.us.us.us.2
  %i.gx = or disjoint i64 %.0166279.us.us.us.us, 3
  %i.gy = mul nsw i64 %i.gx, %i.bv
  %i.gz = getelementptr i8, ptr %i.bi, i64 %i.gy
  br label %.preheader186.us.us.us.us.us296.us.us.us.3

.preheader186.us.us.us.us.us296.us.us.us.3:       ; preds = %.preheader186.us.us.us.us.us296.us.us.us.3, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2
  %.0164258.us.us.us.us.us297.us.us.us.3 = phi i64 [ %i.bk, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2 ], [ %i.hc, %.preheader186.us.us.us.us.us296.us.us.us.3 ] ; 2 uses
  %i.ha = mul i64 %.0164258.us.us.us.us.us297.us.us.us.3, %i.bw
  %i.hb = getelementptr i8, ptr %i.gz, i64 %i.ha
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hb, i8 0, i64 %i.du, i1 false), !tbaa !43
  %i.hc = add nsw i64 %.0164258.us.us.us.us.us297.us.us.us.3, %i.bx ; 2 uses
  %i.hd = icmp slt i64 %i.hc, %i.ba
  br i1 %i.hd, label %.preheader186.us.us.us.us.us296.us.us.us.3, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3: ; preds = %.preheader186.us.us.us.us.us296.us.us.us.3
  %i.he = add nuw nsw i64 %.0166279.us.us.us.us, 4 ; 2 uses
  %niter378.next.3 = add nuw nsw i64 %niter378, 4 ; 2 uses
  %niter378.ncmp.3 = icmp eq i64 %niter378.next.3, %unroll_iter377
  br i1 %niter378.ncmp.3, label %._crit_edge281.split.loopexit363.unr-lcssa, label %.preheader186.lr.ph.us.us.us.us, !llvm.loop !1049

.preheader186.lr.ph.us.us.us:                     ; preds = %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.3, %.preheader186.lr.ph.us.us.us.preheader.new
  %.0166279.us.us.us = phi i64 [ 0, %.preheader186.lr.ph.us.us.us.preheader.new ], [ %i.ig, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.3 ] ; 5 uses
  %niter372 = phi i64 [ 0, %.preheader186.lr.ph.us.us.us.preheader.new ], [ %niter372.next.3, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.3 ]
  %i.hf = mul nsw i64 %.0166279.us.us.us, %i.bv
  %i.hg = getelementptr i8, ptr %i.bi, i64 %i.hf
  br label %.preheader186.us.us.us.us291.us.us

.preheader186.us.us.us.us291.us.us:               ; preds = %.preheader186.us.us.us.us291.us.us, %.preheader186.lr.ph.us.us.us
  %.0164258.us.us.us.us292.us.us = phi i64 [ %i.bk, %.preheader186.lr.ph.us.us.us ], [ %i.hj, %.preheader186.us.us.us.us291.us.us ] ; 2 uses
  %i.hh = mul i64 %.0164258.us.us.us.us292.us.us, %i.bw
  %i.hi = getelementptr i8, ptr %i.hg, i64 %i.hh
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hi, i8 0, i64 %i.ce, i1 false), !tbaa !43
  %i.hj = add nsw i64 %.0164258.us.us.us.us292.us.us, %i.bx ; 2 uses
  %i.hk = icmp slt i64 %i.hj, %i.ba
  br i1 %i.hk, label %.preheader186.us.us.us.us291.us.us, label %._crit_edge.split274.us.split.us.split.us.split.us293.us.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us293.us.us: ; preds = %.preheader186.us.us.us.us291.us.us
  %i.hl = or disjoint i64 %.0166279.us.us.us, 1
  %i.hm = mul nsw i64 %i.hl, %i.bv
  %i.hn = getelementptr i8, ptr %i.bi, i64 %i.hm
  br label %.preheader186.us.us.us.us291.us.us.1

.preheader186.us.us.us.us291.us.us.1:             ; preds = %.preheader186.us.us.us.us291.us.us.1, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us
  %.0164258.us.us.us.us292.us.us.1 = phi i64 [ %i.bk, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us ], [ %i.hq, %.preheader186.us.us.us.us291.us.us.1 ] ; 2 uses
  %i.ho = mul i64 %.0164258.us.us.us.us292.us.us.1, %i.bw
  %i.hp = getelementptr i8, ptr %i.hn, i64 %i.ho
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hp, i8 0, i64 %i.ce, i1 false), !tbaa !43
  %i.hq = add nsw i64 %.0164258.us.us.us.us292.us.us.1, %i.bx ; 2 uses
  %i.hr = icmp slt i64 %i.hq, %i.ba
  br i1 %i.hr, label %.preheader186.us.us.us.us291.us.us.1, label %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.1, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us293.us.us.1: ; preds = %.preheader186.us.us.us.us291.us.us.1
  %i.hs = or disjoint i64 %.0166279.us.us.us, 2
  %i.ht = mul nsw i64 %i.hs, %i.bv
  %i.hu = getelementptr i8, ptr %i.bi, i64 %i.ht
  br label %.preheader186.us.us.us.us291.us.us.2

.preheader186.us.us.us.us291.us.us.2:             ; preds = %.preheader186.us.us.us.us291.us.us.2, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.1
  %.0164258.us.us.us.us292.us.us.2 = phi i64 [ %i.bk, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.1 ], [ %i.hx, %.preheader186.us.us.us.us291.us.us.2 ] ; 2 uses
  %i.hv = mul i64 %.0164258.us.us.us.us292.us.us.2, %i.bw
  %i.hw = getelementptr i8, ptr %i.hu, i64 %i.hv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hw, i8 0, i64 %i.ce, i1 false), !tbaa !43
  %i.hx = add nsw i64 %.0164258.us.us.us.us292.us.us.2, %i.bx ; 2 uses
  %i.hy = icmp slt i64 %i.hx, %i.ba
  br i1 %i.hy, label %.preheader186.us.us.us.us291.us.us.2, label %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.2, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us293.us.us.2: ; preds = %.preheader186.us.us.us.us291.us.us.2
  %i.hz = or disjoint i64 %.0166279.us.us.us, 3
  %i.ia = mul nsw i64 %i.hz, %i.bv
  %i.ib = getelementptr i8, ptr %i.bi, i64 %i.ia
  br label %.preheader186.us.us.us.us291.us.us.3

.preheader186.us.us.us.us291.us.us.3:             ; preds = %.preheader186.us.us.us.us291.us.us.3, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.2
  %.0164258.us.us.us.us292.us.us.3 = phi i64 [ %i.bk, %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.2 ], [ %i.ie, %.preheader186.us.us.us.us291.us.us.3 ] ; 2 uses
  %i.ic = mul i64 %.0164258.us.us.us.us292.us.us.3, %i.bw
  %i.id = getelementptr i8, ptr %i.ib, i64 %i.ic
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.id, i8 0, i64 %i.ce, i1 false), !tbaa !43
  %i.ie = add nsw i64 %.0164258.us.us.us.us292.us.us.3, %i.bx ; 2 uses
  %i.if = icmp slt i64 %i.ie, %i.ba
  br i1 %i.if, label %.preheader186.us.us.us.us291.us.us.3, label %._crit_edge.split274.us.split.us.split.us.split.us293.us.us.3, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us293.us.us.3: ; preds = %.preheader186.us.us.us.us291.us.us.3
  %i.ig = add nuw nsw i64 %.0166279.us.us.us, 4   ; 2 uses
  %niter372.next.3 = add nuw nsw i64 %niter372, 4 ; 2 uses
  %niter372.ncmp.3 = icmp eq i64 %niter372.next.3, %unroll_iter371
  br i1 %niter372.ncmp.3, label %._crit_edge281.split.loopexit364.unr-lcssa, label %.preheader186.lr.ph.us.us.us, !llvm.loop !1049

.preheader186.lr.ph.us.us:                        ; preds = %._crit_edge.split274.us.split.us.split.us289.us.3, %.preheader186.lr.ph.us.us.preheader.new
  %.0166279.us.us = phi i64 [ 0, %.preheader186.lr.ph.us.us.preheader.new ], [ %i.ji, %._crit_edge.split274.us.split.us.split.us289.us.3 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader186.lr.ph.us.us.preheader.new ], [ %niter.next.3, %._crit_edge.split274.us.split.us.split.us289.us.3 ]
  %i.ih = mul nsw i64 %.0166279.us.us, %i.bv
  %i.ii = getelementptr i8, ptr %i.bi, i64 %i.ih
  br label %.preheader186.us.us.us287.us

.preheader186.us.us.us287.us:                     ; preds = %.preheader186.us.us.us287.us, %.preheader186.lr.ph.us.us
  %.0164258.us.us.us288.us = phi i64 [ %i.bk, %.preheader186.lr.ph.us.us ], [ %i.il, %.preheader186.us.us.us287.us ] ; 2 uses
  %i.ij = mul i64 %.0164258.us.us.us288.us, %i.bw
  %i.ik = getelementptr i8, ptr %i.ii, i64 %i.ij
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ik, i8 0, i64 %i.cb, i1 false), !tbaa !43
  %i.il = add nsw i64 %.0164258.us.us.us288.us, %i.bx ; 2 uses
  %i.im = icmp slt i64 %i.il, %i.ba
  br i1 %i.im, label %.preheader186.us.us.us287.us, label %._crit_edge.split274.us.split.us.split.us289.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us289.us:  ; preds = %.preheader186.us.us.us287.us
end_hunk_1
begin_hunk_2_@ggml_compute_forward_ssm_conv:bb.a
.preheader.lr.ph.i.epil:                          ; preds = %.preheader.lr.ph.i.epil, %.preheader.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.i.epil ]
  %i.dh = mul i64 %indvars.iv.i.epil, %i.bo
  %gep8.i.epil = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dh
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.epil, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split10.i, label %.preheader.lr.ph.i.epil, !llvm.loop !1626

._crit_edge.split10.i:                            ; preds = %.preheader.lr.ph.i.epil, %._crit_edge.split10.i.unr-lcssa
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count22.i
  br i1 %exitcond23.not.i, label %_ZL33ggml_compute_forward_ssm_conv_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader1.i, !llvm.loop !1625

.preheader.lr.ph.i:                               ; preds = %.preheader1.i, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.preheader.lr.ph.i ], [ 0, %.preheader1.i ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader.lr.ph.i ], [ 0, %.preheader1.i ]
  %i.di = mul i64 %indvars.iv.i, %i.bo
  %gep8.i = getelementptr i8, ptr %invariant.gep7.i, i64 %i.di
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.dj = mul i64 %indvars.iv.next.i, %i.bo
  %gep8.i.1 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dj
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.1, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.dk = mul i64 %indvars.iv.next.i.1, %i.bo
  %gep8.i.2 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.2, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.dl = mul i64 %indvars.iv.next.i.2, %i.bo
  %gep8.i.3 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dl
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.3, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4
  %i.dm = mul i64 %indvars.iv.next.i.3, %i.bo
  %gep8.i.4 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dm
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.4, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5
  %i.dn = mul i64 %indvars.iv.next.i.4, %i.bo
  %gep8.i.5 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dn
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.5, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6
  %i.do = mul i64 %indvars.iv.next.i.5, %i.bo
  %gep8.i.6 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.do
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.6, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7
  %i.dp = mul i64 %indvars.iv.next.i.6, %i.bo
  %gep8.i.7 = getelementptr i8, ptr %invariant.gep7.i, i64 %i.dp
  tail call void @llvm.memset.p0.i64(ptr align 4 %gep8.i.7, i8 0, i64 %i.br, i1 false), !tbaa !43
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split10.i.unr-lcssa, label %.preheader.lr.ph.i, !llvm.loop !1624

_ZL33ggml_compute_forward_ssm_conv_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split10.i, %._crit_edge.split10.us.us.i, %bb.j, %.preheader1.lr.ph.i, %.preheader1.lr.ph.split.i
  ret void

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9766, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_ssm_scan(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 8, !tbaa !35
  %i.d = getelementptr i8, ptr %0, i64 4
  %.val3 = load i32, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31   ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31   ; 28 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !51 ; 4 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = tail call i64 @ggml_nelements(ptr noundef %i.f)
  %i.ag = tail call i64 @ggml_element_size(ptr noundef %i.f)
  %i.ah = mul i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = icmp sgt i32 %i.ad, 0
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9798, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.162) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aj = tail call i64 @ggml_nelements(ptr noundef nonnull %i.f)
  %i.ak = mul i64 %i.v, %i.t                      ; 2 uses
  %i.al = mul i64 %i.ak, %i.r
  %i.am = mul i64 %i.al, %i.ab
  %i.an = mul i64 %i.am, %i.ae
  %i.ao = add nsw i64 %i.aj, %i.an
  %i.ap = tail call i64 @ggml_nelements(ptr noundef nonnull %1)
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9799, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.163) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9800, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !31
  %i.aw = icmp eq i64 %i.av, 4
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9801, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.az = icmp eq i64 %i.ay, 4
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9802, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.164) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bc = icmp eq i64 %i.bb, 4
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9803, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.165) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !31
  %i.bf = icmp eq i64 %i.be, 4
  br i1 %i.bf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9804, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.166) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !31
  %i.bi = icmp eq i64 %i.bh, 4
  br i1 %i.bi, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9805, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.167) #17
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9806, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.168) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = srem i64 %i.v, %i.x
  %i.bn = sdiv exact i64 %i.v, %i.x
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9807, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.169) #17
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.br = icmp eq i64 %i.bq, 1
  %i.bs = icmp eq i32 %i.ad, 1
  %or.cond.i = or i1 %i.bs, %i.br
  br i1 %or.cond.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9808, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.170) #17
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bt = sext i32 %.val3 to i64                  ; 2 uses
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = add i64 %i.bu, %i.v
  %i.bw = sdiv i64 %i.bv, %i.bt
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %i.by = mul i32 %.val, %i.bx                    ; 3 uses
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call i64 @llvm.smin.i64(i64 %i.v, i64 %i.ca) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37
  %i.ce = icmp sgt i64 %i.ab, 0
  br i1 %i.ce, label %.lr.ph53.i, label %_ZL33ggml_compute_forward_ssm_scan_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph53.i:                                       ; preds = %bb.x
  %i.cf = trunc i64 %i.cb to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  %factor.op.mul.reass.i = shl i64 %i.ak, 2
  %i.cj = icmp sgt i64 %i.z, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.cx = icmp slt i32 %i.by, %i.cf               ; 3 uses
  %i.cy = icmp sgt i64 %i.t, 0                    ; 2 uses
  %i.cz = trunc i64 %i.t to i32                   ; 2 uses
  %i.da = icmp sgt i64 %i.r, 0
  %i.db = trunc i64 %i.r to i32                   ; 4 uses
  %i.dc = icmp sgt i32 %i.db, 63
  %i.dd = shl i64 %i.r, 32
  %sext126.i = ashr exact i64 %i.dd, 32
  %i.de = and i64 %sext126.i, -64                 ; 11 uses
  %i.df = icmp sgt i64 %i.r, %i.de                ; 2 uses
  %i.dg = icmp ne i32 %i.ad, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %i.cj, label %.lr.ph47.preheader.i, label %_ZL33ggml_compute_forward_ssm_scan_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph47.preheader.i:                             ; preds = %.lr.ph53.i
  %i.di = sext i32 %i.by to i64                   ; 7 uses
  %sext127.i = shl i64 %i.cb, 32
  %wide.trip.count.i = ashr exact i64 %sext127.i, 32 ; 5 uses
  %factor.op.mul49.i = shl i64 %i.t, 2
  %factor.op.mul40.reass.i = mul i64 %factor.op.mul49.i, %i.v
  %factor.op.mul.i = mul i64 %factor.op.mul40.reass.i, %i.z
  %i.dj = tail call reassoc float @llvm.vector.reduce.fadd.v16f32(float -0.000000e+00, <16 x float> zeroinitializer) ; 13 uses
  %i.dk = add i64 %i.t, -1                        ; 4 uses
  %i.dl = xor i64 %i.de, -1
  %i.dm = add i64 %i.r, %i.dl                     ; 2 uses
  %i.dn = sub i64 %i.cb, %i.di
  %min.iters.check81 = icmp ult i64 %i.t, 4
  %i.do = trunc i64 %i.dk to i32
  %i.dp = icmp ugt i64 %i.dk, 4294967295
  %min.iters.check83 = icmp ult i64 %i.t, 32
  %i.dq = and i64 %i.t, 28
  %n.vec85 = and i64 %i.t, 8589934560             ; 4 uses
  %cmp.n90 = icmp eq i64 %i.t, %n.vec85
  %min.epilog.iters.check95 = icmp eq i64 %i.dq, 0
  %n.vec97 = and i64 %i.t, 8589934588             ; 3 uses
  %cmp.n102 = icmp eq i64 %i.t, %n.vec97
  %min.iters.check = icmp ult i64 %i.t, 4
  %i.dr = trunc i64 %i.dk to i32
  %i.ds = icmp ugt i64 %i.dk, 4294967295
  %min.iters.check73 = icmp ult i64 %i.t, 32
  %i.dt = and i64 %i.t, 28
  %n.vec = and i64 %i.t, 8589934560               ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.dj, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  %n.vec74 = and i64 %i.t, 8589934588             ; 3 uses
  %broadcast.splatinsert75 = insertelement <4 x float> poison, float %i.dj, i64 0
  %broadcast.splat76 = shufflevector <4 x float> %broadcast.splatinsert75, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n79 = icmp eq i64 %i.t, %n.vec74
  %xtraiter118 = and i64 %i.r, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  %i.du = trunc nsw i64 %i.de to i32
  %indvars.iv.next82.i.us17.prol = or disjoint i64 %i.de, 1
  %i.dv = icmp eq i64 %i.dm, 0
  %xtraiter123 = and i64 %i.r, 1
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  %i.dw = trunc nuw nsw i64 %i.de to i32
  %indvars.iv.next82.i.us.prol = or disjoint i64 %i.de, 1
  %i.dx = icmp eq i64 %i.dm, 0
  %xtraiter126 = and i64 %i.dn, 3                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  %i.dy = sub nsw i64 %i.di, %wide.trip.count.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %._crit_edge48.i, %.lr.ph47.preheader.i
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph47.preheader.i ], [ %indvars.iv.next104.i, %._crit_edge48.i ] ; 9 uses
  %i.ea = load ptr, ptr %i.cg, align 8, !tbaa !37
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv103.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load i64, ptr %i.ch, align 8, !tbaa !31 ; 2 uses
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ef
  %i.eh = load ptr, ptr %i.ci, align 8, !tbaa !37
  %i.ei = mul i64 %i.ee, %indvars.iv103.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ah ; 14 uses
  %factor.op.mul43.reass.i = mul i64 %factor.op.mul.i, %indvars.iv103.i
  br label %bb.y

._crit_edge48.i:                                  ; preds = %.loopexit.i
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next104.i, %i.ab
  br i1 %exitcond106.not.i, label %_ZL33ggml_compute_forward_ssm_scan_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph47.i, !llvm.loop !1627

bb.y:                                             ; preds = %.loopexit.i, %.lr.ph47.i
  %indvars.iv99.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next100.i, %.loopexit.i ] ; 7 uses
  %.029544.i = phi ptr [ %i.eg, %.lr.ph47.i ], [ %i.ek, %.loopexit.i ] ; 8 uses
  %i.el = load ptr, ptr %i.ck, align 8, !tbaa !37
  %i.em = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.en = mul i64 %i.em, %indvars.iv99.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en
  %i.ep = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.eq = mul i64 %i.ep, %indvars.iv103.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq ; 3 uses
  %i.es = load ptr, ptr %i.cn, align 8, !tbaa !37
  %i.et = load i64, ptr %i.co, align 8, !tbaa !31
  %i.eu = mul i64 %i.et, %indvars.iv99.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eu
  %i.ew = load i64, ptr %i.cp, align 8, !tbaa !31
  %i.ex = mul i64 %i.ew, %indvars.iv103.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ex ; 3 uses
  %i.ez = load ptr, ptr %i.cq, align 8, !tbaa !37 ; 2 uses
  %i.fa = load ptr, ptr %i.cr, align 8, !tbaa !37
  %i.fb = load i64, ptr %i.cs, align 8, !tbaa !31
  %i.fc = mul i64 %i.fb, %indvars.iv99.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc
  %i.fe = load i64, ptr %i.ct, align 8, !tbaa !31
  %i.ff = mul i64 %i.fe, %indvars.iv103.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ff ; 8 uses
  %i.fh = load ptr, ptr %i.cu, align 8, !tbaa !37
  %i.fi = load i64, ptr %i.cv, align 8, !tbaa !31
  %i.fj = mul i64 %i.fi, %indvars.iv99.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fj
  %i.fl = load i64, ptr %i.cw, align 8, !tbaa !31
  %i.fm = mul i64 %i.fl, %indvars.iv103.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fm ; 8 uses
  %i.fo = load ptr, ptr %i.ci, align 8, !tbaa !37
  %i.fp = mul i64 %factor.op.mul.reass.i, %indvars.iv99.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %factor.op.mul43.reass.i ; 25 uses
  %i.fs = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %.preheader3.i, label %.preheader5.i

.preheader5.i:                                    ; preds = %bb.y
  br i1 %i.cx, label %.lr.ph.i, label %.loopexit4.i

.lr.ph.i:                                         ; preds = %.preheader5.i
  %i.fu = sdiv exact i64 %i.v, %i.x
  br i1 %i.cy, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %._crit_edge11.i.us
  %indvars.iv67.i.us = phi i64 [ %indvars.iv.next68.i.us, %._crit_edge11.i.us ], [ %i.di, %.lr.ph.i ] ; 5 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %indvars.iv67.i.us
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !43 ; 3 uses
  %i.fx = fcmp ogt float %i.fw, 2.000000e+01
  br i1 %i.fx, label %_ZL25ggml_compute_softplus_f32f.exit314.i.us, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.split.us
  %i.fy = tail call float @expf(float noundef %i.fw) #18
  %i.fz = fadd float %i.fy, 1.000000e+00
  %i.ga = tail call float @logf(float noundef %i.fz) #18
  br label %_ZL25ggml_compute_softplus_f32f.exit314.i.us

_ZL25ggml_compute_softplus_f32f.exit314.i.us:     ; preds = %bb.z, %.lr.ph.i.split.us
  %i.gb = phi float [ %i.ga, %bb.z ], [ %i.fw, %.lr.ph.i.split.us ] ; 2 uses
  %i.gc = sdiv i64 %indvars.iv67.i.us, %i.fu
  %i.gd = trunc i64 %indvars.iv67.i.us to i32
  %i.ge = mul i32 %i.gd, %i.cz                    ; 14 uses
  %i.gf = mul i64 %i.gc, %i.r
  %i.gg = mul nsw i64 %indvars.iv67.i.us, %i.r
  %i.gh = getelementptr [4 x i8], ptr %i.ez, i64 %i.gg
  br i1 %i.da, label %.lr.ph.us.i.us, label %iter.check92

iter.check92:                                     ; preds = %_ZL25ggml_compute_softplus_f32f.exit314.i.us
  br i1 %min.iters.check81, label %.lr.ph10.split.i.us.preheader, label %vector.scevcheck80

vector.scevcheck80:                               ; preds = %iter.check92
  %i.gi = add i32 %i.ge, %i.do
  %i.gj = icmp slt i32 %i.gi, %i.ge
  %i.gk = or i1 %i.gj, %i.dp
  br i1 %i.gk, label %.lr.ph10.split.i.us.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %vector.scevcheck80
  br i1 %min.iters.check83, label %vec.epilog.ph96, label %vector.body86

vector.body86:                                    ; preds = %vector.main.loop.iter.check82, %vector.body86
  %index87 = phi i64 [ %index.next88, %vector.body86 ], [ 0, %vector.main.loop.iter.check82 ] ; 2 uses
  %i.gl = trunc nuw nsw i64 %index87 to i32
  %i.gm = add i32 %i.ge, %i.gl
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.gn ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  store <8 x float> zeroinitializer, ptr %i.go, align 4, !tbaa !43
  store <8 x float> zeroinitializer, ptr %i.gp, align 4, !tbaa !43
  store <8 x float> zeroinitializer, ptr %i.gq, align 4, !tbaa !43
  store <8 x float> zeroinitializer, ptr %i.gr, align 4, !tbaa !43
  %index.next88 = add nuw i64 %index87, 32        ; 2 uses
  %i.gs = icmp eq i64 %index.next88, %n.vec85
  br i1 %i.gs, label %middle.block89, label %vector.body86, !llvm.loop !1628

middle.block89:                                   ; preds = %vector.body86
  br i1 %cmp.n90, label %._crit_edge11.i.us, label %vec.epilog.iter.check94

vec.epilog.iter.check94:                          ; preds = %middle.block89
  br i1 %min.epilog.iters.check95, label %.lr.ph10.split.i.us.preheader, label %vec.epilog.ph96, !prof !52

vec.epilog.ph96:                                  ; preds = %vector.main.loop.iter.check82, %vec.epilog.iter.check94
  %vec.epilog.resume.val91 = phi i64 [ %n.vec85, %vec.epilog.iter.check94 ], [ 0, %vector.main.loop.iter.check82 ]
  br label %vec.epilog.vector.body98

vec.epilog.vector.body98:                         ; preds = %vec.epilog.vector.body98, %vec.epilog.ph96
  %index99 = phi i64 [ %vec.epilog.resume.val91, %vec.epilog.ph96 ], [ %index.next100, %vec.epilog.vector.body98 ] ; 2 uses
  %i.gt = trunc nuw nsw i64 %index99 to i32
  %i.gu = add i32 %i.ge, %i.gt
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.gv
  store <4 x float> zeroinitializer, ptr %i.gw, align 4, !tbaa !43
  %index.next100 = add nuw i64 %index99, 4        ; 2 uses
  %i.gx = icmp eq i64 %index.next100, %n.vec97
  br i1 %i.gx, label %vec.epilog.middle.block101, label %vec.epilog.vector.body98, !llvm.loop !1629

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body98
  br i1 %cmp.n102, label %._crit_edge11.i.us, label %.lr.ph10.split.i.us.preheader

.lr.ph10.split.i.us.preheader:                    ; preds = %vector.scevcheck80, %iter.check92, %vec.epilog.iter.check94, %vec.epilog.middle.block101
  %indvars.iv.i.us.ph = phi i64 [ 0, %iter.check92 ], [ 0, %vector.scevcheck80 ], [ %n.vec85, %vec.epilog.iter.check94 ], [ %n.vec97, %vec.epilog.middle.block101 ] ; 4 uses
  %i.gy = sub nsw i64 %i.t, %indvars.iv.i.us.ph
  %xtraiter = and i64 %i.gy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph10.split.i.us.prol.loopexit, label %.lr.ph10.split.i.us.prol

.lr.ph10.split.i.us.prol:                         ; preds = %.lr.ph10.split.i.us.preheader, %.lr.ph10.split.i.us.prol
  %indvars.iv.i.us.prol = phi i64 [ %indvars.iv.next.i.us.prol, %.lr.ph10.split.i.us.prol ], [ %indvars.iv.i.us.ph, %.lr.ph10.split.i.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph10.split.i.us.prol ], [ 0, %.lr.ph10.split.i.us.preheader ]
  %i.gz = trunc nuw nsw i64 %indvars.iv.i.us.prol to i32
  %i.ha = add i32 %i.ge, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hb
  store float 0.000000e+00, ptr %i.hc, align 4, !tbaa !43
  %indvars.iv.next.i.us.prol = add nuw nsw i64 %indvars.iv.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph10.split.i.us.prol.loopexit, label %.lr.ph10.split.i.us.prol, !llvm.loop !1630

.lr.ph10.split.i.us.prol.loopexit:                ; preds = %.lr.ph10.split.i.us.prol, %.lr.ph10.split.i.us.preheader
  %indvars.iv.i.us.unr = phi i64 [ %indvars.iv.i.us.ph, %.lr.ph10.split.i.us.preheader ], [ %indvars.iv.next.i.us.prol, %.lr.ph10.split.i.us.prol ]
  %i.hd = sub nsw i64 %indvars.iv.i.us.ph, %i.t
  %i.he = icmp ugt i64 %i.hd, -8
  br i1 %i.he, label %._crit_edge11.i.us, label %.lr.ph10.split.i.us.preheader.new

.lr.ph10.split.i.us.preheader.new:                ; preds = %.lr.ph10.split.i.us.prol.loopexit
  %invariant.op = add i32 1, %i.ge
  %invariant.op135 = add i32 2, %i.ge
  %invariant.op137 = add i32 3, %i.ge
  %invariant.op139 = add i32 4, %i.ge
  %invariant.op141 = add i32 5, %i.ge
  %invariant.op143 = add i32 6, %i.ge
  %invariant.op145 = add i32 7, %i.ge
  br label %.lr.ph10.split.i.us

.lr.ph10.split.i.us:                              ; preds = %.lr.ph10.split.i.us, %.lr.ph10.split.i.us.preheader.new
  %indvars.iv.i.us = phi i64 [ %indvars.iv.i.us.unr, %.lr.ph10.split.i.us.preheader.new ], [ %indvars.iv.next.i.us.7, %.lr.ph10.split.i.us ] ; 9 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv.i.us to i32
  %i.hg = add i32 %i.ge, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hh
  store float 0.000000e+00, ptr %i.hi, align 4, !tbaa !43
  %i.hj = trunc i64 %indvars.iv.i.us to i32
  %.reass = add i32 %i.hj, %invariant.op
  %i.hk = sext i32 %.reass to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hk
  store float 0.000000e+00, ptr %i.hl, align 4, !tbaa !43
  %i.hm = trunc i64 %indvars.iv.i.us to i32
  %.reass136 = add i32 %i.hm, %invariant.op135
  %i.hn = sext i32 %.reass136 to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hn
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !43
  %i.hp = trunc i64 %indvars.iv.i.us to i32
  %.reass138 = add i32 %i.hp, %invariant.op137
  %i.hq = sext i32 %.reass138 to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hq
  store float 0.000000e+00, ptr %i.hr, align 4, !tbaa !43
  %i.hs = trunc i64 %indvars.iv.i.us to i32
  %.reass140 = add i32 %i.hs, %invariant.op139
  %i.ht = sext i32 %.reass140 to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ht
  store float 0.000000e+00, ptr %i.hu, align 4, !tbaa !43
  %i.hv = trunc i64 %indvars.iv.i.us to i32
  %.reass142 = add i32 %i.hv, %invariant.op141
  %i.hw = sext i32 %.reass142 to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hw
  store float 0.000000e+00, ptr %i.hx, align 4, !tbaa !43
  %i.hy = trunc i64 %indvars.iv.i.us to i32
  %.reass144 = add i32 %i.hy, %invariant.op143
  %i.hz = sext i32 %.reass144 to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.hz
  store float 0.000000e+00, ptr %i.ia, align 4, !tbaa !43
  %i.ib = trunc i64 %indvars.iv.i.us to i32
  %.reass146 = add i32 %i.ib, %invariant.op145
  %i.ic = sext i32 %.reass146 to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ic
  store float 0.000000e+00, ptr %i.id, align 4, !tbaa !43
  %indvars.iv.next.i.us.7 = add nuw nsw i64 %indvars.iv.i.us, 8 ; 2 uses
  %exitcond.not.i.us.7 = icmp eq i64 %indvars.iv.next.i.us.7, %i.t
  br i1 %exitcond.not.i.us.7, label %._crit_edge11.i.us, label %.lr.ph10.split.i.us, !llvm.loop !1631

.lr.ph.us.i.us:                                   ; preds = %_ZL25ggml_compute_softplus_f32f.exit314.i.us, %._crit_edge.us.i.us
  %indvars.iv63.i.us = phi i64 [ %indvars.iv.next64.i.us, %._crit_edge.us.i.us ], [ 0, %_ZL25ggml_compute_softplus_f32f.exit314.i.us ] ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv63.i.us to i32
  %i.if = add i32 %i.ge, %i.ie                    ; 2 uses
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !43
  %i.ij = fmul float %i.gb, %i.ii
  %i.ik = mul i32 %i.if, %i.db
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.us.i.us
  %indvars.iv59.i.us = phi i64 [ 0, %.lr.ph.us.i.us ], [ %indvars.iv.next60.i.us, %bb.aa ] ; 4 uses
  %.02827.us.i.us = phi float [ 0.000000e+00, %.lr.ph.us.i.us ], [ %i.jc, %bb.aa ]
  %i.il = trunc nuw nsw i64 %indvars.iv59.i.us to i32
  %i.im = add i32 %i.ik, %i.il
  %i.in = add i64 %indvars.iv59.i.us, %i.gf
  %i.io = sext i32 %i.im to i64                   ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %.029544.i, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !43
  %i.ir = getelementptr [4 x i8], ptr %i.gh, i64 %indvars.iv59.i.us
  %i.is = load float, ptr %i.ir, align 4, !tbaa !43
  %i.it = fmul float %i.gb, %i.is
  %i.iu = tail call float @expf(float noundef %i.it) #18
  %sext128.i.us = shl i64 %i.in, 32
  %i.iv = ashr exact i64 %sext128.i.us, 32        ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !43
  %i.iy = fmul float %i.ij, %i.ix
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.iu, float %i.iy) ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.iv
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !43
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.jb, float %.02827.us.i.us) ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.io
  store float %i.iz, ptr %i.jd, align 4, !tbaa !43
  %indvars.iv.next60.i.us = add nuw nsw i64 %indvars.iv59.i.us, 1 ; 2 uses
  %exitcond62.not.i.us = icmp eq i64 %indvars.iv.next60.i.us, %i.r
  br i1 %exitcond62.not.i.us, label %._crit_edge.us.i.us, label %bb.aa, !llvm.loop !1632

._crit_edge.us.i.us:                              ; preds = %bb.aa
end_hunk_2
